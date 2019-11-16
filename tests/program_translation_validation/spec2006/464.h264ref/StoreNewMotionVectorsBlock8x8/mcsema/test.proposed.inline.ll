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
%G__0x6d2090_type = type <{ [8 x i8] }>
%G__0x6d32e0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G__0x6d2090 = global %G__0x6d2090_type zeroinitializer
@G__0x6d32e0 = global %G__0x6d32e0_type zeroinitializer

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
define %struct.Memory* @StoreNewMotionVectorsBlock8x8(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_490c60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_490c60, %struct.Memory** %MEMORY
  %loadMem_490c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1202 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1203 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i1202
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1202
  store i64 %26, i64* %RBP.i1203, align 8
  store %struct.Memory* %loadMem_490c61, %struct.Memory** %MEMORY
  %loadMem_490c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1217 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i1218 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i1219 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i1219
  %39 = add i64 %38, 16
  %40 = load i64, i64* %PC.i1217
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC.i1217
  %42 = inttoptr i64 %39 to i32*
  %43 = load i32, i32* %42
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RAX.i1218, align 8
  store %struct.Memory* %loadMem_490c64, %struct.Memory** %MEMORY
  %loadMem_490c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i1254 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 21
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R10D.i1255 = bitcast %union.anon* %50 to i32*
  %51 = bitcast i32* %R10D.i1255 to i64*
  %52 = load i64, i64* %PC.i1254
  %53 = add i64 %52, 6
  store i64 %53, i64* %PC.i1254
  store i64 2, i64* %51, align 8
  store %struct.Memory* %loadMem_490c67, %struct.Memory** %MEMORY
  %loadMem_490c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %55 = getelementptr inbounds %struct.GPR, %struct.GPR* %54, i32 0, i32 33
  %56 = getelementptr inbounds %struct.Reg, %struct.Reg* %55, i32 0, i32 0
  %PC.i1252 = bitcast %union.anon* %56 to i64*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %58 = getelementptr inbounds %struct.GPR, %struct.GPR* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %58, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %59 to i32*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %RBP.i1253 = bitcast %union.anon* %62 to i64*
  %63 = load i64, i64* %RBP.i1253
  %64 = sub i64 %63, 4
  %65 = load i32, i32* %EDI.i
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %PC.i1252
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC.i1252
  %69 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %69
  store %struct.Memory* %loadMem_490c6d, %struct.Memory** %MEMORY
  %loadMem_490c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i1250 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %75 to i32*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 15
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %RBP.i1251 = bitcast %union.anon* %78 to i64*
  %79 = load i64, i64* %RBP.i1251
  %80 = sub i64 %79, 8
  %81 = load i32, i32* %ESI.i
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %PC.i1250
  %84 = add i64 %83, 3
  store i64 %84, i64* %PC.i1250
  %85 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %85
  store %struct.Memory* %loadMem_490c70, %struct.Memory** %MEMORY
  %loadMem_490c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i1247 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %EDX.i1248 = bitcast %union.anon* %91 to i32*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i1249 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i1249
  %96 = sub i64 %95, 12
  %97 = load i32, i32* %EDX.i1248
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC.i1247
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC.i1247
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  store %struct.Memory* %loadMem_490c73, %struct.Memory** %MEMORY
  %loadMem_490c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i1244 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %ECX.i1245 = bitcast %union.anon* %107 to i32*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i1246 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i1246
  %112 = sub i64 %111, 16
  %113 = load i32, i32* %ECX.i1245
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* %PC.i1244
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC.i1244
  %117 = inttoptr i64 %112 to i32*
  store i32 %113, i32* %117
  store %struct.Memory* %loadMem_490c76, %struct.Memory** %MEMORY
  %loadMem_490c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i1242 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i1243 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i1243
  %128 = sub i64 %127, 20
  %129 = load i32, i32* %R8D.i
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC.i1242
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i1242
  %133 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %133
  store %struct.Memory* %loadMem_490c79, %struct.Memory** %MEMORY
  %loadMem_490c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i1240 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 19
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i1241 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i1241
  %144 = sub i64 %143, 24
  %145 = load i32, i32* %R9D.i
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i1240
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i1240
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_490c7d, %struct.Memory** %MEMORY
  %loadMem_490c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i1237 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EAX.i1238 = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i1239 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i1239
  %160 = sub i64 %159, 28
  %161 = load i32, i32* %EAX.i1238
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i1237
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i1237
  %165 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %165
  store %struct.Memory* %loadMem_490c81, %struct.Memory** %MEMORY
  %loadMem_490c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i1235 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 23
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %R11.i1236 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %PC.i1235
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC.i1235
  %174 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %174, i64* %R11.i1236, align 8
  store %struct.Memory* %loadMem_490c84, %struct.Memory** %MEMORY
  %loadMem_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i1233 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 23
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %R11.i1234 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %R11.i1234
  %182 = add i64 %181, 71928
  %183 = load i64, i64* %PC.i1233
  %184 = add i64 %183, 7
  store i64 %184, i64* %PC.i1233
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185
  store i64 %186, i64* %R11.i1234, align 8
  store %struct.Memory* %loadMem_490c8c, %struct.Memory** %MEMORY
  %loadMem_490c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i1230 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i1231 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 23
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %R11.i1232 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i1231
  %197 = sub i64 %196, 64
  %198 = load i64, i64* %R11.i1232
  %199 = load i64, i64* %PC.i1230
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC.i1230
  %201 = inttoptr i64 %197 to i64*
  store i64 %198, i64* %201
  store %struct.Memory* %loadMem_490c93, %struct.Memory** %MEMORY
  %loadMem_490c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i1228 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 23
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %R11.i1229 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %PC.i1228
  %209 = add i64 %208, 8
  store i64 %209, i64* %PC.i1228
  %210 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %210, i64* %R11.i1229, align 8
  store %struct.Memory* %loadMem_490c97, %struct.Memory** %MEMORY
  %loadMem_490c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 23
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %R11.i1227 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %R11.i1227
  %218 = add i64 %217, 71920
  %219 = load i64, i64* %PC.i1226
  %220 = add i64 %219, 7
  store i64 %220, i64* %PC.i1226
  %221 = inttoptr i64 %218 to i64*
  %222 = load i64, i64* %221
  store i64 %222, i64* %R11.i1227, align 8
  store %struct.Memory* %loadMem_490c9f, %struct.Memory** %MEMORY
  %loadMem_490ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i1224 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i1225 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 23
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %R11.i = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i1225
  %233 = sub i64 %232, 72
  %234 = load i64, i64* %R11.i
  %235 = load i64, i64* %PC.i1224
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC.i1224
  %237 = inttoptr i64 %233 to i64*
  store i64 %234, i64* %237
  store %struct.Memory* %loadMem_490ca6, %struct.Memory** %MEMORY
  %loadMem_490caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i1221 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RAX.i1222 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i1223 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i1223
  %248 = sub i64 %247, 8
  %249 = load i64, i64* %PC.i1221
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC.i1221
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX.i1222, align 8
  store %struct.Memory* %loadMem_490caa, %struct.Memory** %MEMORY
  %loadMem_490cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i1220 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %PC.i1220
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC.i1220
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %261 = bitcast %union.anon* %260 to i32*
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = lshr i64 %263, 32
  store i64 %264, i64* %259, align 8
  store %struct.Memory* %loadMem_490cad, %struct.Memory** %MEMORY
  %loadMem_490cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i1214 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 21
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %R10D.i1215 = bitcast %union.anon* %270 to i32*
  %271 = load i32, i32* %R10D.i1215
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %PC.i1214
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC.i1214
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %276 = bitcast %union.anon* %275 to i32*
  %277 = load i32, i32* %276, align 8
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %280 = bitcast %union.anon* %279 to i32*
  %281 = load i32, i32* %280, align 8
  %282 = zext i32 %281 to i64
  %283 = shl i64 %272, 32
  %284 = ashr exact i64 %283, 32
  %285 = shl i64 %282, 32
  %286 = or i64 %285, %278
  %287 = sdiv i64 %286, %284
  %288 = shl i64 %287, 32
  %289 = ashr exact i64 %288, 32
  %290 = icmp eq i64 %287, %289
  br i1 %290, label %295, label %291

; <label>:291:                                    ; preds = %entry
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %293, %struct.Memory* %loadMem_490cae)
  br label %routine_idivl__r10d.exit1216

; <label>:295:                                    ; preds = %entry
  %296 = srem i64 %286, %284
  %297 = getelementptr inbounds %union.anon, %union.anon* %275, i64 0, i32 0
  %298 = and i64 %287, 4294967295
  store i64 %298, i64* %297, align 8
  %299 = getelementptr inbounds %union.anon, %union.anon* %279, i64 0, i32 0
  %300 = and i64 %296, 4294967295
  store i64 %300, i64* %299, align 8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %301, align 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %302, align 1
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %303, align 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %304, align 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %305, align 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %306, align 1
  br label %routine_idivl__r10d.exit1216

routine_idivl__r10d.exit1216:                     ; preds = %291, %295
  %307 = phi %struct.Memory* [ %294, %291 ], [ %loadMem_490cae, %295 ]
  store %struct.Memory* %307, %struct.Memory** %MEMORY
  %loadMem_490cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i1212 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 7
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RDX.i1213 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %RDX.i1213
  %315 = load i64, i64* %PC.i1212
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC.i1212
  %317 = trunc i64 %314 to i32
  %318 = shl i32 %317, 1
  %319 = icmp slt i32 %317, 0
  %320 = icmp slt i32 %318, 0
  %321 = xor i1 %319, %320
  %322 = zext i32 %318 to i64
  store i64 %322, i64* %RDX.i1213, align 8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %324 = zext i1 %319 to i8
  store i8 %324, i8* %323, align 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %326 = and i32 %318, 254
  %327 = call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %325, align 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %331, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %333 = icmp eq i32 %318, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %332, align 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %336 = lshr i32 %318, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %335, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %339 = zext i1 %321 to i8
  store i8 %339, i8* %338, align 1
  store %struct.Memory* %loadMem_490cb1, %struct.Memory** %MEMORY
  %loadMem_490cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i1210 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %345 to i32*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i1211 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i1211
  %350 = sub i64 %349, 40
  %351 = load i32, i32* %EDX.i
  %352 = zext i32 %351 to i64
  %353 = load i64, i64* %PC.i1210
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i1210
  %355 = inttoptr i64 %350 to i32*
  store i32 %351, i32* %355
  store %struct.Memory* %loadMem_490cb4, %struct.Memory** %MEMORY
  %loadMem_490cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i1207 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 5
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RCX.i1208 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i1209 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RBP.i1209
  %366 = sub i64 %365, 8
  %367 = load i64, i64* %PC.i1207
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC.i1207
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RCX.i1208, align 8
  store %struct.Memory* %loadMem_490cb7, %struct.Memory** %MEMORY
  %loadMem_490cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i1205 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %377 to i32*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i1206 = bitcast %union.anon* %380 to i64*
  %381 = load i32, i32* %ECX.i
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i1205
  %384 = add i64 %383, 2
  store i64 %384, i64* %PC.i1205
  %385 = and i64 %382, 4294967295
  store i64 %385, i64* %RAX.i1206, align 8
  store %struct.Memory* %loadMem_490cba, %struct.Memory** %MEMORY
  %loadMem_490cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i1204 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %PC.i1204
  %390 = add i64 %389, 1
  store i64 %390, i64* %PC.i1204
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %393 = bitcast %union.anon* %392 to i32*
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = lshr i64 %395, 32
  store i64 %396, i64* %391, align 8
  store %struct.Memory* %loadMem_490cbc, %struct.Memory** %MEMORY
  %loadMem_490cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i1201 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 21
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %402 to i32*
  %403 = load i32, i32* %R10D.i
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC.i1201
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i1201
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %408 = bitcast %union.anon* %407 to i32*
  %409 = load i32, i32* %408, align 8
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %412 = bitcast %union.anon* %411 to i32*
  %413 = load i32, i32* %412, align 8
  %414 = zext i32 %413 to i64
  %415 = shl i64 %404, 32
  %416 = ashr exact i64 %415, 32
  %417 = shl i64 %414, 32
  %418 = or i64 %417, %410
  %419 = sdiv i64 %418, %416
  %420 = shl i64 %419, 32
  %421 = ashr exact i64 %420, 32
  %422 = icmp eq i64 %419, %421
  br i1 %422, label %427, label %423

; <label>:423:                                    ; preds = %routine_idivl__r10d.exit1216
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %425, %struct.Memory* %loadMem_490cbd)
  br label %routine_idivl__r10d.exit

; <label>:427:                                    ; preds = %routine_idivl__r10d.exit1216
  %428 = srem i64 %418, %416
  %429 = getelementptr inbounds %union.anon, %union.anon* %407, i64 0, i32 0
  %430 = and i64 %419, 4294967295
  store i64 %430, i64* %429, align 8
  %431 = getelementptr inbounds %union.anon, %union.anon* %411, i64 0, i32 0
  %432 = and i64 %428, 4294967295
  store i64 %432, i64* %431, align 8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %433, align 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %434, align 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %435, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %436, align 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %437, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %438, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %423, %427
  %439 = phi %struct.Memory* [ %426, %423 ], [ %loadMem_490cbd, %427 ]
  store %struct.Memory* %439, %struct.Memory** %MEMORY
  %loadMem_490cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i1199 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i1200 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RAX.i1200
  %447 = load i64, i64* %PC.i1199
  %448 = add i64 %447, 2
  store i64 %448, i64* %PC.i1199
  %449 = trunc i64 %446 to i32
  %450 = shl i32 %449, 1
  %451 = icmp slt i32 %449, 0
  %452 = icmp slt i32 %450, 0
  %453 = xor i1 %451, %452
  %454 = zext i32 %450 to i64
  store i64 %454, i64* %RAX.i1200, align 8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %456 = zext i1 %451 to i8
  store i8 %456, i8* %455, align 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %458 = and i32 %450, 254
  %459 = call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %457, align 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %463, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %465 = icmp eq i32 %450, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %464, align 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %468 = lshr i32 %450, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %467, align 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %471 = zext i1 %453 to i8
  store i8 %471, i8* %470, align 1
  store %struct.Memory* %loadMem_490cc0, %struct.Memory** %MEMORY
  %loadMem_490cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i1196 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %EAX.i1197 = bitcast %union.anon* %477 to i32*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 15
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RBP.i1198 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RBP.i1198
  %482 = sub i64 %481, 44
  %483 = load i32, i32* %EAX.i1197
  %484 = zext i32 %483 to i64
  %485 = load i64, i64* %PC.i1196
  %486 = add i64 %485, 3
  store i64 %486, i64* %PC.i1196
  %487 = inttoptr i64 %482 to i32*
  store i32 %483, i32* %487
  store %struct.Memory* %loadMem_490cc3, %struct.Memory** %MEMORY
  %loadMem_490cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i1193 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i1194 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 15
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RBP.i1195 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RBP.i1195
  %498 = sub i64 %497, 40
  %499 = load i64, i64* %PC.i1193
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC.i1193
  %501 = inttoptr i64 %498 to i32*
  %502 = load i32, i32* %501
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RAX.i1194, align 8
  store %struct.Memory* %loadMem_490cc6, %struct.Memory** %MEMORY
  %loadMem_490cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i1191 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RAX.i1192 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %RAX.i1192
  %511 = load i64, i64* %PC.i1191
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC.i1191
  %513 = trunc i64 %510 to i32
  %514 = add i32 2, %513
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i1192, align 8
  %516 = icmp ult i32 %514, %513
  %517 = icmp ult i32 %514, 2
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1
  %521 = and i32 %514, 255
  %522 = call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %525, i8* %526, align 1
  %527 = xor i64 2, %510
  %528 = trunc i64 %527 to i32
  %529 = xor i32 %528, %514
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1
  %534 = icmp eq i32 %514, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %514, 31
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i32 %513, 31
  %541 = xor i32 %537, %540
  %542 = add i32 %541, %537
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1
  store %struct.Memory* %loadMem_490cc9, %struct.Memory** %MEMORY
  %loadMem_490ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i1188 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %EAX.i1189 = bitcast %union.anon* %551 to i32*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i1190 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RBP.i1190
  %556 = sub i64 %555, 48
  %557 = load i32, i32* %EAX.i1189
  %558 = zext i32 %557 to i64
  %559 = load i64, i64* %PC.i1188
  %560 = add i64 %559, 3
  store i64 %560, i64* %PC.i1188
  %561 = inttoptr i64 %556 to i32*
  store i32 %557, i32* %561
  store %struct.Memory* %loadMem_490ccc, %struct.Memory** %MEMORY
  %loadMem_490ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i1185 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RAX.i1186 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 15
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RBP.i1187 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RBP.i1187
  %572 = sub i64 %571, 44
  %573 = load i64, i64* %PC.i1185
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC.i1185
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i1186, align 8
  store %struct.Memory* %loadMem_490ccf, %struct.Memory** %MEMORY
  %loadMem_490cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i1183 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RAX.i1184 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RAX.i1184
  %585 = load i64, i64* %PC.i1183
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC.i1183
  %587 = trunc i64 %584 to i32
  %588 = add i32 2, %587
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RAX.i1184, align 8
  %590 = icmp ult i32 %588, %587
  %591 = icmp ult i32 %588, 2
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1
  %595 = and i32 %588, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1
  %601 = xor i64 2, %584
  %602 = trunc i64 %601 to i32
  %603 = xor i32 %602, %588
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %606, i8* %607, align 1
  %608 = icmp eq i32 %588, 0
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %609, i8* %610, align 1
  %611 = lshr i32 %588, 31
  %612 = trunc i32 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %612, i8* %613, align 1
  %614 = lshr i32 %587, 31
  %615 = xor i32 %611, %614
  %616 = add i32 %615, %611
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %618, i8* %619, align 1
  store %struct.Memory* %loadMem_490cd2, %struct.Memory** %MEMORY
  %loadMem_490cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i1180 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %EAX.i1181 = bitcast %union.anon* %625 to i32*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 15
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RBP.i1182 = bitcast %union.anon* %628 to i64*
  %629 = load i64, i64* %RBP.i1182
  %630 = sub i64 %629, 52
  %631 = load i32, i32* %EAX.i1181
  %632 = zext i32 %631 to i64
  %633 = load i64, i64* %PC.i1180
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC.i1180
  %635 = inttoptr i64 %630 to i32*
  store i32 %631, i32* %635
  store %struct.Memory* %loadMem_490cd5, %struct.Memory** %MEMORY
  %loadMem_490cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i1178 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i1179 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i1179
  %643 = sub i64 %642, 24
  %644 = load i64, i64* %PC.i1178
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC.i1178
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %648, align 1
  %649 = and i32 %647, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %655, align 1
  %656 = icmp eq i32 %647, 0
  %657 = zext i1 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %657, i8* %658, align 1
  %659 = lshr i32 %647, 31
  %660 = trunc i32 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %660, i8* %661, align 1
  %662 = lshr i32 %647, 31
  %663 = xor i32 %659, %662
  %664 = add i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %666, i8* %667, align 1
  store %struct.Memory* %loadMem_490cd8, %struct.Memory** %MEMORY
  %loadMem_490cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i1177 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %PC.i1177
  %672 = add i64 %671, 237
  %673 = load i64, i64* %PC.i1177
  %674 = add i64 %673, 6
  %675 = load i64, i64* %PC.i1177
  %676 = add i64 %675, 6
  store i64 %676, i64* %PC.i1177
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %678 = load i8, i8* %677, align 1
  %679 = icmp ne i8 %678, 0
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %681 = load i8, i8* %680, align 1
  %682 = icmp ne i8 %681, 0
  %683 = xor i1 %679, %682
  %684 = xor i1 %683, true
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %BRANCH_TAKEN, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %687 = select i1 %683, i64 %674, i64 %672
  store i64 %687, i64* %686, align 8
  store %struct.Memory* %loadMem_490cdc, %struct.Memory** %MEMORY
  %loadBr_490cdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cdc = icmp eq i8 %loadBr_490cdc, 1
  br i1 %cmpBr_490cdc, label %block_.L_490dc9, label %block_490ce2

block_490ce2:                                     ; preds = %routine_idivl__r10d.exit
  %loadMem_490ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i1174 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RAX.i1175 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i1176 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i1176
  %698 = sub i64 %697, 44
  %699 = load i64, i64* %PC.i1174
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC.i1174
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i1175, align 8
  store %struct.Memory* %loadMem_490ce2, %struct.Memory** %MEMORY
  %loadMem_490ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i1171 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %EAX.i1172 = bitcast %union.anon* %709 to i32*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 15
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RBP.i1173 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RBP.i1173
  %714 = sub i64 %713, 36
  %715 = load i32, i32* %EAX.i1172
  %716 = zext i32 %715 to i64
  %717 = load i64, i64* %PC.i1171
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC.i1171
  %719 = inttoptr i64 %714 to i32*
  store i32 %715, i32* %719
  store %struct.Memory* %loadMem_490ce5, %struct.Memory** %MEMORY
  br label %block_.L_490ce8

block_.L_490ce8:                                  ; preds = %block_.L_490db6, %block_490ce2
  %loadMem_490ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i1168 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RAX.i1169 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i1170 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i1170
  %730 = sub i64 %729, 36
  %731 = load i64, i64* %PC.i1168
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC.i1168
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i1169, align 8
  store %struct.Memory* %loadMem_490ce8, %struct.Memory** %MEMORY
  %loadMem_490ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i1165 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 1
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %EAX.i1166 = bitcast %union.anon* %741 to i32*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i1167 = bitcast %union.anon* %744 to i64*
  %745 = load i32, i32* %EAX.i1166
  %746 = zext i32 %745 to i64
  %747 = load i64, i64* %RBP.i1167
  %748 = sub i64 %747, 52
  %749 = load i64, i64* %PC.i1165
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC.i1165
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = sub i32 %745, %752
  %754 = icmp ult i32 %745, %752
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %755, i8* %756, align 1
  %757 = and i32 %753, 255
  %758 = call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %761, i8* %762, align 1
  %763 = xor i32 %752, %745
  %764 = xor i32 %763, %753
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %767, i8* %768, align 1
  %769 = icmp eq i32 %753, 0
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %770, i8* %771, align 1
  %772 = lshr i32 %753, 31
  %773 = trunc i32 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %773, i8* %774, align 1
  %775 = lshr i32 %745, 31
  %776 = lshr i32 %752, 31
  %777 = xor i32 %776, %775
  %778 = xor i32 %772, %775
  %779 = add i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %781, i8* %782, align 1
  store %struct.Memory* %loadMem_490ceb, %struct.Memory** %MEMORY
  %loadMem_490cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i1164 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %PC.i1164
  %787 = add i64 %786, 214
  %788 = load i64, i64* %PC.i1164
  %789 = add i64 %788, 6
  %790 = load i64, i64* %PC.i1164
  %791 = add i64 %790, 6
  store i64 %791, i64* %PC.i1164
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %793 = load i8, i8* %792, align 1
  %794 = icmp ne i8 %793, 0
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %796 = load i8, i8* %795, align 1
  %797 = icmp ne i8 %796, 0
  %798 = xor i1 %794, %797
  %799 = xor i1 %798, true
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %BRANCH_TAKEN, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %802 = select i1 %798, i64 %789, i64 %787
  store i64 %802, i64* %801, align 8
  store %struct.Memory* %loadMem_490cee, %struct.Memory** %MEMORY
  %loadBr_490cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cee = icmp eq i8 %loadBr_490cee, 1
  br i1 %cmpBr_490cee, label %block_.L_490dc4, label %block_490cf4

block_490cf4:                                     ; preds = %block_.L_490ce8
  %loadMem_490cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i1161 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 1
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RAX.i1162 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 15
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RBP.i1163 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %RBP.i1163
  %813 = sub i64 %812, 40
  %814 = load i64, i64* %PC.i1161
  %815 = add i64 %814, 3
  store i64 %815, i64* %PC.i1161
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RAX.i1162, align 8
  store %struct.Memory* %loadMem_490cf4, %struct.Memory** %MEMORY
  %loadMem_490cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i1158 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %EAX.i1159 = bitcast %union.anon* %824 to i32*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 15
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RBP.i1160 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RBP.i1160
  %829 = sub i64 %828, 32
  %830 = load i32, i32* %EAX.i1159
  %831 = zext i32 %830 to i64
  %832 = load i64, i64* %PC.i1158
  %833 = add i64 %832, 3
  store i64 %833, i64* %PC.i1158
  %834 = inttoptr i64 %829 to i32*
  store i32 %830, i32* %834
  store %struct.Memory* %loadMem_490cf7, %struct.Memory** %MEMORY
  br label %block_.L_490cfa

block_.L_490cfa:                                  ; preds = %block_490d06, %block_490cf4
  %loadMem_490cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i1155 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RAX.i1156 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 15
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RBP.i1157 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RBP.i1157
  %845 = sub i64 %844, 32
  %846 = load i64, i64* %PC.i1155
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC.i1155
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX.i1156, align 8
  store %struct.Memory* %loadMem_490cfa, %struct.Memory** %MEMORY
  %loadMem_490cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i1152 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 1
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %EAX.i1153 = bitcast %union.anon* %856 to i32*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 15
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RBP.i1154 = bitcast %union.anon* %859 to i64*
  %860 = load i32, i32* %EAX.i1153
  %861 = zext i32 %860 to i64
  %862 = load i64, i64* %RBP.i1154
  %863 = sub i64 %862, 48
  %864 = load i64, i64* %PC.i1152
  %865 = add i64 %864, 3
  store i64 %865, i64* %PC.i1152
  %866 = inttoptr i64 %863 to i32*
  %867 = load i32, i32* %866
  %868 = sub i32 %860, %867
  %869 = icmp ult i32 %860, %867
  %870 = zext i1 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %870, i8* %871, align 1
  %872 = and i32 %868, 255
  %873 = call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %876, i8* %877, align 1
  %878 = xor i32 %867, %860
  %879 = xor i32 %878, %868
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %882, i8* %883, align 1
  %884 = icmp eq i32 %868, 0
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %885, i8* %886, align 1
  %887 = lshr i32 %868, 31
  %888 = trunc i32 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %888, i8* %889, align 1
  %890 = lshr i32 %860, 31
  %891 = lshr i32 %867, 31
  %892 = xor i32 %891, %890
  %893 = xor i32 %887, %890
  %894 = add i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %896, i8* %897, align 1
  store %struct.Memory* %loadMem_490cfd, %struct.Memory** %MEMORY
  %loadMem_490d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i1151 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %PC.i1151
  %902 = add i64 %901, 177
  %903 = load i64, i64* %PC.i1151
  %904 = add i64 %903, 6
  %905 = load i64, i64* %PC.i1151
  %906 = add i64 %905, 6
  store i64 %906, i64* %PC.i1151
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %908 = load i8, i8* %907, align 1
  %909 = icmp ne i8 %908, 0
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %911 = load i8, i8* %910, align 1
  %912 = icmp ne i8 %911, 0
  %913 = xor i1 %909, %912
  %914 = xor i1 %913, true
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %BRANCH_TAKEN, align 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %917 = select i1 %913, i64 %904, i64 %902
  store i64 %917, i64* %916, align 8
  store %struct.Memory* %loadMem_490d00, %struct.Memory** %MEMORY
  %loadBr_490d00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d00 = icmp eq i8 %loadBr_490d00, 1
  br i1 %cmpBr_490d00, label %block_.L_490db1, label %block_490d06

block_490d06:                                     ; preds = %block_.L_490cfa
  %loadMem_490d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i1149 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 1
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RAX.i1150 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %PC.i1149
  %925 = add i64 %924, 10
  store i64 %925, i64* %PC.i1149
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i1150, align 8
  store %struct.Memory* %loadMem_490d06, %struct.Memory** %MEMORY
  %loadMem_490d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i1146 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 5
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RCX.i1147 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 15
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RBP.i1148 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RBP.i1148
  %936 = sub i64 %935, 4
  %937 = load i64, i64* %PC.i1146
  %938 = add i64 %937, 4
  store i64 %938, i64* %PC.i1146
  %939 = inttoptr i64 %936 to i32*
  %940 = load i32, i32* %939
  %941 = sext i32 %940 to i64
  store i64 %941, i64* %RCX.i1147, align 8
  store %struct.Memory* %loadMem_490d10, %struct.Memory** %MEMORY
  %loadMem_490d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i1144 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RCX.i1145 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RCX.i1145
  %949 = load i64, i64* %PC.i1144
  %950 = add i64 %949, 4
  store i64 %950, i64* %PC.i1144
  %951 = shl i64 %948, 6
  %952 = icmp slt i64 %951, 0
  %953 = shl i64 %951, 1
  store i64 %953, i64* %RCX.i1145, align 8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %955 = zext i1 %952 to i8
  store i8 %955, i8* %954, align 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %957 = trunc i64 %953 to i32
  %958 = and i32 %957, 254
  %959 = call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %956, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %963, align 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %965 = icmp eq i64 %953, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %964, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %968 = lshr i64 %953, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %967, align 1
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %970, align 1
  store %struct.Memory* %loadMem_490d14, %struct.Memory** %MEMORY
  %loadMem_490d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i1141 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 1
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RAX.i1142 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 7
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RDX.i1143 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RAX.i1142
  %981 = load i64, i64* %PC.i1141
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i1141
  store i64 %980, i64* %RDX.i1143, align 8
  store %struct.Memory* %loadMem_490d18, %struct.Memory** %MEMORY
  %loadMem_490d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i1138 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i1139 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 7
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RDX.i1140 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %RDX.i1140
  %993 = load i64, i64* %RCX.i1139
  %994 = load i64, i64* %PC.i1138
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i1138
  %996 = add i64 %993, %992
  store i64 %996, i64* %RDX.i1140, align 8
  %997 = icmp ult i64 %996, %992
  %998 = icmp ult i64 %996, %993
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = trunc i64 %996 to i32
  %1003 = and i32 %1002, 255
  %1004 = call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1007, i8* %1008, align 1
  %1009 = xor i64 %993, %992
  %1010 = xor i64 %1009, %996
  %1011 = lshr i64 %1010, 4
  %1012 = trunc i64 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i64 %996, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i64 %996, 63
  %1019 = trunc i64 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i64 %992, 63
  %1022 = lshr i64 %993, 63
  %1023 = xor i64 %1018, %1021
  %1024 = xor i64 %1018, %1022
  %1025 = add i64 %1023, %1024
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1027, i8* %1028, align 1
  store %struct.Memory* %loadMem_490d1b, %struct.Memory** %MEMORY
  %loadMem_490d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i1135 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 5
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RCX.i1136 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 15
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RBP.i1137 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RBP.i1137
  %1039 = sub i64 %1038, 32
  %1040 = load i64, i64* %PC.i1135
  %1041 = add i64 %1040, 4
  store i64 %1041, i64* %PC.i1135
  %1042 = inttoptr i64 %1039 to i32*
  %1043 = load i32, i32* %1042
  %1044 = sext i32 %1043 to i64
  store i64 %1044, i64* %RCX.i1136, align 8
  store %struct.Memory* %loadMem_490d1e, %struct.Memory** %MEMORY
  %loadMem_490d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i1133 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i1134 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RCX.i1134
  %1052 = load i64, i64* %PC.i1133
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %PC.i1133
  %1054 = shl i64 %1051, 3
  %1055 = icmp slt i64 %1054, 0
  %1056 = shl i64 %1054, 1
  store i64 %1056, i64* %RCX.i1134, align 8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1058 = zext i1 %1055 to i8
  store i8 %1058, i8* %1057, align 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1060 = trunc i64 %1056 to i32
  %1061 = and i32 %1060, 254
  %1062 = call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %1059, align 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1066, align 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1068 = icmp eq i64 %1056, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %1067, align 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1071 = lshr i64 %1056, 63
  %1072 = trunc i64 %1071 to i8
  store i8 %1072, i8* %1070, align 1
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1073, align 1
  store %struct.Memory* %loadMem_490d22, %struct.Memory** %MEMORY
  %loadMem_490d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i1130 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 5
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RCX.i1131 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 7
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RDX.i1132 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %RDX.i1132
  %1084 = load i64, i64* %RCX.i1131
  %1085 = load i64, i64* %PC.i1130
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC.i1130
  %1087 = add i64 %1084, %1083
  store i64 %1087, i64* %RDX.i1132, align 8
  %1088 = icmp ult i64 %1087, %1083
  %1089 = icmp ult i64 %1087, %1084
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1091, i8* %1092, align 1
  %1093 = trunc i64 %1087 to i32
  %1094 = and i32 %1093, 255
  %1095 = call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1098, i8* %1099, align 1
  %1100 = xor i64 %1084, %1083
  %1101 = xor i64 %1100, %1087
  %1102 = lshr i64 %1101, 4
  %1103 = trunc i64 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1104, i8* %1105, align 1
  %1106 = icmp eq i64 %1087, 0
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i64 %1087, 63
  %1110 = trunc i64 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1110, i8* %1111, align 1
  %1112 = lshr i64 %1083, 63
  %1113 = lshr i64 %1084, 63
  %1114 = xor i64 %1109, %1112
  %1115 = xor i64 %1109, %1113
  %1116 = add i64 %1114, %1115
  %1117 = icmp eq i64 %1116, 2
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1118, i8* %1119, align 1
  store %struct.Memory* %loadMem_490d26, %struct.Memory** %MEMORY
  %loadMem_490d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i1127 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 5
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RCX.i1128 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 15
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RBP.i1129 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RBP.i1129
  %1130 = sub i64 %1129, 36
  %1131 = load i64, i64* %PC.i1127
  %1132 = add i64 %1131, 4
  store i64 %1132, i64* %PC.i1127
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133
  %1135 = sext i32 %1134 to i64
  store i64 %1135, i64* %RCX.i1128, align 8
  store %struct.Memory* %loadMem_490d29, %struct.Memory** %MEMORY
  %loadMem_490d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i1124 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RCX.i1125 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 7
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RDX.i1126 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RDX.i1126
  %1146 = load i64, i64* %RCX.i1125
  %1147 = mul i64 %1146, 4
  %1148 = add i64 %1147, %1145
  %1149 = load i64, i64* %PC.i1124
  %1150 = add i64 %1149, 6
  store i64 %1150, i64* %PC.i1124
  %1151 = inttoptr i64 %1148 to i16*
  store i16 0, i16* %1151
  store %struct.Memory* %loadMem_490d2d, %struct.Memory** %MEMORY
  %loadMem_490d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i1121 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 5
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RCX.i1122 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i1123 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i1123
  %1162 = sub i64 %1161, 4
  %1163 = load i64, i64* %PC.i1121
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC.i1121
  %1165 = inttoptr i64 %1162 to i32*
  %1166 = load i32, i32* %1165
  %1167 = sext i32 %1166 to i64
  store i64 %1167, i64* %RCX.i1122, align 8
  store %struct.Memory* %loadMem_490d33, %struct.Memory** %MEMORY
  %loadMem_490d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i1119 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 5
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RCX.i1120 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RCX.i1120
  %1175 = load i64, i64* %PC.i1119
  %1176 = add i64 %1175, 4
  store i64 %1176, i64* %PC.i1119
  %1177 = shl i64 %1174, 6
  %1178 = icmp slt i64 %1177, 0
  %1179 = shl i64 %1177, 1
  store i64 %1179, i64* %RCX.i1120, align 8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1181 = zext i1 %1178 to i8
  store i8 %1181, i8* %1180, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1183 = trunc i64 %1179 to i32
  %1184 = and i32 %1183, 254
  %1185 = call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %1182, align 1
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1189, align 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1191 = icmp eq i64 %1179, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %1190, align 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1194 = lshr i64 %1179, 63
  %1195 = trunc i64 %1194 to i8
  store i8 %1195, i8* %1193, align 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1196, align 1
  store %struct.Memory* %loadMem_490d37, %struct.Memory** %MEMORY
  %loadMem_490d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i1116 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i1117 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 7
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RDX.i1118 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i1117
  %1207 = load i64, i64* %PC.i1116
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %PC.i1116
  store i64 %1206, i64* %RDX.i1118, align 8
  store %struct.Memory* %loadMem_490d3b, %struct.Memory** %MEMORY
  %loadMem_490d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i1113 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 5
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RCX.i1114 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 7
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RDX.i1115 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RDX.i1115
  %1219 = load i64, i64* %RCX.i1114
  %1220 = load i64, i64* %PC.i1113
  %1221 = add i64 %1220, 3
  store i64 %1221, i64* %PC.i1113
  %1222 = add i64 %1219, %1218
  store i64 %1222, i64* %RDX.i1115, align 8
  %1223 = icmp ult i64 %1222, %1218
  %1224 = icmp ult i64 %1222, %1219
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1226, i8* %1227, align 1
  %1228 = trunc i64 %1222 to i32
  %1229 = and i32 %1228, 255
  %1230 = call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1233, i8* %1234, align 1
  %1235 = xor i64 %1219, %1218
  %1236 = xor i64 %1235, %1222
  %1237 = lshr i64 %1236, 4
  %1238 = trunc i64 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1239, i8* %1240, align 1
  %1241 = icmp eq i64 %1222, 0
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1242, i8* %1243, align 1
  %1244 = lshr i64 %1222, 63
  %1245 = trunc i64 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1245, i8* %1246, align 1
  %1247 = lshr i64 %1218, 63
  %1248 = lshr i64 %1219, 63
  %1249 = xor i64 %1244, %1247
  %1250 = xor i64 %1244, %1248
  %1251 = add i64 %1249, %1250
  %1252 = icmp eq i64 %1251, 2
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1253, i8* %1254, align 1
  store %struct.Memory* %loadMem_490d3e, %struct.Memory** %MEMORY
  %loadMem_490d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i1110 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 5
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RCX.i1111 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i1112 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i1112
  %1265 = sub i64 %1264, 32
  %1266 = load i64, i64* %PC.i1110
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i1110
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = sext i32 %1269 to i64
  store i64 %1270, i64* %RCX.i1111, align 8
  store %struct.Memory* %loadMem_490d41, %struct.Memory** %MEMORY
  %loadMem_490d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i1108 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 5
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RCX.i1109 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RCX.i1109
  %1278 = load i64, i64* %PC.i1108
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %PC.i1108
  %1280 = shl i64 %1277, 3
  %1281 = icmp slt i64 %1280, 0
  %1282 = shl i64 %1280, 1
  store i64 %1282, i64* %RCX.i1109, align 8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1284 = zext i1 %1281 to i8
  store i8 %1284, i8* %1283, align 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1286 = trunc i64 %1282 to i32
  %1287 = and i32 %1286, 254
  %1288 = call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %1285, align 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1292, align 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1294 = icmp eq i64 %1282, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %1293, align 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1297 = lshr i64 %1282, 63
  %1298 = trunc i64 %1297 to i8
  store i8 %1298, i8* %1296, align 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1299, align 1
  store %struct.Memory* %loadMem_490d45, %struct.Memory** %MEMORY
  %loadMem_490d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 5
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RCX.i1106 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 7
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RDX.i1107 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RDX.i1107
  %1310 = load i64, i64* %RCX.i1106
  %1311 = load i64, i64* %PC.i1105
  %1312 = add i64 %1311, 3
  store i64 %1312, i64* %PC.i1105
  %1313 = add i64 %1310, %1309
  store i64 %1313, i64* %RDX.i1107, align 8
  %1314 = icmp ult i64 %1313, %1309
  %1315 = icmp ult i64 %1313, %1310
  %1316 = or i1 %1314, %1315
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1317, i8* %1318, align 1
  %1319 = trunc i64 %1313 to i32
  %1320 = and i32 %1319, 255
  %1321 = call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1324, i8* %1325, align 1
  %1326 = xor i64 %1310, %1309
  %1327 = xor i64 %1326, %1313
  %1328 = lshr i64 %1327, 4
  %1329 = trunc i64 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1330, i8* %1331, align 1
  %1332 = icmp eq i64 %1313, 0
  %1333 = zext i1 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1333, i8* %1334, align 1
  %1335 = lshr i64 %1313, 63
  %1336 = trunc i64 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1336, i8* %1337, align 1
  %1338 = lshr i64 %1309, 63
  %1339 = lshr i64 %1310, 63
  %1340 = xor i64 %1335, %1338
  %1341 = xor i64 %1335, %1339
  %1342 = add i64 %1340, %1341
  %1343 = icmp eq i64 %1342, 2
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1344, i8* %1345, align 1
  store %struct.Memory* %loadMem_490d49, %struct.Memory** %MEMORY
  %loadMem_490d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 5
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RCX.i1103 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i1104 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RBP.i1104
  %1356 = sub i64 %1355, 36
  %1357 = load i64, i64* %PC.i1102
  %1358 = add i64 %1357, 4
  store i64 %1358, i64* %PC.i1102
  %1359 = inttoptr i64 %1356 to i32*
  %1360 = load i32, i32* %1359
  %1361 = sext i32 %1360 to i64
  store i64 %1361, i64* %RCX.i1103, align 8
  store %struct.Memory* %loadMem_490d4c, %struct.Memory** %MEMORY
  %loadMem_490d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i1099 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 5
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RCX.i1100 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 7
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RDX.i1101 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %RDX.i1101
  %1372 = load i64, i64* %RCX.i1100
  %1373 = mul i64 %1372, 4
  %1374 = add i64 %1371, 2
  %1375 = add i64 %1374, %1373
  %1376 = load i64, i64* %PC.i1099
  %1377 = add i64 %1376, 7
  store i64 %1377, i64* %PC.i1099
  %1378 = inttoptr i64 %1375 to i16*
  store i16 0, i16* %1378
  store %struct.Memory* %loadMem_490d50, %struct.Memory** %MEMORY
  %loadMem_490d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i1096 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 5
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RCX.i1097 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 15
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RBP.i1098 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RBP.i1098
  %1389 = sub i64 %1388, 4
  %1390 = load i64, i64* %PC.i1096
  %1391 = add i64 %1390, 4
  store i64 %1391, i64* %PC.i1096
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i1097, align 8
  store %struct.Memory* %loadMem_490d57, %struct.Memory** %MEMORY
  %loadMem_490d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 5
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RCX.i1095 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RCX.i1095
  %1402 = load i64, i64* %PC.i1094
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC.i1094
  %1404 = shl i64 %1401, 6
  %1405 = icmp slt i64 %1404, 0
  %1406 = shl i64 %1404, 1
  store i64 %1406, i64* %RCX.i1095, align 8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1408 = zext i1 %1405 to i8
  store i8 %1408, i8* %1407, align 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1410 = trunc i64 %1406 to i32
  %1411 = and i32 %1410, 254
  %1412 = call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %1409, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1416, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1418 = icmp eq i64 %1406, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %1417, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1421 = lshr i64 %1406, 63
  %1422 = trunc i64 %1421 to i8
  store i8 %1422, i8* %1420, align 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1423, align 1
  store %struct.Memory* %loadMem_490d5b, %struct.Memory** %MEMORY
  %loadMem_490d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i1092 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 7
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RDX.i1093 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RAX.i1092
  %1434 = load i64, i64* %PC.i1091
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %PC.i1091
  store i64 %1433, i64* %RDX.i1093, align 8
  store %struct.Memory* %loadMem_490d5f, %struct.Memory** %MEMORY
  %loadMem_490d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i1088 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 5
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RCX.i1089 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 7
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RDX.i1090 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RDX.i1090
  %1446 = load i64, i64* %RCX.i1089
  %1447 = load i64, i64* %PC.i1088
  %1448 = add i64 %1447, 3
  store i64 %1448, i64* %PC.i1088
  %1449 = add i64 %1446, %1445
  store i64 %1449, i64* %RDX.i1090, align 8
  %1450 = icmp ult i64 %1449, %1445
  %1451 = icmp ult i64 %1449, %1446
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1453, i8* %1454, align 1
  %1455 = trunc i64 %1449 to i32
  %1456 = and i32 %1455, 255
  %1457 = call i32 @llvm.ctpop.i32(i32 %1456)
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1460, i8* %1461, align 1
  %1462 = xor i64 %1446, %1445
  %1463 = xor i64 %1462, %1449
  %1464 = lshr i64 %1463, 4
  %1465 = trunc i64 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1466, i8* %1467, align 1
  %1468 = icmp eq i64 %1449, 0
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1469, i8* %1470, align 1
  %1471 = lshr i64 %1449, 63
  %1472 = trunc i64 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1472, i8* %1473, align 1
  %1474 = lshr i64 %1445, 63
  %1475 = lshr i64 %1446, 63
  %1476 = xor i64 %1471, %1474
  %1477 = xor i64 %1471, %1475
  %1478 = add i64 %1476, %1477
  %1479 = icmp eq i64 %1478, 2
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1480, i8* %1481, align 1
  store %struct.Memory* %loadMem_490d62, %struct.Memory** %MEMORY
  %loadMem_490d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i1086 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 7
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RDX.i1087 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %RDX.i1087
  %1489 = load i64, i64* %PC.i1086
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %PC.i1086
  %1491 = add i64 64, %1488
  store i64 %1491, i64* %RDX.i1087, align 8
  %1492 = icmp ult i64 %1491, %1488
  %1493 = icmp ult i64 %1491, 64
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1495, i8* %1496, align 1
  %1497 = trunc i64 %1491 to i32
  %1498 = and i32 %1497, 255
  %1499 = call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1502, i8* %1503, align 1
  %1504 = xor i64 64, %1488
  %1505 = xor i64 %1504, %1491
  %1506 = lshr i64 %1505, 4
  %1507 = trunc i64 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1508, i8* %1509, align 1
  %1510 = icmp eq i64 %1491, 0
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i64 %1491, 63
  %1514 = trunc i64 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1514, i8* %1515, align 1
  %1516 = lshr i64 %1488, 63
  %1517 = xor i64 %1513, %1516
  %1518 = add i64 %1517, %1513
  %1519 = icmp eq i64 %1518, 2
  %1520 = zext i1 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1520, i8* %1521, align 1
  store %struct.Memory* %loadMem_490d65, %struct.Memory** %MEMORY
  %loadMem_490d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 33
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %PC.i1083 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 5
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RCX.i1084 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 15
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RBP.i1085 = bitcast %union.anon* %1530 to i64*
  %1531 = load i64, i64* %RBP.i1085
  %1532 = sub i64 %1531, 32
  %1533 = load i64, i64* %PC.i1083
  %1534 = add i64 %1533, 4
  store i64 %1534, i64* %PC.i1083
  %1535 = inttoptr i64 %1532 to i32*
  %1536 = load i32, i32* %1535
  %1537 = sext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i1084, align 8
  store %struct.Memory* %loadMem_490d69, %struct.Memory** %MEMORY
  %loadMem_490d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i1081 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 5
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RCX.i1082 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %RCX.i1082
  %1545 = load i64, i64* %PC.i1081
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i1081
  %1547 = shl i64 %1544, 3
  %1548 = icmp slt i64 %1547, 0
  %1549 = shl i64 %1547, 1
  store i64 %1549, i64* %RCX.i1082, align 8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1551 = zext i1 %1548 to i8
  store i8 %1551, i8* %1550, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1553 = trunc i64 %1549 to i32
  %1554 = and i32 %1553, 254
  %1555 = call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %1552, align 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1559, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1561 = icmp eq i64 %1549, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %1560, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1564 = lshr i64 %1549, 63
  %1565 = trunc i64 %1564 to i8
  store i8 %1565, i8* %1563, align 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1566, align 1
  store %struct.Memory* %loadMem_490d6d, %struct.Memory** %MEMORY
  %loadMem_490d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 5
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RCX.i1079 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 7
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RDX.i1080 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %RDX.i1080
  %1577 = load i64, i64* %RCX.i1079
  %1578 = load i64, i64* %PC.i1078
  %1579 = add i64 %1578, 3
  store i64 %1579, i64* %PC.i1078
  %1580 = add i64 %1577, %1576
  store i64 %1580, i64* %RDX.i1080, align 8
  %1581 = icmp ult i64 %1580, %1576
  %1582 = icmp ult i64 %1580, %1577
  %1583 = or i1 %1581, %1582
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1584, i8* %1585, align 1
  %1586 = trunc i64 %1580 to i32
  %1587 = and i32 %1586, 255
  %1588 = call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1591, i8* %1592, align 1
  %1593 = xor i64 %1577, %1576
  %1594 = xor i64 %1593, %1580
  %1595 = lshr i64 %1594, 4
  %1596 = trunc i64 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1597, i8* %1598, align 1
  %1599 = icmp eq i64 %1580, 0
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1600, i8* %1601, align 1
  %1602 = lshr i64 %1580, 63
  %1603 = trunc i64 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1603, i8* %1604, align 1
  %1605 = lshr i64 %1576, 63
  %1606 = lshr i64 %1577, 63
  %1607 = xor i64 %1602, %1605
  %1608 = xor i64 %1602, %1606
  %1609 = add i64 %1607, %1608
  %1610 = icmp eq i64 %1609, 2
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1611, i8* %1612, align 1
  store %struct.Memory* %loadMem_490d71, %struct.Memory** %MEMORY
  %loadMem_490d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 5
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RCX.i1076 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 15
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RBP.i1077 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %RBP.i1077
  %1623 = sub i64 %1622, 36
  %1624 = load i64, i64* %PC.i1075
  %1625 = add i64 %1624, 4
  store i64 %1625, i64* %PC.i1075
  %1626 = inttoptr i64 %1623 to i32*
  %1627 = load i32, i32* %1626
  %1628 = sext i32 %1627 to i64
  store i64 %1628, i64* %RCX.i1076, align 8
  store %struct.Memory* %loadMem_490d74, %struct.Memory** %MEMORY
  %loadMem_490d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i1072 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 5
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RCX.i1073 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 7
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RDX.i1074 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RDX.i1074
  %1639 = load i64, i64* %RCX.i1073
  %1640 = mul i64 %1639, 4
  %1641 = add i64 %1640, %1638
  %1642 = load i64, i64* %PC.i1072
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC.i1072
  %1644 = inttoptr i64 %1641 to i16*
  store i16 0, i16* %1644
  store %struct.Memory* %loadMem_490d78, %struct.Memory** %MEMORY
  %loadMem_490d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 5
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RCX.i1070 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 15
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RBP.i1071 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %RBP.i1071
  %1655 = sub i64 %1654, 4
  %1656 = load i64, i64* %PC.i1069
  %1657 = add i64 %1656, 4
  store i64 %1657, i64* %PC.i1069
  %1658 = inttoptr i64 %1655 to i32*
  %1659 = load i32, i32* %1658
  %1660 = sext i32 %1659 to i64
  store i64 %1660, i64* %RCX.i1070, align 8
  store %struct.Memory* %loadMem_490d7e, %struct.Memory** %MEMORY
  %loadMem_490d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i1067 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 5
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RCX.i1068 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RCX.i1068
  %1668 = load i64, i64* %PC.i1067
  %1669 = add i64 %1668, 4
  store i64 %1669, i64* %PC.i1067
  %1670 = shl i64 %1667, 6
  %1671 = icmp slt i64 %1670, 0
  %1672 = shl i64 %1670, 1
  store i64 %1672, i64* %RCX.i1068, align 8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1674 = zext i1 %1671 to i8
  store i8 %1674, i8* %1673, align 1
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1676 = trunc i64 %1672 to i32
  %1677 = and i32 %1676, 254
  %1678 = call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %1675, align 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1682, align 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1684 = icmp eq i64 %1672, 0
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %1683, align 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1687 = lshr i64 %1672, 63
  %1688 = trunc i64 %1687 to i8
  store i8 %1688, i8* %1686, align 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1689, align 1
  store %struct.Memory* %loadMem_490d82, %struct.Memory** %MEMORY
  %loadMem_490d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i1064 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 1
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RAX.i1065 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 5
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RCX.i1066 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RAX.i1065
  %1700 = load i64, i64* %RCX.i1066
  %1701 = load i64, i64* %PC.i1064
  %1702 = add i64 %1701, 3
  store i64 %1702, i64* %PC.i1064
  %1703 = add i64 %1700, %1699
  store i64 %1703, i64* %RAX.i1065, align 8
  %1704 = icmp ult i64 %1703, %1699
  %1705 = icmp ult i64 %1703, %1700
  %1706 = or i1 %1704, %1705
  %1707 = zext i1 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1707, i8* %1708, align 1
  %1709 = trunc i64 %1703 to i32
  %1710 = and i32 %1709, 255
  %1711 = call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1714, i8* %1715, align 1
  %1716 = xor i64 %1700, %1699
  %1717 = xor i64 %1716, %1703
  %1718 = lshr i64 %1717, 4
  %1719 = trunc i64 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1720, i8* %1721, align 1
  %1722 = icmp eq i64 %1703, 0
  %1723 = zext i1 %1722 to i8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1723, i8* %1724, align 1
  %1725 = lshr i64 %1703, 63
  %1726 = trunc i64 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1726, i8* %1727, align 1
  %1728 = lshr i64 %1699, 63
  %1729 = lshr i64 %1700, 63
  %1730 = xor i64 %1725, %1728
  %1731 = xor i64 %1725, %1729
  %1732 = add i64 %1730, %1731
  %1733 = icmp eq i64 %1732, 2
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1734, i8* %1735, align 1
  store %struct.Memory* %loadMem_490d86, %struct.Memory** %MEMORY
  %loadMem_490d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i1062 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 1
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RAX.i1063 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RAX.i1063
  %1743 = load i64, i64* %PC.i1062
  %1744 = add i64 %1743, 4
  store i64 %1744, i64* %PC.i1062
  %1745 = add i64 64, %1742
  store i64 %1745, i64* %RAX.i1063, align 8
  %1746 = icmp ult i64 %1745, %1742
  %1747 = icmp ult i64 %1745, 64
  %1748 = or i1 %1746, %1747
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1749, i8* %1750, align 1
  %1751 = trunc i64 %1745 to i32
  %1752 = and i32 %1751, 255
  %1753 = call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1756, i8* %1757, align 1
  %1758 = xor i64 64, %1742
  %1759 = xor i64 %1758, %1745
  %1760 = lshr i64 %1759, 4
  %1761 = trunc i64 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1762, i8* %1763, align 1
  %1764 = icmp eq i64 %1745, 0
  %1765 = zext i1 %1764 to i8
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1765, i8* %1766, align 1
  %1767 = lshr i64 %1745, 63
  %1768 = trunc i64 %1767 to i8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1768, i8* %1769, align 1
  %1770 = lshr i64 %1742, 63
  %1771 = xor i64 %1767, %1770
  %1772 = add i64 %1771, %1767
  %1773 = icmp eq i64 %1772, 2
  %1774 = zext i1 %1773 to i8
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1774, i8* %1775, align 1
  store %struct.Memory* %loadMem_490d89, %struct.Memory** %MEMORY
  %loadMem_490d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i1059 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 5
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RCX.i1060 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 15
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RBP.i1061 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RBP.i1061
  %1786 = sub i64 %1785, 32
  %1787 = load i64, i64* %PC.i1059
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i1059
  %1789 = inttoptr i64 %1786 to i32*
  %1790 = load i32, i32* %1789
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RCX.i1060, align 8
  store %struct.Memory* %loadMem_490d8d, %struct.Memory** %MEMORY
  %loadMem_490d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i1057 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 5
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RCX.i1058 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RCX.i1058
  %1799 = load i64, i64* %PC.i1057
  %1800 = add i64 %1799, 4
  store i64 %1800, i64* %PC.i1057
  %1801 = shl i64 %1798, 3
  %1802 = icmp slt i64 %1801, 0
  %1803 = shl i64 %1801, 1
  store i64 %1803, i64* %RCX.i1058, align 8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1805 = zext i1 %1802 to i8
  store i8 %1805, i8* %1804, align 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1807 = trunc i64 %1803 to i32
  %1808 = and i32 %1807, 254
  %1809 = call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %1806, align 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1813, align 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1815 = icmp eq i64 %1803, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %1814, align 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1818 = lshr i64 %1803, 63
  %1819 = trunc i64 %1818 to i8
  store i8 %1819, i8* %1817, align 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1820, align 1
  store %struct.Memory* %loadMem_490d91, %struct.Memory** %MEMORY
  %loadMem_490d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i1054 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 1
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RAX.i1055 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 5
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RCX.i1056 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i1055
  %1831 = load i64, i64* %RCX.i1056
  %1832 = load i64, i64* %PC.i1054
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i1054
  %1834 = add i64 %1831, %1830
  store i64 %1834, i64* %RAX.i1055, align 8
  %1835 = icmp ult i64 %1834, %1830
  %1836 = icmp ult i64 %1834, %1831
  %1837 = or i1 %1835, %1836
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1838, i8* %1839, align 1
  %1840 = trunc i64 %1834 to i32
  %1841 = and i32 %1840, 255
  %1842 = call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1845, i8* %1846, align 1
  %1847 = xor i64 %1831, %1830
  %1848 = xor i64 %1847, %1834
  %1849 = lshr i64 %1848, 4
  %1850 = trunc i64 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1851, i8* %1852, align 1
  %1853 = icmp eq i64 %1834, 0
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1854, i8* %1855, align 1
  %1856 = lshr i64 %1834, 63
  %1857 = trunc i64 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i64 %1830, 63
  %1860 = lshr i64 %1831, 63
  %1861 = xor i64 %1856, %1859
  %1862 = xor i64 %1856, %1860
  %1863 = add i64 %1861, %1862
  %1864 = icmp eq i64 %1863, 2
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1865, i8* %1866, align 1
  store %struct.Memory* %loadMem_490d95, %struct.Memory** %MEMORY
  %loadMem_490d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i1051 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 5
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RCX.i1052 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 15
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RBP.i1053 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RBP.i1053
  %1877 = sub i64 %1876, 36
  %1878 = load i64, i64* %PC.i1051
  %1879 = add i64 %1878, 4
  store i64 %1879, i64* %PC.i1051
  %1880 = inttoptr i64 %1877 to i32*
  %1881 = load i32, i32* %1880
  %1882 = sext i32 %1881 to i64
  store i64 %1882, i64* %RCX.i1052, align 8
  store %struct.Memory* %loadMem_490d98, %struct.Memory** %MEMORY
  %loadMem_490d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i1048 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RAX.i1049 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 5
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RCX.i1050 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RAX.i1049
  %1893 = load i64, i64* %RCX.i1050
  %1894 = mul i64 %1893, 4
  %1895 = add i64 %1892, 2
  %1896 = add i64 %1895, %1894
  %1897 = load i64, i64* %PC.i1048
  %1898 = add i64 %1897, 7
  store i64 %1898, i64* %PC.i1048
  %1899 = inttoptr i64 %1896 to i16*
  store i16 0, i16* %1899
  store %struct.Memory* %loadMem_490d9c, %struct.Memory** %MEMORY
  %loadMem_490da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RAX.i1046 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i1047 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RBP.i1047
  %1910 = sub i64 %1909, 32
  %1911 = load i64, i64* %PC.i1045
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i1045
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913
  %1915 = zext i32 %1914 to i64
  store i64 %1915, i64* %RAX.i1046, align 8
  store %struct.Memory* %loadMem_490da3, %struct.Memory** %MEMORY
  %loadMem_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RAX.i1044 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RAX.i1044
  %1923 = load i64, i64* %PC.i1043
  %1924 = add i64 %1923, 3
  store i64 %1924, i64* %PC.i1043
  %1925 = trunc i64 %1922 to i32
  %1926 = add i32 1, %1925
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RAX.i1044, align 8
  %1928 = icmp ult i32 %1926, %1925
  %1929 = icmp ult i32 %1926, 1
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1931, i8* %1932, align 1
  %1933 = and i32 %1926, 255
  %1934 = call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1937, i8* %1938, align 1
  %1939 = xor i64 1, %1922
  %1940 = trunc i64 %1939 to i32
  %1941 = xor i32 %1940, %1926
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1944, i8* %1945, align 1
  %1946 = icmp eq i32 %1926, 0
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i32 %1926, 31
  %1950 = trunc i32 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1925, 31
  %1953 = xor i32 %1949, %1952
  %1954 = add i32 %1953, %1949
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1956, i8* %1957, align 1
  store %struct.Memory* %loadMem_490da6, %struct.Memory** %MEMORY
  %loadMem_490da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i1040 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %EAX.i1041 = bitcast %union.anon* %1963 to i32*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 15
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RBP.i1042 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %RBP.i1042
  %1968 = sub i64 %1967, 32
  %1969 = load i32, i32* %EAX.i1041
  %1970 = zext i32 %1969 to i64
  %1971 = load i64, i64* %PC.i1040
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %PC.i1040
  %1973 = inttoptr i64 %1968 to i32*
  store i32 %1969, i32* %1973
  store %struct.Memory* %loadMem_490da9, %struct.Memory** %MEMORY
  %loadMem_490dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %PC.i1039
  %1978 = add i64 %1977, -178
  %1979 = load i64, i64* %PC.i1039
  %1980 = add i64 %1979, 5
  store i64 %1980, i64* %PC.i1039
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1978, i64* %1981, align 8
  store %struct.Memory* %loadMem_490dac, %struct.Memory** %MEMORY
  br label %block_.L_490cfa

block_.L_490db1:                                  ; preds = %block_.L_490cfa
  %loadMem_490db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %PC.i1038
  %1986 = add i64 %1985, 5
  %1987 = load i64, i64* %PC.i1038
  %1988 = add i64 %1987, 5
  store i64 %1988, i64* %PC.i1038
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1986, i64* %1989, align 8
  store %struct.Memory* %loadMem_490db1, %struct.Memory** %MEMORY
  br label %block_.L_490db6

block_.L_490db6:                                  ; preds = %block_.L_490db1
  %loadMem_490db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 1
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RAX.i1036 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 15
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RBP.i1037 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RBP.i1037
  %2000 = sub i64 %1999, 36
  %2001 = load i64, i64* %PC.i1035
  %2002 = add i64 %2001, 3
  store i64 %2002, i64* %PC.i1035
  %2003 = inttoptr i64 %2000 to i32*
  %2004 = load i32, i32* %2003
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %RAX.i1036, align 8
  store %struct.Memory* %loadMem_490db6, %struct.Memory** %MEMORY
  %loadMem_490db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i1033 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 1
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RAX.i1034 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RAX.i1034
  %2013 = load i64, i64* %PC.i1033
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i1033
  %2015 = trunc i64 %2012 to i32
  %2016 = add i32 1, %2015
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RAX.i1034, align 8
  %2018 = icmp ult i32 %2016, %2015
  %2019 = icmp ult i32 %2016, 1
  %2020 = or i1 %2018, %2019
  %2021 = zext i1 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2021, i8* %2022, align 1
  %2023 = and i32 %2016, 255
  %2024 = call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2027, i8* %2028, align 1
  %2029 = xor i64 1, %2012
  %2030 = trunc i64 %2029 to i32
  %2031 = xor i32 %2030, %2016
  %2032 = lshr i32 %2031, 4
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2034, i8* %2035, align 1
  %2036 = icmp eq i32 %2016, 0
  %2037 = zext i1 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2037, i8* %2038, align 1
  %2039 = lshr i32 %2016, 31
  %2040 = trunc i32 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2040, i8* %2041, align 1
  %2042 = lshr i32 %2015, 31
  %2043 = xor i32 %2039, %2042
  %2044 = add i32 %2043, %2039
  %2045 = icmp eq i32 %2044, 2
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2046, i8* %2047, align 1
  store %struct.Memory* %loadMem_490db9, %struct.Memory** %MEMORY
  %loadMem_490dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 1
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %EAX.i1031 = bitcast %union.anon* %2053 to i32*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 15
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RBP.i1032 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %RBP.i1032
  %2058 = sub i64 %2057, 36
  %2059 = load i32, i32* %EAX.i1031
  %2060 = zext i32 %2059 to i64
  %2061 = load i64, i64* %PC.i1030
  %2062 = add i64 %2061, 3
  store i64 %2062, i64* %PC.i1030
  %2063 = inttoptr i64 %2058 to i32*
  store i32 %2059, i32* %2063
  store %struct.Memory* %loadMem_490dbc, %struct.Memory** %MEMORY
  %loadMem_490dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %2066 to i64*
  %2067 = load i64, i64* %PC.i1029
  %2068 = add i64 %2067, -215
  %2069 = load i64, i64* %PC.i1029
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %PC.i1029
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2068, i64* %2071, align 8
  store %struct.Memory* %loadMem_490dbf, %struct.Memory** %MEMORY
  br label %block_.L_490ce8

block_.L_490dc4:                                  ; preds = %block_.L_490ce8
  %loadMem_490dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %PC.i1028
  %2076 = add i64 %2075, 1552
  %2077 = load i64, i64* %PC.i1028
  %2078 = add i64 %2077, 5
  store i64 %2078, i64* %PC.i1028
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2076, i64* %2079, align 8
  store %struct.Memory* %loadMem_490dc4, %struct.Memory** %MEMORY
  br label %block_.L_4913d4

block_.L_490dc9:                                  ; preds = %routine_idivl__r10d.exit
  %loadMem_490dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 15
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RBP.i1027 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RBP.i1027
  %2087 = sub i64 %2086, 28
  %2088 = load i64, i64* %PC.i1026
  %2089 = add i64 %2088, 4
  store i64 %2089, i64* %PC.i1026
  %2090 = inttoptr i64 %2087 to i32*
  %2091 = load i32, i32* %2090
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2092, align 1
  %2093 = and i32 %2091, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2099, align 1
  %2100 = icmp eq i32 %2091, 0
  %2101 = zext i1 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i32 %2091, 31
  %2104 = trunc i32 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2104, i8* %2105, align 1
  %2106 = lshr i32 %2091, 31
  %2107 = xor i32 %2103, %2106
  %2108 = add i32 %2107, %2106
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2110, i8* %2111, align 1
  store %struct.Memory* %loadMem_490dc9, %struct.Memory** %MEMORY
  %loadMem_490dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %PC.i1025
  %2116 = add i64 %2115, 382
  %2117 = load i64, i64* %PC.i1025
  %2118 = add i64 %2117, 6
  %2119 = load i64, i64* %PC.i1025
  %2120 = add i64 %2119, 6
  store i64 %2120, i64* %PC.i1025
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2122 = load i8, i8* %2121, align 1
  %2123 = icmp eq i8 %2122, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %BRANCH_TAKEN, align 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2126 = select i1 %2123, i64 %2116, i64 %2118
  store i64 %2126, i64* %2125, align 8
  store %struct.Memory* %loadMem_490dcd, %struct.Memory** %MEMORY
  %loadBr_490dcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490dcd = icmp eq i8 %loadBr_490dcd, 1
  br i1 %cmpBr_490dcd, label %block_.L_490f4b, label %block_490dd3

block_490dd3:                                     ; preds = %block_.L_490dc9
  %loadMem_490dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 1
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RAX.i1023 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 15
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RBP.i1024 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %RBP.i1024
  %2137 = sub i64 %2136, 44
  %2138 = load i64, i64* %PC.i1022
  %2139 = add i64 %2138, 3
  store i64 %2139, i64* %PC.i1022
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RAX.i1023, align 8
  store %struct.Memory* %loadMem_490dd3, %struct.Memory** %MEMORY
  %loadMem_490dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 1
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %EAX.i1020 = bitcast %union.anon* %2148 to i32*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i1021 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RBP.i1021
  %2153 = sub i64 %2152, 36
  %2154 = load i32, i32* %EAX.i1020
  %2155 = zext i32 %2154 to i64
  %2156 = load i64, i64* %PC.i1019
  %2157 = add i64 %2156, 3
  store i64 %2157, i64* %PC.i1019
  %2158 = inttoptr i64 %2153 to i32*
  store i32 %2154, i32* %2158
  store %struct.Memory* %loadMem_490dd6, %struct.Memory** %MEMORY
  br label %block_.L_490dd9

block_.L_490dd9:                                  ; preds = %block_.L_490f38, %block_490dd3
  %loadMem_490dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 1
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RAX.i1017 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i1018 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i1018
  %2169 = sub i64 %2168, 36
  %2170 = load i64, i64* %PC.i1016
  %2171 = add i64 %2170, 3
  store i64 %2171, i64* %PC.i1016
  %2172 = inttoptr i64 %2169 to i32*
  %2173 = load i32, i32* %2172
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RAX.i1017, align 8
  store %struct.Memory* %loadMem_490dd9, %struct.Memory** %MEMORY
  %loadMem_490ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 1
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %EAX.i1014 = bitcast %union.anon* %2180 to i32*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i1015 = bitcast %union.anon* %2183 to i64*
  %2184 = load i32, i32* %EAX.i1014
  %2185 = zext i32 %2184 to i64
  %2186 = load i64, i64* %RBP.i1015
  %2187 = sub i64 %2186, 52
  %2188 = load i64, i64* %PC.i1013
  %2189 = add i64 %2188, 3
  store i64 %2189, i64* %PC.i1013
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = sub i32 %2184, %2191
  %2193 = icmp ult i32 %2184, %2191
  %2194 = zext i1 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2194, i8* %2195, align 1
  %2196 = and i32 %2192, 255
  %2197 = call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2200, i8* %2201, align 1
  %2202 = xor i32 %2191, %2184
  %2203 = xor i32 %2202, %2192
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2206, i8* %2207, align 1
  %2208 = icmp eq i32 %2192, 0
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2209, i8* %2210, align 1
  %2211 = lshr i32 %2192, 31
  %2212 = trunc i32 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2212, i8* %2213, align 1
  %2214 = lshr i32 %2184, 31
  %2215 = lshr i32 %2191, 31
  %2216 = xor i32 %2215, %2214
  %2217 = xor i32 %2211, %2214
  %2218 = add i32 %2217, %2216
  %2219 = icmp eq i32 %2218, 2
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2220, i8* %2221, align 1
  store %struct.Memory* %loadMem_490ddc, %struct.Memory** %MEMORY
  %loadMem_490ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %PC.i1012
  %2226 = add i64 %2225, 359
  %2227 = load i64, i64* %PC.i1012
  %2228 = add i64 %2227, 6
  %2229 = load i64, i64* %PC.i1012
  %2230 = add i64 %2229, 6
  store i64 %2230, i64* %PC.i1012
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2232 = load i8, i8* %2231, align 1
  %2233 = icmp ne i8 %2232, 0
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2235 = load i8, i8* %2234, align 1
  %2236 = icmp ne i8 %2235, 0
  %2237 = xor i1 %2233, %2236
  %2238 = xor i1 %2237, true
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %BRANCH_TAKEN, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2241 = select i1 %2237, i64 %2228, i64 %2226
  store i64 %2241, i64* %2240, align 8
  store %struct.Memory* %loadMem_490ddf, %struct.Memory** %MEMORY
  %loadBr_490ddf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ddf = icmp eq i8 %loadBr_490ddf, 1
  br i1 %cmpBr_490ddf, label %block_.L_490f46, label %block_490de5

block_490de5:                                     ; preds = %block_.L_490dd9
  %loadMem_490de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 1
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RAX.i1010 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 15
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RBP.i1011 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RBP.i1011
  %2252 = sub i64 %2251, 40
  %2253 = load i64, i64* %PC.i1009
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC.i1009
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i1010, align 8
  store %struct.Memory* %loadMem_490de5, %struct.Memory** %MEMORY
  %loadMem_490de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 1
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %EAX.i1007 = bitcast %union.anon* %2263 to i32*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 15
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RBP.i1008 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RBP.i1008
  %2268 = sub i64 %2267, 32
  %2269 = load i32, i32* %EAX.i1007
  %2270 = zext i32 %2269 to i64
  %2271 = load i64, i64* %PC.i1006
  %2272 = add i64 %2271, 3
  store i64 %2272, i64* %PC.i1006
  %2273 = inttoptr i64 %2268 to i32*
  store i32 %2269, i32* %2273
  store %struct.Memory* %loadMem_490de8, %struct.Memory** %MEMORY
  br label %block_.L_490deb

block_.L_490deb:                                  ; preds = %block_490df7, %block_490de5
  %loadMem_490deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 1
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RAX.i1004 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 15
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RBP.i1005 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %RBP.i1005
  %2284 = sub i64 %2283, 32
  %2285 = load i64, i64* %PC.i1003
  %2286 = add i64 %2285, 3
  store i64 %2286, i64* %PC.i1003
  %2287 = inttoptr i64 %2284 to i32*
  %2288 = load i32, i32* %2287
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RAX.i1004, align 8
  store %struct.Memory* %loadMem_490deb, %struct.Memory** %MEMORY
  %loadMem_490dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 1
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %EAX.i1001 = bitcast %union.anon* %2295 to i32*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 15
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RBP.i1002 = bitcast %union.anon* %2298 to i64*
  %2299 = load i32, i32* %EAX.i1001
  %2300 = zext i32 %2299 to i64
  %2301 = load i64, i64* %RBP.i1002
  %2302 = sub i64 %2301, 48
  %2303 = load i64, i64* %PC.i1000
  %2304 = add i64 %2303, 3
  store i64 %2304, i64* %PC.i1000
  %2305 = inttoptr i64 %2302 to i32*
  %2306 = load i32, i32* %2305
  %2307 = sub i32 %2299, %2306
  %2308 = icmp ult i32 %2299, %2306
  %2309 = zext i1 %2308 to i8
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2309, i8* %2310, align 1
  %2311 = and i32 %2307, 255
  %2312 = call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2315, i8* %2316, align 1
  %2317 = xor i32 %2306, %2299
  %2318 = xor i32 %2317, %2307
  %2319 = lshr i32 %2318, 4
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2321, i8* %2322, align 1
  %2323 = icmp eq i32 %2307, 0
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2324, i8* %2325, align 1
  %2326 = lshr i32 %2307, 31
  %2327 = trunc i32 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i32 %2299, 31
  %2330 = lshr i32 %2306, 31
  %2331 = xor i32 %2330, %2329
  %2332 = xor i32 %2326, %2329
  %2333 = add i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2335, i8* %2336, align 1
  store %struct.Memory* %loadMem_490dee, %struct.Memory** %MEMORY
  %loadMem_490df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %PC.i999
  %2341 = add i64 %2340, 322
  %2342 = load i64, i64* %PC.i999
  %2343 = add i64 %2342, 6
  %2344 = load i64, i64* %PC.i999
  %2345 = add i64 %2344, 6
  store i64 %2345, i64* %PC.i999
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2347 = load i8, i8* %2346, align 1
  %2348 = icmp ne i8 %2347, 0
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2350 = load i8, i8* %2349, align 1
  %2351 = icmp ne i8 %2350, 0
  %2352 = xor i1 %2348, %2351
  %2353 = xor i1 %2352, true
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %BRANCH_TAKEN, align 1
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2356 = select i1 %2352, i64 %2343, i64 %2341
  store i64 %2356, i64* %2355, align 8
  store %struct.Memory* %loadMem_490df1, %struct.Memory** %MEMORY
  %loadBr_490df1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490df1 = icmp eq i8 %loadBr_490df1, 1
  br i1 %cmpBr_490df1, label %block_.L_490f33, label %block_490df7

block_490df7:                                     ; preds = %block_.L_490deb
  %loadMem_490df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 1
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RAX.i998 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %PC.i997
  %2364 = add i64 %2363, 10
  store i64 %2364, i64* %PC.i997
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i998, align 8
  store %struct.Memory* %loadMem_490df7, %struct.Memory** %MEMORY
  %loadMem_490e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 5
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %PC.i995
  %2372 = add i64 %2371, 10
  store i64 %2372, i64* %PC.i995
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i996, align 8
  store %struct.Memory* %loadMem_490e01, %struct.Memory** %MEMORY
  %loadMem_490e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 7
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RDX.i993 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 15
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RBP.i994 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %RBP.i994
  %2383 = sub i64 %2382, 64
  %2384 = load i64, i64* %PC.i992
  %2385 = add i64 %2384, 4
  store i64 %2385, i64* %PC.i992
  %2386 = inttoptr i64 %2383 to i64*
  %2387 = load i64, i64* %2386
  store i64 %2387, i64* %RDX.i993, align 8
  store %struct.Memory* %loadMem_490e0b, %struct.Memory** %MEMORY
  %loadMem_490e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 9
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RSI.i990 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 15
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %RBP.i991
  %2398 = sub i64 %2397, 32
  %2399 = load i64, i64* %PC.i989
  %2400 = add i64 %2399, 4
  store i64 %2400, i64* %PC.i989
  %2401 = inttoptr i64 %2398 to i32*
  %2402 = load i32, i32* %2401
  %2403 = sext i32 %2402 to i64
  store i64 %2403, i64* %RSI.i990, align 8
  store %struct.Memory* %loadMem_490e0f, %struct.Memory** %MEMORY
  %loadMem_490e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 7
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RDX.i987 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 9
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RSI.i988 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RDX.i987
  %2414 = load i64, i64* %RSI.i988
  %2415 = mul i64 %2414, 8
  %2416 = add i64 %2415, %2413
  %2417 = load i64, i64* %PC.i986
  %2418 = add i64 %2417, 4
  store i64 %2418, i64* %PC.i986
  %2419 = inttoptr i64 %2416 to i64*
  %2420 = load i64, i64* %2419
  store i64 %2420, i64* %RDX.i987, align 8
  store %struct.Memory* %loadMem_490e13, %struct.Memory** %MEMORY
  %loadMem_490e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 9
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RSI.i984 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 15
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RBP.i985 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %RBP.i985
  %2431 = sub i64 %2430, 36
  %2432 = load i64, i64* %PC.i983
  %2433 = add i64 %2432, 4
  store i64 %2433, i64* %PC.i983
  %2434 = inttoptr i64 %2431 to i32*
  %2435 = load i32, i32* %2434
  %2436 = sext i32 %2435 to i64
  store i64 %2436, i64* %RSI.i984, align 8
  store %struct.Memory* %loadMem_490e17, %struct.Memory** %MEMORY
  %loadMem_490e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 7
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RDX.i981 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 9
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RSI.i982 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %RDX.i981
  %2447 = load i64, i64* %RSI.i982
  %2448 = mul i64 %2447, 8
  %2449 = add i64 %2448, %2446
  %2450 = load i64, i64* %PC.i980
  %2451 = add i64 %2450, 4
  store i64 %2451, i64* %PC.i980
  %2452 = inttoptr i64 %2449 to i64*
  %2453 = load i64, i64* %2452
  store i64 %2453, i64* %RDX.i981, align 8
  store %struct.Memory* %loadMem_490e1b, %struct.Memory** %MEMORY
  %loadMem_490e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 7
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RDX.i979 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RDX.i979
  %2461 = load i64, i64* %PC.i978
  %2462 = add i64 %2461, 3
  store i64 %2462, i64* %PC.i978
  %2463 = inttoptr i64 %2460 to i64*
  %2464 = load i64, i64* %2463
  store i64 %2464, i64* %RDX.i979, align 8
  store %struct.Memory* %loadMem_490e1f, %struct.Memory** %MEMORY
  %loadMem_490e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 9
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RSI.i976 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 15
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RBP.i977 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %RBP.i977
  %2475 = sub i64 %2474, 16
  %2476 = load i64, i64* %PC.i975
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC.i975
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478
  %2480 = sext i32 %2479 to i64
  store i64 %2480, i64* %RSI.i976, align 8
  store %struct.Memory* %loadMem_490e22, %struct.Memory** %MEMORY
  %loadMem_490e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 7
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RDX.i973 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 9
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RSI.i974 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RDX.i973
  %2491 = load i64, i64* %RSI.i974
  %2492 = mul i64 %2491, 8
  %2493 = add i64 %2492, %2490
  %2494 = load i64, i64* %PC.i972
  %2495 = add i64 %2494, 4
  store i64 %2495, i64* %PC.i972
  %2496 = inttoptr i64 %2493 to i64*
  %2497 = load i64, i64* %2496
  store i64 %2497, i64* %RDX.i973, align 8
  store %struct.Memory* %loadMem_490e26, %struct.Memory** %MEMORY
  %loadMem_490e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 7
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RDX.i971 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RDX.i971
  %2505 = add i64 %2504, 32
  %2506 = load i64, i64* %PC.i970
  %2507 = add i64 %2506, 4
  store i64 %2507, i64* %PC.i970
  %2508 = inttoptr i64 %2505 to i64*
  %2509 = load i64, i64* %2508
  store i64 %2509, i64* %RDX.i971, align 8
  store %struct.Memory* %loadMem_490e2a, %struct.Memory** %MEMORY
  %loadMem_490e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 11
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %DI.i968 = bitcast %union.anon* %2515 to i16*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 7
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RDX.i969 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RDX.i969
  %2520 = load i64, i64* %PC.i967
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i967
  %2522 = inttoptr i64 %2519 to i16*
  %2523 = load i16, i16* %2522
  store i16 %2523, i16* %DI.i968, align 2
  store %struct.Memory* %loadMem_490e2e, %struct.Memory** %MEMORY
  %loadMem_490e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 7
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RDX.i965 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 15
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RBP.i966
  %2534 = sub i64 %2533, 4
  %2535 = load i64, i64* %PC.i964
  %2536 = add i64 %2535, 4
  store i64 %2536, i64* %PC.i964
  %2537 = inttoptr i64 %2534 to i32*
  %2538 = load i32, i32* %2537
  %2539 = sext i32 %2538 to i64
  store i64 %2539, i64* %RDX.i965, align 8
  store %struct.Memory* %loadMem_490e31, %struct.Memory** %MEMORY
  %loadMem_490e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 7
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RDX.i963 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RDX.i963
  %2547 = load i64, i64* %PC.i962
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %PC.i962
  %2549 = shl i64 %2546, 6
  %2550 = icmp slt i64 %2549, 0
  %2551 = shl i64 %2549, 1
  store i64 %2551, i64* %RDX.i963, align 8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2553 = zext i1 %2550 to i8
  store i8 %2553, i8* %2552, align 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2555 = trunc i64 %2551 to i32
  %2556 = and i32 %2555, 254
  %2557 = call i32 @llvm.ctpop.i32(i32 %2556)
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  store i8 %2560, i8* %2554, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2561, align 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2563 = icmp eq i64 %2551, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %2562, align 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2566 = lshr i64 %2551, 63
  %2567 = trunc i64 %2566 to i8
  store i8 %2567, i8* %2565, align 1
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2568, align 1
  store %struct.Memory* %loadMem_490e35, %struct.Memory** %MEMORY
  %loadMem_490e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 5
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RCX.i960 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 9
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RSI.i961 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %RCX.i960
  %2579 = load i64, i64* %PC.i959
  %2580 = add i64 %2579, 3
  store i64 %2580, i64* %PC.i959
  store i64 %2578, i64* %RSI.i961, align 8
  store %struct.Memory* %loadMem_490e39, %struct.Memory** %MEMORY
  %loadMem_490e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 7
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RDX.i957 = bitcast %union.anon* %2586 to i64*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 9
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %RSI.i958 = bitcast %union.anon* %2589 to i64*
  %2590 = load i64, i64* %RSI.i958
  %2591 = load i64, i64* %RDX.i957
  %2592 = load i64, i64* %PC.i956
  %2593 = add i64 %2592, 3
  store i64 %2593, i64* %PC.i956
  %2594 = add i64 %2591, %2590
  store i64 %2594, i64* %RSI.i958, align 8
  %2595 = icmp ult i64 %2594, %2590
  %2596 = icmp ult i64 %2594, %2591
  %2597 = or i1 %2595, %2596
  %2598 = zext i1 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2598, i8* %2599, align 1
  %2600 = trunc i64 %2594 to i32
  %2601 = and i32 %2600, 255
  %2602 = call i32 @llvm.ctpop.i32(i32 %2601)
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2605, i8* %2606, align 1
  %2607 = xor i64 %2591, %2590
  %2608 = xor i64 %2607, %2594
  %2609 = lshr i64 %2608, 4
  %2610 = trunc i64 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2611, i8* %2612, align 1
  %2613 = icmp eq i64 %2594, 0
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2614, i8* %2615, align 1
  %2616 = lshr i64 %2594, 63
  %2617 = trunc i64 %2616 to i8
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2617, i8* %2618, align 1
  %2619 = lshr i64 %2590, 63
  %2620 = lshr i64 %2591, 63
  %2621 = xor i64 %2616, %2619
  %2622 = xor i64 %2616, %2620
  %2623 = add i64 %2621, %2622
  %2624 = icmp eq i64 %2623, 2
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2625, i8* %2626, align 1
  store %struct.Memory* %loadMem_490e3c, %struct.Memory** %MEMORY
  %loadMem_490e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 7
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RDX.i954 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 15
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RBP.i955 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %RBP.i955
  %2637 = sub i64 %2636, 32
  %2638 = load i64, i64* %PC.i953
  %2639 = add i64 %2638, 4
  store i64 %2639, i64* %PC.i953
  %2640 = inttoptr i64 %2637 to i32*
  %2641 = load i32, i32* %2640
  %2642 = sext i32 %2641 to i64
  store i64 %2642, i64* %RDX.i954, align 8
  store %struct.Memory* %loadMem_490e3f, %struct.Memory** %MEMORY
  %loadMem_490e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 7
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RDX.i952 = bitcast %union.anon* %2648 to i64*
  %2649 = load i64, i64* %RDX.i952
  %2650 = load i64, i64* %PC.i951
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i951
  %2652 = shl i64 %2649, 3
  %2653 = icmp slt i64 %2652, 0
  %2654 = shl i64 %2652, 1
  store i64 %2654, i64* %RDX.i952, align 8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2656 = zext i1 %2653 to i8
  store i8 %2656, i8* %2655, align 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2658 = trunc i64 %2654 to i32
  %2659 = and i32 %2658, 254
  %2660 = call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  store i8 %2663, i8* %2657, align 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2664, align 1
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2666 = icmp eq i64 %2654, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %2665, align 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2669 = lshr i64 %2654, 63
  %2670 = trunc i64 %2669 to i8
  store i8 %2670, i8* %2668, align 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2671, align 1
  store %struct.Memory* %loadMem_490e43, %struct.Memory** %MEMORY
  %loadMem_490e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 7
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RDX.i949 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 9
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RSI.i950 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RSI.i950
  %2682 = load i64, i64* %RDX.i949
  %2683 = load i64, i64* %PC.i948
  %2684 = add i64 %2683, 3
  store i64 %2684, i64* %PC.i948
  %2685 = add i64 %2682, %2681
  store i64 %2685, i64* %RSI.i950, align 8
  %2686 = icmp ult i64 %2685, %2681
  %2687 = icmp ult i64 %2685, %2682
  %2688 = or i1 %2686, %2687
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = trunc i64 %2685 to i32
  %2692 = and i32 %2691, 255
  %2693 = call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2696, i8* %2697, align 1
  %2698 = xor i64 %2682, %2681
  %2699 = xor i64 %2698, %2685
  %2700 = lshr i64 %2699, 4
  %2701 = trunc i64 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2702, i8* %2703, align 1
  %2704 = icmp eq i64 %2685, 0
  %2705 = zext i1 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2705, i8* %2706, align 1
  %2707 = lshr i64 %2685, 63
  %2708 = trunc i64 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2708, i8* %2709, align 1
  %2710 = lshr i64 %2681, 63
  %2711 = lshr i64 %2682, 63
  %2712 = xor i64 %2707, %2710
  %2713 = xor i64 %2707, %2711
  %2714 = add i64 %2712, %2713
  %2715 = icmp eq i64 %2714, 2
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2716, i8* %2717, align 1
  store %struct.Memory* %loadMem_490e47, %struct.Memory** %MEMORY
  %loadMem_490e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 7
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RDX.i946 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 15
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %RBP.i947
  %2728 = sub i64 %2727, 36
  %2729 = load i64, i64* %PC.i945
  %2730 = add i64 %2729, 4
  store i64 %2730, i64* %PC.i945
  %2731 = inttoptr i64 %2728 to i32*
  %2732 = load i32, i32* %2731
  %2733 = sext i32 %2732 to i64
  store i64 %2733, i64* %RDX.i946, align 8
  store %struct.Memory* %loadMem_490e4a, %struct.Memory** %MEMORY
  %loadMem_490e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 11
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %DI.i942 = bitcast %union.anon* %2739 to i16*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 7
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RDX.i943 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 9
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RSI.i944 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RSI.i944
  %2747 = load i64, i64* %RDX.i943
  %2748 = mul i64 %2747, 4
  %2749 = add i64 %2748, %2746
  %2750 = load i16, i16* %DI.i942
  %2751 = zext i16 %2750 to i64
  %2752 = load i64, i64* %PC.i941
  %2753 = add i64 %2752, 4
  store i64 %2753, i64* %PC.i941
  %2754 = inttoptr i64 %2749 to i16*
  store i16 %2750, i16* %2754
  store %struct.Memory* %loadMem_490e4e, %struct.Memory** %MEMORY
  %loadMem_490e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 7
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RDX.i939 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 15
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RBP.i940 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RBP.i940
  %2765 = sub i64 %2764, 64
  %2766 = load i64, i64* %PC.i938
  %2767 = add i64 %2766, 4
  store i64 %2767, i64* %PC.i938
  %2768 = inttoptr i64 %2765 to i64*
  %2769 = load i64, i64* %2768
  store i64 %2769, i64* %RDX.i939, align 8
  store %struct.Memory* %loadMem_490e52, %struct.Memory** %MEMORY
  %loadMem_490e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 9
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RSI.i936 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i937
  %2780 = sub i64 %2779, 32
  %2781 = load i64, i64* %PC.i935
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i935
  %2783 = inttoptr i64 %2780 to i32*
  %2784 = load i32, i32* %2783
  %2785 = sext i32 %2784 to i64
  store i64 %2785, i64* %RSI.i936, align 8
  store %struct.Memory* %loadMem_490e56, %struct.Memory** %MEMORY
  %loadMem_490e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 7
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RDX.i933 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 9
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RSI.i934 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RDX.i933
  %2796 = load i64, i64* %RSI.i934
  %2797 = mul i64 %2796, 8
  %2798 = add i64 %2797, %2795
  %2799 = load i64, i64* %PC.i932
  %2800 = add i64 %2799, 4
  store i64 %2800, i64* %PC.i932
  %2801 = inttoptr i64 %2798 to i64*
  %2802 = load i64, i64* %2801
  store i64 %2802, i64* %RDX.i933, align 8
  store %struct.Memory* %loadMem_490e5a, %struct.Memory** %MEMORY
  %loadMem_490e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 9
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RSI.i930 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 15
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RBP.i931
  %2813 = sub i64 %2812, 36
  %2814 = load i64, i64* %PC.i929
  %2815 = add i64 %2814, 4
  store i64 %2815, i64* %PC.i929
  %2816 = inttoptr i64 %2813 to i32*
  %2817 = load i32, i32* %2816
  %2818 = sext i32 %2817 to i64
  store i64 %2818, i64* %RSI.i930, align 8
  store %struct.Memory* %loadMem_490e5e, %struct.Memory** %MEMORY
  %loadMem_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 7
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RDX.i927 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 9
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RSI.i928 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RDX.i927
  %2829 = load i64, i64* %RSI.i928
  %2830 = mul i64 %2829, 8
  %2831 = add i64 %2830, %2828
  %2832 = load i64, i64* %PC.i926
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC.i926
  %2834 = inttoptr i64 %2831 to i64*
  %2835 = load i64, i64* %2834
  store i64 %2835, i64* %RDX.i927, align 8
  store %struct.Memory* %loadMem_490e62, %struct.Memory** %MEMORY
  %loadMem_490e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 7
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RDX.i925 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RDX.i925
  %2843 = load i64, i64* %PC.i924
  %2844 = add i64 %2843, 3
  store i64 %2844, i64* %PC.i924
  %2845 = inttoptr i64 %2842 to i64*
  %2846 = load i64, i64* %2845
  store i64 %2846, i64* %RDX.i925, align 8
  store %struct.Memory* %loadMem_490e66, %struct.Memory** %MEMORY
  %loadMem_490e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 9
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RSI.i922 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i923
  %2857 = sub i64 %2856, 16
  %2858 = load i64, i64* %PC.i921
  %2859 = add i64 %2858, 4
  store i64 %2859, i64* %PC.i921
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860
  %2862 = sext i32 %2861 to i64
  store i64 %2862, i64* %RSI.i922, align 8
  store %struct.Memory* %loadMem_490e69, %struct.Memory** %MEMORY
  %loadMem_490e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 7
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RDX.i919 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 9
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RSI.i920 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RDX.i919
  %2873 = load i64, i64* %RSI.i920
  %2874 = mul i64 %2873, 8
  %2875 = add i64 %2874, %2872
  %2876 = load i64, i64* %PC.i918
  %2877 = add i64 %2876, 4
  store i64 %2877, i64* %PC.i918
  %2878 = inttoptr i64 %2875 to i64*
  %2879 = load i64, i64* %2878
  store i64 %2879, i64* %RDX.i919, align 8
  store %struct.Memory* %loadMem_490e6d, %struct.Memory** %MEMORY
  %loadMem_490e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 7
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RDX.i917 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RDX.i917
  %2887 = add i64 %2886, 32
  %2888 = load i64, i64* %PC.i916
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %PC.i916
  %2890 = inttoptr i64 %2887 to i64*
  %2891 = load i64, i64* %2890
  store i64 %2891, i64* %RDX.i917, align 8
  store %struct.Memory* %loadMem_490e71, %struct.Memory** %MEMORY
  %loadMem_490e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 11
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %DI.i914 = bitcast %union.anon* %2897 to i16*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 7
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RDX.i915 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %RDX.i915
  %2902 = add i64 %2901, 2
  %2903 = load i64, i64* %PC.i913
  %2904 = add i64 %2903, 4
  store i64 %2904, i64* %PC.i913
  %2905 = inttoptr i64 %2902 to i16*
  %2906 = load i16, i16* %2905
  store i16 %2906, i16* %DI.i914, align 2
  store %struct.Memory* %loadMem_490e75, %struct.Memory** %MEMORY
  %loadMem_490e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 7
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RDX.i911 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RBP.i912
  %2917 = sub i64 %2916, 4
  %2918 = load i64, i64* %PC.i910
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC.i910
  %2920 = inttoptr i64 %2917 to i32*
  %2921 = load i32, i32* %2920
  %2922 = sext i32 %2921 to i64
  store i64 %2922, i64* %RDX.i911, align 8
  store %struct.Memory* %loadMem_490e79, %struct.Memory** %MEMORY
  %loadMem_490e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 7
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RDX.i909 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RDX.i909
  %2930 = load i64, i64* %PC.i908
  %2931 = add i64 %2930, 4
  store i64 %2931, i64* %PC.i908
  %2932 = shl i64 %2929, 6
  %2933 = icmp slt i64 %2932, 0
  %2934 = shl i64 %2932, 1
  store i64 %2934, i64* %RDX.i909, align 8
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2936 = zext i1 %2933 to i8
  store i8 %2936, i8* %2935, align 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2938 = trunc i64 %2934 to i32
  %2939 = and i32 %2938, 254
  %2940 = call i32 @llvm.ctpop.i32(i32 %2939)
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %2937, align 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2944, align 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2946 = icmp eq i64 %2934, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %2945, align 1
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2949 = lshr i64 %2934, 63
  %2950 = trunc i64 %2949 to i8
  store i8 %2950, i8* %2948, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2951, align 1
  store %struct.Memory* %loadMem_490e7d, %struct.Memory** %MEMORY
  %loadMem_490e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 5
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RCX.i906 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 7
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RDX.i907 = bitcast %union.anon* %2960 to i64*
  %2961 = load i64, i64* %RCX.i906
  %2962 = load i64, i64* %RDX.i907
  %2963 = load i64, i64* %PC.i905
  %2964 = add i64 %2963, 3
  store i64 %2964, i64* %PC.i905
  %2965 = add i64 %2962, %2961
  store i64 %2965, i64* %RCX.i906, align 8
  %2966 = icmp ult i64 %2965, %2961
  %2967 = icmp ult i64 %2965, %2962
  %2968 = or i1 %2966, %2967
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2969, i8* %2970, align 1
  %2971 = trunc i64 %2965 to i32
  %2972 = and i32 %2971, 255
  %2973 = call i32 @llvm.ctpop.i32(i32 %2972)
  %2974 = trunc i32 %2973 to i8
  %2975 = and i8 %2974, 1
  %2976 = xor i8 %2975, 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2976, i8* %2977, align 1
  %2978 = xor i64 %2962, %2961
  %2979 = xor i64 %2978, %2965
  %2980 = lshr i64 %2979, 4
  %2981 = trunc i64 %2980 to i8
  %2982 = and i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2982, i8* %2983, align 1
  %2984 = icmp eq i64 %2965, 0
  %2985 = zext i1 %2984 to i8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2985, i8* %2986, align 1
  %2987 = lshr i64 %2965, 63
  %2988 = trunc i64 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2988, i8* %2989, align 1
  %2990 = lshr i64 %2961, 63
  %2991 = lshr i64 %2962, 63
  %2992 = xor i64 %2987, %2990
  %2993 = xor i64 %2987, %2991
  %2994 = add i64 %2992, %2993
  %2995 = icmp eq i64 %2994, 2
  %2996 = zext i1 %2995 to i8
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2996, i8* %2997, align 1
  store %struct.Memory* %loadMem_490e81, %struct.Memory** %MEMORY
  %loadMem_490e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 7
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RDX.i903 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 15
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %RBP.i904
  %3008 = sub i64 %3007, 32
  %3009 = load i64, i64* %PC.i902
  %3010 = add i64 %3009, 4
  store i64 %3010, i64* %PC.i902
  %3011 = inttoptr i64 %3008 to i32*
  %3012 = load i32, i32* %3011
  %3013 = sext i32 %3012 to i64
  store i64 %3013, i64* %RDX.i903, align 8
  store %struct.Memory* %loadMem_490e84, %struct.Memory** %MEMORY
  %loadMem_490e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 7
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RDX.i901 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RDX.i901
  %3021 = load i64, i64* %PC.i900
  %3022 = add i64 %3021, 4
  store i64 %3022, i64* %PC.i900
  %3023 = shl i64 %3020, 3
  %3024 = icmp slt i64 %3023, 0
  %3025 = shl i64 %3023, 1
  store i64 %3025, i64* %RDX.i901, align 8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3027 = zext i1 %3024 to i8
  store i8 %3027, i8* %3026, align 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3029 = trunc i64 %3025 to i32
  %3030 = and i32 %3029, 254
  %3031 = call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %3028, align 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3035, align 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3037 = icmp eq i64 %3025, 0
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %3036, align 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3040 = lshr i64 %3025, 63
  %3041 = trunc i64 %3040 to i8
  store i8 %3041, i8* %3039, align 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3042, align 1
  store %struct.Memory* %loadMem_490e88, %struct.Memory** %MEMORY
  %loadMem_490e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 5
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 7
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RDX.i899 = bitcast %union.anon* %3051 to i64*
  %3052 = load i64, i64* %RCX.i898
  %3053 = load i64, i64* %RDX.i899
  %3054 = load i64, i64* %PC.i897
  %3055 = add i64 %3054, 3
  store i64 %3055, i64* %PC.i897
  %3056 = add i64 %3053, %3052
  store i64 %3056, i64* %RCX.i898, align 8
  %3057 = icmp ult i64 %3056, %3052
  %3058 = icmp ult i64 %3056, %3053
  %3059 = or i1 %3057, %3058
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3060, i8* %3061, align 1
  %3062 = trunc i64 %3056 to i32
  %3063 = and i32 %3062, 255
  %3064 = call i32 @llvm.ctpop.i32(i32 %3063)
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = xor i8 %3066, 1
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3067, i8* %3068, align 1
  %3069 = xor i64 %3053, %3052
  %3070 = xor i64 %3069, %3056
  %3071 = lshr i64 %3070, 4
  %3072 = trunc i64 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3073, i8* %3074, align 1
  %3075 = icmp eq i64 %3056, 0
  %3076 = zext i1 %3075 to i8
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3076, i8* %3077, align 1
  %3078 = lshr i64 %3056, 63
  %3079 = trunc i64 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3079, i8* %3080, align 1
  %3081 = lshr i64 %3052, 63
  %3082 = lshr i64 %3053, 63
  %3083 = xor i64 %3078, %3081
  %3084 = xor i64 %3078, %3082
  %3085 = add i64 %3083, %3084
  %3086 = icmp eq i64 %3085, 2
  %3087 = zext i1 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3087, i8* %3088, align 1
  store %struct.Memory* %loadMem_490e8c, %struct.Memory** %MEMORY
  %loadMem_490e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 7
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RDX.i895 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 15
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %3097 to i64*
  %3098 = load i64, i64* %RBP.i896
  %3099 = sub i64 %3098, 36
  %3100 = load i64, i64* %PC.i894
  %3101 = add i64 %3100, 4
  store i64 %3101, i64* %PC.i894
  %3102 = inttoptr i64 %3099 to i32*
  %3103 = load i32, i32* %3102
  %3104 = sext i32 %3103 to i64
  store i64 %3104, i64* %RDX.i895, align 8
  store %struct.Memory* %loadMem_490e8f, %struct.Memory** %MEMORY
  %loadMem_490e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 11
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %DI.i891 = bitcast %union.anon* %3110 to i16*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 5
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 7
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RDX.i893 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %RCX.i892
  %3118 = load i64, i64* %RDX.i893
  %3119 = mul i64 %3118, 4
  %3120 = add i64 %3117, 2
  %3121 = add i64 %3120, %3119
  %3122 = load i16, i16* %DI.i891
  %3123 = zext i16 %3122 to i64
  %3124 = load i64, i64* %PC.i890
  %3125 = add i64 %3124, 5
  store i64 %3125, i64* %PC.i890
  %3126 = inttoptr i64 %3121 to i16*
  store i16 %3122, i16* %3126
  store %struct.Memory* %loadMem_490e93, %struct.Memory** %MEMORY
  %loadMem_490e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 5
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RCX.i888 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 15
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %RBP.i889
  %3137 = sub i64 %3136, 72
  %3138 = load i64, i64* %PC.i887
  %3139 = add i64 %3138, 4
  store i64 %3139, i64* %PC.i887
  %3140 = inttoptr i64 %3137 to i64*
  %3141 = load i64, i64* %3140
  store i64 %3141, i64* %RCX.i888, align 8
  store %struct.Memory* %loadMem_490e98, %struct.Memory** %MEMORY
  %loadMem_490e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 33
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 7
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RDX.i885 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 15
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %3150 to i64*
  %3151 = load i64, i64* %RBP.i886
  %3152 = sub i64 %3151, 32
  %3153 = load i64, i64* %PC.i884
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %PC.i884
  %3155 = inttoptr i64 %3152 to i32*
  %3156 = load i32, i32* %3155
  %3157 = sext i32 %3156 to i64
  store i64 %3157, i64* %RDX.i885, align 8
  store %struct.Memory* %loadMem_490e9c, %struct.Memory** %MEMORY
  %loadMem_490ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 5
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 7
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RDX.i883 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %RCX.i882
  %3168 = load i64, i64* %RDX.i883
  %3169 = mul i64 %3168, 8
  %3170 = add i64 %3169, %3167
  %3171 = load i64, i64* %PC.i881
  %3172 = add i64 %3171, 4
  store i64 %3172, i64* %PC.i881
  %3173 = inttoptr i64 %3170 to i64*
  %3174 = load i64, i64* %3173
  store i64 %3174, i64* %RCX.i882, align 8
  store %struct.Memory* %loadMem_490ea0, %struct.Memory** %MEMORY
  %loadMem_490ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 7
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RDX.i879 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RBP.i880
  %3185 = sub i64 %3184, 36
  %3186 = load i64, i64* %PC.i878
  %3187 = add i64 %3186, 4
  store i64 %3187, i64* %PC.i878
  %3188 = inttoptr i64 %3185 to i32*
  %3189 = load i32, i32* %3188
  %3190 = sext i32 %3189 to i64
  store i64 %3190, i64* %RDX.i879, align 8
  store %struct.Memory* %loadMem_490ea4, %struct.Memory** %MEMORY
  %loadMem_490ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 5
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 7
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RDX.i877 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RCX.i876
  %3201 = load i64, i64* %RDX.i877
  %3202 = mul i64 %3201, 8
  %3203 = add i64 %3202, %3200
  %3204 = load i64, i64* %PC.i875
  %3205 = add i64 %3204, 4
  store i64 %3205, i64* %PC.i875
  %3206 = inttoptr i64 %3203 to i64*
  %3207 = load i64, i64* %3206
  store i64 %3207, i64* %RCX.i876, align 8
  store %struct.Memory* %loadMem_490ea8, %struct.Memory** %MEMORY
  %loadMem_490eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i874 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %RCX.i874
  %3215 = load i64, i64* %PC.i873
  %3216 = add i64 %3215, 3
  store i64 %3216, i64* %PC.i873
  %3217 = inttoptr i64 %3214 to i64*
  %3218 = load i64, i64* %3217
  store i64 %3218, i64* %RCX.i874, align 8
  store %struct.Memory* %loadMem_490eac, %struct.Memory** %MEMORY
  %loadMem_490eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 7
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RDX.i871 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i872
  %3229 = sub i64 %3228, 16
  %3230 = load i64, i64* %PC.i870
  %3231 = add i64 %3230, 4
  store i64 %3231, i64* %PC.i870
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = sext i32 %3233 to i64
  store i64 %3234, i64* %RDX.i871, align 8
  store %struct.Memory* %loadMem_490eaf, %struct.Memory** %MEMORY
  %loadMem_490eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 5
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 7
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RDX.i869 = bitcast %union.anon* %3243 to i64*
  %3244 = load i64, i64* %RCX.i868
  %3245 = load i64, i64* %RDX.i869
  %3246 = mul i64 %3245, 8
  %3247 = add i64 %3246, %3244
  %3248 = load i64, i64* %PC.i867
  %3249 = add i64 %3248, 4
  store i64 %3249, i64* %PC.i867
  %3250 = inttoptr i64 %3247 to i64*
  %3251 = load i64, i64* %3250
  store i64 %3251, i64* %RCX.i868, align 8
  store %struct.Memory* %loadMem_490eb3, %struct.Memory** %MEMORY
  %loadMem_490eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 5
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RCX.i866
  %3259 = add i64 %3258, 32
  %3260 = load i64, i64* %PC.i865
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %PC.i865
  %3262 = inttoptr i64 %3259 to i64*
  %3263 = load i64, i64* %3262
  store i64 %3263, i64* %RCX.i866, align 8
  store %struct.Memory* %loadMem_490eb7, %struct.Memory** %MEMORY
  %loadMem_490ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 11
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %DI.i863 = bitcast %union.anon* %3269 to i16*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 5
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RCX.i864 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RCX.i864
  %3274 = load i64, i64* %PC.i862
  %3275 = add i64 %3274, 3
  store i64 %3275, i64* %PC.i862
  %3276 = inttoptr i64 %3273 to i16*
  %3277 = load i16, i16* %3276
  store i16 %3277, i16* %DI.i863, align 2
  store %struct.Memory* %loadMem_490ebb, %struct.Memory** %MEMORY
  %loadMem_490ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 5
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RCX.i860 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 15
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RBP.i861
  %3288 = sub i64 %3287, 4
  %3289 = load i64, i64* %PC.i859
  %3290 = add i64 %3289, 4
  store i64 %3290, i64* %PC.i859
  %3291 = inttoptr i64 %3288 to i32*
  %3292 = load i32, i32* %3291
  %3293 = sext i32 %3292 to i64
  store i64 %3293, i64* %RCX.i860, align 8
  store %struct.Memory* %loadMem_490ebe, %struct.Memory** %MEMORY
  %loadMem_490ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 5
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RCX.i858 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RCX.i858
  %3301 = load i64, i64* %PC.i857
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i857
  %3303 = shl i64 %3300, 6
  %3304 = icmp slt i64 %3303, 0
  %3305 = shl i64 %3303, 1
  store i64 %3305, i64* %RCX.i858, align 8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3307 = zext i1 %3304 to i8
  store i8 %3307, i8* %3306, align 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3309 = trunc i64 %3305 to i32
  %3310 = and i32 %3309, 254
  %3311 = call i32 @llvm.ctpop.i32(i32 %3310)
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  %3314 = xor i8 %3313, 1
  store i8 %3314, i8* %3308, align 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3315, align 1
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3317 = icmp eq i64 %3305, 0
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %3316, align 1
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3320 = lshr i64 %3305, 63
  %3321 = trunc i64 %3320 to i8
  store i8 %3321, i8* %3319, align 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3322, align 1
  store %struct.Memory* %loadMem_490ec2, %struct.Memory** %MEMORY
  %loadMem_490ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 1
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 7
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RDX.i856 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RAX.i855
  %3333 = load i64, i64* %PC.i854
  %3334 = add i64 %3333, 3
  store i64 %3334, i64* %PC.i854
  store i64 %3332, i64* %RDX.i856, align 8
  store %struct.Memory* %loadMem_490ec6, %struct.Memory** %MEMORY
  %loadMem_490ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 33
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 5
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 7
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RDX.i853 = bitcast %union.anon* %3343 to i64*
  %3344 = load i64, i64* %RDX.i853
  %3345 = load i64, i64* %RCX.i852
  %3346 = load i64, i64* %PC.i851
  %3347 = add i64 %3346, 3
  store i64 %3347, i64* %PC.i851
  %3348 = add i64 %3345, %3344
  store i64 %3348, i64* %RDX.i853, align 8
  %3349 = icmp ult i64 %3348, %3344
  %3350 = icmp ult i64 %3348, %3345
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3352, i8* %3353, align 1
  %3354 = trunc i64 %3348 to i32
  %3355 = and i32 %3354, 255
  %3356 = call i32 @llvm.ctpop.i32(i32 %3355)
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  %3359 = xor i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3359, i8* %3360, align 1
  %3361 = xor i64 %3345, %3344
  %3362 = xor i64 %3361, %3348
  %3363 = lshr i64 %3362, 4
  %3364 = trunc i64 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3365, i8* %3366, align 1
  %3367 = icmp eq i64 %3348, 0
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3368, i8* %3369, align 1
  %3370 = lshr i64 %3348, 63
  %3371 = trunc i64 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3371, i8* %3372, align 1
  %3373 = lshr i64 %3344, 63
  %3374 = lshr i64 %3345, 63
  %3375 = xor i64 %3370, %3373
  %3376 = xor i64 %3370, %3374
  %3377 = add i64 %3375, %3376
  %3378 = icmp eq i64 %3377, 2
  %3379 = zext i1 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3379, i8* %3380, align 1
  store %struct.Memory* %loadMem_490ec9, %struct.Memory** %MEMORY
  %loadMem_490ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 5
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RCX.i849 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 15
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %RBP.i850
  %3391 = sub i64 %3390, 32
  %3392 = load i64, i64* %PC.i848
  %3393 = add i64 %3392, 4
  store i64 %3393, i64* %PC.i848
  %3394 = inttoptr i64 %3391 to i32*
  %3395 = load i32, i32* %3394
  %3396 = sext i32 %3395 to i64
  store i64 %3396, i64* %RCX.i849, align 8
  store %struct.Memory* %loadMem_490ecc, %struct.Memory** %MEMORY
  %loadMem_490ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 5
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RCX.i847 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RCX.i847
  %3404 = load i64, i64* %PC.i846
  %3405 = add i64 %3404, 4
  store i64 %3405, i64* %PC.i846
  %3406 = shl i64 %3403, 3
  %3407 = icmp slt i64 %3406, 0
  %3408 = shl i64 %3406, 1
  store i64 %3408, i64* %RCX.i847, align 8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3410 = zext i1 %3407 to i8
  store i8 %3410, i8* %3409, align 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3412 = trunc i64 %3408 to i32
  %3413 = and i32 %3412, 254
  %3414 = call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  store i8 %3417, i8* %3411, align 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3418, align 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3420 = icmp eq i64 %3408, 0
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %3419, align 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3423 = lshr i64 %3408, 63
  %3424 = trunc i64 %3423 to i8
  store i8 %3424, i8* %3422, align 1
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3425, align 1
  store %struct.Memory* %loadMem_490ed0, %struct.Memory** %MEMORY
  %loadMem_490ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 5
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 7
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RDX.i845
  %3436 = load i64, i64* %RCX.i844
  %3437 = load i64, i64* %PC.i843
  %3438 = add i64 %3437, 3
  store i64 %3438, i64* %PC.i843
  %3439 = add i64 %3436, %3435
  store i64 %3439, i64* %RDX.i845, align 8
  %3440 = icmp ult i64 %3439, %3435
  %3441 = icmp ult i64 %3439, %3436
  %3442 = or i1 %3440, %3441
  %3443 = zext i1 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3443, i8* %3444, align 1
  %3445 = trunc i64 %3439 to i32
  %3446 = and i32 %3445, 255
  %3447 = call i32 @llvm.ctpop.i32(i32 %3446)
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3450, i8* %3451, align 1
  %3452 = xor i64 %3436, %3435
  %3453 = xor i64 %3452, %3439
  %3454 = lshr i64 %3453, 4
  %3455 = trunc i64 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3456, i8* %3457, align 1
  %3458 = icmp eq i64 %3439, 0
  %3459 = zext i1 %3458 to i8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3459, i8* %3460, align 1
  %3461 = lshr i64 %3439, 63
  %3462 = trunc i64 %3461 to i8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3462, i8* %3463, align 1
  %3464 = lshr i64 %3435, 63
  %3465 = lshr i64 %3436, 63
  %3466 = xor i64 %3461, %3464
  %3467 = xor i64 %3461, %3465
  %3468 = add i64 %3466, %3467
  %3469 = icmp eq i64 %3468, 2
  %3470 = zext i1 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3470, i8* %3471, align 1
  store %struct.Memory* %loadMem_490ed4, %struct.Memory** %MEMORY
  %loadMem_490ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 5
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 15
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RBP.i842
  %3482 = sub i64 %3481, 36
  %3483 = load i64, i64* %PC.i840
  %3484 = add i64 %3483, 4
  store i64 %3484, i64* %PC.i840
  %3485 = inttoptr i64 %3482 to i32*
  %3486 = load i32, i32* %3485
  %3487 = sext i32 %3486 to i64
  store i64 %3487, i64* %RCX.i841, align 8
  store %struct.Memory* %loadMem_490ed7, %struct.Memory** %MEMORY
  %loadMem_490edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 11
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %DI.i837 = bitcast %union.anon* %3493 to i16*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 5
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RCX.i838 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 7
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RDX.i839 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RDX.i839
  %3501 = load i64, i64* %RCX.i838
  %3502 = mul i64 %3501, 4
  %3503 = add i64 %3502, %3500
  %3504 = load i16, i16* %DI.i837
  %3505 = zext i16 %3504 to i64
  %3506 = load i64, i64* %PC.i836
  %3507 = add i64 %3506, 4
  store i64 %3507, i64* %PC.i836
  %3508 = inttoptr i64 %3503 to i16*
  store i16 %3504, i16* %3508
  store %struct.Memory* %loadMem_490edb, %struct.Memory** %MEMORY
  %loadMem_490edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 15
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RBP.i835
  %3519 = sub i64 %3518, 72
  %3520 = load i64, i64* %PC.i833
  %3521 = add i64 %3520, 4
  store i64 %3521, i64* %PC.i833
  %3522 = inttoptr i64 %3519 to i64*
  %3523 = load i64, i64* %3522
  store i64 %3523, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_490edf, %struct.Memory** %MEMORY
  %loadMem_490ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 7
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RDX.i831 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 15
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %3532 to i64*
  %3533 = load i64, i64* %RBP.i832
  %3534 = sub i64 %3533, 32
  %3535 = load i64, i64* %PC.i830
  %3536 = add i64 %3535, 4
  store i64 %3536, i64* %PC.i830
  %3537 = inttoptr i64 %3534 to i32*
  %3538 = load i32, i32* %3537
  %3539 = sext i32 %3538 to i64
  store i64 %3539, i64* %RDX.i831, align 8
  store %struct.Memory* %loadMem_490ee3, %struct.Memory** %MEMORY
  %loadMem_490ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 5
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 7
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RDX.i829 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RCX.i828
  %3550 = load i64, i64* %RDX.i829
  %3551 = mul i64 %3550, 8
  %3552 = add i64 %3551, %3549
  %3553 = load i64, i64* %PC.i827
  %3554 = add i64 %3553, 4
  store i64 %3554, i64* %PC.i827
  %3555 = inttoptr i64 %3552 to i64*
  %3556 = load i64, i64* %3555
  store i64 %3556, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_490ee7, %struct.Memory** %MEMORY
  %loadMem_490eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 7
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RDX.i825 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 15
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %3565 to i64*
  %3566 = load i64, i64* %RBP.i826
  %3567 = sub i64 %3566, 36
  %3568 = load i64, i64* %PC.i824
  %3569 = add i64 %3568, 4
  store i64 %3569, i64* %PC.i824
  %3570 = inttoptr i64 %3567 to i32*
  %3571 = load i32, i32* %3570
  %3572 = sext i32 %3571 to i64
  store i64 %3572, i64* %RDX.i825, align 8
  store %struct.Memory* %loadMem_490eeb, %struct.Memory** %MEMORY
  %loadMem_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 5
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 7
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RDX.i823 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RCX.i822
  %3583 = load i64, i64* %RDX.i823
  %3584 = mul i64 %3583, 8
  %3585 = add i64 %3584, %3582
  %3586 = load i64, i64* %PC.i821
  %3587 = add i64 %3586, 4
  store i64 %3587, i64* %PC.i821
  %3588 = inttoptr i64 %3585 to i64*
  %3589 = load i64, i64* %3588
  store i64 %3589, i64* %RCX.i822, align 8
  store %struct.Memory* %loadMem_490eef, %struct.Memory** %MEMORY
  %loadMem_490ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 5
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RCX.i820
  %3597 = load i64, i64* %PC.i819
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %PC.i819
  %3599 = inttoptr i64 %3596 to i64*
  %3600 = load i64, i64* %3599
  store i64 %3600, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_490ef3, %struct.Memory** %MEMORY
  %loadMem_490ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 7
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RDX.i817 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 15
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %RBP.i818
  %3611 = sub i64 %3610, 16
  %3612 = load i64, i64* %PC.i816
  %3613 = add i64 %3612, 4
  store i64 %3613, i64* %PC.i816
  %3614 = inttoptr i64 %3611 to i32*
  %3615 = load i32, i32* %3614
  %3616 = sext i32 %3615 to i64
  store i64 %3616, i64* %RDX.i817, align 8
  store %struct.Memory* %loadMem_490ef6, %struct.Memory** %MEMORY
  %loadMem_490efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 5
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 7
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RDX.i815 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RCX.i814
  %3627 = load i64, i64* %RDX.i815
  %3628 = mul i64 %3627, 8
  %3629 = add i64 %3628, %3626
  %3630 = load i64, i64* %PC.i813
  %3631 = add i64 %3630, 4
  store i64 %3631, i64* %PC.i813
  %3632 = inttoptr i64 %3629 to i64*
  %3633 = load i64, i64* %3632
  store i64 %3633, i64* %RCX.i814, align 8
  store %struct.Memory* %loadMem_490efa, %struct.Memory** %MEMORY
  %loadMem_490efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 5
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RCX.i812
  %3641 = add i64 %3640, 32
  %3642 = load i64, i64* %PC.i811
  %3643 = add i64 %3642, 4
  store i64 %3643, i64* %PC.i811
  %3644 = inttoptr i64 %3641 to i64*
  %3645 = load i64, i64* %3644
  store i64 %3645, i64* %RCX.i812, align 8
  store %struct.Memory* %loadMem_490efe, %struct.Memory** %MEMORY
  %loadMem_490f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 11
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %DI.i809 = bitcast %union.anon* %3651 to i16*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 5
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RCX.i810
  %3656 = add i64 %3655, 2
  %3657 = load i64, i64* %PC.i808
  %3658 = add i64 %3657, 4
  store i64 %3658, i64* %PC.i808
  %3659 = inttoptr i64 %3656 to i16*
  %3660 = load i16, i16* %3659
  store i16 %3660, i16* %DI.i809, align 2
  store %struct.Memory* %loadMem_490f02, %struct.Memory** %MEMORY
  %loadMem_490f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 5
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i807
  %3671 = sub i64 %3670, 4
  %3672 = load i64, i64* %PC.i805
  %3673 = add i64 %3672, 4
  store i64 %3673, i64* %PC.i805
  %3674 = inttoptr i64 %3671 to i32*
  %3675 = load i32, i32* %3674
  %3676 = sext i32 %3675 to i64
  store i64 %3676, i64* %RCX.i806, align 8
  store %struct.Memory* %loadMem_490f06, %struct.Memory** %MEMORY
  %loadMem_490f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 5
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RCX.i804 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %RCX.i804
  %3684 = load i64, i64* %PC.i803
  %3685 = add i64 %3684, 4
  store i64 %3685, i64* %PC.i803
  %3686 = shl i64 %3683, 6
  %3687 = icmp slt i64 %3686, 0
  %3688 = shl i64 %3686, 1
  store i64 %3688, i64* %RCX.i804, align 8
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3690 = zext i1 %3687 to i8
  store i8 %3690, i8* %3689, align 1
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3692 = trunc i64 %3688 to i32
  %3693 = and i32 %3692, 254
  %3694 = call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %3691, align 1
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3698, align 1
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3700 = icmp eq i64 %3688, 0
  %3701 = zext i1 %3700 to i8
  store i8 %3701, i8* %3699, align 1
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3703 = lshr i64 %3688, 63
  %3704 = trunc i64 %3703 to i8
  store i8 %3704, i8* %3702, align 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3705, align 1
  store %struct.Memory* %loadMem_490f0a, %struct.Memory** %MEMORY
  %loadMem_490f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 1
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 5
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RCX.i802 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RAX.i801
  %3716 = load i64, i64* %RCX.i802
  %3717 = load i64, i64* %PC.i800
  %3718 = add i64 %3717, 3
  store i64 %3718, i64* %PC.i800
  %3719 = add i64 %3716, %3715
  store i64 %3719, i64* %RAX.i801, align 8
  %3720 = icmp ult i64 %3719, %3715
  %3721 = icmp ult i64 %3719, %3716
  %3722 = or i1 %3720, %3721
  %3723 = zext i1 %3722 to i8
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3723, i8* %3724, align 1
  %3725 = trunc i64 %3719 to i32
  %3726 = and i32 %3725, 255
  %3727 = call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3730, i8* %3731, align 1
  %3732 = xor i64 %3716, %3715
  %3733 = xor i64 %3732, %3719
  %3734 = lshr i64 %3733, 4
  %3735 = trunc i64 %3734 to i8
  %3736 = and i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3736, i8* %3737, align 1
  %3738 = icmp eq i64 %3719, 0
  %3739 = zext i1 %3738 to i8
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3739, i8* %3740, align 1
  %3741 = lshr i64 %3719, 63
  %3742 = trunc i64 %3741 to i8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3742, i8* %3743, align 1
  %3744 = lshr i64 %3715, 63
  %3745 = lshr i64 %3716, 63
  %3746 = xor i64 %3741, %3744
  %3747 = xor i64 %3741, %3745
  %3748 = add i64 %3746, %3747
  %3749 = icmp eq i64 %3748, 2
  %3750 = zext i1 %3749 to i8
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3750, i8* %3751, align 1
  store %struct.Memory* %loadMem_490f0e, %struct.Memory** %MEMORY
  %loadMem_490f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 5
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i799
  %3762 = sub i64 %3761, 32
  %3763 = load i64, i64* %PC.i797
  %3764 = add i64 %3763, 4
  store i64 %3764, i64* %PC.i797
  %3765 = inttoptr i64 %3762 to i32*
  %3766 = load i32, i32* %3765
  %3767 = sext i32 %3766 to i64
  store i64 %3767, i64* %RCX.i798, align 8
  store %struct.Memory* %loadMem_490f11, %struct.Memory** %MEMORY
  %loadMem_490f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 5
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RCX.i796
  %3775 = load i64, i64* %PC.i795
  %3776 = add i64 %3775, 4
  store i64 %3776, i64* %PC.i795
  %3777 = shl i64 %3774, 3
  %3778 = icmp slt i64 %3777, 0
  %3779 = shl i64 %3777, 1
  store i64 %3779, i64* %RCX.i796, align 8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3781 = zext i1 %3778 to i8
  store i8 %3781, i8* %3780, align 1
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3783 = trunc i64 %3779 to i32
  %3784 = and i32 %3783, 254
  %3785 = call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  store i8 %3788, i8* %3782, align 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3789, align 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3791 = icmp eq i64 %3779, 0
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %3790, align 1
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3794 = lshr i64 %3779, 63
  %3795 = trunc i64 %3794 to i8
  store i8 %3795, i8* %3793, align 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3796, align 1
  store %struct.Memory* %loadMem_490f15, %struct.Memory** %MEMORY
  %loadMem_490f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 5
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RCX.i794 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RAX.i793
  %3807 = load i64, i64* %RCX.i794
  %3808 = load i64, i64* %PC.i792
  %3809 = add i64 %3808, 3
  store i64 %3809, i64* %PC.i792
  %3810 = add i64 %3807, %3806
  store i64 %3810, i64* %RAX.i793, align 8
  %3811 = icmp ult i64 %3810, %3806
  %3812 = icmp ult i64 %3810, %3807
  %3813 = or i1 %3811, %3812
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3814, i8* %3815, align 1
  %3816 = trunc i64 %3810 to i32
  %3817 = and i32 %3816, 255
  %3818 = call i32 @llvm.ctpop.i32(i32 %3817)
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3821, i8* %3822, align 1
  %3823 = xor i64 %3807, %3806
  %3824 = xor i64 %3823, %3810
  %3825 = lshr i64 %3824, 4
  %3826 = trunc i64 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3827, i8* %3828, align 1
  %3829 = icmp eq i64 %3810, 0
  %3830 = zext i1 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3830, i8* %3831, align 1
  %3832 = lshr i64 %3810, 63
  %3833 = trunc i64 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3833, i8* %3834, align 1
  %3835 = lshr i64 %3806, 63
  %3836 = lshr i64 %3807, 63
  %3837 = xor i64 %3832, %3835
  %3838 = xor i64 %3832, %3836
  %3839 = add i64 %3837, %3838
  %3840 = icmp eq i64 %3839, 2
  %3841 = zext i1 %3840 to i8
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3841, i8* %3842, align 1
  store %struct.Memory* %loadMem_490f19, %struct.Memory** %MEMORY
  %loadMem_490f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 5
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RCX.i790 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 15
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RBP.i791
  %3853 = sub i64 %3852, 36
  %3854 = load i64, i64* %PC.i789
  %3855 = add i64 %3854, 4
  store i64 %3855, i64* %PC.i789
  %3856 = inttoptr i64 %3853 to i32*
  %3857 = load i32, i32* %3856
  %3858 = sext i32 %3857 to i64
  store i64 %3858, i64* %RCX.i790, align 8
  store %struct.Memory* %loadMem_490f1c, %struct.Memory** %MEMORY
  %loadMem_490f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 11
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %DI.i786 = bitcast %union.anon* %3864 to i16*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 1
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 5
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RAX.i787
  %3872 = load i64, i64* %RCX.i788
  %3873 = mul i64 %3872, 4
  %3874 = add i64 %3871, 2
  %3875 = add i64 %3874, %3873
  %3876 = load i16, i16* %DI.i786
  %3877 = zext i16 %3876 to i64
  %3878 = load i64, i64* %PC.i785
  %3879 = add i64 %3878, 5
  store i64 %3879, i64* %PC.i785
  %3880 = inttoptr i64 %3875 to i16*
  store i16 %3876, i16* %3880
  store %struct.Memory* %loadMem_490f20, %struct.Memory** %MEMORY
  %loadMem_490f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 1
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 15
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RBP.i784
  %3891 = sub i64 %3890, 32
  %3892 = load i64, i64* %PC.i782
  %3893 = add i64 %3892, 3
  store i64 %3893, i64* %PC.i782
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %RAX.i783, align 8
  store %struct.Memory* %loadMem_490f25, %struct.Memory** %MEMORY
  %loadMem_490f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 1
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RAX.i781
  %3904 = load i64, i64* %PC.i780
  %3905 = add i64 %3904, 3
  store i64 %3905, i64* %PC.i780
  %3906 = trunc i64 %3903 to i32
  %3907 = add i32 1, %3906
  %3908 = zext i32 %3907 to i64
  store i64 %3908, i64* %RAX.i781, align 8
  %3909 = icmp ult i32 %3907, %3906
  %3910 = icmp ult i32 %3907, 1
  %3911 = or i1 %3909, %3910
  %3912 = zext i1 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3912, i8* %3913, align 1
  %3914 = and i32 %3907, 255
  %3915 = call i32 @llvm.ctpop.i32(i32 %3914)
  %3916 = trunc i32 %3915 to i8
  %3917 = and i8 %3916, 1
  %3918 = xor i8 %3917, 1
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3918, i8* %3919, align 1
  %3920 = xor i64 1, %3903
  %3921 = trunc i64 %3920 to i32
  %3922 = xor i32 %3921, %3907
  %3923 = lshr i32 %3922, 4
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3925, i8* %3926, align 1
  %3927 = icmp eq i32 %3907, 0
  %3928 = zext i1 %3927 to i8
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3928, i8* %3929, align 1
  %3930 = lshr i32 %3907, 31
  %3931 = trunc i32 %3930 to i8
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3931, i8* %3932, align 1
  %3933 = lshr i32 %3906, 31
  %3934 = xor i32 %3930, %3933
  %3935 = add i32 %3934, %3930
  %3936 = icmp eq i32 %3935, 2
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3937, i8* %3938, align 1
  store %struct.Memory* %loadMem_490f28, %struct.Memory** %MEMORY
  %loadMem_490f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 1
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %EAX.i778 = bitcast %union.anon* %3944 to i32*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RBP.i779
  %3949 = sub i64 %3948, 32
  %3950 = load i32, i32* %EAX.i778
  %3951 = zext i32 %3950 to i64
  %3952 = load i64, i64* %PC.i777
  %3953 = add i64 %3952, 3
  store i64 %3953, i64* %PC.i777
  %3954 = inttoptr i64 %3949 to i32*
  store i32 %3950, i32* %3954
  store %struct.Memory* %loadMem_490f2b, %struct.Memory** %MEMORY
  %loadMem_490f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %PC.i776
  %3959 = add i64 %3958, -323
  %3960 = load i64, i64* %PC.i776
  %3961 = add i64 %3960, 5
  store i64 %3961, i64* %PC.i776
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3959, i64* %3962, align 8
  store %struct.Memory* %loadMem_490f2e, %struct.Memory** %MEMORY
  br label %block_.L_490deb

block_.L_490f33:                                  ; preds = %block_.L_490deb
  %loadMem_490f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %PC.i775
  %3967 = add i64 %3966, 5
  %3968 = load i64, i64* %PC.i775
  %3969 = add i64 %3968, 5
  store i64 %3969, i64* %PC.i775
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3967, i64* %3970, align 8
  store %struct.Memory* %loadMem_490f33, %struct.Memory** %MEMORY
  br label %block_.L_490f38

block_.L_490f38:                                  ; preds = %block_.L_490f33
  %loadMem_490f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 33
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 1
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 15
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %3979 to i64*
  %3980 = load i64, i64* %RBP.i774
  %3981 = sub i64 %3980, 36
  %3982 = load i64, i64* %PC.i772
  %3983 = add i64 %3982, 3
  store i64 %3983, i64* %PC.i772
  %3984 = inttoptr i64 %3981 to i32*
  %3985 = load i32, i32* %3984
  %3986 = zext i32 %3985 to i64
  store i64 %3986, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_490f38, %struct.Memory** %MEMORY
  %loadMem_490f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 1
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %3992 to i64*
  %3993 = load i64, i64* %RAX.i771
  %3994 = load i64, i64* %PC.i770
  %3995 = add i64 %3994, 3
  store i64 %3995, i64* %PC.i770
  %3996 = trunc i64 %3993 to i32
  %3997 = add i32 1, %3996
  %3998 = zext i32 %3997 to i64
  store i64 %3998, i64* %RAX.i771, align 8
  %3999 = icmp ult i32 %3997, %3996
  %4000 = icmp ult i32 %3997, 1
  %4001 = or i1 %3999, %4000
  %4002 = zext i1 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4002, i8* %4003, align 1
  %4004 = and i32 %3997, 255
  %4005 = call i32 @llvm.ctpop.i32(i32 %4004)
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  %4008 = xor i8 %4007, 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4008, i8* %4009, align 1
  %4010 = xor i64 1, %3993
  %4011 = trunc i64 %4010 to i32
  %4012 = xor i32 %4011, %3997
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4015, i8* %4016, align 1
  %4017 = icmp eq i32 %3997, 0
  %4018 = zext i1 %4017 to i8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4018, i8* %4019, align 1
  %4020 = lshr i32 %3997, 31
  %4021 = trunc i32 %4020 to i8
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4021, i8* %4022, align 1
  %4023 = lshr i32 %3996, 31
  %4024 = xor i32 %4020, %4023
  %4025 = add i32 %4024, %4020
  %4026 = icmp eq i32 %4025, 2
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4027, i8* %4028, align 1
  store %struct.Memory* %loadMem_490f3b, %struct.Memory** %MEMORY
  %loadMem_490f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 1
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %EAX.i768 = bitcast %union.anon* %4034 to i32*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 15
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %4037 to i64*
  %4038 = load i64, i64* %RBP.i769
  %4039 = sub i64 %4038, 36
  %4040 = load i32, i32* %EAX.i768
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %PC.i767
  %4043 = add i64 %4042, 3
  store i64 %4043, i64* %PC.i767
  %4044 = inttoptr i64 %4039 to i32*
  store i32 %4040, i32* %4044
  store %struct.Memory* %loadMem_490f3e, %struct.Memory** %MEMORY
  %loadMem_490f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %4047 to i64*
  %4048 = load i64, i64* %PC.i766
  %4049 = add i64 %4048, -360
  %4050 = load i64, i64* %PC.i766
  %4051 = add i64 %4050, 5
  store i64 %4051, i64* %PC.i766
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4049, i64* %4052, align 8
  store %struct.Memory* %loadMem_490f41, %struct.Memory** %MEMORY
  br label %block_.L_490dd9

block_.L_490f46:                                  ; preds = %block_.L_490dd9
  %loadMem_490f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %PC.i765
  %4057 = add i64 %4056, 1166
  %4058 = load i64, i64* %PC.i765
  %4059 = add i64 %4058, 5
  store i64 %4059, i64* %PC.i765
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4057, i64* %4060, align 8
  store %struct.Memory* %loadMem_490f46, %struct.Memory** %MEMORY
  br label %block_.L_4913d4

block_.L_490f4b:                                  ; preds = %block_.L_490dc9
  %loadMem_490f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 15
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RBP.i764
  %4068 = sub i64 %4067, 24
  %4069 = load i64, i64* %PC.i763
  %4070 = add i64 %4069, 4
  store i64 %4070, i64* %PC.i763
  %4071 = inttoptr i64 %4068 to i32*
  %4072 = load i32, i32* %4071
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4073, align 1
  %4074 = and i32 %4072, 255
  %4075 = call i32 @llvm.ctpop.i32(i32 %4074)
  %4076 = trunc i32 %4075 to i8
  %4077 = and i8 %4076, 1
  %4078 = xor i8 %4077, 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4078, i8* %4079, align 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4080, align 1
  %4081 = icmp eq i32 %4072, 0
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4082, i8* %4083, align 1
  %4084 = lshr i32 %4072, 31
  %4085 = trunc i32 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4085, i8* %4086, align 1
  %4087 = lshr i32 %4072, 31
  %4088 = xor i32 %4084, %4087
  %4089 = add i32 %4088, %4087
  %4090 = icmp eq i32 %4089, 2
  %4091 = zext i1 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4091, i8* %4092, align 1
  store %struct.Memory* %loadMem_490f4b, %struct.Memory** %MEMORY
  %loadMem_490f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %PC.i762
  %4097 = add i64 %4096, 16
  %4098 = load i64, i64* %PC.i762
  %4099 = add i64 %4098, 6
  %4100 = load i64, i64* %PC.i762
  %4101 = add i64 %4100, 6
  store i64 %4101, i64* %PC.i762
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4103 = load i8, i8* %4102, align 1
  store i8 %4103, i8* %BRANCH_TAKEN, align 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4105 = icmp ne i8 %4103, 0
  %4106 = select i1 %4105, i64 %4097, i64 %4099
  store i64 %4106, i64* %4104, align 8
  store %struct.Memory* %loadMem_490f4f, %struct.Memory** %MEMORY
  %loadBr_490f4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f4f = icmp eq i8 %loadBr_490f4f, 1
  br i1 %cmpBr_490f4f, label %block_.L_490f5f, label %block_490f55

block_490f55:                                     ; preds = %block_.L_490f4b
  %loadMem_490f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 33
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %4109 to i64*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 15
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %RBP.i761
  %4114 = sub i64 %4113, 24
  %4115 = load i64, i64* %PC.i760
  %4116 = add i64 %4115, 4
  store i64 %4116, i64* %PC.i760
  %4117 = inttoptr i64 %4114 to i32*
  %4118 = load i32, i32* %4117
  %4119 = sub i32 %4118, 2
  %4120 = icmp ult i32 %4118, 2
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4121, i8* %4122, align 1
  %4123 = and i32 %4119, 255
  %4124 = call i32 @llvm.ctpop.i32(i32 %4123)
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  %4127 = xor i8 %4126, 1
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4127, i8* %4128, align 1
  %4129 = xor i32 %4118, 2
  %4130 = xor i32 %4129, %4119
  %4131 = lshr i32 %4130, 4
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4133, i8* %4134, align 1
  %4135 = icmp eq i32 %4119, 0
  %4136 = zext i1 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4136, i8* %4137, align 1
  %4138 = lshr i32 %4119, 31
  %4139 = trunc i32 %4138 to i8
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4139, i8* %4140, align 1
  %4141 = lshr i32 %4118, 31
  %4142 = xor i32 %4138, %4141
  %4143 = add i32 %4142, %4141
  %4144 = icmp eq i32 %4143, 2
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4145, i8* %4146, align 1
  store %struct.Memory* %loadMem_490f55, %struct.Memory** %MEMORY
  %loadMem_490f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %PC.i759
  %4151 = add i64 %4150, 398
  %4152 = load i64, i64* %PC.i759
  %4153 = add i64 %4152, 6
  %4154 = load i64, i64* %PC.i759
  %4155 = add i64 %4154, 6
  store i64 %4155, i64* %PC.i759
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4157 = load i8, i8* %4156, align 1
  %4158 = icmp eq i8 %4157, 0
  %4159 = zext i1 %4158 to i8
  store i8 %4159, i8* %BRANCH_TAKEN, align 1
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4161 = select i1 %4158, i64 %4151, i64 %4153
  store i64 %4161, i64* %4160, align 8
  store %struct.Memory* %loadMem_490f59, %struct.Memory** %MEMORY
  %loadBr_490f59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f59 = icmp eq i8 %loadBr_490f59, 1
  br i1 %cmpBr_490f59, label %block_.L_4910e7, label %block_.L_490f5f

block_.L_490f5f:                                  ; preds = %block_490f55, %block_.L_490f4b
  %loadMem_490f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 1
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 15
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %RBP.i758
  %4172 = sub i64 %4171, 44
  %4173 = load i64, i64* %PC.i756
  %4174 = add i64 %4173, 3
  store i64 %4174, i64* %PC.i756
  %4175 = inttoptr i64 %4172 to i32*
  %4176 = load i32, i32* %4175
  %4177 = zext i32 %4176 to i64
  store i64 %4177, i64* %RAX.i757, align 8
  store %struct.Memory* %loadMem_490f5f, %struct.Memory** %MEMORY
  %loadMem_490f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 1
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %4183 to i32*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 15
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RBP.i755
  %4188 = sub i64 %4187, 36
  %4189 = load i32, i32* %EAX.i754
  %4190 = zext i32 %4189 to i64
  %4191 = load i64, i64* %PC.i753
  %4192 = add i64 %4191, 3
  store i64 %4192, i64* %PC.i753
  %4193 = inttoptr i64 %4188 to i32*
  store i32 %4189, i32* %4193
  store %struct.Memory* %loadMem_490f62, %struct.Memory** %MEMORY
  br label %block_.L_490f65

block_.L_490f65:                                  ; preds = %block_.L_4910d4, %block_.L_490f5f
  %loadMem_490f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 15
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RBP.i752
  %4204 = sub i64 %4203, 36
  %4205 = load i64, i64* %PC.i750
  %4206 = add i64 %4205, 3
  store i64 %4206, i64* %PC.i750
  %4207 = inttoptr i64 %4204 to i32*
  %4208 = load i32, i32* %4207
  %4209 = zext i32 %4208 to i64
  store i64 %4209, i64* %RAX.i751, align 8
  store %struct.Memory* %loadMem_490f65, %struct.Memory** %MEMORY
  %loadMem_490f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 33
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 1
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %EAX.i748 = bitcast %union.anon* %4215 to i32*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 15
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %4218 to i64*
  %4219 = load i32, i32* %EAX.i748
  %4220 = zext i32 %4219 to i64
  %4221 = load i64, i64* %RBP.i749
  %4222 = sub i64 %4221, 52
  %4223 = load i64, i64* %PC.i747
  %4224 = add i64 %4223, 3
  store i64 %4224, i64* %PC.i747
  %4225 = inttoptr i64 %4222 to i32*
  %4226 = load i32, i32* %4225
  %4227 = sub i32 %4219, %4226
  %4228 = icmp ult i32 %4219, %4226
  %4229 = zext i1 %4228 to i8
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4229, i8* %4230, align 1
  %4231 = and i32 %4227, 255
  %4232 = call i32 @llvm.ctpop.i32(i32 %4231)
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  %4235 = xor i8 %4234, 1
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4235, i8* %4236, align 1
  %4237 = xor i32 %4226, %4219
  %4238 = xor i32 %4237, %4227
  %4239 = lshr i32 %4238, 4
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4241, i8* %4242, align 1
  %4243 = icmp eq i32 %4227, 0
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4244, i8* %4245, align 1
  %4246 = lshr i32 %4227, 31
  %4247 = trunc i32 %4246 to i8
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4247, i8* %4248, align 1
  %4249 = lshr i32 %4219, 31
  %4250 = lshr i32 %4226, 31
  %4251 = xor i32 %4250, %4249
  %4252 = xor i32 %4246, %4249
  %4253 = add i32 %4252, %4251
  %4254 = icmp eq i32 %4253, 2
  %4255 = zext i1 %4254 to i8
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4255, i8* %4256, align 1
  store %struct.Memory* %loadMem_490f68, %struct.Memory** %MEMORY
  %loadMem_490f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %PC.i746
  %4261 = add i64 %4260, 375
  %4262 = load i64, i64* %PC.i746
  %4263 = add i64 %4262, 6
  %4264 = load i64, i64* %PC.i746
  %4265 = add i64 %4264, 6
  store i64 %4265, i64* %PC.i746
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4267 = load i8, i8* %4266, align 1
  %4268 = icmp ne i8 %4267, 0
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4270 = load i8, i8* %4269, align 1
  %4271 = icmp ne i8 %4270, 0
  %4272 = xor i1 %4268, %4271
  %4273 = xor i1 %4272, true
  %4274 = zext i1 %4273 to i8
  store i8 %4274, i8* %BRANCH_TAKEN, align 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4276 = select i1 %4272, i64 %4263, i64 %4261
  store i64 %4276, i64* %4275, align 8
  store %struct.Memory* %loadMem_490f6b, %struct.Memory** %MEMORY
  %loadBr_490f6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f6b = icmp eq i8 %loadBr_490f6b, 1
  br i1 %cmpBr_490f6b, label %block_.L_4910e2, label %block_490f71

block_490f71:                                     ; preds = %block_.L_490f65
  %loadMem_490f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 1
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 15
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %4285 to i64*
  %4286 = load i64, i64* %RBP.i745
  %4287 = sub i64 %4286, 40
  %4288 = load i64, i64* %PC.i743
  %4289 = add i64 %4288, 3
  store i64 %4289, i64* %PC.i743
  %4290 = inttoptr i64 %4287 to i32*
  %4291 = load i32, i32* %4290
  %4292 = zext i32 %4291 to i64
  store i64 %4292, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_490f71, %struct.Memory** %MEMORY
  %loadMem_490f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 1
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %EAX.i741 = bitcast %union.anon* %4298 to i32*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 15
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RBP.i742
  %4303 = sub i64 %4302, 32
  %4304 = load i32, i32* %EAX.i741
  %4305 = zext i32 %4304 to i64
  %4306 = load i64, i64* %PC.i740
  %4307 = add i64 %4306, 3
  store i64 %4307, i64* %PC.i740
  %4308 = inttoptr i64 %4303 to i32*
  store i32 %4304, i32* %4308
  store %struct.Memory* %loadMem_490f74, %struct.Memory** %MEMORY
  br label %block_.L_490f77

block_.L_490f77:                                  ; preds = %block_490f83, %block_490f71
  %loadMem_490f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 1
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 15
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %RBP.i739
  %4319 = sub i64 %4318, 32
  %4320 = load i64, i64* %PC.i737
  %4321 = add i64 %4320, 3
  store i64 %4321, i64* %PC.i737
  %4322 = inttoptr i64 %4319 to i32*
  %4323 = load i32, i32* %4322
  %4324 = zext i32 %4323 to i64
  store i64 %4324, i64* %RAX.i738, align 8
  store %struct.Memory* %loadMem_490f77, %struct.Memory** %MEMORY
  %loadMem_490f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 1
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %EAX.i735 = bitcast %union.anon* %4330 to i32*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 15
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %4333 to i64*
  %4334 = load i32, i32* %EAX.i735
  %4335 = zext i32 %4334 to i64
  %4336 = load i64, i64* %RBP.i736
  %4337 = sub i64 %4336, 48
  %4338 = load i64, i64* %PC.i734
  %4339 = add i64 %4338, 3
  store i64 %4339, i64* %PC.i734
  %4340 = inttoptr i64 %4337 to i32*
  %4341 = load i32, i32* %4340
  %4342 = sub i32 %4334, %4341
  %4343 = icmp ult i32 %4334, %4341
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4344, i8* %4345, align 1
  %4346 = and i32 %4342, 255
  %4347 = call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4350, i8* %4351, align 1
  %4352 = xor i32 %4341, %4334
  %4353 = xor i32 %4352, %4342
  %4354 = lshr i32 %4353, 4
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4356, i8* %4357, align 1
  %4358 = icmp eq i32 %4342, 0
  %4359 = zext i1 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4359, i8* %4360, align 1
  %4361 = lshr i32 %4342, 31
  %4362 = trunc i32 %4361 to i8
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4362, i8* %4363, align 1
  %4364 = lshr i32 %4334, 31
  %4365 = lshr i32 %4341, 31
  %4366 = xor i32 %4365, %4364
  %4367 = xor i32 %4361, %4364
  %4368 = add i32 %4367, %4366
  %4369 = icmp eq i32 %4368, 2
  %4370 = zext i1 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4370, i8* %4371, align 1
  store %struct.Memory* %loadMem_490f7a, %struct.Memory** %MEMORY
  %loadMem_490f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %PC.i733
  %4376 = add i64 %4375, 338
  %4377 = load i64, i64* %PC.i733
  %4378 = add i64 %4377, 6
  %4379 = load i64, i64* %PC.i733
  %4380 = add i64 %4379, 6
  store i64 %4380, i64* %PC.i733
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4382 = load i8, i8* %4381, align 1
  %4383 = icmp ne i8 %4382, 0
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4385 = load i8, i8* %4384, align 1
  %4386 = icmp ne i8 %4385, 0
  %4387 = xor i1 %4383, %4386
  %4388 = xor i1 %4387, true
  %4389 = zext i1 %4388 to i8
  store i8 %4389, i8* %BRANCH_TAKEN, align 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4391 = select i1 %4387, i64 %4378, i64 %4376
  store i64 %4391, i64* %4390, align 8
  store %struct.Memory* %loadMem_490f7d, %struct.Memory** %MEMORY
  %loadBr_490f7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f7d = icmp eq i8 %loadBr_490f7d, 1
  br i1 %cmpBr_490f7d, label %block_.L_4910cf, label %block_490f83

block_490f83:                                     ; preds = %block_.L_490f77
  %loadMem_490f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 1
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %PC.i731
  %4399 = add i64 %4398, 10
  store i64 %4399, i64* %PC.i731
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i732, align 8
  store %struct.Memory* %loadMem_490f83, %struct.Memory** %MEMORY
  %loadMem_490f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 5
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %PC.i729
  %4407 = add i64 %4406, 10
  store i64 %4407, i64* %PC.i729
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i730, align 8
  store %struct.Memory* %loadMem_490f8d, %struct.Memory** %MEMORY
  %loadMem_490f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 7
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RDX.i727 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 15
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %4416 to i64*
  %4417 = load i64, i64* %RBP.i728
  %4418 = sub i64 %4417, 64
  %4419 = load i64, i64* %PC.i726
  %4420 = add i64 %4419, 4
  store i64 %4420, i64* %PC.i726
  %4421 = inttoptr i64 %4418 to i64*
  %4422 = load i64, i64* %4421
  store i64 %4422, i64* %RDX.i727, align 8
  store %struct.Memory* %loadMem_490f97, %struct.Memory** %MEMORY
  %loadMem_490f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 9
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RSI.i724 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i725
  %4433 = sub i64 %4432, 32
  %4434 = load i64, i64* %PC.i723
  %4435 = add i64 %4434, 4
  store i64 %4435, i64* %PC.i723
  %4436 = inttoptr i64 %4433 to i32*
  %4437 = load i32, i32* %4436
  %4438 = sext i32 %4437 to i64
  store i64 %4438, i64* %RSI.i724, align 8
  store %struct.Memory* %loadMem_490f9b, %struct.Memory** %MEMORY
  %loadMem_490f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 7
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RDX.i721 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 9
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RSI.i722 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RDX.i721
  %4449 = load i64, i64* %RSI.i722
  %4450 = mul i64 %4449, 8
  %4451 = add i64 %4450, %4448
  %4452 = load i64, i64* %PC.i720
  %4453 = add i64 %4452, 4
  store i64 %4453, i64* %PC.i720
  %4454 = inttoptr i64 %4451 to i64*
  %4455 = load i64, i64* %4454
  store i64 %4455, i64* %RDX.i721, align 8
  store %struct.Memory* %loadMem_490f9f, %struct.Memory** %MEMORY
  %loadMem_490fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 9
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RSI.i718 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 15
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %4464 to i64*
  %4465 = load i64, i64* %RBP.i719
  %4466 = sub i64 %4465, 36
  %4467 = load i64, i64* %PC.i717
  %4468 = add i64 %4467, 4
  store i64 %4468, i64* %PC.i717
  %4469 = inttoptr i64 %4466 to i32*
  %4470 = load i32, i32* %4469
  %4471 = sext i32 %4470 to i64
  store i64 %4471, i64* %RSI.i718, align 8
  store %struct.Memory* %loadMem_490fa3, %struct.Memory** %MEMORY
  %loadMem_490fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 7
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RDX.i715 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 9
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RSI.i716 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RDX.i715
  %4482 = load i64, i64* %RSI.i716
  %4483 = mul i64 %4482, 8
  %4484 = add i64 %4483, %4481
  %4485 = load i64, i64* %PC.i714
  %4486 = add i64 %4485, 4
  store i64 %4486, i64* %PC.i714
  %4487 = inttoptr i64 %4484 to i64*
  %4488 = load i64, i64* %4487
  store i64 %4488, i64* %RDX.i715, align 8
  store %struct.Memory* %loadMem_490fa7, %struct.Memory** %MEMORY
  %loadMem_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 7
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RDX.i713 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %RDX.i713
  %4496 = load i64, i64* %PC.i712
  %4497 = add i64 %4496, 3
  store i64 %4497, i64* %PC.i712
  %4498 = inttoptr i64 %4495 to i64*
  %4499 = load i64, i64* %4498
  store i64 %4499, i64* %RDX.i713, align 8
  store %struct.Memory* %loadMem_490fab, %struct.Memory** %MEMORY
  %loadMem_490fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 33
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 9
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 15
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %4508 to i64*
  %4509 = load i64, i64* %RBP.i711
  %4510 = sub i64 %4509, 16
  %4511 = load i64, i64* %PC.i709
  %4512 = add i64 %4511, 4
  store i64 %4512, i64* %PC.i709
  %4513 = inttoptr i64 %4510 to i32*
  %4514 = load i32, i32* %4513
  %4515 = sext i32 %4514 to i64
  store i64 %4515, i64* %RSI.i710, align 8
  store %struct.Memory* %loadMem_490fae, %struct.Memory** %MEMORY
  %loadMem_490fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 33
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 7
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 9
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RSI.i708 = bitcast %union.anon* %4524 to i64*
  %4525 = load i64, i64* %RDX.i707
  %4526 = load i64, i64* %RSI.i708
  %4527 = mul i64 %4526, 8
  %4528 = add i64 %4527, %4525
  %4529 = load i64, i64* %PC.i706
  %4530 = add i64 %4529, 4
  store i64 %4530, i64* %PC.i706
  %4531 = inttoptr i64 %4528 to i64*
  %4532 = load i64, i64* %4531
  store i64 %4532, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_490fb2, %struct.Memory** %MEMORY
  %loadMem_490fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 9
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RSI.i704 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 15
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %RBP.i705
  %4543 = sub i64 %4542, 12
  %4544 = load i64, i64* %PC.i703
  %4545 = add i64 %4544, 4
  store i64 %4545, i64* %PC.i703
  %4546 = inttoptr i64 %4543 to i32*
  %4547 = load i32, i32* %4546
  %4548 = sext i32 %4547 to i64
  store i64 %4548, i64* %RSI.i704, align 8
  store %struct.Memory* %loadMem_490fb6, %struct.Memory** %MEMORY
  %loadMem_490fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 7
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 9
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RDX.i701
  %4559 = load i64, i64* %RSI.i702
  %4560 = mul i64 %4559, 8
  %4561 = add i64 %4560, %4558
  %4562 = load i64, i64* %PC.i700
  %4563 = add i64 %4562, 4
  store i64 %4563, i64* %PC.i700
  %4564 = inttoptr i64 %4561 to i64*
  %4565 = load i64, i64* %4564
  store i64 %4565, i64* %RDX.i701, align 8
  store %struct.Memory* %loadMem_490fba, %struct.Memory** %MEMORY
  %loadMem_490fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 11
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %DI.i698 = bitcast %union.anon* %4571 to i16*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 7
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %RDX.i699
  %4576 = load i64, i64* %PC.i697
  %4577 = add i64 %4576, 3
  store i64 %4577, i64* %PC.i697
  %4578 = inttoptr i64 %4575 to i16*
  %4579 = load i16, i16* %4578
  store i16 %4579, i16* %DI.i698, align 2
  store %struct.Memory* %loadMem_490fbe, %struct.Memory** %MEMORY
  %loadMem_490fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 7
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 15
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %RBP.i696
  %4590 = sub i64 %4589, 4
  %4591 = load i64, i64* %PC.i694
  %4592 = add i64 %4591, 4
  store i64 %4592, i64* %PC.i694
  %4593 = inttoptr i64 %4590 to i32*
  %4594 = load i32, i32* %4593
  %4595 = sext i32 %4594 to i64
  store i64 %4595, i64* %RDX.i695, align 8
  store %struct.Memory* %loadMem_490fc1, %struct.Memory** %MEMORY
  %loadMem_490fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 33
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %4598 to i64*
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 7
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %4601 to i64*
  %4602 = load i64, i64* %RDX.i693
  %4603 = load i64, i64* %PC.i692
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %PC.i692
  %4605 = shl i64 %4602, 6
  %4606 = icmp slt i64 %4605, 0
  %4607 = shl i64 %4605, 1
  store i64 %4607, i64* %RDX.i693, align 8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4609 = zext i1 %4606 to i8
  store i8 %4609, i8* %4608, align 1
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4611 = trunc i64 %4607 to i32
  %4612 = and i32 %4611, 254
  %4613 = call i32 @llvm.ctpop.i32(i32 %4612)
  %4614 = trunc i32 %4613 to i8
  %4615 = and i8 %4614, 1
  %4616 = xor i8 %4615, 1
  store i8 %4616, i8* %4610, align 1
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4617, align 1
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4619 = icmp eq i64 %4607, 0
  %4620 = zext i1 %4619 to i8
  store i8 %4620, i8* %4618, align 1
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4622 = lshr i64 %4607, 63
  %4623 = trunc i64 %4622 to i8
  store i8 %4623, i8* %4621, align 1
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4624, align 1
  store %struct.Memory* %loadMem_490fc5, %struct.Memory** %MEMORY
  %loadMem_490fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 33
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 5
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 9
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RSI.i691 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RCX.i690
  %4635 = load i64, i64* %PC.i689
  %4636 = add i64 %4635, 3
  store i64 %4636, i64* %PC.i689
  store i64 %4634, i64* %RSI.i691, align 8
  store %struct.Memory* %loadMem_490fc9, %struct.Memory** %MEMORY
  %loadMem_490fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 7
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RDX.i687 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 9
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RSI.i688
  %4647 = load i64, i64* %RDX.i687
  %4648 = load i64, i64* %PC.i686
  %4649 = add i64 %4648, 3
  store i64 %4649, i64* %PC.i686
  %4650 = add i64 %4647, %4646
  store i64 %4650, i64* %RSI.i688, align 8
  %4651 = icmp ult i64 %4650, %4646
  %4652 = icmp ult i64 %4650, %4647
  %4653 = or i1 %4651, %4652
  %4654 = zext i1 %4653 to i8
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4654, i8* %4655, align 1
  %4656 = trunc i64 %4650 to i32
  %4657 = and i32 %4656, 255
  %4658 = call i32 @llvm.ctpop.i32(i32 %4657)
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = xor i8 %4660, 1
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4661, i8* %4662, align 1
  %4663 = xor i64 %4647, %4646
  %4664 = xor i64 %4663, %4650
  %4665 = lshr i64 %4664, 4
  %4666 = trunc i64 %4665 to i8
  %4667 = and i8 %4666, 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4667, i8* %4668, align 1
  %4669 = icmp eq i64 %4650, 0
  %4670 = zext i1 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4670, i8* %4671, align 1
  %4672 = lshr i64 %4650, 63
  %4673 = trunc i64 %4672 to i8
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4673, i8* %4674, align 1
  %4675 = lshr i64 %4646, 63
  %4676 = lshr i64 %4647, 63
  %4677 = xor i64 %4672, %4675
  %4678 = xor i64 %4672, %4676
  %4679 = add i64 %4677, %4678
  %4680 = icmp eq i64 %4679, 2
  %4681 = zext i1 %4680 to i8
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4681, i8* %4682, align 1
  store %struct.Memory* %loadMem_490fcc, %struct.Memory** %MEMORY
  %loadMem_490fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 33
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 7
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 15
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RBP.i685
  %4693 = sub i64 %4692, 32
  %4694 = load i64, i64* %PC.i683
  %4695 = add i64 %4694, 4
  store i64 %4695, i64* %PC.i683
  %4696 = inttoptr i64 %4693 to i32*
  %4697 = load i32, i32* %4696
  %4698 = sext i32 %4697 to i64
  store i64 %4698, i64* %RDX.i684, align 8
  store %struct.Memory* %loadMem_490fcf, %struct.Memory** %MEMORY
  %loadMem_490fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 7
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RDX.i682 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RDX.i682
  %4706 = load i64, i64* %PC.i681
  %4707 = add i64 %4706, 4
  store i64 %4707, i64* %PC.i681
  %4708 = shl i64 %4705, 3
  %4709 = icmp slt i64 %4708, 0
  %4710 = shl i64 %4708, 1
  store i64 %4710, i64* %RDX.i682, align 8
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4712 = zext i1 %4709 to i8
  store i8 %4712, i8* %4711, align 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4714 = trunc i64 %4710 to i32
  %4715 = and i32 %4714, 254
  %4716 = call i32 @llvm.ctpop.i32(i32 %4715)
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = xor i8 %4718, 1
  store i8 %4719, i8* %4713, align 1
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4720, align 1
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4722 = icmp eq i64 %4710, 0
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %4721, align 1
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4725 = lshr i64 %4710, 63
  %4726 = trunc i64 %4725 to i8
  store i8 %4726, i8* %4724, align 1
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4727, align 1
  store %struct.Memory* %loadMem_490fd3, %struct.Memory** %MEMORY
  %loadMem_490fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 33
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 7
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RDX.i679 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 9
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RSI.i680 = bitcast %union.anon* %4736 to i64*
  %4737 = load i64, i64* %RSI.i680
  %4738 = load i64, i64* %RDX.i679
  %4739 = load i64, i64* %PC.i678
  %4740 = add i64 %4739, 3
  store i64 %4740, i64* %PC.i678
  %4741 = add i64 %4738, %4737
  store i64 %4741, i64* %RSI.i680, align 8
  %4742 = icmp ult i64 %4741, %4737
  %4743 = icmp ult i64 %4741, %4738
  %4744 = or i1 %4742, %4743
  %4745 = zext i1 %4744 to i8
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4745, i8* %4746, align 1
  %4747 = trunc i64 %4741 to i32
  %4748 = and i32 %4747, 255
  %4749 = call i32 @llvm.ctpop.i32(i32 %4748)
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  %4752 = xor i8 %4751, 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4752, i8* %4753, align 1
  %4754 = xor i64 %4738, %4737
  %4755 = xor i64 %4754, %4741
  %4756 = lshr i64 %4755, 4
  %4757 = trunc i64 %4756 to i8
  %4758 = and i8 %4757, 1
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4758, i8* %4759, align 1
  %4760 = icmp eq i64 %4741, 0
  %4761 = zext i1 %4760 to i8
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4761, i8* %4762, align 1
  %4763 = lshr i64 %4741, 63
  %4764 = trunc i64 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i64 %4737, 63
  %4767 = lshr i64 %4738, 63
  %4768 = xor i64 %4763, %4766
  %4769 = xor i64 %4763, %4767
  %4770 = add i64 %4768, %4769
  %4771 = icmp eq i64 %4770, 2
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4772, i8* %4773, align 1
  store %struct.Memory* %loadMem_490fd7, %struct.Memory** %MEMORY
  %loadMem_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 7
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RDX.i676 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 15
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %RBP.i677
  %4784 = sub i64 %4783, 36
  %4785 = load i64, i64* %PC.i675
  %4786 = add i64 %4785, 4
  store i64 %4786, i64* %PC.i675
  %4787 = inttoptr i64 %4784 to i32*
  %4788 = load i32, i32* %4787
  %4789 = sext i32 %4788 to i64
  store i64 %4789, i64* %RDX.i676, align 8
  store %struct.Memory* %loadMem_490fda, %struct.Memory** %MEMORY
  %loadMem_490fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 11
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %DI.i672 = bitcast %union.anon* %4795 to i16*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 7
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 9
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %RSI.i674 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %RSI.i674
  %4803 = load i64, i64* %RDX.i673
  %4804 = mul i64 %4803, 4
  %4805 = add i64 %4804, %4802
  %4806 = load i16, i16* %DI.i672
  %4807 = zext i16 %4806 to i64
  %4808 = load i64, i64* %PC.i671
  %4809 = add i64 %4808, 4
  store i64 %4809, i64* %PC.i671
  %4810 = inttoptr i64 %4805 to i16*
  store i16 %4806, i16* %4810
  store %struct.Memory* %loadMem_490fde, %struct.Memory** %MEMORY
  %loadMem_490fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 7
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RDX.i669 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 15
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RBP.i670
  %4821 = sub i64 %4820, 64
  %4822 = load i64, i64* %PC.i668
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %PC.i668
  %4824 = inttoptr i64 %4821 to i64*
  %4825 = load i64, i64* %4824
  store i64 %4825, i64* %RDX.i669, align 8
  store %struct.Memory* %loadMem_490fe2, %struct.Memory** %MEMORY
  %loadMem_490fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 9
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RSI.i666 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i667
  %4836 = sub i64 %4835, 32
  %4837 = load i64, i64* %PC.i665
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %PC.i665
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = sext i32 %4840 to i64
  store i64 %4841, i64* %RSI.i666, align 8
  store %struct.Memory* %loadMem_490fe6, %struct.Memory** %MEMORY
  %loadMem_490fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 7
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RDX.i663 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 9
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RSI.i664 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RDX.i663
  %4852 = load i64, i64* %RSI.i664
  %4853 = mul i64 %4852, 8
  %4854 = add i64 %4853, %4851
  %4855 = load i64, i64* %PC.i662
  %4856 = add i64 %4855, 4
  store i64 %4856, i64* %PC.i662
  %4857 = inttoptr i64 %4854 to i64*
  %4858 = load i64, i64* %4857
  store i64 %4858, i64* %RDX.i663, align 8
  store %struct.Memory* %loadMem_490fea, %struct.Memory** %MEMORY
  %loadMem_490fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 9
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RSI.i660 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 15
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %RBP.i661
  %4869 = sub i64 %4868, 36
  %4870 = load i64, i64* %PC.i659
  %4871 = add i64 %4870, 4
  store i64 %4871, i64* %PC.i659
  %4872 = inttoptr i64 %4869 to i32*
  %4873 = load i32, i32* %4872
  %4874 = sext i32 %4873 to i64
  store i64 %4874, i64* %RSI.i660, align 8
  store %struct.Memory* %loadMem_490fee, %struct.Memory** %MEMORY
  %loadMem_490ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 33
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 7
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 9
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RSI.i658 = bitcast %union.anon* %4883 to i64*
  %4884 = load i64, i64* %RDX.i657
  %4885 = load i64, i64* %RSI.i658
  %4886 = mul i64 %4885, 8
  %4887 = add i64 %4886, %4884
  %4888 = load i64, i64* %PC.i656
  %4889 = add i64 %4888, 4
  store i64 %4889, i64* %PC.i656
  %4890 = inttoptr i64 %4887 to i64*
  %4891 = load i64, i64* %4890
  store i64 %4891, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_490ff2, %struct.Memory** %MEMORY
  %loadMem_490ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 33
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %4894 to i64*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 7
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %4897 to i64*
  %4898 = load i64, i64* %RDX.i655
  %4899 = load i64, i64* %PC.i654
  %4900 = add i64 %4899, 3
  store i64 %4900, i64* %PC.i654
  %4901 = inttoptr i64 %4898 to i64*
  %4902 = load i64, i64* %4901
  store i64 %4902, i64* %RDX.i655, align 8
  store %struct.Memory* %loadMem_490ff6, %struct.Memory** %MEMORY
  %loadMem_490ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 33
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 9
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 15
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %4911 to i64*
  %4912 = load i64, i64* %RBP.i653
  %4913 = sub i64 %4912, 16
  %4914 = load i64, i64* %PC.i651
  %4915 = add i64 %4914, 4
  store i64 %4915, i64* %PC.i651
  %4916 = inttoptr i64 %4913 to i32*
  %4917 = load i32, i32* %4916
  %4918 = sext i32 %4917 to i64
  store i64 %4918, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_490ff9, %struct.Memory** %MEMORY
  %loadMem_490ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 7
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 9
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RSI.i650 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RDX.i649
  %4929 = load i64, i64* %RSI.i650
  %4930 = mul i64 %4929, 8
  %4931 = add i64 %4930, %4928
  %4932 = load i64, i64* %PC.i648
  %4933 = add i64 %4932, 4
  store i64 %4933, i64* %PC.i648
  %4934 = inttoptr i64 %4931 to i64*
  %4935 = load i64, i64* %4934
  store i64 %4935, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_490ffd, %struct.Memory** %MEMORY
  %loadMem_491001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 9
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RSI.i646 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 15
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %RBP.i647
  %4946 = sub i64 %4945, 12
  %4947 = load i64, i64* %PC.i645
  %4948 = add i64 %4947, 4
  store i64 %4948, i64* %PC.i645
  %4949 = inttoptr i64 %4946 to i32*
  %4950 = load i32, i32* %4949
  %4951 = sext i32 %4950 to i64
  store i64 %4951, i64* %RSI.i646, align 8
  store %struct.Memory* %loadMem_491001, %struct.Memory** %MEMORY
  %loadMem_491005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 7
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RDX.i643 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 9
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RSI.i644 = bitcast %union.anon* %4960 to i64*
  %4961 = load i64, i64* %RDX.i643
  %4962 = load i64, i64* %RSI.i644
  %4963 = mul i64 %4962, 8
  %4964 = add i64 %4963, %4961
  %4965 = load i64, i64* %PC.i642
  %4966 = add i64 %4965, 4
  store i64 %4966, i64* %PC.i642
  %4967 = inttoptr i64 %4964 to i64*
  %4968 = load i64, i64* %4967
  store i64 %4968, i64* %RDX.i643, align 8
  store %struct.Memory* %loadMem_491005, %struct.Memory** %MEMORY
  %loadMem_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 11
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %DI.i640 = bitcast %union.anon* %4974 to i16*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 7
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %4977 to i64*
  %4978 = load i64, i64* %RDX.i641
  %4979 = add i64 %4978, 2
  %4980 = load i64, i64* %PC.i639
  %4981 = add i64 %4980, 4
  store i64 %4981, i64* %PC.i639
  %4982 = inttoptr i64 %4979 to i16*
  %4983 = load i16, i16* %4982
  store i16 %4983, i16* %DI.i640, align 2
  store %struct.Memory* %loadMem_491009, %struct.Memory** %MEMORY
  %loadMem_49100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 7
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RDX.i637 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 15
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %RBP.i638
  %4994 = sub i64 %4993, 4
  %4995 = load i64, i64* %PC.i636
  %4996 = add i64 %4995, 4
  store i64 %4996, i64* %PC.i636
  %4997 = inttoptr i64 %4994 to i32*
  %4998 = load i32, i32* %4997
  %4999 = sext i32 %4998 to i64
  store i64 %4999, i64* %RDX.i637, align 8
  store %struct.Memory* %loadMem_49100d, %struct.Memory** %MEMORY
  %loadMem_491011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 33
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 7
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RDX.i635 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %RDX.i635
  %5007 = load i64, i64* %PC.i634
  %5008 = add i64 %5007, 4
  store i64 %5008, i64* %PC.i634
  %5009 = shl i64 %5006, 6
  %5010 = icmp slt i64 %5009, 0
  %5011 = shl i64 %5009, 1
  store i64 %5011, i64* %RDX.i635, align 8
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5013 = zext i1 %5010 to i8
  store i8 %5013, i8* %5012, align 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5015 = trunc i64 %5011 to i32
  %5016 = and i32 %5015, 254
  %5017 = call i32 @llvm.ctpop.i32(i32 %5016)
  %5018 = trunc i32 %5017 to i8
  %5019 = and i8 %5018, 1
  %5020 = xor i8 %5019, 1
  store i8 %5020, i8* %5014, align 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5021, align 1
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5023 = icmp eq i64 %5011, 0
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %5022, align 1
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5026 = lshr i64 %5011, 63
  %5027 = trunc i64 %5026 to i8
  store i8 %5027, i8* %5025, align 1
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5028, align 1
  store %struct.Memory* %loadMem_491011, %struct.Memory** %MEMORY
  %loadMem_491015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 5
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 7
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RDX.i633 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %RCX.i632
  %5039 = load i64, i64* %RDX.i633
  %5040 = load i64, i64* %PC.i631
  %5041 = add i64 %5040, 3
  store i64 %5041, i64* %PC.i631
  %5042 = add i64 %5039, %5038
  store i64 %5042, i64* %RCX.i632, align 8
  %5043 = icmp ult i64 %5042, %5038
  %5044 = icmp ult i64 %5042, %5039
  %5045 = or i1 %5043, %5044
  %5046 = zext i1 %5045 to i8
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5046, i8* %5047, align 1
  %5048 = trunc i64 %5042 to i32
  %5049 = and i32 %5048, 255
  %5050 = call i32 @llvm.ctpop.i32(i32 %5049)
  %5051 = trunc i32 %5050 to i8
  %5052 = and i8 %5051, 1
  %5053 = xor i8 %5052, 1
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5053, i8* %5054, align 1
  %5055 = xor i64 %5039, %5038
  %5056 = xor i64 %5055, %5042
  %5057 = lshr i64 %5056, 4
  %5058 = trunc i64 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5059, i8* %5060, align 1
  %5061 = icmp eq i64 %5042, 0
  %5062 = zext i1 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5062, i8* %5063, align 1
  %5064 = lshr i64 %5042, 63
  %5065 = trunc i64 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5065, i8* %5066, align 1
  %5067 = lshr i64 %5038, 63
  %5068 = lshr i64 %5039, 63
  %5069 = xor i64 %5064, %5067
  %5070 = xor i64 %5064, %5068
  %5071 = add i64 %5069, %5070
  %5072 = icmp eq i64 %5071, 2
  %5073 = zext i1 %5072 to i8
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5073, i8* %5074, align 1
  store %struct.Memory* %loadMem_491015, %struct.Memory** %MEMORY
  %loadMem_491018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 33
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 7
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 15
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %5083 to i64*
  %5084 = load i64, i64* %RBP.i630
  %5085 = sub i64 %5084, 32
  %5086 = load i64, i64* %PC.i628
  %5087 = add i64 %5086, 4
  store i64 %5087, i64* %PC.i628
  %5088 = inttoptr i64 %5085 to i32*
  %5089 = load i32, i32* %5088
  %5090 = sext i32 %5089 to i64
  store i64 %5090, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_491018, %struct.Memory** %MEMORY
  %loadMem_49101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 7
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %5096 to i64*
  %5097 = load i64, i64* %RDX.i627
  %5098 = load i64, i64* %PC.i626
  %5099 = add i64 %5098, 4
  store i64 %5099, i64* %PC.i626
  %5100 = shl i64 %5097, 3
  %5101 = icmp slt i64 %5100, 0
  %5102 = shl i64 %5100, 1
  store i64 %5102, i64* %RDX.i627, align 8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5104 = zext i1 %5101 to i8
  store i8 %5104, i8* %5103, align 1
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5106 = trunc i64 %5102 to i32
  %5107 = and i32 %5106, 254
  %5108 = call i32 @llvm.ctpop.i32(i32 %5107)
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = xor i8 %5110, 1
  store i8 %5111, i8* %5105, align 1
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5112, align 1
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5114 = icmp eq i64 %5102, 0
  %5115 = zext i1 %5114 to i8
  store i8 %5115, i8* %5113, align 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5117 = lshr i64 %5102, 63
  %5118 = trunc i64 %5117 to i8
  store i8 %5118, i8* %5116, align 1
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5119, align 1
  store %struct.Memory* %loadMem_49101c, %struct.Memory** %MEMORY
  %loadMem_491020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 33
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 5
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 7
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %RCX.i624
  %5130 = load i64, i64* %RDX.i625
  %5131 = load i64, i64* %PC.i623
  %5132 = add i64 %5131, 3
  store i64 %5132, i64* %PC.i623
  %5133 = add i64 %5130, %5129
  store i64 %5133, i64* %RCX.i624, align 8
  %5134 = icmp ult i64 %5133, %5129
  %5135 = icmp ult i64 %5133, %5130
  %5136 = or i1 %5134, %5135
  %5137 = zext i1 %5136 to i8
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5137, i8* %5138, align 1
  %5139 = trunc i64 %5133 to i32
  %5140 = and i32 %5139, 255
  %5141 = call i32 @llvm.ctpop.i32(i32 %5140)
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  %5144 = xor i8 %5143, 1
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5144, i8* %5145, align 1
  %5146 = xor i64 %5130, %5129
  %5147 = xor i64 %5146, %5133
  %5148 = lshr i64 %5147, 4
  %5149 = trunc i64 %5148 to i8
  %5150 = and i8 %5149, 1
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5150, i8* %5151, align 1
  %5152 = icmp eq i64 %5133, 0
  %5153 = zext i1 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5153, i8* %5154, align 1
  %5155 = lshr i64 %5133, 63
  %5156 = trunc i64 %5155 to i8
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5156, i8* %5157, align 1
  %5158 = lshr i64 %5129, 63
  %5159 = lshr i64 %5130, 63
  %5160 = xor i64 %5155, %5158
  %5161 = xor i64 %5155, %5159
  %5162 = add i64 %5160, %5161
  %5163 = icmp eq i64 %5162, 2
  %5164 = zext i1 %5163 to i8
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5164, i8* %5165, align 1
  store %struct.Memory* %loadMem_491020, %struct.Memory** %MEMORY
  %loadMem_491023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 33
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 7
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %RDX.i621 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 15
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %RBP.i622
  %5176 = sub i64 %5175, 36
  %5177 = load i64, i64* %PC.i620
  %5178 = add i64 %5177, 4
  store i64 %5178, i64* %PC.i620
  %5179 = inttoptr i64 %5176 to i32*
  %5180 = load i32, i32* %5179
  %5181 = sext i32 %5180 to i64
  store i64 %5181, i64* %RDX.i621, align 8
  store %struct.Memory* %loadMem_491023, %struct.Memory** %MEMORY
  %loadMem_491027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 11
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %DI.i617 = bitcast %union.anon* %5187 to i16*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 5
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 7
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RCX.i618
  %5195 = load i64, i64* %RDX.i619
  %5196 = mul i64 %5195, 4
  %5197 = add i64 %5194, 2
  %5198 = add i64 %5197, %5196
  %5199 = load i16, i16* %DI.i617
  %5200 = zext i16 %5199 to i64
  %5201 = load i64, i64* %PC.i616
  %5202 = add i64 %5201, 5
  store i64 %5202, i64* %PC.i616
  %5203 = inttoptr i64 %5198 to i16*
  store i16 %5199, i16* %5203
  store %struct.Memory* %loadMem_491027, %struct.Memory** %MEMORY
  %loadMem_49102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 5
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 15
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %5212 to i64*
  %5213 = load i64, i64* %RBP.i615
  %5214 = sub i64 %5213, 72
  %5215 = load i64, i64* %PC.i613
  %5216 = add i64 %5215, 4
  store i64 %5216, i64* %PC.i613
  %5217 = inttoptr i64 %5214 to i64*
  %5218 = load i64, i64* %5217
  store i64 %5218, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_49102c, %struct.Memory** %MEMORY
  %loadMem_491030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 33
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 7
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 15
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %RBP.i612
  %5229 = sub i64 %5228, 32
  %5230 = load i64, i64* %PC.i610
  %5231 = add i64 %5230, 4
  store i64 %5231, i64* %PC.i610
  %5232 = inttoptr i64 %5229 to i32*
  %5233 = load i32, i32* %5232
  %5234 = sext i32 %5233 to i64
  store i64 %5234, i64* %RDX.i611, align 8
  store %struct.Memory* %loadMem_491030, %struct.Memory** %MEMORY
  %loadMem_491034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 5
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 7
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %RCX.i608
  %5245 = load i64, i64* %RDX.i609
  %5246 = mul i64 %5245, 8
  %5247 = add i64 %5246, %5244
  %5248 = load i64, i64* %PC.i607
  %5249 = add i64 %5248, 4
  store i64 %5249, i64* %PC.i607
  %5250 = inttoptr i64 %5247 to i64*
  %5251 = load i64, i64* %5250
  store i64 %5251, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_491034, %struct.Memory** %MEMORY
  %loadMem_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 7
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 15
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RBP.i606
  %5262 = sub i64 %5261, 36
  %5263 = load i64, i64* %PC.i604
  %5264 = add i64 %5263, 4
  store i64 %5264, i64* %PC.i604
  %5265 = inttoptr i64 %5262 to i32*
  %5266 = load i32, i32* %5265
  %5267 = sext i32 %5266 to i64
  store i64 %5267, i64* %RDX.i605, align 8
  store %struct.Memory* %loadMem_491038, %struct.Memory** %MEMORY
  %loadMem_49103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 5
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 7
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %5276 to i64*
  %5277 = load i64, i64* %RCX.i602
  %5278 = load i64, i64* %RDX.i603
  %5279 = mul i64 %5278, 8
  %5280 = add i64 %5279, %5277
  %5281 = load i64, i64* %PC.i601
  %5282 = add i64 %5281, 4
  store i64 %5282, i64* %PC.i601
  %5283 = inttoptr i64 %5280 to i64*
  %5284 = load i64, i64* %5283
  store i64 %5284, i64* %RCX.i602, align 8
  store %struct.Memory* %loadMem_49103c, %struct.Memory** %MEMORY
  %loadMem_491040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 5
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %5290 to i64*
  %5291 = load i64, i64* %RCX.i600
  %5292 = load i64, i64* %PC.i599
  %5293 = add i64 %5292, 3
  store i64 %5293, i64* %PC.i599
  %5294 = inttoptr i64 %5291 to i64*
  %5295 = load i64, i64* %5294
  store i64 %5295, i64* %RCX.i600, align 8
  store %struct.Memory* %loadMem_491040, %struct.Memory** %MEMORY
  %loadMem_491043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 33
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 7
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 15
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %RBP.i598
  %5306 = sub i64 %5305, 16
  %5307 = load i64, i64* %PC.i596
  %5308 = add i64 %5307, 4
  store i64 %5308, i64* %PC.i596
  %5309 = inttoptr i64 %5306 to i32*
  %5310 = load i32, i32* %5309
  %5311 = sext i32 %5310 to i64
  store i64 %5311, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_491043, %struct.Memory** %MEMORY
  %loadMem_491047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 5
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 7
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RDX.i595 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RCX.i594
  %5322 = load i64, i64* %RDX.i595
  %5323 = mul i64 %5322, 8
  %5324 = add i64 %5323, %5321
  %5325 = load i64, i64* %PC.i593
  %5326 = add i64 %5325, 4
  store i64 %5326, i64* %PC.i593
  %5327 = inttoptr i64 %5324 to i64*
  %5328 = load i64, i64* %5327
  store i64 %5328, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_491047, %struct.Memory** %MEMORY
  %loadMem_49104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 7
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RDX.i591 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 15
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %5337 to i64*
  %5338 = load i64, i64* %RBP.i592
  %5339 = sub i64 %5338, 12
  %5340 = load i64, i64* %PC.i590
  %5341 = add i64 %5340, 4
  store i64 %5341, i64* %PC.i590
  %5342 = inttoptr i64 %5339 to i32*
  %5343 = load i32, i32* %5342
  %5344 = sext i32 %5343 to i64
  store i64 %5344, i64* %RDX.i591, align 8
  store %struct.Memory* %loadMem_49104b, %struct.Memory** %MEMORY
  %loadMem_49104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 5
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 7
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RDX.i589 = bitcast %union.anon* %5353 to i64*
  %5354 = load i64, i64* %RCX.i588
  %5355 = load i64, i64* %RDX.i589
  %5356 = mul i64 %5355, 8
  %5357 = add i64 %5356, %5354
  %5358 = load i64, i64* %PC.i587
  %5359 = add i64 %5358, 4
  store i64 %5359, i64* %PC.i587
  %5360 = inttoptr i64 %5357 to i64*
  %5361 = load i64, i64* %5360
  store i64 %5361, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_49104f, %struct.Memory** %MEMORY
  %loadMem_491053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 11
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %DI.i585 = bitcast %union.anon* %5367 to i16*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 5
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %5370 to i64*
  %5371 = load i64, i64* %RCX.i586
  %5372 = load i64, i64* %PC.i584
  %5373 = add i64 %5372, 3
  store i64 %5373, i64* %PC.i584
  %5374 = inttoptr i64 %5371 to i16*
  %5375 = load i16, i16* %5374
  store i16 %5375, i16* %DI.i585, align 2
  store %struct.Memory* %loadMem_491053, %struct.Memory** %MEMORY
  %loadMem_491056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %5378 to i64*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 5
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 15
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %5384 to i64*
  %5385 = load i64, i64* %RBP.i583
  %5386 = sub i64 %5385, 4
  %5387 = load i64, i64* %PC.i581
  %5388 = add i64 %5387, 4
  store i64 %5388, i64* %PC.i581
  %5389 = inttoptr i64 %5386 to i32*
  %5390 = load i32, i32* %5389
  %5391 = sext i32 %5390 to i64
  store i64 %5391, i64* %RCX.i582, align 8
  store %struct.Memory* %loadMem_491056, %struct.Memory** %MEMORY
  %loadMem_49105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 5
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %RCX.i580
  %5399 = load i64, i64* %PC.i579
  %5400 = add i64 %5399, 4
  store i64 %5400, i64* %PC.i579
  %5401 = shl i64 %5398, 6
  %5402 = icmp slt i64 %5401, 0
  %5403 = shl i64 %5401, 1
  store i64 %5403, i64* %RCX.i580, align 8
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5405 = zext i1 %5402 to i8
  store i8 %5405, i8* %5404, align 1
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5407 = trunc i64 %5403 to i32
  %5408 = and i32 %5407, 254
  %5409 = call i32 @llvm.ctpop.i32(i32 %5408)
  %5410 = trunc i32 %5409 to i8
  %5411 = and i8 %5410, 1
  %5412 = xor i8 %5411, 1
  store i8 %5412, i8* %5406, align 1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5413, align 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5415 = icmp eq i64 %5403, 0
  %5416 = zext i1 %5415 to i8
  store i8 %5416, i8* %5414, align 1
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5418 = lshr i64 %5403, 63
  %5419 = trunc i64 %5418 to i8
  store i8 %5419, i8* %5417, align 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5420, align 1
  store %struct.Memory* %loadMem_49105a, %struct.Memory** %MEMORY
  %loadMem_49105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 33
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %5423 to i64*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 1
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 7
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %RAX.i577
  %5431 = load i64, i64* %PC.i576
  %5432 = add i64 %5431, 3
  store i64 %5432, i64* %PC.i576
  store i64 %5430, i64* %RDX.i578, align 8
  store %struct.Memory* %loadMem_49105e, %struct.Memory** %MEMORY
  %loadMem_491061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 5
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 7
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RDX.i575 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %RDX.i575
  %5443 = load i64, i64* %RCX.i574
  %5444 = load i64, i64* %PC.i573
  %5445 = add i64 %5444, 3
  store i64 %5445, i64* %PC.i573
  %5446 = add i64 %5443, %5442
  store i64 %5446, i64* %RDX.i575, align 8
  %5447 = icmp ult i64 %5446, %5442
  %5448 = icmp ult i64 %5446, %5443
  %5449 = or i1 %5447, %5448
  %5450 = zext i1 %5449 to i8
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5450, i8* %5451, align 1
  %5452 = trunc i64 %5446 to i32
  %5453 = and i32 %5452, 255
  %5454 = call i32 @llvm.ctpop.i32(i32 %5453)
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  %5457 = xor i8 %5456, 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5457, i8* %5458, align 1
  %5459 = xor i64 %5443, %5442
  %5460 = xor i64 %5459, %5446
  %5461 = lshr i64 %5460, 4
  %5462 = trunc i64 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5463, i8* %5464, align 1
  %5465 = icmp eq i64 %5446, 0
  %5466 = zext i1 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5466, i8* %5467, align 1
  %5468 = lshr i64 %5446, 63
  %5469 = trunc i64 %5468 to i8
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5469, i8* %5470, align 1
  %5471 = lshr i64 %5442, 63
  %5472 = lshr i64 %5443, 63
  %5473 = xor i64 %5468, %5471
  %5474 = xor i64 %5468, %5472
  %5475 = add i64 %5473, %5474
  %5476 = icmp eq i64 %5475, 2
  %5477 = zext i1 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5477, i8* %5478, align 1
  store %struct.Memory* %loadMem_491061, %struct.Memory** %MEMORY
  %loadMem_491064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 33
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %5481 to i64*
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 5
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 15
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %RBP.i572
  %5489 = sub i64 %5488, 32
  %5490 = load i64, i64* %PC.i570
  %5491 = add i64 %5490, 4
  store i64 %5491, i64* %PC.i570
  %5492 = inttoptr i64 %5489 to i32*
  %5493 = load i32, i32* %5492
  %5494 = sext i32 %5493 to i64
  store i64 %5494, i64* %RCX.i571, align 8
  store %struct.Memory* %loadMem_491064, %struct.Memory** %MEMORY
  %loadMem_491068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 33
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 5
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %5500 to i64*
  %5501 = load i64, i64* %RCX.i569
  %5502 = load i64, i64* %PC.i568
  %5503 = add i64 %5502, 4
  store i64 %5503, i64* %PC.i568
  %5504 = shl i64 %5501, 3
  %5505 = icmp slt i64 %5504, 0
  %5506 = shl i64 %5504, 1
  store i64 %5506, i64* %RCX.i569, align 8
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5508 = zext i1 %5505 to i8
  store i8 %5508, i8* %5507, align 1
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5510 = trunc i64 %5506 to i32
  %5511 = and i32 %5510, 254
  %5512 = call i32 @llvm.ctpop.i32(i32 %5511)
  %5513 = trunc i32 %5512 to i8
  %5514 = and i8 %5513, 1
  %5515 = xor i8 %5514, 1
  store i8 %5515, i8* %5509, align 1
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5516, align 1
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5518 = icmp eq i64 %5506, 0
  %5519 = zext i1 %5518 to i8
  store i8 %5519, i8* %5517, align 1
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5521 = lshr i64 %5506, 63
  %5522 = trunc i64 %5521 to i8
  store i8 %5522, i8* %5520, align 1
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5523, align 1
  store %struct.Memory* %loadMem_491068, %struct.Memory** %MEMORY
  %loadMem_49106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 5
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 7
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RDX.i567 = bitcast %union.anon* %5532 to i64*
  %5533 = load i64, i64* %RDX.i567
  %5534 = load i64, i64* %RCX.i566
  %5535 = load i64, i64* %PC.i565
  %5536 = add i64 %5535, 3
  store i64 %5536, i64* %PC.i565
  %5537 = add i64 %5534, %5533
  store i64 %5537, i64* %RDX.i567, align 8
  %5538 = icmp ult i64 %5537, %5533
  %5539 = icmp ult i64 %5537, %5534
  %5540 = or i1 %5538, %5539
  %5541 = zext i1 %5540 to i8
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5541, i8* %5542, align 1
  %5543 = trunc i64 %5537 to i32
  %5544 = and i32 %5543, 255
  %5545 = call i32 @llvm.ctpop.i32(i32 %5544)
  %5546 = trunc i32 %5545 to i8
  %5547 = and i8 %5546, 1
  %5548 = xor i8 %5547, 1
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5548, i8* %5549, align 1
  %5550 = xor i64 %5534, %5533
  %5551 = xor i64 %5550, %5537
  %5552 = lshr i64 %5551, 4
  %5553 = trunc i64 %5552 to i8
  %5554 = and i8 %5553, 1
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5554, i8* %5555, align 1
  %5556 = icmp eq i64 %5537, 0
  %5557 = zext i1 %5556 to i8
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5557, i8* %5558, align 1
  %5559 = lshr i64 %5537, 63
  %5560 = trunc i64 %5559 to i8
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5560, i8* %5561, align 1
  %5562 = lshr i64 %5533, 63
  %5563 = lshr i64 %5534, 63
  %5564 = xor i64 %5559, %5562
  %5565 = xor i64 %5559, %5563
  %5566 = add i64 %5564, %5565
  %5567 = icmp eq i64 %5566, 2
  %5568 = zext i1 %5567 to i8
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5568, i8* %5569, align 1
  store %struct.Memory* %loadMem_49106c, %struct.Memory** %MEMORY
  %loadMem_49106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 5
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %5575 to i64*
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 15
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %5578 to i64*
  %5579 = load i64, i64* %RBP.i564
  %5580 = sub i64 %5579, 36
  %5581 = load i64, i64* %PC.i562
  %5582 = add i64 %5581, 4
  store i64 %5582, i64* %PC.i562
  %5583 = inttoptr i64 %5580 to i32*
  %5584 = load i32, i32* %5583
  %5585 = sext i32 %5584 to i64
  store i64 %5585, i64* %RCX.i563, align 8
  store %struct.Memory* %loadMem_49106f, %struct.Memory** %MEMORY
  %loadMem_491073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 33
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 11
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %DI.i559 = bitcast %union.anon* %5591 to i16*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 5
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 7
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %5597 to i64*
  %5598 = load i64, i64* %RDX.i561
  %5599 = load i64, i64* %RCX.i560
  %5600 = mul i64 %5599, 4
  %5601 = add i64 %5600, %5598
  %5602 = load i16, i16* %DI.i559
  %5603 = zext i16 %5602 to i64
  %5604 = load i64, i64* %PC.i558
  %5605 = add i64 %5604, 4
  store i64 %5605, i64* %PC.i558
  %5606 = inttoptr i64 %5601 to i16*
  store i16 %5602, i16* %5606
  store %struct.Memory* %loadMem_491073, %struct.Memory** %MEMORY
  %loadMem_491077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 5
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 15
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %RBP.i557
  %5617 = sub i64 %5616, 72
  %5618 = load i64, i64* %PC.i555
  %5619 = add i64 %5618, 4
  store i64 %5619, i64* %PC.i555
  %5620 = inttoptr i64 %5617 to i64*
  %5621 = load i64, i64* %5620
  store i64 %5621, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_491077, %struct.Memory** %MEMORY
  %loadMem_49107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 33
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %5624 to i64*
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 7
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %5627 to i64*
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5629 = getelementptr inbounds %struct.GPR, %struct.GPR* %5628, i32 0, i32 15
  %5630 = getelementptr inbounds %struct.Reg, %struct.Reg* %5629, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %5630 to i64*
  %5631 = load i64, i64* %RBP.i554
  %5632 = sub i64 %5631, 32
  %5633 = load i64, i64* %PC.i552
  %5634 = add i64 %5633, 4
  store i64 %5634, i64* %PC.i552
  %5635 = inttoptr i64 %5632 to i32*
  %5636 = load i32, i32* %5635
  %5637 = sext i32 %5636 to i64
  store i64 %5637, i64* %RDX.i553, align 8
  store %struct.Memory* %loadMem_49107b, %struct.Memory** %MEMORY
  %loadMem_49107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 5
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %5643 to i64*
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 7
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %5646 to i64*
  %5647 = load i64, i64* %RCX.i550
  %5648 = load i64, i64* %RDX.i551
  %5649 = mul i64 %5648, 8
  %5650 = add i64 %5649, %5647
  %5651 = load i64, i64* %PC.i549
  %5652 = add i64 %5651, 4
  store i64 %5652, i64* %PC.i549
  %5653 = inttoptr i64 %5650 to i64*
  %5654 = load i64, i64* %5653
  store i64 %5654, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_49107f, %struct.Memory** %MEMORY
  %loadMem_491083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 7
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 15
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %5663 to i64*
  %5664 = load i64, i64* %RBP.i548
  %5665 = sub i64 %5664, 36
  %5666 = load i64, i64* %PC.i546
  %5667 = add i64 %5666, 4
  store i64 %5667, i64* %PC.i546
  %5668 = inttoptr i64 %5665 to i32*
  %5669 = load i32, i32* %5668
  %5670 = sext i32 %5669 to i64
  store i64 %5670, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_491083, %struct.Memory** %MEMORY
  %loadMem_491087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 5
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 7
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RCX.i544
  %5681 = load i64, i64* %RDX.i545
  %5682 = mul i64 %5681, 8
  %5683 = add i64 %5682, %5680
  %5684 = load i64, i64* %PC.i543
  %5685 = add i64 %5684, 4
  store i64 %5685, i64* %PC.i543
  %5686 = inttoptr i64 %5683 to i64*
  %5687 = load i64, i64* %5686
  store i64 %5687, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_491087, %struct.Memory** %MEMORY
  %loadMem_49108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 5
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RCX.i542
  %5695 = load i64, i64* %PC.i541
  %5696 = add i64 %5695, 3
  store i64 %5696, i64* %PC.i541
  %5697 = inttoptr i64 %5694 to i64*
  %5698 = load i64, i64* %5697
  store i64 %5698, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_49108b, %struct.Memory** %MEMORY
  %loadMem_49108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 7
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i540
  %5709 = sub i64 %5708, 16
  %5710 = load i64, i64* %PC.i538
  %5711 = add i64 %5710, 4
  store i64 %5711, i64* %PC.i538
  %5712 = inttoptr i64 %5709 to i32*
  %5713 = load i32, i32* %5712
  %5714 = sext i32 %5713 to i64
  store i64 %5714, i64* %RDX.i539, align 8
  store %struct.Memory* %loadMem_49108e, %struct.Memory** %MEMORY
  %loadMem_491092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 5
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 7
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RDX.i537 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RCX.i536
  %5725 = load i64, i64* %RDX.i537
  %5726 = mul i64 %5725, 8
  %5727 = add i64 %5726, %5724
  %5728 = load i64, i64* %PC.i535
  %5729 = add i64 %5728, 4
  store i64 %5729, i64* %PC.i535
  %5730 = inttoptr i64 %5727 to i64*
  %5731 = load i64, i64* %5730
  store i64 %5731, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_491092, %struct.Memory** %MEMORY
  %loadMem_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 7
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RDX.i533 = bitcast %union.anon* %5737 to i64*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 15
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %RBP.i534
  %5742 = sub i64 %5741, 12
  %5743 = load i64, i64* %PC.i532
  %5744 = add i64 %5743, 4
  store i64 %5744, i64* %PC.i532
  %5745 = inttoptr i64 %5742 to i32*
  %5746 = load i32, i32* %5745
  %5747 = sext i32 %5746 to i64
  store i64 %5747, i64* %RDX.i533, align 8
  store %struct.Memory* %loadMem_491096, %struct.Memory** %MEMORY
  %loadMem_49109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 5
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 7
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RCX.i530
  %5758 = load i64, i64* %RDX.i531
  %5759 = mul i64 %5758, 8
  %5760 = add i64 %5759, %5757
  %5761 = load i64, i64* %PC.i529
  %5762 = add i64 %5761, 4
  store i64 %5762, i64* %PC.i529
  %5763 = inttoptr i64 %5760 to i64*
  %5764 = load i64, i64* %5763
  store i64 %5764, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_49109a, %struct.Memory** %MEMORY
  %loadMem_49109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 11
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %DI.i527 = bitcast %union.anon* %5770 to i16*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 5
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %5773 to i64*
  %5774 = load i64, i64* %RCX.i528
  %5775 = add i64 %5774, 2
  %5776 = load i64, i64* %PC.i526
  %5777 = add i64 %5776, 4
  store i64 %5777, i64* %PC.i526
  %5778 = inttoptr i64 %5775 to i16*
  %5779 = load i16, i16* %5778
  store i16 %5779, i16* %DI.i527, align 2
  store %struct.Memory* %loadMem_49109e, %struct.Memory** %MEMORY
  %loadMem_4910a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 5
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 15
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %RBP.i525
  %5790 = sub i64 %5789, 4
  %5791 = load i64, i64* %PC.i523
  %5792 = add i64 %5791, 4
  store i64 %5792, i64* %PC.i523
  %5793 = inttoptr i64 %5790 to i32*
  %5794 = load i32, i32* %5793
  %5795 = sext i32 %5794 to i64
  store i64 %5795, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_4910a2, %struct.Memory** %MEMORY
  %loadMem_4910a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 5
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %5801 to i64*
  %5802 = load i64, i64* %RCX.i522
  %5803 = load i64, i64* %PC.i521
  %5804 = add i64 %5803, 4
  store i64 %5804, i64* %PC.i521
  %5805 = shl i64 %5802, 6
  %5806 = icmp slt i64 %5805, 0
  %5807 = shl i64 %5805, 1
  store i64 %5807, i64* %RCX.i522, align 8
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5809 = zext i1 %5806 to i8
  store i8 %5809, i8* %5808, align 1
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5811 = trunc i64 %5807 to i32
  %5812 = and i32 %5811, 254
  %5813 = call i32 @llvm.ctpop.i32(i32 %5812)
  %5814 = trunc i32 %5813 to i8
  %5815 = and i8 %5814, 1
  %5816 = xor i8 %5815, 1
  store i8 %5816, i8* %5810, align 1
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5817, align 1
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5819 = icmp eq i64 %5807, 0
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %5818, align 1
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5822 = lshr i64 %5807, 63
  %5823 = trunc i64 %5822 to i8
  store i8 %5823, i8* %5821, align 1
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5824, align 1
  store %struct.Memory* %loadMem_4910a6, %struct.Memory** %MEMORY
  %loadMem_4910aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 1
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 5
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RAX.i519
  %5835 = load i64, i64* %RCX.i520
  %5836 = load i64, i64* %PC.i518
  %5837 = add i64 %5836, 3
  store i64 %5837, i64* %PC.i518
  %5838 = add i64 %5835, %5834
  store i64 %5838, i64* %RAX.i519, align 8
  %5839 = icmp ult i64 %5838, %5834
  %5840 = icmp ult i64 %5838, %5835
  %5841 = or i1 %5839, %5840
  %5842 = zext i1 %5841 to i8
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5842, i8* %5843, align 1
  %5844 = trunc i64 %5838 to i32
  %5845 = and i32 %5844, 255
  %5846 = call i32 @llvm.ctpop.i32(i32 %5845)
  %5847 = trunc i32 %5846 to i8
  %5848 = and i8 %5847, 1
  %5849 = xor i8 %5848, 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5849, i8* %5850, align 1
  %5851 = xor i64 %5835, %5834
  %5852 = xor i64 %5851, %5838
  %5853 = lshr i64 %5852, 4
  %5854 = trunc i64 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5855, i8* %5856, align 1
  %5857 = icmp eq i64 %5838, 0
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5858, i8* %5859, align 1
  %5860 = lshr i64 %5838, 63
  %5861 = trunc i64 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5861, i8* %5862, align 1
  %5863 = lshr i64 %5834, 63
  %5864 = lshr i64 %5835, 63
  %5865 = xor i64 %5860, %5863
  %5866 = xor i64 %5860, %5864
  %5867 = add i64 %5865, %5866
  %5868 = icmp eq i64 %5867, 2
  %5869 = zext i1 %5868 to i8
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5869, i8* %5870, align 1
  store %struct.Memory* %loadMem_4910aa, %struct.Memory** %MEMORY
  %loadMem_4910ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 5
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RBP.i517
  %5881 = sub i64 %5880, 32
  %5882 = load i64, i64* %PC.i515
  %5883 = add i64 %5882, 4
  store i64 %5883, i64* %PC.i515
  %5884 = inttoptr i64 %5881 to i32*
  %5885 = load i32, i32* %5884
  %5886 = sext i32 %5885 to i64
  store i64 %5886, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_4910ad, %struct.Memory** %MEMORY
  %loadMem_4910b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 5
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %5892 to i64*
  %5893 = load i64, i64* %RCX.i514
  %5894 = load i64, i64* %PC.i513
  %5895 = add i64 %5894, 4
  store i64 %5895, i64* %PC.i513
  %5896 = shl i64 %5893, 3
  %5897 = icmp slt i64 %5896, 0
  %5898 = shl i64 %5896, 1
  store i64 %5898, i64* %RCX.i514, align 8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5900 = zext i1 %5897 to i8
  store i8 %5900, i8* %5899, align 1
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5902 = trunc i64 %5898 to i32
  %5903 = and i32 %5902, 254
  %5904 = call i32 @llvm.ctpop.i32(i32 %5903)
  %5905 = trunc i32 %5904 to i8
  %5906 = and i8 %5905, 1
  %5907 = xor i8 %5906, 1
  store i8 %5907, i8* %5901, align 1
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5908, align 1
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5910 = icmp eq i64 %5898, 0
  %5911 = zext i1 %5910 to i8
  store i8 %5911, i8* %5909, align 1
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5913 = lshr i64 %5898, 63
  %5914 = trunc i64 %5913 to i8
  store i8 %5914, i8* %5912, align 1
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5915, align 1
  store %struct.Memory* %loadMem_4910b1, %struct.Memory** %MEMORY
  %loadMem_4910b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 33
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %5918 to i64*
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 1
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %5921 to i64*
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5923 = getelementptr inbounds %struct.GPR, %struct.GPR* %5922, i32 0, i32 5
  %5924 = getelementptr inbounds %struct.Reg, %struct.Reg* %5923, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %5924 to i64*
  %5925 = load i64, i64* %RAX.i511
  %5926 = load i64, i64* %RCX.i512
  %5927 = load i64, i64* %PC.i510
  %5928 = add i64 %5927, 3
  store i64 %5928, i64* %PC.i510
  %5929 = add i64 %5926, %5925
  store i64 %5929, i64* %RAX.i511, align 8
  %5930 = icmp ult i64 %5929, %5925
  %5931 = icmp ult i64 %5929, %5926
  %5932 = or i1 %5930, %5931
  %5933 = zext i1 %5932 to i8
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5933, i8* %5934, align 1
  %5935 = trunc i64 %5929 to i32
  %5936 = and i32 %5935, 255
  %5937 = call i32 @llvm.ctpop.i32(i32 %5936)
  %5938 = trunc i32 %5937 to i8
  %5939 = and i8 %5938, 1
  %5940 = xor i8 %5939, 1
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5940, i8* %5941, align 1
  %5942 = xor i64 %5926, %5925
  %5943 = xor i64 %5942, %5929
  %5944 = lshr i64 %5943, 4
  %5945 = trunc i64 %5944 to i8
  %5946 = and i8 %5945, 1
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5946, i8* %5947, align 1
  %5948 = icmp eq i64 %5929, 0
  %5949 = zext i1 %5948 to i8
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5949, i8* %5950, align 1
  %5951 = lshr i64 %5929, 63
  %5952 = trunc i64 %5951 to i8
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5952, i8* %5953, align 1
  %5954 = lshr i64 %5925, 63
  %5955 = lshr i64 %5926, 63
  %5956 = xor i64 %5951, %5954
  %5957 = xor i64 %5951, %5955
  %5958 = add i64 %5956, %5957
  %5959 = icmp eq i64 %5958, 2
  %5960 = zext i1 %5959 to i8
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5960, i8* %5961, align 1
  store %struct.Memory* %loadMem_4910b5, %struct.Memory** %MEMORY
  %loadMem_4910b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 33
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 5
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %5967 to i64*
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 15
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %5970 to i64*
  %5971 = load i64, i64* %RBP.i509
  %5972 = sub i64 %5971, 36
  %5973 = load i64, i64* %PC.i507
  %5974 = add i64 %5973, 4
  store i64 %5974, i64* %PC.i507
  %5975 = inttoptr i64 %5972 to i32*
  %5976 = load i32, i32* %5975
  %5977 = sext i32 %5976 to i64
  store i64 %5977, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_4910b8, %struct.Memory** %MEMORY
  %loadMem_4910bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 33
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5980 to i64*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 11
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %DI.i504 = bitcast %union.anon* %5983 to i16*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 1
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 5
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %RAX.i505
  %5991 = load i64, i64* %RCX.i506
  %5992 = mul i64 %5991, 4
  %5993 = add i64 %5990, 2
  %5994 = add i64 %5993, %5992
  %5995 = load i16, i16* %DI.i504
  %5996 = zext i16 %5995 to i64
  %5997 = load i64, i64* %PC.i503
  %5998 = add i64 %5997, 5
  store i64 %5998, i64* %PC.i503
  %5999 = inttoptr i64 %5994 to i16*
  store i16 %5995, i16* %5999
  store %struct.Memory* %loadMem_4910bc, %struct.Memory** %MEMORY
  %loadMem_4910c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 1
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %6005 to i64*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 15
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %6008 to i64*
  %6009 = load i64, i64* %RBP.i502
  %6010 = sub i64 %6009, 32
  %6011 = load i64, i64* %PC.i500
  %6012 = add i64 %6011, 3
  store i64 %6012, i64* %PC.i500
  %6013 = inttoptr i64 %6010 to i32*
  %6014 = load i32, i32* %6013
  %6015 = zext i32 %6014 to i64
  store i64 %6015, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_4910c1, %struct.Memory** %MEMORY
  %loadMem_4910c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 33
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %6018 to i64*
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 1
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %6021 to i64*
  %6022 = load i64, i64* %RAX.i499
  %6023 = load i64, i64* %PC.i498
  %6024 = add i64 %6023, 3
  store i64 %6024, i64* %PC.i498
  %6025 = trunc i64 %6022 to i32
  %6026 = add i32 1, %6025
  %6027 = zext i32 %6026 to i64
  store i64 %6027, i64* %RAX.i499, align 8
  %6028 = icmp ult i32 %6026, %6025
  %6029 = icmp ult i32 %6026, 1
  %6030 = or i1 %6028, %6029
  %6031 = zext i1 %6030 to i8
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6031, i8* %6032, align 1
  %6033 = and i32 %6026, 255
  %6034 = call i32 @llvm.ctpop.i32(i32 %6033)
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  %6037 = xor i8 %6036, 1
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6037, i8* %6038, align 1
  %6039 = xor i64 1, %6022
  %6040 = trunc i64 %6039 to i32
  %6041 = xor i32 %6040, %6026
  %6042 = lshr i32 %6041, 4
  %6043 = trunc i32 %6042 to i8
  %6044 = and i8 %6043, 1
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6044, i8* %6045, align 1
  %6046 = icmp eq i32 %6026, 0
  %6047 = zext i1 %6046 to i8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6047, i8* %6048, align 1
  %6049 = lshr i32 %6026, 31
  %6050 = trunc i32 %6049 to i8
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6050, i8* %6051, align 1
  %6052 = lshr i32 %6025, 31
  %6053 = xor i32 %6049, %6052
  %6054 = add i32 %6053, %6049
  %6055 = icmp eq i32 %6054, 2
  %6056 = zext i1 %6055 to i8
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6056, i8* %6057, align 1
  store %struct.Memory* %loadMem_4910c4, %struct.Memory** %MEMORY
  %loadMem_4910c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 33
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %6060 to i64*
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 1
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %EAX.i496 = bitcast %union.anon* %6063 to i32*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 15
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %6066 to i64*
  %6067 = load i64, i64* %RBP.i497
  %6068 = sub i64 %6067, 32
  %6069 = load i32, i32* %EAX.i496
  %6070 = zext i32 %6069 to i64
  %6071 = load i64, i64* %PC.i495
  %6072 = add i64 %6071, 3
  store i64 %6072, i64* %PC.i495
  %6073 = inttoptr i64 %6068 to i32*
  store i32 %6069, i32* %6073
  store %struct.Memory* %loadMem_4910c7, %struct.Memory** %MEMORY
  %loadMem_4910ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %6076 to i64*
  %6077 = load i64, i64* %PC.i494
  %6078 = add i64 %6077, -339
  %6079 = load i64, i64* %PC.i494
  %6080 = add i64 %6079, 5
  store i64 %6080, i64* %PC.i494
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6078, i64* %6081, align 8
  store %struct.Memory* %loadMem_4910ca, %struct.Memory** %MEMORY
  br label %block_.L_490f77

block_.L_4910cf:                                  ; preds = %block_.L_490f77
  %loadMem_4910cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %6084 to i64*
  %6085 = load i64, i64* %PC.i493
  %6086 = add i64 %6085, 5
  %6087 = load i64, i64* %PC.i493
  %6088 = add i64 %6087, 5
  store i64 %6088, i64* %PC.i493
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6086, i64* %6089, align 8
  store %struct.Memory* %loadMem_4910cf, %struct.Memory** %MEMORY
  br label %block_.L_4910d4

block_.L_4910d4:                                  ; preds = %block_.L_4910cf
  %loadMem_4910d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 1
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %6098 to i64*
  %6099 = load i64, i64* %RBP.i492
  %6100 = sub i64 %6099, 36
  %6101 = load i64, i64* %PC.i490
  %6102 = add i64 %6101, 3
  store i64 %6102, i64* %PC.i490
  %6103 = inttoptr i64 %6100 to i32*
  %6104 = load i32, i32* %6103
  %6105 = zext i32 %6104 to i64
  store i64 %6105, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4910d4, %struct.Memory** %MEMORY
  %loadMem_4910d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 33
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %6108 to i64*
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 1
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %6111 to i64*
  %6112 = load i64, i64* %RAX.i489
  %6113 = load i64, i64* %PC.i488
  %6114 = add i64 %6113, 3
  store i64 %6114, i64* %PC.i488
  %6115 = trunc i64 %6112 to i32
  %6116 = add i32 1, %6115
  %6117 = zext i32 %6116 to i64
  store i64 %6117, i64* %RAX.i489, align 8
  %6118 = icmp ult i32 %6116, %6115
  %6119 = icmp ult i32 %6116, 1
  %6120 = or i1 %6118, %6119
  %6121 = zext i1 %6120 to i8
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6121, i8* %6122, align 1
  %6123 = and i32 %6116, 255
  %6124 = call i32 @llvm.ctpop.i32(i32 %6123)
  %6125 = trunc i32 %6124 to i8
  %6126 = and i8 %6125, 1
  %6127 = xor i8 %6126, 1
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6127, i8* %6128, align 1
  %6129 = xor i64 1, %6112
  %6130 = trunc i64 %6129 to i32
  %6131 = xor i32 %6130, %6116
  %6132 = lshr i32 %6131, 4
  %6133 = trunc i32 %6132 to i8
  %6134 = and i8 %6133, 1
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6134, i8* %6135, align 1
  %6136 = icmp eq i32 %6116, 0
  %6137 = zext i1 %6136 to i8
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6137, i8* %6138, align 1
  %6139 = lshr i32 %6116, 31
  %6140 = trunc i32 %6139 to i8
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6140, i8* %6141, align 1
  %6142 = lshr i32 %6115, 31
  %6143 = xor i32 %6139, %6142
  %6144 = add i32 %6143, %6139
  %6145 = icmp eq i32 %6144, 2
  %6146 = zext i1 %6145 to i8
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6146, i8* %6147, align 1
  store %struct.Memory* %loadMem_4910d7, %struct.Memory** %MEMORY
  %loadMem_4910da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 1
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %EAX.i486 = bitcast %union.anon* %6153 to i32*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 15
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RBP.i487
  %6158 = sub i64 %6157, 36
  %6159 = load i32, i32* %EAX.i486
  %6160 = zext i32 %6159 to i64
  %6161 = load i64, i64* %PC.i485
  %6162 = add i64 %6161, 3
  store i64 %6162, i64* %PC.i485
  %6163 = inttoptr i64 %6158 to i32*
  store i32 %6159, i32* %6163
  store %struct.Memory* %loadMem_4910da, %struct.Memory** %MEMORY
  %loadMem_4910dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %6166 to i64*
  %6167 = load i64, i64* %PC.i484
  %6168 = add i64 %6167, -376
  %6169 = load i64, i64* %PC.i484
  %6170 = add i64 %6169, 5
  store i64 %6170, i64* %PC.i484
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6168, i64* %6171, align 8
  store %struct.Memory* %loadMem_4910dd, %struct.Memory** %MEMORY
  br label %block_.L_490f65

block_.L_4910e2:                                  ; preds = %block_.L_490f65
  %loadMem_4910e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 33
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %6174 to i64*
  %6175 = load i64, i64* %PC.i483
  %6176 = add i64 %6175, 157
  %6177 = load i64, i64* %PC.i483
  %6178 = add i64 %6177, 5
  store i64 %6178, i64* %PC.i483
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6176, i64* %6179, align 8
  store %struct.Memory* %loadMem_4910e2, %struct.Memory** %MEMORY
  br label %block_.L_49117f

block_.L_4910e7:                                  ; preds = %block_490f55
  %loadMem_4910e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 33
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %6182 to i64*
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 1
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %6185 to i64*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 15
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %6188 to i64*
  %6189 = load i64, i64* %RBP.i482
  %6190 = sub i64 %6189, 44
  %6191 = load i64, i64* %PC.i480
  %6192 = add i64 %6191, 3
  store i64 %6192, i64* %PC.i480
  %6193 = inttoptr i64 %6190 to i32*
  %6194 = load i32, i32* %6193
  %6195 = zext i32 %6194 to i64
  store i64 %6195, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_4910e7, %struct.Memory** %MEMORY
  %loadMem_4910ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 33
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %6198 to i64*
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6200 = getelementptr inbounds %struct.GPR, %struct.GPR* %6199, i32 0, i32 1
  %6201 = getelementptr inbounds %struct.Reg, %struct.Reg* %6200, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %6201 to i32*
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 15
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %6204 to i64*
  %6205 = load i64, i64* %RBP.i479
  %6206 = sub i64 %6205, 36
  %6207 = load i32, i32* %EAX.i478
  %6208 = zext i32 %6207 to i64
  %6209 = load i64, i64* %PC.i477
  %6210 = add i64 %6209, 3
  store i64 %6210, i64* %PC.i477
  %6211 = inttoptr i64 %6206 to i32*
  store i32 %6207, i32* %6211
  store %struct.Memory* %loadMem_4910ea, %struct.Memory** %MEMORY
  br label %block_.L_4910ed

block_.L_4910ed:                                  ; preds = %block_.L_49116c, %block_.L_4910e7
  %loadMem_4910ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 33
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 1
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 15
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %6220 to i64*
  %6221 = load i64, i64* %RBP.i476
  %6222 = sub i64 %6221, 36
  %6223 = load i64, i64* %PC.i474
  %6224 = add i64 %6223, 3
  store i64 %6224, i64* %PC.i474
  %6225 = inttoptr i64 %6222 to i32*
  %6226 = load i32, i32* %6225
  %6227 = zext i32 %6226 to i64
  store i64 %6227, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_4910ed, %struct.Memory** %MEMORY
  %loadMem_4910f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 33
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %6230 to i64*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 1
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %6233 to i32*
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 15
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %6236 to i64*
  %6237 = load i32, i32* %EAX.i472
  %6238 = zext i32 %6237 to i64
  %6239 = load i64, i64* %RBP.i473
  %6240 = sub i64 %6239, 52
  %6241 = load i64, i64* %PC.i471
  %6242 = add i64 %6241, 3
  store i64 %6242, i64* %PC.i471
  %6243 = inttoptr i64 %6240 to i32*
  %6244 = load i32, i32* %6243
  %6245 = sub i32 %6237, %6244
  %6246 = icmp ult i32 %6237, %6244
  %6247 = zext i1 %6246 to i8
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6247, i8* %6248, align 1
  %6249 = and i32 %6245, 255
  %6250 = call i32 @llvm.ctpop.i32(i32 %6249)
  %6251 = trunc i32 %6250 to i8
  %6252 = and i8 %6251, 1
  %6253 = xor i8 %6252, 1
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6253, i8* %6254, align 1
  %6255 = xor i32 %6244, %6237
  %6256 = xor i32 %6255, %6245
  %6257 = lshr i32 %6256, 4
  %6258 = trunc i32 %6257 to i8
  %6259 = and i8 %6258, 1
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6259, i8* %6260, align 1
  %6261 = icmp eq i32 %6245, 0
  %6262 = zext i1 %6261 to i8
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6262, i8* %6263, align 1
  %6264 = lshr i32 %6245, 31
  %6265 = trunc i32 %6264 to i8
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6265, i8* %6266, align 1
  %6267 = lshr i32 %6237, 31
  %6268 = lshr i32 %6244, 31
  %6269 = xor i32 %6268, %6267
  %6270 = xor i32 %6264, %6267
  %6271 = add i32 %6270, %6269
  %6272 = icmp eq i32 %6271, 2
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6273, i8* %6274, align 1
  store %struct.Memory* %loadMem_4910f0, %struct.Memory** %MEMORY
  %loadMem_4910f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 33
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %6277 to i64*
  %6278 = load i64, i64* %PC.i470
  %6279 = add i64 %6278, 135
  %6280 = load i64, i64* %PC.i470
  %6281 = add i64 %6280, 6
  %6282 = load i64, i64* %PC.i470
  %6283 = add i64 %6282, 6
  store i64 %6283, i64* %PC.i470
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6285 = load i8, i8* %6284, align 1
  %6286 = icmp ne i8 %6285, 0
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6288 = load i8, i8* %6287, align 1
  %6289 = icmp ne i8 %6288, 0
  %6290 = xor i1 %6286, %6289
  %6291 = xor i1 %6290, true
  %6292 = zext i1 %6291 to i8
  store i8 %6292, i8* %BRANCH_TAKEN, align 1
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6294 = select i1 %6290, i64 %6281, i64 %6279
  store i64 %6294, i64* %6293, align 8
  store %struct.Memory* %loadMem_4910f3, %struct.Memory** %MEMORY
  %loadBr_4910f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910f3 = icmp eq i8 %loadBr_4910f3, 1
  br i1 %cmpBr_4910f3, label %block_.L_49117a, label %block_4910f9

block_4910f9:                                     ; preds = %block_.L_4910ed
  %loadMem_4910f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 33
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %6297 to i64*
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6299 = getelementptr inbounds %struct.GPR, %struct.GPR* %6298, i32 0, i32 1
  %6300 = getelementptr inbounds %struct.Reg, %struct.Reg* %6299, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %6300 to i64*
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 15
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %6303 to i64*
  %6304 = load i64, i64* %RBP.i469
  %6305 = sub i64 %6304, 40
  %6306 = load i64, i64* %PC.i467
  %6307 = add i64 %6306, 3
  store i64 %6307, i64* %PC.i467
  %6308 = inttoptr i64 %6305 to i32*
  %6309 = load i32, i32* %6308
  %6310 = zext i32 %6309 to i64
  store i64 %6310, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_4910f9, %struct.Memory** %MEMORY
  %loadMem_4910fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 33
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 1
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %6316 to i32*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 15
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %6319 to i64*
  %6320 = load i64, i64* %RBP.i466
  %6321 = sub i64 %6320, 32
  %6322 = load i32, i32* %EAX.i465
  %6323 = zext i32 %6322 to i64
  %6324 = load i64, i64* %PC.i464
  %6325 = add i64 %6324, 3
  store i64 %6325, i64* %PC.i464
  %6326 = inttoptr i64 %6321 to i32*
  store i32 %6322, i32* %6326
  store %struct.Memory* %loadMem_4910fc, %struct.Memory** %MEMORY
  br label %block_.L_4910ff

block_.L_4910ff:                                  ; preds = %block_49110b, %block_4910f9
  %loadMem_4910ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 33
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %6329 to i64*
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 1
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %6332 to i64*
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6334 = getelementptr inbounds %struct.GPR, %struct.GPR* %6333, i32 0, i32 15
  %6335 = getelementptr inbounds %struct.Reg, %struct.Reg* %6334, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %6335 to i64*
  %6336 = load i64, i64* %RBP.i463
  %6337 = sub i64 %6336, 32
  %6338 = load i64, i64* %PC.i461
  %6339 = add i64 %6338, 3
  store i64 %6339, i64* %PC.i461
  %6340 = inttoptr i64 %6337 to i32*
  %6341 = load i32, i32* %6340
  %6342 = zext i32 %6341 to i64
  store i64 %6342, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_4910ff, %struct.Memory** %MEMORY
  %loadMem_491102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 33
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %6345 to i64*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 1
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %6348 to i32*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 15
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %6351 to i64*
  %6352 = load i32, i32* %EAX.i459
  %6353 = zext i32 %6352 to i64
  %6354 = load i64, i64* %RBP.i460
  %6355 = sub i64 %6354, 48
  %6356 = load i64, i64* %PC.i458
  %6357 = add i64 %6356, 3
  store i64 %6357, i64* %PC.i458
  %6358 = inttoptr i64 %6355 to i32*
  %6359 = load i32, i32* %6358
  %6360 = sub i32 %6352, %6359
  %6361 = icmp ult i32 %6352, %6359
  %6362 = zext i1 %6361 to i8
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6362, i8* %6363, align 1
  %6364 = and i32 %6360, 255
  %6365 = call i32 @llvm.ctpop.i32(i32 %6364)
  %6366 = trunc i32 %6365 to i8
  %6367 = and i8 %6366, 1
  %6368 = xor i8 %6367, 1
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6368, i8* %6369, align 1
  %6370 = xor i32 %6359, %6352
  %6371 = xor i32 %6370, %6360
  %6372 = lshr i32 %6371, 4
  %6373 = trunc i32 %6372 to i8
  %6374 = and i8 %6373, 1
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6374, i8* %6375, align 1
  %6376 = icmp eq i32 %6360, 0
  %6377 = zext i1 %6376 to i8
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6377, i8* %6378, align 1
  %6379 = lshr i32 %6360, 31
  %6380 = trunc i32 %6379 to i8
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6380, i8* %6381, align 1
  %6382 = lshr i32 %6352, 31
  %6383 = lshr i32 %6359, 31
  %6384 = xor i32 %6383, %6382
  %6385 = xor i32 %6379, %6382
  %6386 = add i32 %6385, %6384
  %6387 = icmp eq i32 %6386, 2
  %6388 = zext i1 %6387 to i8
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6388, i8* %6389, align 1
  store %struct.Memory* %loadMem_491102, %struct.Memory** %MEMORY
  %loadMem_491105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 33
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %6392 to i64*
  %6393 = load i64, i64* %PC.i457
  %6394 = add i64 %6393, 98
  %6395 = load i64, i64* %PC.i457
  %6396 = add i64 %6395, 6
  %6397 = load i64, i64* %PC.i457
  %6398 = add i64 %6397, 6
  store i64 %6398, i64* %PC.i457
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6400 = load i8, i8* %6399, align 1
  %6401 = icmp ne i8 %6400, 0
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6403 = load i8, i8* %6402, align 1
  %6404 = icmp ne i8 %6403, 0
  %6405 = xor i1 %6401, %6404
  %6406 = xor i1 %6405, true
  %6407 = zext i1 %6406 to i8
  store i8 %6407, i8* %BRANCH_TAKEN, align 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6409 = select i1 %6405, i64 %6396, i64 %6394
  store i64 %6409, i64* %6408, align 8
  store %struct.Memory* %loadMem_491105, %struct.Memory** %MEMORY
  %loadBr_491105 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491105 = icmp eq i8 %loadBr_491105, 1
  br i1 %cmpBr_491105, label %block_.L_491167, label %block_49110b

block_49110b:                                     ; preds = %block_.L_4910ff
  %loadMem_49110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 33
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 1
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %6415 to i64*
  %6416 = load i64, i64* %PC.i455
  %6417 = add i64 %6416, 10
  store i64 %6417, i64* %PC.i455
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_49110b, %struct.Memory** %MEMORY
  %loadMem_491115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 33
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 5
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 15
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %6426 to i64*
  %6427 = load i64, i64* %RBP.i454
  %6428 = sub i64 %6427, 4
  %6429 = load i64, i64* %PC.i452
  %6430 = add i64 %6429, 4
  store i64 %6430, i64* %PC.i452
  %6431 = inttoptr i64 %6428 to i32*
  %6432 = load i32, i32* %6431
  %6433 = sext i32 %6432 to i64
  store i64 %6433, i64* %RCX.i453, align 8
  store %struct.Memory* %loadMem_491115, %struct.Memory** %MEMORY
  %loadMem_491119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %6436 to i64*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 5
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %6439 to i64*
  %6440 = load i64, i64* %RCX.i451
  %6441 = load i64, i64* %PC.i450
  %6442 = add i64 %6441, 4
  store i64 %6442, i64* %PC.i450
  %6443 = shl i64 %6440, 6
  %6444 = icmp slt i64 %6443, 0
  %6445 = shl i64 %6443, 1
  store i64 %6445, i64* %RCX.i451, align 8
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6447 = zext i1 %6444 to i8
  store i8 %6447, i8* %6446, align 1
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6449 = trunc i64 %6445 to i32
  %6450 = and i32 %6449, 254
  %6451 = call i32 @llvm.ctpop.i32(i32 %6450)
  %6452 = trunc i32 %6451 to i8
  %6453 = and i8 %6452, 1
  %6454 = xor i8 %6453, 1
  store i8 %6454, i8* %6448, align 1
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6455, align 1
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6457 = icmp eq i64 %6445, 0
  %6458 = zext i1 %6457 to i8
  store i8 %6458, i8* %6456, align 1
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6460 = lshr i64 %6445, 63
  %6461 = trunc i64 %6460 to i8
  store i8 %6461, i8* %6459, align 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6462, align 1
  store %struct.Memory* %loadMem_491119, %struct.Memory** %MEMORY
  %loadMem_49111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 33
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 1
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %6468 to i64*
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6470 = getelementptr inbounds %struct.GPR, %struct.GPR* %6469, i32 0, i32 7
  %6471 = getelementptr inbounds %struct.Reg, %struct.Reg* %6470, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %6471 to i64*
  %6472 = load i64, i64* %RAX.i448
  %6473 = load i64, i64* %PC.i447
  %6474 = add i64 %6473, 3
  store i64 %6474, i64* %PC.i447
  store i64 %6472, i64* %RDX.i449, align 8
  store %struct.Memory* %loadMem_49111d, %struct.Memory** %MEMORY
  %loadMem_491120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 5
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 7
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %6483 to i64*
  %6484 = load i64, i64* %RDX.i446
  %6485 = load i64, i64* %RCX.i445
  %6486 = load i64, i64* %PC.i444
  %6487 = add i64 %6486, 3
  store i64 %6487, i64* %PC.i444
  %6488 = add i64 %6485, %6484
  store i64 %6488, i64* %RDX.i446, align 8
  %6489 = icmp ult i64 %6488, %6484
  %6490 = icmp ult i64 %6488, %6485
  %6491 = or i1 %6489, %6490
  %6492 = zext i1 %6491 to i8
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6492, i8* %6493, align 1
  %6494 = trunc i64 %6488 to i32
  %6495 = and i32 %6494, 255
  %6496 = call i32 @llvm.ctpop.i32(i32 %6495)
  %6497 = trunc i32 %6496 to i8
  %6498 = and i8 %6497, 1
  %6499 = xor i8 %6498, 1
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6499, i8* %6500, align 1
  %6501 = xor i64 %6485, %6484
  %6502 = xor i64 %6501, %6488
  %6503 = lshr i64 %6502, 4
  %6504 = trunc i64 %6503 to i8
  %6505 = and i8 %6504, 1
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6505, i8* %6506, align 1
  %6507 = icmp eq i64 %6488, 0
  %6508 = zext i1 %6507 to i8
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6508, i8* %6509, align 1
  %6510 = lshr i64 %6488, 63
  %6511 = trunc i64 %6510 to i8
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6511, i8* %6512, align 1
  %6513 = lshr i64 %6484, 63
  %6514 = lshr i64 %6485, 63
  %6515 = xor i64 %6510, %6513
  %6516 = xor i64 %6510, %6514
  %6517 = add i64 %6515, %6516
  %6518 = icmp eq i64 %6517, 2
  %6519 = zext i1 %6518 to i8
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6519, i8* %6520, align 1
  store %struct.Memory* %loadMem_491120, %struct.Memory** %MEMORY
  %loadMem_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 5
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 15
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %6529 to i64*
  %6530 = load i64, i64* %RBP.i443
  %6531 = sub i64 %6530, 32
  %6532 = load i64, i64* %PC.i441
  %6533 = add i64 %6532, 4
  store i64 %6533, i64* %PC.i441
  %6534 = inttoptr i64 %6531 to i32*
  %6535 = load i32, i32* %6534
  %6536 = sext i32 %6535 to i64
  store i64 %6536, i64* %RCX.i442, align 8
  store %struct.Memory* %loadMem_491123, %struct.Memory** %MEMORY
  %loadMem_491127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 5
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %6542 to i64*
  %6543 = load i64, i64* %RCX.i440
  %6544 = load i64, i64* %PC.i439
  %6545 = add i64 %6544, 4
  store i64 %6545, i64* %PC.i439
  %6546 = shl i64 %6543, 3
  %6547 = icmp slt i64 %6546, 0
  %6548 = shl i64 %6546, 1
  store i64 %6548, i64* %RCX.i440, align 8
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6550 = zext i1 %6547 to i8
  store i8 %6550, i8* %6549, align 1
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6552 = trunc i64 %6548 to i32
  %6553 = and i32 %6552, 254
  %6554 = call i32 @llvm.ctpop.i32(i32 %6553)
  %6555 = trunc i32 %6554 to i8
  %6556 = and i8 %6555, 1
  %6557 = xor i8 %6556, 1
  store i8 %6557, i8* %6551, align 1
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6558, align 1
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6560 = icmp eq i64 %6548, 0
  %6561 = zext i1 %6560 to i8
  store i8 %6561, i8* %6559, align 1
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6563 = lshr i64 %6548, 63
  %6564 = trunc i64 %6563 to i8
  store i8 %6564, i8* %6562, align 1
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6565, align 1
  store %struct.Memory* %loadMem_491127, %struct.Memory** %MEMORY
  %loadMem_49112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 5
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 7
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %6574 to i64*
  %6575 = load i64, i64* %RDX.i438
  %6576 = load i64, i64* %RCX.i437
  %6577 = load i64, i64* %PC.i436
  %6578 = add i64 %6577, 3
  store i64 %6578, i64* %PC.i436
  %6579 = add i64 %6576, %6575
  store i64 %6579, i64* %RDX.i438, align 8
  %6580 = icmp ult i64 %6579, %6575
  %6581 = icmp ult i64 %6579, %6576
  %6582 = or i1 %6580, %6581
  %6583 = zext i1 %6582 to i8
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6583, i8* %6584, align 1
  %6585 = trunc i64 %6579 to i32
  %6586 = and i32 %6585, 255
  %6587 = call i32 @llvm.ctpop.i32(i32 %6586)
  %6588 = trunc i32 %6587 to i8
  %6589 = and i8 %6588, 1
  %6590 = xor i8 %6589, 1
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6590, i8* %6591, align 1
  %6592 = xor i64 %6576, %6575
  %6593 = xor i64 %6592, %6579
  %6594 = lshr i64 %6593, 4
  %6595 = trunc i64 %6594 to i8
  %6596 = and i8 %6595, 1
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6596, i8* %6597, align 1
  %6598 = icmp eq i64 %6579, 0
  %6599 = zext i1 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6599, i8* %6600, align 1
  %6601 = lshr i64 %6579, 63
  %6602 = trunc i64 %6601 to i8
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6602, i8* %6603, align 1
  %6604 = lshr i64 %6575, 63
  %6605 = lshr i64 %6576, 63
  %6606 = xor i64 %6601, %6604
  %6607 = xor i64 %6601, %6605
  %6608 = add i64 %6606, %6607
  %6609 = icmp eq i64 %6608, 2
  %6610 = zext i1 %6609 to i8
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6610, i8* %6611, align 1
  store %struct.Memory* %loadMem_49112b, %struct.Memory** %MEMORY
  %loadMem_49112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 33
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 5
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 15
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %6620 to i64*
  %6621 = load i64, i64* %RBP.i435
  %6622 = sub i64 %6621, 36
  %6623 = load i64, i64* %PC.i433
  %6624 = add i64 %6623, 4
  store i64 %6624, i64* %PC.i433
  %6625 = inttoptr i64 %6622 to i32*
  %6626 = load i32, i32* %6625
  %6627 = sext i32 %6626 to i64
  store i64 %6627, i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_49112e, %struct.Memory** %MEMORY
  %loadMem_491132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 33
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 5
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 7
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %RDX.i432
  %6638 = load i64, i64* %RCX.i431
  %6639 = mul i64 %6638, 4
  %6640 = add i64 %6639, %6637
  %6641 = load i64, i64* %PC.i430
  %6642 = add i64 %6641, 6
  store i64 %6642, i64* %PC.i430
  %6643 = inttoptr i64 %6640 to i16*
  store i16 0, i16* %6643
  store %struct.Memory* %loadMem_491132, %struct.Memory** %MEMORY
  %loadMem_491138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 5
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %6649 to i64*
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 15
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %6652 to i64*
  %6653 = load i64, i64* %RBP.i429
  %6654 = sub i64 %6653, 4
  %6655 = load i64, i64* %PC.i427
  %6656 = add i64 %6655, 4
  store i64 %6656, i64* %PC.i427
  %6657 = inttoptr i64 %6654 to i32*
  %6658 = load i32, i32* %6657
  %6659 = sext i32 %6658 to i64
  store i64 %6659, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_491138, %struct.Memory** %MEMORY
  %loadMem_49113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6661 = getelementptr inbounds %struct.GPR, %struct.GPR* %6660, i32 0, i32 33
  %6662 = getelementptr inbounds %struct.Reg, %struct.Reg* %6661, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %6662 to i64*
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 5
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %6665 to i64*
  %6666 = load i64, i64* %RCX.i426
  %6667 = load i64, i64* %PC.i425
  %6668 = add i64 %6667, 4
  store i64 %6668, i64* %PC.i425
  %6669 = shl i64 %6666, 6
  %6670 = icmp slt i64 %6669, 0
  %6671 = shl i64 %6669, 1
  store i64 %6671, i64* %RCX.i426, align 8
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6673 = zext i1 %6670 to i8
  store i8 %6673, i8* %6672, align 1
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6675 = trunc i64 %6671 to i32
  %6676 = and i32 %6675, 254
  %6677 = call i32 @llvm.ctpop.i32(i32 %6676)
  %6678 = trunc i32 %6677 to i8
  %6679 = and i8 %6678, 1
  %6680 = xor i8 %6679, 1
  store i8 %6680, i8* %6674, align 1
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6681, align 1
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6683 = icmp eq i64 %6671, 0
  %6684 = zext i1 %6683 to i8
  store i8 %6684, i8* %6682, align 1
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6686 = lshr i64 %6671, 63
  %6687 = trunc i64 %6686 to i8
  store i8 %6687, i8* %6685, align 1
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6688, align 1
  store %struct.Memory* %loadMem_49113c, %struct.Memory** %MEMORY
  %loadMem_491140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 33
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %6691 to i64*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 1
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 5
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %RAX.i423
  %6699 = load i64, i64* %RCX.i424
  %6700 = load i64, i64* %PC.i422
  %6701 = add i64 %6700, 3
  store i64 %6701, i64* %PC.i422
  %6702 = add i64 %6699, %6698
  store i64 %6702, i64* %RAX.i423, align 8
  %6703 = icmp ult i64 %6702, %6698
  %6704 = icmp ult i64 %6702, %6699
  %6705 = or i1 %6703, %6704
  %6706 = zext i1 %6705 to i8
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6706, i8* %6707, align 1
  %6708 = trunc i64 %6702 to i32
  %6709 = and i32 %6708, 255
  %6710 = call i32 @llvm.ctpop.i32(i32 %6709)
  %6711 = trunc i32 %6710 to i8
  %6712 = and i8 %6711, 1
  %6713 = xor i8 %6712, 1
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6713, i8* %6714, align 1
  %6715 = xor i64 %6699, %6698
  %6716 = xor i64 %6715, %6702
  %6717 = lshr i64 %6716, 4
  %6718 = trunc i64 %6717 to i8
  %6719 = and i8 %6718, 1
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6719, i8* %6720, align 1
  %6721 = icmp eq i64 %6702, 0
  %6722 = zext i1 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6722, i8* %6723, align 1
  %6724 = lshr i64 %6702, 63
  %6725 = trunc i64 %6724 to i8
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6725, i8* %6726, align 1
  %6727 = lshr i64 %6698, 63
  %6728 = lshr i64 %6699, 63
  %6729 = xor i64 %6724, %6727
  %6730 = xor i64 %6724, %6728
  %6731 = add i64 %6729, %6730
  %6732 = icmp eq i64 %6731, 2
  %6733 = zext i1 %6732 to i8
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6733, i8* %6734, align 1
  store %struct.Memory* %loadMem_491140, %struct.Memory** %MEMORY
  %loadMem_491143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 33
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %6737 to i64*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 5
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %6740 to i64*
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 15
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %6743 to i64*
  %6744 = load i64, i64* %RBP.i421
  %6745 = sub i64 %6744, 32
  %6746 = load i64, i64* %PC.i419
  %6747 = add i64 %6746, 4
  store i64 %6747, i64* %PC.i419
  %6748 = inttoptr i64 %6745 to i32*
  %6749 = load i32, i32* %6748
  %6750 = sext i32 %6749 to i64
  store i64 %6750, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_491143, %struct.Memory** %MEMORY
  %loadMem_491147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 33
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 5
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RCX.i418
  %6758 = load i64, i64* %PC.i417
  %6759 = add i64 %6758, 4
  store i64 %6759, i64* %PC.i417
  %6760 = shl i64 %6757, 3
  %6761 = icmp slt i64 %6760, 0
  %6762 = shl i64 %6760, 1
  store i64 %6762, i64* %RCX.i418, align 8
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6764 = zext i1 %6761 to i8
  store i8 %6764, i8* %6763, align 1
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6766 = trunc i64 %6762 to i32
  %6767 = and i32 %6766, 254
  %6768 = call i32 @llvm.ctpop.i32(i32 %6767)
  %6769 = trunc i32 %6768 to i8
  %6770 = and i8 %6769, 1
  %6771 = xor i8 %6770, 1
  store i8 %6771, i8* %6765, align 1
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6772, align 1
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6774 = icmp eq i64 %6762, 0
  %6775 = zext i1 %6774 to i8
  store i8 %6775, i8* %6773, align 1
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6777 = lshr i64 %6762, 63
  %6778 = trunc i64 %6777 to i8
  store i8 %6778, i8* %6776, align 1
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6779, align 1
  store %struct.Memory* %loadMem_491147, %struct.Memory** %MEMORY
  %loadMem_49114b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 33
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %6782 to i64*
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 1
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %6785 to i64*
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 5
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %6788 to i64*
  %6789 = load i64, i64* %RAX.i415
  %6790 = load i64, i64* %RCX.i416
  %6791 = load i64, i64* %PC.i414
  %6792 = add i64 %6791, 3
  store i64 %6792, i64* %PC.i414
  %6793 = add i64 %6790, %6789
  store i64 %6793, i64* %RAX.i415, align 8
  %6794 = icmp ult i64 %6793, %6789
  %6795 = icmp ult i64 %6793, %6790
  %6796 = or i1 %6794, %6795
  %6797 = zext i1 %6796 to i8
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6797, i8* %6798, align 1
  %6799 = trunc i64 %6793 to i32
  %6800 = and i32 %6799, 255
  %6801 = call i32 @llvm.ctpop.i32(i32 %6800)
  %6802 = trunc i32 %6801 to i8
  %6803 = and i8 %6802, 1
  %6804 = xor i8 %6803, 1
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6804, i8* %6805, align 1
  %6806 = xor i64 %6790, %6789
  %6807 = xor i64 %6806, %6793
  %6808 = lshr i64 %6807, 4
  %6809 = trunc i64 %6808 to i8
  %6810 = and i8 %6809, 1
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6810, i8* %6811, align 1
  %6812 = icmp eq i64 %6793, 0
  %6813 = zext i1 %6812 to i8
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6813, i8* %6814, align 1
  %6815 = lshr i64 %6793, 63
  %6816 = trunc i64 %6815 to i8
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6816, i8* %6817, align 1
  %6818 = lshr i64 %6789, 63
  %6819 = lshr i64 %6790, 63
  %6820 = xor i64 %6815, %6818
  %6821 = xor i64 %6815, %6819
  %6822 = add i64 %6820, %6821
  %6823 = icmp eq i64 %6822, 2
  %6824 = zext i1 %6823 to i8
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6824, i8* %6825, align 1
  store %struct.Memory* %loadMem_49114b, %struct.Memory** %MEMORY
  %loadMem_49114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 5
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %6831 to i64*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 15
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %6834 to i64*
  %6835 = load i64, i64* %RBP.i413
  %6836 = sub i64 %6835, 36
  %6837 = load i64, i64* %PC.i411
  %6838 = add i64 %6837, 4
  store i64 %6838, i64* %PC.i411
  %6839 = inttoptr i64 %6836 to i32*
  %6840 = load i32, i32* %6839
  %6841 = sext i32 %6840 to i64
  store i64 %6841, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_49114e, %struct.Memory** %MEMORY
  %loadMem_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 1
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %6847 to i64*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 5
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %RAX.i409
  %6852 = load i64, i64* %RCX.i410
  %6853 = mul i64 %6852, 4
  %6854 = add i64 %6851, 2
  %6855 = add i64 %6854, %6853
  %6856 = load i64, i64* %PC.i408
  %6857 = add i64 %6856, 7
  store i64 %6857, i64* %PC.i408
  %6858 = inttoptr i64 %6855 to i16*
  store i16 0, i16* %6858
  store %struct.Memory* %loadMem_491152, %struct.Memory** %MEMORY
  %loadMem_491159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 33
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 1
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %6864 to i64*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 15
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %6867 to i64*
  %6868 = load i64, i64* %RBP.i407
  %6869 = sub i64 %6868, 32
  %6870 = load i64, i64* %PC.i405
  %6871 = add i64 %6870, 3
  store i64 %6871, i64* %PC.i405
  %6872 = inttoptr i64 %6869 to i32*
  %6873 = load i32, i32* %6872
  %6874 = zext i32 %6873 to i64
  store i64 %6874, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_491159, %struct.Memory** %MEMORY
  %loadMem_49115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 33
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %6877 to i64*
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 1
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %6880 to i64*
  %6881 = load i64, i64* %RAX.i404
  %6882 = load i64, i64* %PC.i403
  %6883 = add i64 %6882, 3
  store i64 %6883, i64* %PC.i403
  %6884 = trunc i64 %6881 to i32
  %6885 = add i32 1, %6884
  %6886 = zext i32 %6885 to i64
  store i64 %6886, i64* %RAX.i404, align 8
  %6887 = icmp ult i32 %6885, %6884
  %6888 = icmp ult i32 %6885, 1
  %6889 = or i1 %6887, %6888
  %6890 = zext i1 %6889 to i8
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6890, i8* %6891, align 1
  %6892 = and i32 %6885, 255
  %6893 = call i32 @llvm.ctpop.i32(i32 %6892)
  %6894 = trunc i32 %6893 to i8
  %6895 = and i8 %6894, 1
  %6896 = xor i8 %6895, 1
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6896, i8* %6897, align 1
  %6898 = xor i64 1, %6881
  %6899 = trunc i64 %6898 to i32
  %6900 = xor i32 %6899, %6885
  %6901 = lshr i32 %6900, 4
  %6902 = trunc i32 %6901 to i8
  %6903 = and i8 %6902, 1
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6903, i8* %6904, align 1
  %6905 = icmp eq i32 %6885, 0
  %6906 = zext i1 %6905 to i8
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6906, i8* %6907, align 1
  %6908 = lshr i32 %6885, 31
  %6909 = trunc i32 %6908 to i8
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6909, i8* %6910, align 1
  %6911 = lshr i32 %6884, 31
  %6912 = xor i32 %6908, %6911
  %6913 = add i32 %6912, %6908
  %6914 = icmp eq i32 %6913, 2
  %6915 = zext i1 %6914 to i8
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6915, i8* %6916, align 1
  store %struct.Memory* %loadMem_49115c, %struct.Memory** %MEMORY
  %loadMem_49115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 33
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %6919 to i64*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 1
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %6922 to i32*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 15
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %6925 to i64*
  %6926 = load i64, i64* %RBP.i402
  %6927 = sub i64 %6926, 32
  %6928 = load i32, i32* %EAX.i401
  %6929 = zext i32 %6928 to i64
  %6930 = load i64, i64* %PC.i400
  %6931 = add i64 %6930, 3
  store i64 %6931, i64* %PC.i400
  %6932 = inttoptr i64 %6927 to i32*
  store i32 %6928, i32* %6932
  store %struct.Memory* %loadMem_49115f, %struct.Memory** %MEMORY
  %loadMem_491162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 33
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %6935 to i64*
  %6936 = load i64, i64* %PC.i399
  %6937 = add i64 %6936, -99
  %6938 = load i64, i64* %PC.i399
  %6939 = add i64 %6938, 5
  store i64 %6939, i64* %PC.i399
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6937, i64* %6940, align 8
  store %struct.Memory* %loadMem_491162, %struct.Memory** %MEMORY
  br label %block_.L_4910ff

block_.L_491167:                                  ; preds = %block_.L_4910ff
  %loadMem_491167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 33
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %6943 to i64*
  %6944 = load i64, i64* %PC.i398
  %6945 = add i64 %6944, 5
  %6946 = load i64, i64* %PC.i398
  %6947 = add i64 %6946, 5
  store i64 %6947, i64* %PC.i398
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6945, i64* %6948, align 8
  store %struct.Memory* %loadMem_491167, %struct.Memory** %MEMORY
  br label %block_.L_49116c

block_.L_49116c:                                  ; preds = %block_.L_491167
  %loadMem_49116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 33
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 1
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %6954 to i64*
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6956 = getelementptr inbounds %struct.GPR, %struct.GPR* %6955, i32 0, i32 15
  %6957 = getelementptr inbounds %struct.Reg, %struct.Reg* %6956, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %6957 to i64*
  %6958 = load i64, i64* %RBP.i397
  %6959 = sub i64 %6958, 36
  %6960 = load i64, i64* %PC.i395
  %6961 = add i64 %6960, 3
  store i64 %6961, i64* %PC.i395
  %6962 = inttoptr i64 %6959 to i32*
  %6963 = load i32, i32* %6962
  %6964 = zext i32 %6963 to i64
  store i64 %6964, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_49116c, %struct.Memory** %MEMORY
  %loadMem_49116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 33
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %6967 to i64*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 1
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %6970 to i64*
  %6971 = load i64, i64* %RAX.i394
  %6972 = load i64, i64* %PC.i393
  %6973 = add i64 %6972, 3
  store i64 %6973, i64* %PC.i393
  %6974 = trunc i64 %6971 to i32
  %6975 = add i32 1, %6974
  %6976 = zext i32 %6975 to i64
  store i64 %6976, i64* %RAX.i394, align 8
  %6977 = icmp ult i32 %6975, %6974
  %6978 = icmp ult i32 %6975, 1
  %6979 = or i1 %6977, %6978
  %6980 = zext i1 %6979 to i8
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6980, i8* %6981, align 1
  %6982 = and i32 %6975, 255
  %6983 = call i32 @llvm.ctpop.i32(i32 %6982)
  %6984 = trunc i32 %6983 to i8
  %6985 = and i8 %6984, 1
  %6986 = xor i8 %6985, 1
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6986, i8* %6987, align 1
  %6988 = xor i64 1, %6971
  %6989 = trunc i64 %6988 to i32
  %6990 = xor i32 %6989, %6975
  %6991 = lshr i32 %6990, 4
  %6992 = trunc i32 %6991 to i8
  %6993 = and i8 %6992, 1
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6993, i8* %6994, align 1
  %6995 = icmp eq i32 %6975, 0
  %6996 = zext i1 %6995 to i8
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6996, i8* %6997, align 1
  %6998 = lshr i32 %6975, 31
  %6999 = trunc i32 %6998 to i8
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6999, i8* %7000, align 1
  %7001 = lshr i32 %6974, 31
  %7002 = xor i32 %6998, %7001
  %7003 = add i32 %7002, %6998
  %7004 = icmp eq i32 %7003, 2
  %7005 = zext i1 %7004 to i8
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7005, i8* %7006, align 1
  store %struct.Memory* %loadMem_49116f, %struct.Memory** %MEMORY
  %loadMem_491172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 33
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %7009 to i64*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 1
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %7012 to i32*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 15
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %7015 to i64*
  %7016 = load i64, i64* %RBP.i392
  %7017 = sub i64 %7016, 36
  %7018 = load i32, i32* %EAX.i391
  %7019 = zext i32 %7018 to i64
  %7020 = load i64, i64* %PC.i390
  %7021 = add i64 %7020, 3
  store i64 %7021, i64* %PC.i390
  %7022 = inttoptr i64 %7017 to i32*
  store i32 %7018, i32* %7022
  store %struct.Memory* %loadMem_491172, %struct.Memory** %MEMORY
  %loadMem_491175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7024 = getelementptr inbounds %struct.GPR, %struct.GPR* %7023, i32 0, i32 33
  %7025 = getelementptr inbounds %struct.Reg, %struct.Reg* %7024, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %7025 to i64*
  %7026 = load i64, i64* %PC.i389
  %7027 = add i64 %7026, -136
  %7028 = load i64, i64* %PC.i389
  %7029 = add i64 %7028, 5
  store i64 %7029, i64* %PC.i389
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7027, i64* %7030, align 8
  store %struct.Memory* %loadMem_491175, %struct.Memory** %MEMORY
  br label %block_.L_4910ed

block_.L_49117a:                                  ; preds = %block_.L_4910ed
  %loadMem_49117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 33
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %7033 to i64*
  %7034 = load i64, i64* %PC.i388
  %7035 = add i64 %7034, 5
  %7036 = load i64, i64* %PC.i388
  %7037 = add i64 %7036, 5
  store i64 %7037, i64* %PC.i388
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7035, i64* %7038, align 8
  store %struct.Memory* %loadMem_49117a, %struct.Memory** %MEMORY
  br label %block_.L_49117f

block_.L_49117f:                                  ; preds = %block_.L_49117a, %block_.L_4910e2
  %loadMem_49117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 33
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %7041 to i64*
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 15
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %7044 to i64*
  %7045 = load i64, i64* %RBP.i387
  %7046 = sub i64 %7045, 24
  %7047 = load i64, i64* %PC.i386
  %7048 = add i64 %7047, 4
  store i64 %7048, i64* %PC.i386
  %7049 = inttoptr i64 %7046 to i32*
  %7050 = load i32, i32* %7049
  %7051 = sub i32 %7050, 1
  %7052 = icmp ult i32 %7050, 1
  %7053 = zext i1 %7052 to i8
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7053, i8* %7054, align 1
  %7055 = and i32 %7051, 255
  %7056 = call i32 @llvm.ctpop.i32(i32 %7055)
  %7057 = trunc i32 %7056 to i8
  %7058 = and i8 %7057, 1
  %7059 = xor i8 %7058, 1
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7059, i8* %7060, align 1
  %7061 = xor i32 %7050, 1
  %7062 = xor i32 %7061, %7051
  %7063 = lshr i32 %7062, 4
  %7064 = trunc i32 %7063 to i8
  %7065 = and i8 %7064, 1
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7065, i8* %7066, align 1
  %7067 = icmp eq i32 %7051, 0
  %7068 = zext i1 %7067 to i8
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7068, i8* %7069, align 1
  %7070 = lshr i32 %7051, 31
  %7071 = trunc i32 %7070 to i8
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7071, i8* %7072, align 1
  %7073 = lshr i32 %7050, 31
  %7074 = xor i32 %7070, %7073
  %7075 = add i32 %7074, %7073
  %7076 = icmp eq i32 %7075, 2
  %7077 = zext i1 %7076 to i8
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7077, i8* %7078, align 1
  store %struct.Memory* %loadMem_49117f, %struct.Memory** %MEMORY
  %loadMem_491183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 33
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %7081 to i64*
  %7082 = load i64, i64* %PC.i385
  %7083 = add i64 %7082, 16
  %7084 = load i64, i64* %PC.i385
  %7085 = add i64 %7084, 6
  %7086 = load i64, i64* %PC.i385
  %7087 = add i64 %7086, 6
  store i64 %7087, i64* %PC.i385
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7089 = load i8, i8* %7088, align 1
  store i8 %7089, i8* %BRANCH_TAKEN, align 1
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7091 = icmp ne i8 %7089, 0
  %7092 = select i1 %7091, i64 %7083, i64 %7085
  store i64 %7092, i64* %7090, align 8
  store %struct.Memory* %loadMem_491183, %struct.Memory** %MEMORY
  %loadBr_491183 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491183 = icmp eq i8 %loadBr_491183, 1
  br i1 %cmpBr_491183, label %block_.L_491193, label %block_491189

block_491189:                                     ; preds = %block_.L_49117f
  %loadMem_491189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 33
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 15
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %7098 to i64*
  %7099 = load i64, i64* %RBP.i384
  %7100 = sub i64 %7099, 24
  %7101 = load i64, i64* %PC.i383
  %7102 = add i64 %7101, 4
  store i64 %7102, i64* %PC.i383
  %7103 = inttoptr i64 %7100 to i32*
  %7104 = load i32, i32* %7103
  %7105 = sub i32 %7104, 2
  %7106 = icmp ult i32 %7104, 2
  %7107 = zext i1 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7107, i8* %7108, align 1
  %7109 = and i32 %7105, 255
  %7110 = call i32 @llvm.ctpop.i32(i32 %7109)
  %7111 = trunc i32 %7110 to i8
  %7112 = and i8 %7111, 1
  %7113 = xor i8 %7112, 1
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7113, i8* %7114, align 1
  %7115 = xor i32 %7104, 2
  %7116 = xor i32 %7115, %7105
  %7117 = lshr i32 %7116, 4
  %7118 = trunc i32 %7117 to i8
  %7119 = and i8 %7118, 1
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7119, i8* %7120, align 1
  %7121 = icmp eq i32 %7105, 0
  %7122 = zext i1 %7121 to i8
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7122, i8* %7123, align 1
  %7124 = lshr i32 %7105, 31
  %7125 = trunc i32 %7124 to i8
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7125, i8* %7126, align 1
  %7127 = lshr i32 %7104, 31
  %7128 = xor i32 %7124, %7127
  %7129 = add i32 %7128, %7127
  %7130 = icmp eq i32 %7129, 2
  %7131 = zext i1 %7130 to i8
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7131, i8* %7132, align 1
  store %struct.Memory* %loadMem_491189, %struct.Memory** %MEMORY
  %loadMem_49118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 33
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %7135 to i64*
  %7136 = load i64, i64* %PC.i382
  %7137 = add i64 %7136, 418
  %7138 = load i64, i64* %PC.i382
  %7139 = add i64 %7138, 6
  %7140 = load i64, i64* %PC.i382
  %7141 = add i64 %7140, 6
  store i64 %7141, i64* %PC.i382
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7143 = load i8, i8* %7142, align 1
  %7144 = icmp eq i8 %7143, 0
  %7145 = zext i1 %7144 to i8
  store i8 %7145, i8* %BRANCH_TAKEN, align 1
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7147 = select i1 %7144, i64 %7137, i64 %7139
  store i64 %7147, i64* %7146, align 8
  store %struct.Memory* %loadMem_49118d, %struct.Memory** %MEMORY
  %loadBr_49118d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49118d = icmp eq i8 %loadBr_49118d, 1
  br i1 %cmpBr_49118d, label %block_.L_49132f, label %block_.L_491193

block_.L_491193:                                  ; preds = %block_491189, %block_.L_49117f
  %loadMem_491193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 33
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %7150 to i64*
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 1
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 15
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %7156 to i64*
  %7157 = load i64, i64* %RBP.i381
  %7158 = sub i64 %7157, 44
  %7159 = load i64, i64* %PC.i379
  %7160 = add i64 %7159, 3
  store i64 %7160, i64* %PC.i379
  %7161 = inttoptr i64 %7158 to i32*
  %7162 = load i32, i32* %7161
  %7163 = zext i32 %7162 to i64
  store i64 %7163, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_491193, %struct.Memory** %MEMORY
  %loadMem_491196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 33
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %7166 to i64*
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 1
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %7169 to i32*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 15
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %7172 to i64*
  %7173 = load i64, i64* %RBP.i378
  %7174 = sub i64 %7173, 36
  %7175 = load i32, i32* %EAX.i377
  %7176 = zext i32 %7175 to i64
  %7177 = load i64, i64* %PC.i376
  %7178 = add i64 %7177, 3
  store i64 %7178, i64* %PC.i376
  %7179 = inttoptr i64 %7174 to i32*
  store i32 %7175, i32* %7179
  store %struct.Memory* %loadMem_491196, %struct.Memory** %MEMORY
  br label %block_.L_491199

block_.L_491199:                                  ; preds = %block_.L_49131c, %block_.L_491193
  %loadMem_491199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 33
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 1
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 15
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RBP.i375
  %7190 = sub i64 %7189, 36
  %7191 = load i64, i64* %PC.i373
  %7192 = add i64 %7191, 3
  store i64 %7192, i64* %PC.i373
  %7193 = inttoptr i64 %7190 to i32*
  %7194 = load i32, i32* %7193
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_491199, %struct.Memory** %MEMORY
  %loadMem_49119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 1
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %7201 to i32*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 15
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %7204 to i64*
  %7205 = load i32, i32* %EAX.i371
  %7206 = zext i32 %7205 to i64
  %7207 = load i64, i64* %RBP.i372
  %7208 = sub i64 %7207, 52
  %7209 = load i64, i64* %PC.i370
  %7210 = add i64 %7209, 3
  store i64 %7210, i64* %PC.i370
  %7211 = inttoptr i64 %7208 to i32*
  %7212 = load i32, i32* %7211
  %7213 = sub i32 %7205, %7212
  %7214 = icmp ult i32 %7205, %7212
  %7215 = zext i1 %7214 to i8
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7215, i8* %7216, align 1
  %7217 = and i32 %7213, 255
  %7218 = call i32 @llvm.ctpop.i32(i32 %7217)
  %7219 = trunc i32 %7218 to i8
  %7220 = and i8 %7219, 1
  %7221 = xor i8 %7220, 1
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7221, i8* %7222, align 1
  %7223 = xor i32 %7212, %7205
  %7224 = xor i32 %7223, %7213
  %7225 = lshr i32 %7224, 4
  %7226 = trunc i32 %7225 to i8
  %7227 = and i8 %7226, 1
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7227, i8* %7228, align 1
  %7229 = icmp eq i32 %7213, 0
  %7230 = zext i1 %7229 to i8
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7230, i8* %7231, align 1
  %7232 = lshr i32 %7213, 31
  %7233 = trunc i32 %7232 to i8
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7233, i8* %7234, align 1
  %7235 = lshr i32 %7205, 31
  %7236 = lshr i32 %7212, 31
  %7237 = xor i32 %7236, %7235
  %7238 = xor i32 %7232, %7235
  %7239 = add i32 %7238, %7237
  %7240 = icmp eq i32 %7239, 2
  %7241 = zext i1 %7240 to i8
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7241, i8* %7242, align 1
  store %struct.Memory* %loadMem_49119c, %struct.Memory** %MEMORY
  %loadMem_49119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 33
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %7245 to i64*
  %7246 = load i64, i64* %PC.i369
  %7247 = add i64 %7246, 395
  %7248 = load i64, i64* %PC.i369
  %7249 = add i64 %7248, 6
  %7250 = load i64, i64* %PC.i369
  %7251 = add i64 %7250, 6
  store i64 %7251, i64* %PC.i369
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7253 = load i8, i8* %7252, align 1
  %7254 = icmp ne i8 %7253, 0
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7256 = load i8, i8* %7255, align 1
  %7257 = icmp ne i8 %7256, 0
  %7258 = xor i1 %7254, %7257
  %7259 = xor i1 %7258, true
  %7260 = zext i1 %7259 to i8
  store i8 %7260, i8* %BRANCH_TAKEN, align 1
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7262 = select i1 %7258, i64 %7249, i64 %7247
  store i64 %7262, i64* %7261, align 8
  store %struct.Memory* %loadMem_49119f, %struct.Memory** %MEMORY
  %loadBr_49119f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49119f = icmp eq i8 %loadBr_49119f, 1
  br i1 %cmpBr_49119f, label %block_.L_49132a, label %block_4911a5

block_4911a5:                                     ; preds = %block_.L_491199
  %loadMem_4911a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 33
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %7265 to i64*
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 1
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 15
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %7271 to i64*
  %7272 = load i64, i64* %RBP.i368
  %7273 = sub i64 %7272, 40
  %7274 = load i64, i64* %PC.i366
  %7275 = add i64 %7274, 3
  store i64 %7275, i64* %PC.i366
  %7276 = inttoptr i64 %7273 to i32*
  %7277 = load i32, i32* %7276
  %7278 = zext i32 %7277 to i64
  store i64 %7278, i64* %RAX.i367, align 8
  store %struct.Memory* %loadMem_4911a5, %struct.Memory** %MEMORY
  %loadMem_4911a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 1
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %EAX.i364 = bitcast %union.anon* %7284 to i32*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 15
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %7287 to i64*
  %7288 = load i64, i64* %RBP.i365
  %7289 = sub i64 %7288, 32
  %7290 = load i32, i32* %EAX.i364
  %7291 = zext i32 %7290 to i64
  %7292 = load i64, i64* %PC.i363
  %7293 = add i64 %7292, 3
  store i64 %7293, i64* %PC.i363
  %7294 = inttoptr i64 %7289 to i32*
  store i32 %7290, i32* %7294
  store %struct.Memory* %loadMem_4911a8, %struct.Memory** %MEMORY
  br label %block_.L_4911ab

block_.L_4911ab:                                  ; preds = %block_4911b7, %block_4911a5
  %loadMem_4911ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 33
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7299 = getelementptr inbounds %struct.GPR, %struct.GPR* %7298, i32 0, i32 1
  %7300 = getelementptr inbounds %struct.Reg, %struct.Reg* %7299, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %7300 to i64*
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 15
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %7303 to i64*
  %7304 = load i64, i64* %RBP.i362
  %7305 = sub i64 %7304, 32
  %7306 = load i64, i64* %PC.i360
  %7307 = add i64 %7306, 3
  store i64 %7307, i64* %PC.i360
  %7308 = inttoptr i64 %7305 to i32*
  %7309 = load i32, i32* %7308
  %7310 = zext i32 %7309 to i64
  store i64 %7310, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_4911ab, %struct.Memory** %MEMORY
  %loadMem_4911ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 33
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %7313 to i64*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 1
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %7316 to i32*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 15
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %7319 to i64*
  %7320 = load i32, i32* %EAX.i358
  %7321 = zext i32 %7320 to i64
  %7322 = load i64, i64* %RBP.i359
  %7323 = sub i64 %7322, 48
  %7324 = load i64, i64* %PC.i357
  %7325 = add i64 %7324, 3
  store i64 %7325, i64* %PC.i357
  %7326 = inttoptr i64 %7323 to i32*
  %7327 = load i32, i32* %7326
  %7328 = sub i32 %7320, %7327
  %7329 = icmp ult i32 %7320, %7327
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7330, i8* %7331, align 1
  %7332 = and i32 %7328, 255
  %7333 = call i32 @llvm.ctpop.i32(i32 %7332)
  %7334 = trunc i32 %7333 to i8
  %7335 = and i8 %7334, 1
  %7336 = xor i8 %7335, 1
  %7337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7336, i8* %7337, align 1
  %7338 = xor i32 %7327, %7320
  %7339 = xor i32 %7338, %7328
  %7340 = lshr i32 %7339, 4
  %7341 = trunc i32 %7340 to i8
  %7342 = and i8 %7341, 1
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7342, i8* %7343, align 1
  %7344 = icmp eq i32 %7328, 0
  %7345 = zext i1 %7344 to i8
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7345, i8* %7346, align 1
  %7347 = lshr i32 %7328, 31
  %7348 = trunc i32 %7347 to i8
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7348, i8* %7349, align 1
  %7350 = lshr i32 %7320, 31
  %7351 = lshr i32 %7327, 31
  %7352 = xor i32 %7351, %7350
  %7353 = xor i32 %7347, %7350
  %7354 = add i32 %7353, %7352
  %7355 = icmp eq i32 %7354, 2
  %7356 = zext i1 %7355 to i8
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7356, i8* %7357, align 1
  store %struct.Memory* %loadMem_4911ae, %struct.Memory** %MEMORY
  %loadMem_4911b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 33
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %7360 to i64*
  %7361 = load i64, i64* %PC.i356
  %7362 = add i64 %7361, 358
  %7363 = load i64, i64* %PC.i356
  %7364 = add i64 %7363, 6
  %7365 = load i64, i64* %PC.i356
  %7366 = add i64 %7365, 6
  store i64 %7366, i64* %PC.i356
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7368 = load i8, i8* %7367, align 1
  %7369 = icmp ne i8 %7368, 0
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7371 = load i8, i8* %7370, align 1
  %7372 = icmp ne i8 %7371, 0
  %7373 = xor i1 %7369, %7372
  %7374 = xor i1 %7373, true
  %7375 = zext i1 %7374 to i8
  store i8 %7375, i8* %BRANCH_TAKEN, align 1
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7377 = select i1 %7373, i64 %7364, i64 %7362
  store i64 %7377, i64* %7376, align 8
  store %struct.Memory* %loadMem_4911b1, %struct.Memory** %MEMORY
  %loadBr_4911b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911b1 = icmp eq i8 %loadBr_4911b1, 1
  br i1 %cmpBr_4911b1, label %block_.L_491317, label %block_4911b7

block_4911b7:                                     ; preds = %block_.L_4911ab
  %loadMem_4911b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 33
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %7380 to i64*
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 1
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %7383 to i64*
  %7384 = load i64, i64* %PC.i354
  %7385 = add i64 %7384, 10
  store i64 %7385, i64* %PC.i354
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_4911b7, %struct.Memory** %MEMORY
  %loadMem_4911c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 33
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 5
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %PC.i352
  %7393 = add i64 %7392, 10
  store i64 %7393, i64* %PC.i352
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_4911c1, %struct.Memory** %MEMORY
  %loadMem_4911cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 33
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %7396 to i64*
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 7
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %7399 to i64*
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7401 = getelementptr inbounds %struct.GPR, %struct.GPR* %7400, i32 0, i32 15
  %7402 = getelementptr inbounds %struct.Reg, %struct.Reg* %7401, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %7402 to i64*
  %7403 = load i64, i64* %RBP.i351
  %7404 = sub i64 %7403, 64
  %7405 = load i64, i64* %PC.i349
  %7406 = add i64 %7405, 4
  store i64 %7406, i64* %PC.i349
  %7407 = inttoptr i64 %7404 to i64*
  %7408 = load i64, i64* %7407
  store i64 %7408, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_4911cb, %struct.Memory** %MEMORY
  %loadMem_4911cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 33
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %7411 to i64*
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 9
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %RSI.i347 = bitcast %union.anon* %7414 to i64*
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 15
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %7417 to i64*
  %7418 = load i64, i64* %RBP.i348
  %7419 = sub i64 %7418, 32
  %7420 = load i64, i64* %PC.i346
  %7421 = add i64 %7420, 4
  store i64 %7421, i64* %PC.i346
  %7422 = inttoptr i64 %7419 to i32*
  %7423 = load i32, i32* %7422
  %7424 = sext i32 %7423 to i64
  store i64 %7424, i64* %RSI.i347, align 8
  store %struct.Memory* %loadMem_4911cf, %struct.Memory** %MEMORY
  %loadMem_4911d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 33
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %7427 to i64*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 7
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %7430 to i64*
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 9
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %RSI.i345 = bitcast %union.anon* %7433 to i64*
  %7434 = load i64, i64* %RDX.i344
  %7435 = load i64, i64* %RSI.i345
  %7436 = mul i64 %7435, 8
  %7437 = add i64 %7436, %7434
  %7438 = load i64, i64* %PC.i343
  %7439 = add i64 %7438, 4
  store i64 %7439, i64* %PC.i343
  %7440 = inttoptr i64 %7437 to i64*
  %7441 = load i64, i64* %7440
  store i64 %7441, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_4911d3, %struct.Memory** %MEMORY
  %loadMem_4911d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 33
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %7444 to i64*
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7446 = getelementptr inbounds %struct.GPR, %struct.GPR* %7445, i32 0, i32 9
  %7447 = getelementptr inbounds %struct.Reg, %struct.Reg* %7446, i32 0, i32 0
  %RSI.i341 = bitcast %union.anon* %7447 to i64*
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 15
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %7450 to i64*
  %7451 = load i64, i64* %RBP.i342
  %7452 = sub i64 %7451, 36
  %7453 = load i64, i64* %PC.i340
  %7454 = add i64 %7453, 4
  store i64 %7454, i64* %PC.i340
  %7455 = inttoptr i64 %7452 to i32*
  %7456 = load i32, i32* %7455
  %7457 = sext i32 %7456 to i64
  store i64 %7457, i64* %RSI.i341, align 8
  store %struct.Memory* %loadMem_4911d7, %struct.Memory** %MEMORY
  %loadMem_4911db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 33
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %7460 to i64*
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7462 = getelementptr inbounds %struct.GPR, %struct.GPR* %7461, i32 0, i32 7
  %7463 = getelementptr inbounds %struct.Reg, %struct.Reg* %7462, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %7463 to i64*
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7465 = getelementptr inbounds %struct.GPR, %struct.GPR* %7464, i32 0, i32 9
  %7466 = getelementptr inbounds %struct.Reg, %struct.Reg* %7465, i32 0, i32 0
  %RSI.i339 = bitcast %union.anon* %7466 to i64*
  %7467 = load i64, i64* %RDX.i338
  %7468 = load i64, i64* %RSI.i339
  %7469 = mul i64 %7468, 8
  %7470 = add i64 %7469, %7467
  %7471 = load i64, i64* %PC.i337
  %7472 = add i64 %7471, 4
  store i64 %7472, i64* %PC.i337
  %7473 = inttoptr i64 %7470 to i64*
  %7474 = load i64, i64* %7473
  store i64 %7474, i64* %RDX.i338, align 8
  store %struct.Memory* %loadMem_4911db, %struct.Memory** %MEMORY
  %loadMem_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 33
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %7477 to i64*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 7
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %7480 to i64*
  %7481 = load i64, i64* %RDX.i336
  %7482 = add i64 %7481, 8
  %7483 = load i64, i64* %PC.i335
  %7484 = add i64 %7483, 4
  store i64 %7484, i64* %PC.i335
  %7485 = inttoptr i64 %7482 to i64*
  %7486 = load i64, i64* %7485
  store i64 %7486, i64* %RDX.i336, align 8
  store %struct.Memory* %loadMem_4911df, %struct.Memory** %MEMORY
  %loadMem_4911e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 33
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %7489 to i64*
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 9
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %RSI.i333 = bitcast %union.anon* %7492 to i64*
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 15
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %7495 to i64*
  %7496 = load i64, i64* %RBP.i334
  %7497 = sub i64 %7496, 20
  %7498 = load i64, i64* %PC.i332
  %7499 = add i64 %7498, 4
  store i64 %7499, i64* %PC.i332
  %7500 = inttoptr i64 %7497 to i32*
  %7501 = load i32, i32* %7500
  %7502 = sext i32 %7501 to i64
  store i64 %7502, i64* %RSI.i333, align 8
  store %struct.Memory* %loadMem_4911e3, %struct.Memory** %MEMORY
  %loadMem_4911e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 33
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %7505 to i64*
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 7
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %7508 to i64*
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 9
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %RSI.i331 = bitcast %union.anon* %7511 to i64*
  %7512 = load i64, i64* %RDX.i330
  %7513 = load i64, i64* %RSI.i331
  %7514 = mul i64 %7513, 8
  %7515 = add i64 %7514, %7512
  %7516 = load i64, i64* %PC.i329
  %7517 = add i64 %7516, 4
  store i64 %7517, i64* %PC.i329
  %7518 = inttoptr i64 %7515 to i64*
  %7519 = load i64, i64* %7518
  store i64 %7519, i64* %RDX.i330, align 8
  store %struct.Memory* %loadMem_4911e7, %struct.Memory** %MEMORY
  %loadMem_4911eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %7522 to i64*
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 9
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 15
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %7528 to i64*
  %7529 = load i64, i64* %RBP.i328
  %7530 = sub i64 %7529, 12
  %7531 = load i64, i64* %PC.i326
  %7532 = add i64 %7531, 4
  store i64 %7532, i64* %PC.i326
  %7533 = inttoptr i64 %7530 to i32*
  %7534 = load i32, i32* %7533
  %7535 = sext i32 %7534 to i64
  store i64 %7535, i64* %RSI.i327, align 8
  store %struct.Memory* %loadMem_4911eb, %struct.Memory** %MEMORY
  %loadMem_4911ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 33
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %7538 to i64*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 7
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 9
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RSI.i325 = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %RDX.i324
  %7546 = load i64, i64* %RSI.i325
  %7547 = mul i64 %7546, 8
  %7548 = add i64 %7547, %7545
  %7549 = load i64, i64* %PC.i323
  %7550 = add i64 %7549, 4
  store i64 %7550, i64* %PC.i323
  %7551 = inttoptr i64 %7548 to i64*
  %7552 = load i64, i64* %7551
  store i64 %7552, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_4911ef, %struct.Memory** %MEMORY
  %loadMem_4911f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7554 = getelementptr inbounds %struct.GPR, %struct.GPR* %7553, i32 0, i32 33
  %7555 = getelementptr inbounds %struct.Reg, %struct.Reg* %7554, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %7555 to i64*
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7557 = getelementptr inbounds %struct.GPR, %struct.GPR* %7556, i32 0, i32 11
  %7558 = getelementptr inbounds %struct.Reg, %struct.Reg* %7557, i32 0, i32 0
  %DI.i321 = bitcast %union.anon* %7558 to i16*
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 7
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %7561 to i64*
  %7562 = load i64, i64* %RDX.i322
  %7563 = load i64, i64* %PC.i320
  %7564 = add i64 %7563, 3
  store i64 %7564, i64* %PC.i320
  %7565 = inttoptr i64 %7562 to i16*
  %7566 = load i16, i16* %7565
  store i16 %7566, i16* %DI.i321, align 2
  store %struct.Memory* %loadMem_4911f3, %struct.Memory** %MEMORY
  %loadMem_4911f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7568 = getelementptr inbounds %struct.GPR, %struct.GPR* %7567, i32 0, i32 33
  %7569 = getelementptr inbounds %struct.Reg, %struct.Reg* %7568, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %7569 to i64*
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 7
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %7572 to i64*
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 15
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %7575 to i64*
  %7576 = load i64, i64* %RBP.i319
  %7577 = sub i64 %7576, 4
  %7578 = load i64, i64* %PC.i317
  %7579 = add i64 %7578, 4
  store i64 %7579, i64* %PC.i317
  %7580 = inttoptr i64 %7577 to i32*
  %7581 = load i32, i32* %7580
  %7582 = sext i32 %7581 to i64
  store i64 %7582, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_4911f6, %struct.Memory** %MEMORY
  %loadMem_4911fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 33
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %7585 to i64*
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 7
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %7588 to i64*
  %7589 = load i64, i64* %RDX.i316
  %7590 = load i64, i64* %PC.i315
  %7591 = add i64 %7590, 4
  store i64 %7591, i64* %PC.i315
  %7592 = shl i64 %7589, 6
  %7593 = icmp slt i64 %7592, 0
  %7594 = shl i64 %7592, 1
  store i64 %7594, i64* %RDX.i316, align 8
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7596 = zext i1 %7593 to i8
  store i8 %7596, i8* %7595, align 1
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7598 = trunc i64 %7594 to i32
  %7599 = and i32 %7598, 254
  %7600 = call i32 @llvm.ctpop.i32(i32 %7599)
  %7601 = trunc i32 %7600 to i8
  %7602 = and i8 %7601, 1
  %7603 = xor i8 %7602, 1
  store i8 %7603, i8* %7597, align 1
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7604, align 1
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7606 = icmp eq i64 %7594, 0
  %7607 = zext i1 %7606 to i8
  store i8 %7607, i8* %7605, align 1
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7609 = lshr i64 %7594, 63
  %7610 = trunc i64 %7609 to i8
  store i8 %7610, i8* %7608, align 1
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7611, align 1
  store %struct.Memory* %loadMem_4911fa, %struct.Memory** %MEMORY
  %loadMem_4911fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 33
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %7614 to i64*
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 5
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %7617 to i64*
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 9
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %RSI.i314 = bitcast %union.anon* %7620 to i64*
  %7621 = load i64, i64* %RCX.i313
  %7622 = load i64, i64* %PC.i312
  %7623 = add i64 %7622, 3
  store i64 %7623, i64* %PC.i312
  store i64 %7621, i64* %RSI.i314, align 8
  store %struct.Memory* %loadMem_4911fe, %struct.Memory** %MEMORY
  %loadMem_491201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 33
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %7626 to i64*
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7628 = getelementptr inbounds %struct.GPR, %struct.GPR* %7627, i32 0, i32 7
  %7629 = getelementptr inbounds %struct.Reg, %struct.Reg* %7628, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %7629 to i64*
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 9
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %7632 to i64*
  %7633 = load i64, i64* %RSI.i311
  %7634 = load i64, i64* %RDX.i310
  %7635 = load i64, i64* %PC.i309
  %7636 = add i64 %7635, 3
  store i64 %7636, i64* %PC.i309
  %7637 = add i64 %7634, %7633
  store i64 %7637, i64* %RSI.i311, align 8
  %7638 = icmp ult i64 %7637, %7633
  %7639 = icmp ult i64 %7637, %7634
  %7640 = or i1 %7638, %7639
  %7641 = zext i1 %7640 to i8
  %7642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7641, i8* %7642, align 1
  %7643 = trunc i64 %7637 to i32
  %7644 = and i32 %7643, 255
  %7645 = call i32 @llvm.ctpop.i32(i32 %7644)
  %7646 = trunc i32 %7645 to i8
  %7647 = and i8 %7646, 1
  %7648 = xor i8 %7647, 1
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7648, i8* %7649, align 1
  %7650 = xor i64 %7634, %7633
  %7651 = xor i64 %7650, %7637
  %7652 = lshr i64 %7651, 4
  %7653 = trunc i64 %7652 to i8
  %7654 = and i8 %7653, 1
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7654, i8* %7655, align 1
  %7656 = icmp eq i64 %7637, 0
  %7657 = zext i1 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7657, i8* %7658, align 1
  %7659 = lshr i64 %7637, 63
  %7660 = trunc i64 %7659 to i8
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7660, i8* %7661, align 1
  %7662 = lshr i64 %7633, 63
  %7663 = lshr i64 %7634, 63
  %7664 = xor i64 %7659, %7662
  %7665 = xor i64 %7659, %7663
  %7666 = add i64 %7664, %7665
  %7667 = icmp eq i64 %7666, 2
  %7668 = zext i1 %7667 to i8
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7668, i8* %7669, align 1
  store %struct.Memory* %loadMem_491201, %struct.Memory** %MEMORY
  %loadMem_491204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7671 = getelementptr inbounds %struct.GPR, %struct.GPR* %7670, i32 0, i32 33
  %7672 = getelementptr inbounds %struct.Reg, %struct.Reg* %7671, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %7672 to i64*
  %7673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7674 = getelementptr inbounds %struct.GPR, %struct.GPR* %7673, i32 0, i32 9
  %7675 = getelementptr inbounds %struct.Reg, %struct.Reg* %7674, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %7675 to i64*
  %7676 = load i64, i64* %RSI.i308
  %7677 = load i64, i64* %PC.i307
  %7678 = add i64 %7677, 4
  store i64 %7678, i64* %PC.i307
  %7679 = add i64 64, %7676
  store i64 %7679, i64* %RSI.i308, align 8
  %7680 = icmp ult i64 %7679, %7676
  %7681 = icmp ult i64 %7679, 64
  %7682 = or i1 %7680, %7681
  %7683 = zext i1 %7682 to i8
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7683, i8* %7684, align 1
  %7685 = trunc i64 %7679 to i32
  %7686 = and i32 %7685, 255
  %7687 = call i32 @llvm.ctpop.i32(i32 %7686)
  %7688 = trunc i32 %7687 to i8
  %7689 = and i8 %7688, 1
  %7690 = xor i8 %7689, 1
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7690, i8* %7691, align 1
  %7692 = xor i64 64, %7676
  %7693 = xor i64 %7692, %7679
  %7694 = lshr i64 %7693, 4
  %7695 = trunc i64 %7694 to i8
  %7696 = and i8 %7695, 1
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7696, i8* %7697, align 1
  %7698 = icmp eq i64 %7679, 0
  %7699 = zext i1 %7698 to i8
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7699, i8* %7700, align 1
  %7701 = lshr i64 %7679, 63
  %7702 = trunc i64 %7701 to i8
  %7703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7702, i8* %7703, align 1
  %7704 = lshr i64 %7676, 63
  %7705 = xor i64 %7701, %7704
  %7706 = add i64 %7705, %7701
  %7707 = icmp eq i64 %7706, 2
  %7708 = zext i1 %7707 to i8
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7708, i8* %7709, align 1
  store %struct.Memory* %loadMem_491204, %struct.Memory** %MEMORY
  %loadMem_491208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7711 = getelementptr inbounds %struct.GPR, %struct.GPR* %7710, i32 0, i32 33
  %7712 = getelementptr inbounds %struct.Reg, %struct.Reg* %7711, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %7712 to i64*
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 7
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %7715 to i64*
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 15
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %7718 to i64*
  %7719 = load i64, i64* %RBP.i306
  %7720 = sub i64 %7719, 32
  %7721 = load i64, i64* %PC.i304
  %7722 = add i64 %7721, 4
  store i64 %7722, i64* %PC.i304
  %7723 = inttoptr i64 %7720 to i32*
  %7724 = load i32, i32* %7723
  %7725 = sext i32 %7724 to i64
  store i64 %7725, i64* %RDX.i305, align 8
  store %struct.Memory* %loadMem_491208, %struct.Memory** %MEMORY
  %loadMem_49120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 33
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %7728 to i64*
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7730 = getelementptr inbounds %struct.GPR, %struct.GPR* %7729, i32 0, i32 7
  %7731 = getelementptr inbounds %struct.Reg, %struct.Reg* %7730, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %7731 to i64*
  %7732 = load i64, i64* %RDX.i303
  %7733 = load i64, i64* %PC.i302
  %7734 = add i64 %7733, 4
  store i64 %7734, i64* %PC.i302
  %7735 = shl i64 %7732, 3
  %7736 = icmp slt i64 %7735, 0
  %7737 = shl i64 %7735, 1
  store i64 %7737, i64* %RDX.i303, align 8
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7739 = zext i1 %7736 to i8
  store i8 %7739, i8* %7738, align 1
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7741 = trunc i64 %7737 to i32
  %7742 = and i32 %7741, 254
  %7743 = call i32 @llvm.ctpop.i32(i32 %7742)
  %7744 = trunc i32 %7743 to i8
  %7745 = and i8 %7744, 1
  %7746 = xor i8 %7745, 1
  store i8 %7746, i8* %7740, align 1
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7747, align 1
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7749 = icmp eq i64 %7737, 0
  %7750 = zext i1 %7749 to i8
  store i8 %7750, i8* %7748, align 1
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7752 = lshr i64 %7737, 63
  %7753 = trunc i64 %7752 to i8
  store i8 %7753, i8* %7751, align 1
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7754, align 1
  store %struct.Memory* %loadMem_49120c, %struct.Memory** %MEMORY
  %loadMem_491210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 33
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %7757 to i64*
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 7
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %7760 to i64*
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7762 = getelementptr inbounds %struct.GPR, %struct.GPR* %7761, i32 0, i32 9
  %7763 = getelementptr inbounds %struct.Reg, %struct.Reg* %7762, i32 0, i32 0
  %RSI.i301 = bitcast %union.anon* %7763 to i64*
  %7764 = load i64, i64* %RSI.i301
  %7765 = load i64, i64* %RDX.i300
  %7766 = load i64, i64* %PC.i299
  %7767 = add i64 %7766, 3
  store i64 %7767, i64* %PC.i299
  %7768 = add i64 %7765, %7764
  store i64 %7768, i64* %RSI.i301, align 8
  %7769 = icmp ult i64 %7768, %7764
  %7770 = icmp ult i64 %7768, %7765
  %7771 = or i1 %7769, %7770
  %7772 = zext i1 %7771 to i8
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7772, i8* %7773, align 1
  %7774 = trunc i64 %7768 to i32
  %7775 = and i32 %7774, 255
  %7776 = call i32 @llvm.ctpop.i32(i32 %7775)
  %7777 = trunc i32 %7776 to i8
  %7778 = and i8 %7777, 1
  %7779 = xor i8 %7778, 1
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7779, i8* %7780, align 1
  %7781 = xor i64 %7765, %7764
  %7782 = xor i64 %7781, %7768
  %7783 = lshr i64 %7782, 4
  %7784 = trunc i64 %7783 to i8
  %7785 = and i8 %7784, 1
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7785, i8* %7786, align 1
  %7787 = icmp eq i64 %7768, 0
  %7788 = zext i1 %7787 to i8
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7788, i8* %7789, align 1
  %7790 = lshr i64 %7768, 63
  %7791 = trunc i64 %7790 to i8
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7791, i8* %7792, align 1
  %7793 = lshr i64 %7764, 63
  %7794 = lshr i64 %7765, 63
  %7795 = xor i64 %7790, %7793
  %7796 = xor i64 %7790, %7794
  %7797 = add i64 %7795, %7796
  %7798 = icmp eq i64 %7797, 2
  %7799 = zext i1 %7798 to i8
  %7800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7799, i8* %7800, align 1
  store %struct.Memory* %loadMem_491210, %struct.Memory** %MEMORY
  %loadMem_491213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7802 = getelementptr inbounds %struct.GPR, %struct.GPR* %7801, i32 0, i32 33
  %7803 = getelementptr inbounds %struct.Reg, %struct.Reg* %7802, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %7803 to i64*
  %7804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7805 = getelementptr inbounds %struct.GPR, %struct.GPR* %7804, i32 0, i32 7
  %7806 = getelementptr inbounds %struct.Reg, %struct.Reg* %7805, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %7806 to i64*
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7808 = getelementptr inbounds %struct.GPR, %struct.GPR* %7807, i32 0, i32 15
  %7809 = getelementptr inbounds %struct.Reg, %struct.Reg* %7808, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %7809 to i64*
  %7810 = load i64, i64* %RBP.i298
  %7811 = sub i64 %7810, 36
  %7812 = load i64, i64* %PC.i296
  %7813 = add i64 %7812, 4
  store i64 %7813, i64* %PC.i296
  %7814 = inttoptr i64 %7811 to i32*
  %7815 = load i32, i32* %7814
  %7816 = sext i32 %7815 to i64
  store i64 %7816, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_491213, %struct.Memory** %MEMORY
  %loadMem_491217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 33
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %7819 to i64*
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7821 = getelementptr inbounds %struct.GPR, %struct.GPR* %7820, i32 0, i32 11
  %7822 = getelementptr inbounds %struct.Reg, %struct.Reg* %7821, i32 0, i32 0
  %DI.i293 = bitcast %union.anon* %7822 to i16*
  %7823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7824 = getelementptr inbounds %struct.GPR, %struct.GPR* %7823, i32 0, i32 7
  %7825 = getelementptr inbounds %struct.Reg, %struct.Reg* %7824, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %7825 to i64*
  %7826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7827 = getelementptr inbounds %struct.GPR, %struct.GPR* %7826, i32 0, i32 9
  %7828 = getelementptr inbounds %struct.Reg, %struct.Reg* %7827, i32 0, i32 0
  %RSI.i295 = bitcast %union.anon* %7828 to i64*
  %7829 = load i64, i64* %RSI.i295
  %7830 = load i64, i64* %RDX.i294
  %7831 = mul i64 %7830, 4
  %7832 = add i64 %7831, %7829
  %7833 = load i16, i16* %DI.i293
  %7834 = zext i16 %7833 to i64
  %7835 = load i64, i64* %PC.i292
  %7836 = add i64 %7835, 4
  store i64 %7836, i64* %PC.i292
  %7837 = inttoptr i64 %7832 to i16*
  store i16 %7833, i16* %7837
  store %struct.Memory* %loadMem_491217, %struct.Memory** %MEMORY
  %loadMem_49121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7839 = getelementptr inbounds %struct.GPR, %struct.GPR* %7838, i32 0, i32 33
  %7840 = getelementptr inbounds %struct.Reg, %struct.Reg* %7839, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %7840 to i64*
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7842 = getelementptr inbounds %struct.GPR, %struct.GPR* %7841, i32 0, i32 7
  %7843 = getelementptr inbounds %struct.Reg, %struct.Reg* %7842, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %7843 to i64*
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7845 = getelementptr inbounds %struct.GPR, %struct.GPR* %7844, i32 0, i32 15
  %7846 = getelementptr inbounds %struct.Reg, %struct.Reg* %7845, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %7846 to i64*
  %7847 = load i64, i64* %RBP.i291
  %7848 = sub i64 %7847, 64
  %7849 = load i64, i64* %PC.i289
  %7850 = add i64 %7849, 4
  store i64 %7850, i64* %PC.i289
  %7851 = inttoptr i64 %7848 to i64*
  %7852 = load i64, i64* %7851
  store i64 %7852, i64* %RDX.i290, align 8
  store %struct.Memory* %loadMem_49121b, %struct.Memory** %MEMORY
  %loadMem_49121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7854 = getelementptr inbounds %struct.GPR, %struct.GPR* %7853, i32 0, i32 33
  %7855 = getelementptr inbounds %struct.Reg, %struct.Reg* %7854, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %7855 to i64*
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 9
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %RSI.i287 = bitcast %union.anon* %7858 to i64*
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7860 = getelementptr inbounds %struct.GPR, %struct.GPR* %7859, i32 0, i32 15
  %7861 = getelementptr inbounds %struct.Reg, %struct.Reg* %7860, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %7861 to i64*
  %7862 = load i64, i64* %RBP.i288
  %7863 = sub i64 %7862, 32
  %7864 = load i64, i64* %PC.i286
  %7865 = add i64 %7864, 4
  store i64 %7865, i64* %PC.i286
  %7866 = inttoptr i64 %7863 to i32*
  %7867 = load i32, i32* %7866
  %7868 = sext i32 %7867 to i64
  store i64 %7868, i64* %RSI.i287, align 8
  store %struct.Memory* %loadMem_49121f, %struct.Memory** %MEMORY
  %loadMem_491223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7870 = getelementptr inbounds %struct.GPR, %struct.GPR* %7869, i32 0, i32 33
  %7871 = getelementptr inbounds %struct.Reg, %struct.Reg* %7870, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %7871 to i64*
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7873 = getelementptr inbounds %struct.GPR, %struct.GPR* %7872, i32 0, i32 7
  %7874 = getelementptr inbounds %struct.Reg, %struct.Reg* %7873, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %7874 to i64*
  %7875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7876 = getelementptr inbounds %struct.GPR, %struct.GPR* %7875, i32 0, i32 9
  %7877 = getelementptr inbounds %struct.Reg, %struct.Reg* %7876, i32 0, i32 0
  %RSI.i285 = bitcast %union.anon* %7877 to i64*
  %7878 = load i64, i64* %RDX.i284
  %7879 = load i64, i64* %RSI.i285
  %7880 = mul i64 %7879, 8
  %7881 = add i64 %7880, %7878
  %7882 = load i64, i64* %PC.i283
  %7883 = add i64 %7882, 4
  store i64 %7883, i64* %PC.i283
  %7884 = inttoptr i64 %7881 to i64*
  %7885 = load i64, i64* %7884
  store i64 %7885, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_491223, %struct.Memory** %MEMORY
  %loadMem_491227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 33
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 9
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %RSI.i281 = bitcast %union.anon* %7891 to i64*
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7893 = getelementptr inbounds %struct.GPR, %struct.GPR* %7892, i32 0, i32 15
  %7894 = getelementptr inbounds %struct.Reg, %struct.Reg* %7893, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %7894 to i64*
  %7895 = load i64, i64* %RBP.i282
  %7896 = sub i64 %7895, 36
  %7897 = load i64, i64* %PC.i280
  %7898 = add i64 %7897, 4
  store i64 %7898, i64* %PC.i280
  %7899 = inttoptr i64 %7896 to i32*
  %7900 = load i32, i32* %7899
  %7901 = sext i32 %7900 to i64
  store i64 %7901, i64* %RSI.i281, align 8
  store %struct.Memory* %loadMem_491227, %struct.Memory** %MEMORY
  %loadMem_49122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 33
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %7904 to i64*
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 7
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %7907 to i64*
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 9
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %7910 to i64*
  %7911 = load i64, i64* %RDX.i278
  %7912 = load i64, i64* %RSI.i279
  %7913 = mul i64 %7912, 8
  %7914 = add i64 %7913, %7911
  %7915 = load i64, i64* %PC.i277
  %7916 = add i64 %7915, 4
  store i64 %7916, i64* %PC.i277
  %7917 = inttoptr i64 %7914 to i64*
  %7918 = load i64, i64* %7917
  store i64 %7918, i64* %RDX.i278, align 8
  store %struct.Memory* %loadMem_49122b, %struct.Memory** %MEMORY
  %loadMem_49122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 33
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %7921 to i64*
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 7
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %7924 to i64*
  %7925 = load i64, i64* %RDX.i276
  %7926 = add i64 %7925, 8
  %7927 = load i64, i64* %PC.i275
  %7928 = add i64 %7927, 4
  store i64 %7928, i64* %PC.i275
  %7929 = inttoptr i64 %7926 to i64*
  %7930 = load i64, i64* %7929
  store i64 %7930, i64* %RDX.i276, align 8
  store %struct.Memory* %loadMem_49122f, %struct.Memory** %MEMORY
  %loadMem_491233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7932 = getelementptr inbounds %struct.GPR, %struct.GPR* %7931, i32 0, i32 33
  %7933 = getelementptr inbounds %struct.Reg, %struct.Reg* %7932, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %7933 to i64*
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 9
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %RSI.i273 = bitcast %union.anon* %7936 to i64*
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 15
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %7939 to i64*
  %7940 = load i64, i64* %RBP.i274
  %7941 = sub i64 %7940, 20
  %7942 = load i64, i64* %PC.i272
  %7943 = add i64 %7942, 4
  store i64 %7943, i64* %PC.i272
  %7944 = inttoptr i64 %7941 to i32*
  %7945 = load i32, i32* %7944
  %7946 = sext i32 %7945 to i64
  store i64 %7946, i64* %RSI.i273, align 8
  store %struct.Memory* %loadMem_491233, %struct.Memory** %MEMORY
  %loadMem_491237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 33
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %7949 to i64*
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 7
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %RDX.i270 = bitcast %union.anon* %7952 to i64*
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 9
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %7955 to i64*
  %7956 = load i64, i64* %RDX.i270
  %7957 = load i64, i64* %RSI.i271
  %7958 = mul i64 %7957, 8
  %7959 = add i64 %7958, %7956
  %7960 = load i64, i64* %PC.i269
  %7961 = add i64 %7960, 4
  store i64 %7961, i64* %PC.i269
  %7962 = inttoptr i64 %7959 to i64*
  %7963 = load i64, i64* %7962
  store i64 %7963, i64* %RDX.i270, align 8
  store %struct.Memory* %loadMem_491237, %struct.Memory** %MEMORY
  %loadMem_49123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7965 = getelementptr inbounds %struct.GPR, %struct.GPR* %7964, i32 0, i32 33
  %7966 = getelementptr inbounds %struct.Reg, %struct.Reg* %7965, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %7966 to i64*
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 9
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %RSI.i267 = bitcast %union.anon* %7969 to i64*
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 15
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %7972 to i64*
  %7973 = load i64, i64* %RBP.i268
  %7974 = sub i64 %7973, 12
  %7975 = load i64, i64* %PC.i266
  %7976 = add i64 %7975, 4
  store i64 %7976, i64* %PC.i266
  %7977 = inttoptr i64 %7974 to i32*
  %7978 = load i32, i32* %7977
  %7979 = sext i32 %7978 to i64
  store i64 %7979, i64* %RSI.i267, align 8
  store %struct.Memory* %loadMem_49123b, %struct.Memory** %MEMORY
  %loadMem_49123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7981 = getelementptr inbounds %struct.GPR, %struct.GPR* %7980, i32 0, i32 33
  %7982 = getelementptr inbounds %struct.Reg, %struct.Reg* %7981, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %7982 to i64*
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 7
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %7985 to i64*
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 9
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7988 to i64*
  %7989 = load i64, i64* %RDX.i265
  %7990 = load i64, i64* %RSI.i
  %7991 = mul i64 %7990, 8
  %7992 = add i64 %7991, %7989
  %7993 = load i64, i64* %PC.i264
  %7994 = add i64 %7993, 4
  store i64 %7994, i64* %PC.i264
  %7995 = inttoptr i64 %7992 to i64*
  %7996 = load i64, i64* %7995
  store i64 %7996, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_49123f, %struct.Memory** %MEMORY
  %loadMem_491243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 33
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %7999 to i64*
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8001 = getelementptr inbounds %struct.GPR, %struct.GPR* %8000, i32 0, i32 11
  %8002 = getelementptr inbounds %struct.Reg, %struct.Reg* %8001, i32 0, i32 0
  %DI.i262 = bitcast %union.anon* %8002 to i16*
  %8003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8004 = getelementptr inbounds %struct.GPR, %struct.GPR* %8003, i32 0, i32 7
  %8005 = getelementptr inbounds %struct.Reg, %struct.Reg* %8004, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %8005 to i64*
  %8006 = load i64, i64* %RDX.i263
  %8007 = add i64 %8006, 2
  %8008 = load i64, i64* %PC.i261
  %8009 = add i64 %8008, 4
  store i64 %8009, i64* %PC.i261
  %8010 = inttoptr i64 %8007 to i16*
  %8011 = load i16, i16* %8010
  store i16 %8011, i16* %DI.i262, align 2
  store %struct.Memory* %loadMem_491243, %struct.Memory** %MEMORY
  %loadMem_491247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8013 = getelementptr inbounds %struct.GPR, %struct.GPR* %8012, i32 0, i32 33
  %8014 = getelementptr inbounds %struct.Reg, %struct.Reg* %8013, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %8014 to i64*
  %8015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8016 = getelementptr inbounds %struct.GPR, %struct.GPR* %8015, i32 0, i32 7
  %8017 = getelementptr inbounds %struct.Reg, %struct.Reg* %8016, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %8017 to i64*
  %8018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8019 = getelementptr inbounds %struct.GPR, %struct.GPR* %8018, i32 0, i32 15
  %8020 = getelementptr inbounds %struct.Reg, %struct.Reg* %8019, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %8020 to i64*
  %8021 = load i64, i64* %RBP.i260
  %8022 = sub i64 %8021, 4
  %8023 = load i64, i64* %PC.i258
  %8024 = add i64 %8023, 4
  store i64 %8024, i64* %PC.i258
  %8025 = inttoptr i64 %8022 to i32*
  %8026 = load i32, i32* %8025
  %8027 = sext i32 %8026 to i64
  store i64 %8027, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_491247, %struct.Memory** %MEMORY
  %loadMem_49124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 33
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %8030 to i64*
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 7
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %8033 to i64*
  %8034 = load i64, i64* %RDX.i257
  %8035 = load i64, i64* %PC.i256
  %8036 = add i64 %8035, 4
  store i64 %8036, i64* %PC.i256
  %8037 = shl i64 %8034, 6
  %8038 = icmp slt i64 %8037, 0
  %8039 = shl i64 %8037, 1
  store i64 %8039, i64* %RDX.i257, align 8
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8041 = zext i1 %8038 to i8
  store i8 %8041, i8* %8040, align 1
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8043 = trunc i64 %8039 to i32
  %8044 = and i32 %8043, 254
  %8045 = call i32 @llvm.ctpop.i32(i32 %8044)
  %8046 = trunc i32 %8045 to i8
  %8047 = and i8 %8046, 1
  %8048 = xor i8 %8047, 1
  store i8 %8048, i8* %8042, align 1
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8049, align 1
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8051 = icmp eq i64 %8039, 0
  %8052 = zext i1 %8051 to i8
  store i8 %8052, i8* %8050, align 1
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8054 = lshr i64 %8039, 63
  %8055 = trunc i64 %8054 to i8
  store i8 %8055, i8* %8053, align 1
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8056, align 1
  store %struct.Memory* %loadMem_49124b, %struct.Memory** %MEMORY
  %loadMem_49124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8058 = getelementptr inbounds %struct.GPR, %struct.GPR* %8057, i32 0, i32 33
  %8059 = getelementptr inbounds %struct.Reg, %struct.Reg* %8058, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %8059 to i64*
  %8060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8061 = getelementptr inbounds %struct.GPR, %struct.GPR* %8060, i32 0, i32 5
  %8062 = getelementptr inbounds %struct.Reg, %struct.Reg* %8061, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %8062 to i64*
  %8063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8064 = getelementptr inbounds %struct.GPR, %struct.GPR* %8063, i32 0, i32 7
  %8065 = getelementptr inbounds %struct.Reg, %struct.Reg* %8064, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %8065 to i64*
  %8066 = load i64, i64* %RCX.i254
  %8067 = load i64, i64* %RDX.i255
  %8068 = load i64, i64* %PC.i253
  %8069 = add i64 %8068, 3
  store i64 %8069, i64* %PC.i253
  %8070 = add i64 %8067, %8066
  store i64 %8070, i64* %RCX.i254, align 8
  %8071 = icmp ult i64 %8070, %8066
  %8072 = icmp ult i64 %8070, %8067
  %8073 = or i1 %8071, %8072
  %8074 = zext i1 %8073 to i8
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8074, i8* %8075, align 1
  %8076 = trunc i64 %8070 to i32
  %8077 = and i32 %8076, 255
  %8078 = call i32 @llvm.ctpop.i32(i32 %8077)
  %8079 = trunc i32 %8078 to i8
  %8080 = and i8 %8079, 1
  %8081 = xor i8 %8080, 1
  %8082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8081, i8* %8082, align 1
  %8083 = xor i64 %8067, %8066
  %8084 = xor i64 %8083, %8070
  %8085 = lshr i64 %8084, 4
  %8086 = trunc i64 %8085 to i8
  %8087 = and i8 %8086, 1
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8087, i8* %8088, align 1
  %8089 = icmp eq i64 %8070, 0
  %8090 = zext i1 %8089 to i8
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8090, i8* %8091, align 1
  %8092 = lshr i64 %8070, 63
  %8093 = trunc i64 %8092 to i8
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8093, i8* %8094, align 1
  %8095 = lshr i64 %8066, 63
  %8096 = lshr i64 %8067, 63
  %8097 = xor i64 %8092, %8095
  %8098 = xor i64 %8092, %8096
  %8099 = add i64 %8097, %8098
  %8100 = icmp eq i64 %8099, 2
  %8101 = zext i1 %8100 to i8
  %8102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8101, i8* %8102, align 1
  store %struct.Memory* %loadMem_49124f, %struct.Memory** %MEMORY
  %loadMem_491252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8104 = getelementptr inbounds %struct.GPR, %struct.GPR* %8103, i32 0, i32 33
  %8105 = getelementptr inbounds %struct.Reg, %struct.Reg* %8104, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %8105 to i64*
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 5
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %8108 to i64*
  %8109 = load i64, i64* %RCX.i252
  %8110 = load i64, i64* %PC.i251
  %8111 = add i64 %8110, 4
  store i64 %8111, i64* %PC.i251
  %8112 = add i64 64, %8109
  store i64 %8112, i64* %RCX.i252, align 8
  %8113 = icmp ult i64 %8112, %8109
  %8114 = icmp ult i64 %8112, 64
  %8115 = or i1 %8113, %8114
  %8116 = zext i1 %8115 to i8
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8116, i8* %8117, align 1
  %8118 = trunc i64 %8112 to i32
  %8119 = and i32 %8118, 255
  %8120 = call i32 @llvm.ctpop.i32(i32 %8119)
  %8121 = trunc i32 %8120 to i8
  %8122 = and i8 %8121, 1
  %8123 = xor i8 %8122, 1
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8123, i8* %8124, align 1
  %8125 = xor i64 64, %8109
  %8126 = xor i64 %8125, %8112
  %8127 = lshr i64 %8126, 4
  %8128 = trunc i64 %8127 to i8
  %8129 = and i8 %8128, 1
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8129, i8* %8130, align 1
  %8131 = icmp eq i64 %8112, 0
  %8132 = zext i1 %8131 to i8
  %8133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8132, i8* %8133, align 1
  %8134 = lshr i64 %8112, 63
  %8135 = trunc i64 %8134 to i8
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8135, i8* %8136, align 1
  %8137 = lshr i64 %8109, 63
  %8138 = xor i64 %8134, %8137
  %8139 = add i64 %8138, %8134
  %8140 = icmp eq i64 %8139, 2
  %8141 = zext i1 %8140 to i8
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8141, i8* %8142, align 1
  store %struct.Memory* %loadMem_491252, %struct.Memory** %MEMORY
  %loadMem_491256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8144 = getelementptr inbounds %struct.GPR, %struct.GPR* %8143, i32 0, i32 33
  %8145 = getelementptr inbounds %struct.Reg, %struct.Reg* %8144, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %8145 to i64*
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8147 = getelementptr inbounds %struct.GPR, %struct.GPR* %8146, i32 0, i32 7
  %8148 = getelementptr inbounds %struct.Reg, %struct.Reg* %8147, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %8148 to i64*
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8150 = getelementptr inbounds %struct.GPR, %struct.GPR* %8149, i32 0, i32 15
  %8151 = getelementptr inbounds %struct.Reg, %struct.Reg* %8150, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %8151 to i64*
  %8152 = load i64, i64* %RBP.i250
  %8153 = sub i64 %8152, 32
  %8154 = load i64, i64* %PC.i248
  %8155 = add i64 %8154, 4
  store i64 %8155, i64* %PC.i248
  %8156 = inttoptr i64 %8153 to i32*
  %8157 = load i32, i32* %8156
  %8158 = sext i32 %8157 to i64
  store i64 %8158, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_491256, %struct.Memory** %MEMORY
  %loadMem_49125a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8160 = getelementptr inbounds %struct.GPR, %struct.GPR* %8159, i32 0, i32 33
  %8161 = getelementptr inbounds %struct.Reg, %struct.Reg* %8160, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %8161 to i64*
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 7
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %8164 to i64*
  %8165 = load i64, i64* %RDX.i247
  %8166 = load i64, i64* %PC.i246
  %8167 = add i64 %8166, 4
  store i64 %8167, i64* %PC.i246
  %8168 = shl i64 %8165, 3
  %8169 = icmp slt i64 %8168, 0
  %8170 = shl i64 %8168, 1
  store i64 %8170, i64* %RDX.i247, align 8
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8172 = zext i1 %8169 to i8
  store i8 %8172, i8* %8171, align 1
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8174 = trunc i64 %8170 to i32
  %8175 = and i32 %8174, 254
  %8176 = call i32 @llvm.ctpop.i32(i32 %8175)
  %8177 = trunc i32 %8176 to i8
  %8178 = and i8 %8177, 1
  %8179 = xor i8 %8178, 1
  store i8 %8179, i8* %8173, align 1
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8180, align 1
  %8181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8182 = icmp eq i64 %8170, 0
  %8183 = zext i1 %8182 to i8
  store i8 %8183, i8* %8181, align 1
  %8184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8185 = lshr i64 %8170, 63
  %8186 = trunc i64 %8185 to i8
  store i8 %8186, i8* %8184, align 1
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8187, align 1
  store %struct.Memory* %loadMem_49125a, %struct.Memory** %MEMORY
  %loadMem_49125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8189 = getelementptr inbounds %struct.GPR, %struct.GPR* %8188, i32 0, i32 33
  %8190 = getelementptr inbounds %struct.Reg, %struct.Reg* %8189, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %8190 to i64*
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8192 = getelementptr inbounds %struct.GPR, %struct.GPR* %8191, i32 0, i32 5
  %8193 = getelementptr inbounds %struct.Reg, %struct.Reg* %8192, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %8193 to i64*
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8195 = getelementptr inbounds %struct.GPR, %struct.GPR* %8194, i32 0, i32 7
  %8196 = getelementptr inbounds %struct.Reg, %struct.Reg* %8195, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %8196 to i64*
  %8197 = load i64, i64* %RCX.i244
  %8198 = load i64, i64* %RDX.i245
  %8199 = load i64, i64* %PC.i243
  %8200 = add i64 %8199, 3
  store i64 %8200, i64* %PC.i243
  %8201 = add i64 %8198, %8197
  store i64 %8201, i64* %RCX.i244, align 8
  %8202 = icmp ult i64 %8201, %8197
  %8203 = icmp ult i64 %8201, %8198
  %8204 = or i1 %8202, %8203
  %8205 = zext i1 %8204 to i8
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8205, i8* %8206, align 1
  %8207 = trunc i64 %8201 to i32
  %8208 = and i32 %8207, 255
  %8209 = call i32 @llvm.ctpop.i32(i32 %8208)
  %8210 = trunc i32 %8209 to i8
  %8211 = and i8 %8210, 1
  %8212 = xor i8 %8211, 1
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8212, i8* %8213, align 1
  %8214 = xor i64 %8198, %8197
  %8215 = xor i64 %8214, %8201
  %8216 = lshr i64 %8215, 4
  %8217 = trunc i64 %8216 to i8
  %8218 = and i8 %8217, 1
  %8219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8218, i8* %8219, align 1
  %8220 = icmp eq i64 %8201, 0
  %8221 = zext i1 %8220 to i8
  %8222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8221, i8* %8222, align 1
  %8223 = lshr i64 %8201, 63
  %8224 = trunc i64 %8223 to i8
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8224, i8* %8225, align 1
  %8226 = lshr i64 %8197, 63
  %8227 = lshr i64 %8198, 63
  %8228 = xor i64 %8223, %8226
  %8229 = xor i64 %8223, %8227
  %8230 = add i64 %8228, %8229
  %8231 = icmp eq i64 %8230, 2
  %8232 = zext i1 %8231 to i8
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8232, i8* %8233, align 1
  store %struct.Memory* %loadMem_49125e, %struct.Memory** %MEMORY
  %loadMem_491261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8235 = getelementptr inbounds %struct.GPR, %struct.GPR* %8234, i32 0, i32 33
  %8236 = getelementptr inbounds %struct.Reg, %struct.Reg* %8235, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %8236 to i64*
  %8237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8238 = getelementptr inbounds %struct.GPR, %struct.GPR* %8237, i32 0, i32 7
  %8239 = getelementptr inbounds %struct.Reg, %struct.Reg* %8238, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %8239 to i64*
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8241 = getelementptr inbounds %struct.GPR, %struct.GPR* %8240, i32 0, i32 15
  %8242 = getelementptr inbounds %struct.Reg, %struct.Reg* %8241, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %8242 to i64*
  %8243 = load i64, i64* %RBP.i242
  %8244 = sub i64 %8243, 36
  %8245 = load i64, i64* %PC.i240
  %8246 = add i64 %8245, 4
  store i64 %8246, i64* %PC.i240
  %8247 = inttoptr i64 %8244 to i32*
  %8248 = load i32, i32* %8247
  %8249 = sext i32 %8248 to i64
  store i64 %8249, i64* %RDX.i241, align 8
  store %struct.Memory* %loadMem_491261, %struct.Memory** %MEMORY
  %loadMem_491265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8251 = getelementptr inbounds %struct.GPR, %struct.GPR* %8250, i32 0, i32 33
  %8252 = getelementptr inbounds %struct.Reg, %struct.Reg* %8251, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %8252 to i64*
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8254 = getelementptr inbounds %struct.GPR, %struct.GPR* %8253, i32 0, i32 11
  %8255 = getelementptr inbounds %struct.Reg, %struct.Reg* %8254, i32 0, i32 0
  %DI.i237 = bitcast %union.anon* %8255 to i16*
  %8256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8257 = getelementptr inbounds %struct.GPR, %struct.GPR* %8256, i32 0, i32 5
  %8258 = getelementptr inbounds %struct.Reg, %struct.Reg* %8257, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %8258 to i64*
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8260 = getelementptr inbounds %struct.GPR, %struct.GPR* %8259, i32 0, i32 7
  %8261 = getelementptr inbounds %struct.Reg, %struct.Reg* %8260, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %8261 to i64*
  %8262 = load i64, i64* %RCX.i238
  %8263 = load i64, i64* %RDX.i239
  %8264 = mul i64 %8263, 4
  %8265 = add i64 %8262, 2
  %8266 = add i64 %8265, %8264
  %8267 = load i16, i16* %DI.i237
  %8268 = zext i16 %8267 to i64
  %8269 = load i64, i64* %PC.i236
  %8270 = add i64 %8269, 5
  store i64 %8270, i64* %PC.i236
  %8271 = inttoptr i64 %8266 to i16*
  store i16 %8267, i16* %8271
  store %struct.Memory* %loadMem_491265, %struct.Memory** %MEMORY
  %loadMem_49126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8273 = getelementptr inbounds %struct.GPR, %struct.GPR* %8272, i32 0, i32 33
  %8274 = getelementptr inbounds %struct.Reg, %struct.Reg* %8273, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %8274 to i64*
  %8275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8276 = getelementptr inbounds %struct.GPR, %struct.GPR* %8275, i32 0, i32 5
  %8277 = getelementptr inbounds %struct.Reg, %struct.Reg* %8276, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %8277 to i64*
  %8278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8279 = getelementptr inbounds %struct.GPR, %struct.GPR* %8278, i32 0, i32 15
  %8280 = getelementptr inbounds %struct.Reg, %struct.Reg* %8279, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %8280 to i64*
  %8281 = load i64, i64* %RBP.i235
  %8282 = sub i64 %8281, 72
  %8283 = load i64, i64* %PC.i233
  %8284 = add i64 %8283, 4
  store i64 %8284, i64* %PC.i233
  %8285 = inttoptr i64 %8282 to i64*
  %8286 = load i64, i64* %8285
  store i64 %8286, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_49126a, %struct.Memory** %MEMORY
  %loadMem_49126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8288 = getelementptr inbounds %struct.GPR, %struct.GPR* %8287, i32 0, i32 33
  %8289 = getelementptr inbounds %struct.Reg, %struct.Reg* %8288, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %8289 to i64*
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8291 = getelementptr inbounds %struct.GPR, %struct.GPR* %8290, i32 0, i32 7
  %8292 = getelementptr inbounds %struct.Reg, %struct.Reg* %8291, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %8292 to i64*
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8294 = getelementptr inbounds %struct.GPR, %struct.GPR* %8293, i32 0, i32 15
  %8295 = getelementptr inbounds %struct.Reg, %struct.Reg* %8294, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %8295 to i64*
  %8296 = load i64, i64* %RBP.i232
  %8297 = sub i64 %8296, 32
  %8298 = load i64, i64* %PC.i230
  %8299 = add i64 %8298, 4
  store i64 %8299, i64* %PC.i230
  %8300 = inttoptr i64 %8297 to i32*
  %8301 = load i32, i32* %8300
  %8302 = sext i32 %8301 to i64
  store i64 %8302, i64* %RDX.i231, align 8
  store %struct.Memory* %loadMem_49126e, %struct.Memory** %MEMORY
  %loadMem_491272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8304 = getelementptr inbounds %struct.GPR, %struct.GPR* %8303, i32 0, i32 33
  %8305 = getelementptr inbounds %struct.Reg, %struct.Reg* %8304, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %8305 to i64*
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8307 = getelementptr inbounds %struct.GPR, %struct.GPR* %8306, i32 0, i32 5
  %8308 = getelementptr inbounds %struct.Reg, %struct.Reg* %8307, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %8308 to i64*
  %8309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8310 = getelementptr inbounds %struct.GPR, %struct.GPR* %8309, i32 0, i32 7
  %8311 = getelementptr inbounds %struct.Reg, %struct.Reg* %8310, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %8311 to i64*
  %8312 = load i64, i64* %RCX.i228
  %8313 = load i64, i64* %RDX.i229
  %8314 = mul i64 %8313, 8
  %8315 = add i64 %8314, %8312
  %8316 = load i64, i64* %PC.i227
  %8317 = add i64 %8316, 4
  store i64 %8317, i64* %PC.i227
  %8318 = inttoptr i64 %8315 to i64*
  %8319 = load i64, i64* %8318
  store i64 %8319, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_491272, %struct.Memory** %MEMORY
  %loadMem_491276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8321 = getelementptr inbounds %struct.GPR, %struct.GPR* %8320, i32 0, i32 33
  %8322 = getelementptr inbounds %struct.Reg, %struct.Reg* %8321, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %8322 to i64*
  %8323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8324 = getelementptr inbounds %struct.GPR, %struct.GPR* %8323, i32 0, i32 7
  %8325 = getelementptr inbounds %struct.Reg, %struct.Reg* %8324, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %8325 to i64*
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8327 = getelementptr inbounds %struct.GPR, %struct.GPR* %8326, i32 0, i32 15
  %8328 = getelementptr inbounds %struct.Reg, %struct.Reg* %8327, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %8328 to i64*
  %8329 = load i64, i64* %RBP.i226
  %8330 = sub i64 %8329, 36
  %8331 = load i64, i64* %PC.i224
  %8332 = add i64 %8331, 4
  store i64 %8332, i64* %PC.i224
  %8333 = inttoptr i64 %8330 to i32*
  %8334 = load i32, i32* %8333
  %8335 = sext i32 %8334 to i64
  store i64 %8335, i64* %RDX.i225, align 8
  store %struct.Memory* %loadMem_491276, %struct.Memory** %MEMORY
  %loadMem_49127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8337 = getelementptr inbounds %struct.GPR, %struct.GPR* %8336, i32 0, i32 33
  %8338 = getelementptr inbounds %struct.Reg, %struct.Reg* %8337, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %8338 to i64*
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8340 = getelementptr inbounds %struct.GPR, %struct.GPR* %8339, i32 0, i32 5
  %8341 = getelementptr inbounds %struct.Reg, %struct.Reg* %8340, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %8341 to i64*
  %8342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8343 = getelementptr inbounds %struct.GPR, %struct.GPR* %8342, i32 0, i32 7
  %8344 = getelementptr inbounds %struct.Reg, %struct.Reg* %8343, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %8344 to i64*
  %8345 = load i64, i64* %RCX.i222
  %8346 = load i64, i64* %RDX.i223
  %8347 = mul i64 %8346, 8
  %8348 = add i64 %8347, %8345
  %8349 = load i64, i64* %PC.i221
  %8350 = add i64 %8349, 4
  store i64 %8350, i64* %PC.i221
  %8351 = inttoptr i64 %8348 to i64*
  %8352 = load i64, i64* %8351
  store i64 %8352, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_49127a, %struct.Memory** %MEMORY
  %loadMem_49127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8354 = getelementptr inbounds %struct.GPR, %struct.GPR* %8353, i32 0, i32 33
  %8355 = getelementptr inbounds %struct.Reg, %struct.Reg* %8354, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %8355 to i64*
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8357 = getelementptr inbounds %struct.GPR, %struct.GPR* %8356, i32 0, i32 5
  %8358 = getelementptr inbounds %struct.Reg, %struct.Reg* %8357, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %8358 to i64*
  %8359 = load i64, i64* %RCX.i220
  %8360 = add i64 %8359, 8
  %8361 = load i64, i64* %PC.i219
  %8362 = add i64 %8361, 4
  store i64 %8362, i64* %PC.i219
  %8363 = inttoptr i64 %8360 to i64*
  %8364 = load i64, i64* %8363
  store i64 %8364, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_49127e, %struct.Memory** %MEMORY
  %loadMem_491282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8366 = getelementptr inbounds %struct.GPR, %struct.GPR* %8365, i32 0, i32 33
  %8367 = getelementptr inbounds %struct.Reg, %struct.Reg* %8366, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %8367 to i64*
  %8368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8369 = getelementptr inbounds %struct.GPR, %struct.GPR* %8368, i32 0, i32 7
  %8370 = getelementptr inbounds %struct.Reg, %struct.Reg* %8369, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %8370 to i64*
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8372 = getelementptr inbounds %struct.GPR, %struct.GPR* %8371, i32 0, i32 15
  %8373 = getelementptr inbounds %struct.Reg, %struct.Reg* %8372, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %8373 to i64*
  %8374 = load i64, i64* %RBP.i218
  %8375 = sub i64 %8374, 20
  %8376 = load i64, i64* %PC.i216
  %8377 = add i64 %8376, 4
  store i64 %8377, i64* %PC.i216
  %8378 = inttoptr i64 %8375 to i32*
  %8379 = load i32, i32* %8378
  %8380 = sext i32 %8379 to i64
  store i64 %8380, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_491282, %struct.Memory** %MEMORY
  %loadMem_491286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8382 = getelementptr inbounds %struct.GPR, %struct.GPR* %8381, i32 0, i32 33
  %8383 = getelementptr inbounds %struct.Reg, %struct.Reg* %8382, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %8383 to i64*
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8385 = getelementptr inbounds %struct.GPR, %struct.GPR* %8384, i32 0, i32 5
  %8386 = getelementptr inbounds %struct.Reg, %struct.Reg* %8385, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %8386 to i64*
  %8387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8388 = getelementptr inbounds %struct.GPR, %struct.GPR* %8387, i32 0, i32 7
  %8389 = getelementptr inbounds %struct.Reg, %struct.Reg* %8388, i32 0, i32 0
  %RDX.i215 = bitcast %union.anon* %8389 to i64*
  %8390 = load i64, i64* %RCX.i214
  %8391 = load i64, i64* %RDX.i215
  %8392 = mul i64 %8391, 8
  %8393 = add i64 %8392, %8390
  %8394 = load i64, i64* %PC.i213
  %8395 = add i64 %8394, 4
  store i64 %8395, i64* %PC.i213
  %8396 = inttoptr i64 %8393 to i64*
  %8397 = load i64, i64* %8396
  store i64 %8397, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_491286, %struct.Memory** %MEMORY
  %loadMem_49128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8399 = getelementptr inbounds %struct.GPR, %struct.GPR* %8398, i32 0, i32 33
  %8400 = getelementptr inbounds %struct.Reg, %struct.Reg* %8399, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %8400 to i64*
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8402 = getelementptr inbounds %struct.GPR, %struct.GPR* %8401, i32 0, i32 7
  %8403 = getelementptr inbounds %struct.Reg, %struct.Reg* %8402, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %8403 to i64*
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8405 = getelementptr inbounds %struct.GPR, %struct.GPR* %8404, i32 0, i32 15
  %8406 = getelementptr inbounds %struct.Reg, %struct.Reg* %8405, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %8406 to i64*
  %8407 = load i64, i64* %RBP.i212
  %8408 = sub i64 %8407, 12
  %8409 = load i64, i64* %PC.i210
  %8410 = add i64 %8409, 4
  store i64 %8410, i64* %PC.i210
  %8411 = inttoptr i64 %8408 to i32*
  %8412 = load i32, i32* %8411
  %8413 = sext i32 %8412 to i64
  store i64 %8413, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_49128a, %struct.Memory** %MEMORY
  %loadMem_49128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8415 = getelementptr inbounds %struct.GPR, %struct.GPR* %8414, i32 0, i32 33
  %8416 = getelementptr inbounds %struct.Reg, %struct.Reg* %8415, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %8416 to i64*
  %8417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8418 = getelementptr inbounds %struct.GPR, %struct.GPR* %8417, i32 0, i32 5
  %8419 = getelementptr inbounds %struct.Reg, %struct.Reg* %8418, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %8419 to i64*
  %8420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8421 = getelementptr inbounds %struct.GPR, %struct.GPR* %8420, i32 0, i32 7
  %8422 = getelementptr inbounds %struct.Reg, %struct.Reg* %8421, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %8422 to i64*
  %8423 = load i64, i64* %RCX.i208
  %8424 = load i64, i64* %RDX.i209
  %8425 = mul i64 %8424, 8
  %8426 = add i64 %8425, %8423
  %8427 = load i64, i64* %PC.i207
  %8428 = add i64 %8427, 4
  store i64 %8428, i64* %PC.i207
  %8429 = inttoptr i64 %8426 to i64*
  %8430 = load i64, i64* %8429
  store i64 %8430, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_49128e, %struct.Memory** %MEMORY
  %loadMem_491292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8432 = getelementptr inbounds %struct.GPR, %struct.GPR* %8431, i32 0, i32 33
  %8433 = getelementptr inbounds %struct.Reg, %struct.Reg* %8432, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %8433 to i64*
  %8434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8435 = getelementptr inbounds %struct.GPR, %struct.GPR* %8434, i32 0, i32 11
  %8436 = getelementptr inbounds %struct.Reg, %struct.Reg* %8435, i32 0, i32 0
  %DI.i205 = bitcast %union.anon* %8436 to i16*
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8438 = getelementptr inbounds %struct.GPR, %struct.GPR* %8437, i32 0, i32 5
  %8439 = getelementptr inbounds %struct.Reg, %struct.Reg* %8438, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %8439 to i64*
  %8440 = load i64, i64* %RCX.i206
  %8441 = load i64, i64* %PC.i204
  %8442 = add i64 %8441, 3
  store i64 %8442, i64* %PC.i204
  %8443 = inttoptr i64 %8440 to i16*
  %8444 = load i16, i16* %8443
  store i16 %8444, i16* %DI.i205, align 2
  store %struct.Memory* %loadMem_491292, %struct.Memory** %MEMORY
  %loadMem_491295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8446 = getelementptr inbounds %struct.GPR, %struct.GPR* %8445, i32 0, i32 33
  %8447 = getelementptr inbounds %struct.Reg, %struct.Reg* %8446, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %8447 to i64*
  %8448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8449 = getelementptr inbounds %struct.GPR, %struct.GPR* %8448, i32 0, i32 5
  %8450 = getelementptr inbounds %struct.Reg, %struct.Reg* %8449, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %8450 to i64*
  %8451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8452 = getelementptr inbounds %struct.GPR, %struct.GPR* %8451, i32 0, i32 15
  %8453 = getelementptr inbounds %struct.Reg, %struct.Reg* %8452, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %8453 to i64*
  %8454 = load i64, i64* %RBP.i203
  %8455 = sub i64 %8454, 4
  %8456 = load i64, i64* %PC.i201
  %8457 = add i64 %8456, 4
  store i64 %8457, i64* %PC.i201
  %8458 = inttoptr i64 %8455 to i32*
  %8459 = load i32, i32* %8458
  %8460 = sext i32 %8459 to i64
  store i64 %8460, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_491295, %struct.Memory** %MEMORY
  %loadMem_491299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8462 = getelementptr inbounds %struct.GPR, %struct.GPR* %8461, i32 0, i32 33
  %8463 = getelementptr inbounds %struct.Reg, %struct.Reg* %8462, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %8463 to i64*
  %8464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8465 = getelementptr inbounds %struct.GPR, %struct.GPR* %8464, i32 0, i32 5
  %8466 = getelementptr inbounds %struct.Reg, %struct.Reg* %8465, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %8466 to i64*
  %8467 = load i64, i64* %RCX.i200
  %8468 = load i64, i64* %PC.i199
  %8469 = add i64 %8468, 4
  store i64 %8469, i64* %PC.i199
  %8470 = shl i64 %8467, 6
  %8471 = icmp slt i64 %8470, 0
  %8472 = shl i64 %8470, 1
  store i64 %8472, i64* %RCX.i200, align 8
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8474 = zext i1 %8471 to i8
  store i8 %8474, i8* %8473, align 1
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8476 = trunc i64 %8472 to i32
  %8477 = and i32 %8476, 254
  %8478 = call i32 @llvm.ctpop.i32(i32 %8477)
  %8479 = trunc i32 %8478 to i8
  %8480 = and i8 %8479, 1
  %8481 = xor i8 %8480, 1
  store i8 %8481, i8* %8475, align 1
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8482, align 1
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8484 = icmp eq i64 %8472, 0
  %8485 = zext i1 %8484 to i8
  store i8 %8485, i8* %8483, align 1
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8487 = lshr i64 %8472, 63
  %8488 = trunc i64 %8487 to i8
  store i8 %8488, i8* %8486, align 1
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8489, align 1
  store %struct.Memory* %loadMem_491299, %struct.Memory** %MEMORY
  %loadMem_49129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8491 = getelementptr inbounds %struct.GPR, %struct.GPR* %8490, i32 0, i32 33
  %8492 = getelementptr inbounds %struct.Reg, %struct.Reg* %8491, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %8492 to i64*
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8494 = getelementptr inbounds %struct.GPR, %struct.GPR* %8493, i32 0, i32 1
  %8495 = getelementptr inbounds %struct.Reg, %struct.Reg* %8494, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %8495 to i64*
  %8496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8497 = getelementptr inbounds %struct.GPR, %struct.GPR* %8496, i32 0, i32 7
  %8498 = getelementptr inbounds %struct.Reg, %struct.Reg* %8497, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %8498 to i64*
  %8499 = load i64, i64* %RAX.i197
  %8500 = load i64, i64* %PC.i196
  %8501 = add i64 %8500, 3
  store i64 %8501, i64* %PC.i196
  store i64 %8499, i64* %RDX.i198, align 8
  store %struct.Memory* %loadMem_49129d, %struct.Memory** %MEMORY
  %loadMem_4912a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8503 = getelementptr inbounds %struct.GPR, %struct.GPR* %8502, i32 0, i32 33
  %8504 = getelementptr inbounds %struct.Reg, %struct.Reg* %8503, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %8504 to i64*
  %8505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8506 = getelementptr inbounds %struct.GPR, %struct.GPR* %8505, i32 0, i32 5
  %8507 = getelementptr inbounds %struct.Reg, %struct.Reg* %8506, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %8507 to i64*
  %8508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8509 = getelementptr inbounds %struct.GPR, %struct.GPR* %8508, i32 0, i32 7
  %8510 = getelementptr inbounds %struct.Reg, %struct.Reg* %8509, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %8510 to i64*
  %8511 = load i64, i64* %RDX.i195
  %8512 = load i64, i64* %RCX.i194
  %8513 = load i64, i64* %PC.i193
  %8514 = add i64 %8513, 3
  store i64 %8514, i64* %PC.i193
  %8515 = add i64 %8512, %8511
  store i64 %8515, i64* %RDX.i195, align 8
  %8516 = icmp ult i64 %8515, %8511
  %8517 = icmp ult i64 %8515, %8512
  %8518 = or i1 %8516, %8517
  %8519 = zext i1 %8518 to i8
  %8520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8519, i8* %8520, align 1
  %8521 = trunc i64 %8515 to i32
  %8522 = and i32 %8521, 255
  %8523 = call i32 @llvm.ctpop.i32(i32 %8522)
  %8524 = trunc i32 %8523 to i8
  %8525 = and i8 %8524, 1
  %8526 = xor i8 %8525, 1
  %8527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8526, i8* %8527, align 1
  %8528 = xor i64 %8512, %8511
  %8529 = xor i64 %8528, %8515
  %8530 = lshr i64 %8529, 4
  %8531 = trunc i64 %8530 to i8
  %8532 = and i8 %8531, 1
  %8533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8532, i8* %8533, align 1
  %8534 = icmp eq i64 %8515, 0
  %8535 = zext i1 %8534 to i8
  %8536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8535, i8* %8536, align 1
  %8537 = lshr i64 %8515, 63
  %8538 = trunc i64 %8537 to i8
  %8539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8538, i8* %8539, align 1
  %8540 = lshr i64 %8511, 63
  %8541 = lshr i64 %8512, 63
  %8542 = xor i64 %8537, %8540
  %8543 = xor i64 %8537, %8541
  %8544 = add i64 %8542, %8543
  %8545 = icmp eq i64 %8544, 2
  %8546 = zext i1 %8545 to i8
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8546, i8* %8547, align 1
  store %struct.Memory* %loadMem_4912a0, %struct.Memory** %MEMORY
  %loadMem_4912a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8549 = getelementptr inbounds %struct.GPR, %struct.GPR* %8548, i32 0, i32 33
  %8550 = getelementptr inbounds %struct.Reg, %struct.Reg* %8549, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %8550 to i64*
  %8551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8552 = getelementptr inbounds %struct.GPR, %struct.GPR* %8551, i32 0, i32 7
  %8553 = getelementptr inbounds %struct.Reg, %struct.Reg* %8552, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %8553 to i64*
  %8554 = load i64, i64* %RDX.i192
  %8555 = load i64, i64* %PC.i191
  %8556 = add i64 %8555, 4
  store i64 %8556, i64* %PC.i191
  %8557 = add i64 64, %8554
  store i64 %8557, i64* %RDX.i192, align 8
  %8558 = icmp ult i64 %8557, %8554
  %8559 = icmp ult i64 %8557, 64
  %8560 = or i1 %8558, %8559
  %8561 = zext i1 %8560 to i8
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8561, i8* %8562, align 1
  %8563 = trunc i64 %8557 to i32
  %8564 = and i32 %8563, 255
  %8565 = call i32 @llvm.ctpop.i32(i32 %8564)
  %8566 = trunc i32 %8565 to i8
  %8567 = and i8 %8566, 1
  %8568 = xor i8 %8567, 1
  %8569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8568, i8* %8569, align 1
  %8570 = xor i64 64, %8554
  %8571 = xor i64 %8570, %8557
  %8572 = lshr i64 %8571, 4
  %8573 = trunc i64 %8572 to i8
  %8574 = and i8 %8573, 1
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8574, i8* %8575, align 1
  %8576 = icmp eq i64 %8557, 0
  %8577 = zext i1 %8576 to i8
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8577, i8* %8578, align 1
  %8579 = lshr i64 %8557, 63
  %8580 = trunc i64 %8579 to i8
  %8581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8580, i8* %8581, align 1
  %8582 = lshr i64 %8554, 63
  %8583 = xor i64 %8579, %8582
  %8584 = add i64 %8583, %8579
  %8585 = icmp eq i64 %8584, 2
  %8586 = zext i1 %8585 to i8
  %8587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8586, i8* %8587, align 1
  store %struct.Memory* %loadMem_4912a3, %struct.Memory** %MEMORY
  %loadMem_4912a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8589 = getelementptr inbounds %struct.GPR, %struct.GPR* %8588, i32 0, i32 33
  %8590 = getelementptr inbounds %struct.Reg, %struct.Reg* %8589, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %8590 to i64*
  %8591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8592 = getelementptr inbounds %struct.GPR, %struct.GPR* %8591, i32 0, i32 5
  %8593 = getelementptr inbounds %struct.Reg, %struct.Reg* %8592, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %8593 to i64*
  %8594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8595 = getelementptr inbounds %struct.GPR, %struct.GPR* %8594, i32 0, i32 15
  %8596 = getelementptr inbounds %struct.Reg, %struct.Reg* %8595, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %8596 to i64*
  %8597 = load i64, i64* %RBP.i190
  %8598 = sub i64 %8597, 32
  %8599 = load i64, i64* %PC.i188
  %8600 = add i64 %8599, 4
  store i64 %8600, i64* %PC.i188
  %8601 = inttoptr i64 %8598 to i32*
  %8602 = load i32, i32* %8601
  %8603 = sext i32 %8602 to i64
  store i64 %8603, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_4912a7, %struct.Memory** %MEMORY
  %loadMem_4912ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8605 = getelementptr inbounds %struct.GPR, %struct.GPR* %8604, i32 0, i32 33
  %8606 = getelementptr inbounds %struct.Reg, %struct.Reg* %8605, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %8606 to i64*
  %8607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8608 = getelementptr inbounds %struct.GPR, %struct.GPR* %8607, i32 0, i32 5
  %8609 = getelementptr inbounds %struct.Reg, %struct.Reg* %8608, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %8609 to i64*
  %8610 = load i64, i64* %RCX.i187
  %8611 = load i64, i64* %PC.i186
  %8612 = add i64 %8611, 4
  store i64 %8612, i64* %PC.i186
  %8613 = shl i64 %8610, 3
  %8614 = icmp slt i64 %8613, 0
  %8615 = shl i64 %8613, 1
  store i64 %8615, i64* %RCX.i187, align 8
  %8616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8617 = zext i1 %8614 to i8
  store i8 %8617, i8* %8616, align 1
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8619 = trunc i64 %8615 to i32
  %8620 = and i32 %8619, 254
  %8621 = call i32 @llvm.ctpop.i32(i32 %8620)
  %8622 = trunc i32 %8621 to i8
  %8623 = and i8 %8622, 1
  %8624 = xor i8 %8623, 1
  store i8 %8624, i8* %8618, align 1
  %8625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8625, align 1
  %8626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8627 = icmp eq i64 %8615, 0
  %8628 = zext i1 %8627 to i8
  store i8 %8628, i8* %8626, align 1
  %8629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8630 = lshr i64 %8615, 63
  %8631 = trunc i64 %8630 to i8
  store i8 %8631, i8* %8629, align 1
  %8632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8632, align 1
  store %struct.Memory* %loadMem_4912ab, %struct.Memory** %MEMORY
  %loadMem_4912af = load %struct.Memory*, %struct.Memory** %MEMORY
  %8633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8634 = getelementptr inbounds %struct.GPR, %struct.GPR* %8633, i32 0, i32 33
  %8635 = getelementptr inbounds %struct.Reg, %struct.Reg* %8634, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %8635 to i64*
  %8636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8637 = getelementptr inbounds %struct.GPR, %struct.GPR* %8636, i32 0, i32 5
  %8638 = getelementptr inbounds %struct.Reg, %struct.Reg* %8637, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %8638 to i64*
  %8639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8640 = getelementptr inbounds %struct.GPR, %struct.GPR* %8639, i32 0, i32 7
  %8641 = getelementptr inbounds %struct.Reg, %struct.Reg* %8640, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %8641 to i64*
  %8642 = load i64, i64* %RDX.i185
  %8643 = load i64, i64* %RCX.i184
  %8644 = load i64, i64* %PC.i183
  %8645 = add i64 %8644, 3
  store i64 %8645, i64* %PC.i183
  %8646 = add i64 %8643, %8642
  store i64 %8646, i64* %RDX.i185, align 8
  %8647 = icmp ult i64 %8646, %8642
  %8648 = icmp ult i64 %8646, %8643
  %8649 = or i1 %8647, %8648
  %8650 = zext i1 %8649 to i8
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8650, i8* %8651, align 1
  %8652 = trunc i64 %8646 to i32
  %8653 = and i32 %8652, 255
  %8654 = call i32 @llvm.ctpop.i32(i32 %8653)
  %8655 = trunc i32 %8654 to i8
  %8656 = and i8 %8655, 1
  %8657 = xor i8 %8656, 1
  %8658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8657, i8* %8658, align 1
  %8659 = xor i64 %8643, %8642
  %8660 = xor i64 %8659, %8646
  %8661 = lshr i64 %8660, 4
  %8662 = trunc i64 %8661 to i8
  %8663 = and i8 %8662, 1
  %8664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8663, i8* %8664, align 1
  %8665 = icmp eq i64 %8646, 0
  %8666 = zext i1 %8665 to i8
  %8667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8666, i8* %8667, align 1
  %8668 = lshr i64 %8646, 63
  %8669 = trunc i64 %8668 to i8
  %8670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8669, i8* %8670, align 1
  %8671 = lshr i64 %8642, 63
  %8672 = lshr i64 %8643, 63
  %8673 = xor i64 %8668, %8671
  %8674 = xor i64 %8668, %8672
  %8675 = add i64 %8673, %8674
  %8676 = icmp eq i64 %8675, 2
  %8677 = zext i1 %8676 to i8
  %8678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8677, i8* %8678, align 1
  store %struct.Memory* %loadMem_4912af, %struct.Memory** %MEMORY
  %loadMem_4912b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8680 = getelementptr inbounds %struct.GPR, %struct.GPR* %8679, i32 0, i32 33
  %8681 = getelementptr inbounds %struct.Reg, %struct.Reg* %8680, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %8681 to i64*
  %8682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8683 = getelementptr inbounds %struct.GPR, %struct.GPR* %8682, i32 0, i32 5
  %8684 = getelementptr inbounds %struct.Reg, %struct.Reg* %8683, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %8684 to i64*
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8686 = getelementptr inbounds %struct.GPR, %struct.GPR* %8685, i32 0, i32 15
  %8687 = getelementptr inbounds %struct.Reg, %struct.Reg* %8686, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %8687 to i64*
  %8688 = load i64, i64* %RBP.i182
  %8689 = sub i64 %8688, 36
  %8690 = load i64, i64* %PC.i180
  %8691 = add i64 %8690, 4
  store i64 %8691, i64* %PC.i180
  %8692 = inttoptr i64 %8689 to i32*
  %8693 = load i32, i32* %8692
  %8694 = sext i32 %8693 to i64
  store i64 %8694, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_4912b2, %struct.Memory** %MEMORY
  %loadMem_4912b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8696 = getelementptr inbounds %struct.GPR, %struct.GPR* %8695, i32 0, i32 33
  %8697 = getelementptr inbounds %struct.Reg, %struct.Reg* %8696, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %8697 to i64*
  %8698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8699 = getelementptr inbounds %struct.GPR, %struct.GPR* %8698, i32 0, i32 11
  %8700 = getelementptr inbounds %struct.Reg, %struct.Reg* %8699, i32 0, i32 0
  %DI.i177 = bitcast %union.anon* %8700 to i16*
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8702 = getelementptr inbounds %struct.GPR, %struct.GPR* %8701, i32 0, i32 5
  %8703 = getelementptr inbounds %struct.Reg, %struct.Reg* %8702, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %8703 to i64*
  %8704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8705 = getelementptr inbounds %struct.GPR, %struct.GPR* %8704, i32 0, i32 7
  %8706 = getelementptr inbounds %struct.Reg, %struct.Reg* %8705, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %8706 to i64*
  %8707 = load i64, i64* %RDX.i179
  %8708 = load i64, i64* %RCX.i178
  %8709 = mul i64 %8708, 4
  %8710 = add i64 %8709, %8707
  %8711 = load i16, i16* %DI.i177
  %8712 = zext i16 %8711 to i64
  %8713 = load i64, i64* %PC.i176
  %8714 = add i64 %8713, 4
  store i64 %8714, i64* %PC.i176
  %8715 = inttoptr i64 %8710 to i16*
  store i16 %8711, i16* %8715
  store %struct.Memory* %loadMem_4912b6, %struct.Memory** %MEMORY
  %loadMem_4912ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %8716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8717 = getelementptr inbounds %struct.GPR, %struct.GPR* %8716, i32 0, i32 33
  %8718 = getelementptr inbounds %struct.Reg, %struct.Reg* %8717, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %8718 to i64*
  %8719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8720 = getelementptr inbounds %struct.GPR, %struct.GPR* %8719, i32 0, i32 5
  %8721 = getelementptr inbounds %struct.Reg, %struct.Reg* %8720, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %8721 to i64*
  %8722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8723 = getelementptr inbounds %struct.GPR, %struct.GPR* %8722, i32 0, i32 15
  %8724 = getelementptr inbounds %struct.Reg, %struct.Reg* %8723, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %8724 to i64*
  %8725 = load i64, i64* %RBP.i175
  %8726 = sub i64 %8725, 72
  %8727 = load i64, i64* %PC.i173
  %8728 = add i64 %8727, 4
  store i64 %8728, i64* %PC.i173
  %8729 = inttoptr i64 %8726 to i64*
  %8730 = load i64, i64* %8729
  store i64 %8730, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_4912ba, %struct.Memory** %MEMORY
  %loadMem_4912be = load %struct.Memory*, %struct.Memory** %MEMORY
  %8731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8732 = getelementptr inbounds %struct.GPR, %struct.GPR* %8731, i32 0, i32 33
  %8733 = getelementptr inbounds %struct.Reg, %struct.Reg* %8732, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %8733 to i64*
  %8734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8735 = getelementptr inbounds %struct.GPR, %struct.GPR* %8734, i32 0, i32 7
  %8736 = getelementptr inbounds %struct.Reg, %struct.Reg* %8735, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %8736 to i64*
  %8737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8738 = getelementptr inbounds %struct.GPR, %struct.GPR* %8737, i32 0, i32 15
  %8739 = getelementptr inbounds %struct.Reg, %struct.Reg* %8738, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %8739 to i64*
  %8740 = load i64, i64* %RBP.i172
  %8741 = sub i64 %8740, 32
  %8742 = load i64, i64* %PC.i170
  %8743 = add i64 %8742, 4
  store i64 %8743, i64* %PC.i170
  %8744 = inttoptr i64 %8741 to i32*
  %8745 = load i32, i32* %8744
  %8746 = sext i32 %8745 to i64
  store i64 %8746, i64* %RDX.i171, align 8
  store %struct.Memory* %loadMem_4912be, %struct.Memory** %MEMORY
  %loadMem_4912c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8748 = getelementptr inbounds %struct.GPR, %struct.GPR* %8747, i32 0, i32 33
  %8749 = getelementptr inbounds %struct.Reg, %struct.Reg* %8748, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %8749 to i64*
  %8750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8751 = getelementptr inbounds %struct.GPR, %struct.GPR* %8750, i32 0, i32 5
  %8752 = getelementptr inbounds %struct.Reg, %struct.Reg* %8751, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %8752 to i64*
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8754 = getelementptr inbounds %struct.GPR, %struct.GPR* %8753, i32 0, i32 7
  %8755 = getelementptr inbounds %struct.Reg, %struct.Reg* %8754, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %8755 to i64*
  %8756 = load i64, i64* %RCX.i168
  %8757 = load i64, i64* %RDX.i169
  %8758 = mul i64 %8757, 8
  %8759 = add i64 %8758, %8756
  %8760 = load i64, i64* %PC.i167
  %8761 = add i64 %8760, 4
  store i64 %8761, i64* %PC.i167
  %8762 = inttoptr i64 %8759 to i64*
  %8763 = load i64, i64* %8762
  store i64 %8763, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_4912c2, %struct.Memory** %MEMORY
  %loadMem_4912c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8765 = getelementptr inbounds %struct.GPR, %struct.GPR* %8764, i32 0, i32 33
  %8766 = getelementptr inbounds %struct.Reg, %struct.Reg* %8765, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %8766 to i64*
  %8767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8768 = getelementptr inbounds %struct.GPR, %struct.GPR* %8767, i32 0, i32 7
  %8769 = getelementptr inbounds %struct.Reg, %struct.Reg* %8768, i32 0, i32 0
  %RDX.i165 = bitcast %union.anon* %8769 to i64*
  %8770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8771 = getelementptr inbounds %struct.GPR, %struct.GPR* %8770, i32 0, i32 15
  %8772 = getelementptr inbounds %struct.Reg, %struct.Reg* %8771, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %8772 to i64*
  %8773 = load i64, i64* %RBP.i166
  %8774 = sub i64 %8773, 36
  %8775 = load i64, i64* %PC.i164
  %8776 = add i64 %8775, 4
  store i64 %8776, i64* %PC.i164
  %8777 = inttoptr i64 %8774 to i32*
  %8778 = load i32, i32* %8777
  %8779 = sext i32 %8778 to i64
  store i64 %8779, i64* %RDX.i165, align 8
  store %struct.Memory* %loadMem_4912c6, %struct.Memory** %MEMORY
  %loadMem_4912ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8781 = getelementptr inbounds %struct.GPR, %struct.GPR* %8780, i32 0, i32 33
  %8782 = getelementptr inbounds %struct.Reg, %struct.Reg* %8781, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %8782 to i64*
  %8783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8784 = getelementptr inbounds %struct.GPR, %struct.GPR* %8783, i32 0, i32 5
  %8785 = getelementptr inbounds %struct.Reg, %struct.Reg* %8784, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %8785 to i64*
  %8786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8787 = getelementptr inbounds %struct.GPR, %struct.GPR* %8786, i32 0, i32 7
  %8788 = getelementptr inbounds %struct.Reg, %struct.Reg* %8787, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %8788 to i64*
  %8789 = load i64, i64* %RCX.i162
  %8790 = load i64, i64* %RDX.i163
  %8791 = mul i64 %8790, 8
  %8792 = add i64 %8791, %8789
  %8793 = load i64, i64* %PC.i161
  %8794 = add i64 %8793, 4
  store i64 %8794, i64* %PC.i161
  %8795 = inttoptr i64 %8792 to i64*
  %8796 = load i64, i64* %8795
  store i64 %8796, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_4912ca, %struct.Memory** %MEMORY
  %loadMem_4912ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %8797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8798 = getelementptr inbounds %struct.GPR, %struct.GPR* %8797, i32 0, i32 33
  %8799 = getelementptr inbounds %struct.Reg, %struct.Reg* %8798, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %8799 to i64*
  %8800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8801 = getelementptr inbounds %struct.GPR, %struct.GPR* %8800, i32 0, i32 5
  %8802 = getelementptr inbounds %struct.Reg, %struct.Reg* %8801, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %8802 to i64*
  %8803 = load i64, i64* %RCX.i160
  %8804 = add i64 %8803, 8
  %8805 = load i64, i64* %PC.i159
  %8806 = add i64 %8805, 4
  store i64 %8806, i64* %PC.i159
  %8807 = inttoptr i64 %8804 to i64*
  %8808 = load i64, i64* %8807
  store i64 %8808, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_4912ce, %struct.Memory** %MEMORY
  %loadMem_4912d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8810 = getelementptr inbounds %struct.GPR, %struct.GPR* %8809, i32 0, i32 33
  %8811 = getelementptr inbounds %struct.Reg, %struct.Reg* %8810, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %8811 to i64*
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 7
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %8814 to i64*
  %8815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8816 = getelementptr inbounds %struct.GPR, %struct.GPR* %8815, i32 0, i32 15
  %8817 = getelementptr inbounds %struct.Reg, %struct.Reg* %8816, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %8817 to i64*
  %8818 = load i64, i64* %RBP.i158
  %8819 = sub i64 %8818, 20
  %8820 = load i64, i64* %PC.i156
  %8821 = add i64 %8820, 4
  store i64 %8821, i64* %PC.i156
  %8822 = inttoptr i64 %8819 to i32*
  %8823 = load i32, i32* %8822
  %8824 = sext i32 %8823 to i64
  store i64 %8824, i64* %RDX.i157, align 8
  store %struct.Memory* %loadMem_4912d2, %struct.Memory** %MEMORY
  %loadMem_4912d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8826 = getelementptr inbounds %struct.GPR, %struct.GPR* %8825, i32 0, i32 33
  %8827 = getelementptr inbounds %struct.Reg, %struct.Reg* %8826, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %8827 to i64*
  %8828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8829 = getelementptr inbounds %struct.GPR, %struct.GPR* %8828, i32 0, i32 5
  %8830 = getelementptr inbounds %struct.Reg, %struct.Reg* %8829, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %8830 to i64*
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8832 = getelementptr inbounds %struct.GPR, %struct.GPR* %8831, i32 0, i32 7
  %8833 = getelementptr inbounds %struct.Reg, %struct.Reg* %8832, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %8833 to i64*
  %8834 = load i64, i64* %RCX.i154
  %8835 = load i64, i64* %RDX.i155
  %8836 = mul i64 %8835, 8
  %8837 = add i64 %8836, %8834
  %8838 = load i64, i64* %PC.i153
  %8839 = add i64 %8838, 4
  store i64 %8839, i64* %PC.i153
  %8840 = inttoptr i64 %8837 to i64*
  %8841 = load i64, i64* %8840
  store i64 %8841, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_4912d6, %struct.Memory** %MEMORY
  %loadMem_4912da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8843 = getelementptr inbounds %struct.GPR, %struct.GPR* %8842, i32 0, i32 33
  %8844 = getelementptr inbounds %struct.Reg, %struct.Reg* %8843, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %8844 to i64*
  %8845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8846 = getelementptr inbounds %struct.GPR, %struct.GPR* %8845, i32 0, i32 7
  %8847 = getelementptr inbounds %struct.Reg, %struct.Reg* %8846, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %8847 to i64*
  %8848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8849 = getelementptr inbounds %struct.GPR, %struct.GPR* %8848, i32 0, i32 15
  %8850 = getelementptr inbounds %struct.Reg, %struct.Reg* %8849, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %8850 to i64*
  %8851 = load i64, i64* %RBP.i152
  %8852 = sub i64 %8851, 12
  %8853 = load i64, i64* %PC.i150
  %8854 = add i64 %8853, 4
  store i64 %8854, i64* %PC.i150
  %8855 = inttoptr i64 %8852 to i32*
  %8856 = load i32, i32* %8855
  %8857 = sext i32 %8856 to i64
  store i64 %8857, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_4912da, %struct.Memory** %MEMORY
  %loadMem_4912de = load %struct.Memory*, %struct.Memory** %MEMORY
  %8858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8859 = getelementptr inbounds %struct.GPR, %struct.GPR* %8858, i32 0, i32 33
  %8860 = getelementptr inbounds %struct.Reg, %struct.Reg* %8859, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %8860 to i64*
  %8861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8862 = getelementptr inbounds %struct.GPR, %struct.GPR* %8861, i32 0, i32 5
  %8863 = getelementptr inbounds %struct.Reg, %struct.Reg* %8862, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %8863 to i64*
  %8864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8865 = getelementptr inbounds %struct.GPR, %struct.GPR* %8864, i32 0, i32 7
  %8866 = getelementptr inbounds %struct.Reg, %struct.Reg* %8865, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %8866 to i64*
  %8867 = load i64, i64* %RCX.i148
  %8868 = load i64, i64* %RDX.i149
  %8869 = mul i64 %8868, 8
  %8870 = add i64 %8869, %8867
  %8871 = load i64, i64* %PC.i147
  %8872 = add i64 %8871, 4
  store i64 %8872, i64* %PC.i147
  %8873 = inttoptr i64 %8870 to i64*
  %8874 = load i64, i64* %8873
  store i64 %8874, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_4912de, %struct.Memory** %MEMORY
  %loadMem_4912e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8876 = getelementptr inbounds %struct.GPR, %struct.GPR* %8875, i32 0, i32 33
  %8877 = getelementptr inbounds %struct.Reg, %struct.Reg* %8876, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %8877 to i64*
  %8878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8879 = getelementptr inbounds %struct.GPR, %struct.GPR* %8878, i32 0, i32 11
  %8880 = getelementptr inbounds %struct.Reg, %struct.Reg* %8879, i32 0, i32 0
  %DI.i145 = bitcast %union.anon* %8880 to i16*
  %8881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8882 = getelementptr inbounds %struct.GPR, %struct.GPR* %8881, i32 0, i32 5
  %8883 = getelementptr inbounds %struct.Reg, %struct.Reg* %8882, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %8883 to i64*
  %8884 = load i64, i64* %RCX.i146
  %8885 = add i64 %8884, 2
  %8886 = load i64, i64* %PC.i144
  %8887 = add i64 %8886, 4
  store i64 %8887, i64* %PC.i144
  %8888 = inttoptr i64 %8885 to i16*
  %8889 = load i16, i16* %8888
  store i16 %8889, i16* %DI.i145, align 2
  store %struct.Memory* %loadMem_4912e2, %struct.Memory** %MEMORY
  %loadMem_4912e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8891 = getelementptr inbounds %struct.GPR, %struct.GPR* %8890, i32 0, i32 33
  %8892 = getelementptr inbounds %struct.Reg, %struct.Reg* %8891, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %8892 to i64*
  %8893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8894 = getelementptr inbounds %struct.GPR, %struct.GPR* %8893, i32 0, i32 5
  %8895 = getelementptr inbounds %struct.Reg, %struct.Reg* %8894, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %8895 to i64*
  %8896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8897 = getelementptr inbounds %struct.GPR, %struct.GPR* %8896, i32 0, i32 15
  %8898 = getelementptr inbounds %struct.Reg, %struct.Reg* %8897, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %8898 to i64*
  %8899 = load i64, i64* %RBP.i143
  %8900 = sub i64 %8899, 4
  %8901 = load i64, i64* %PC.i141
  %8902 = add i64 %8901, 4
  store i64 %8902, i64* %PC.i141
  %8903 = inttoptr i64 %8900 to i32*
  %8904 = load i32, i32* %8903
  %8905 = sext i32 %8904 to i64
  store i64 %8905, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_4912e6, %struct.Memory** %MEMORY
  %loadMem_4912ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8907 = getelementptr inbounds %struct.GPR, %struct.GPR* %8906, i32 0, i32 33
  %8908 = getelementptr inbounds %struct.Reg, %struct.Reg* %8907, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %8908 to i64*
  %8909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8910 = getelementptr inbounds %struct.GPR, %struct.GPR* %8909, i32 0, i32 5
  %8911 = getelementptr inbounds %struct.Reg, %struct.Reg* %8910, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %8911 to i64*
  %8912 = load i64, i64* %RCX.i140
  %8913 = load i64, i64* %PC.i139
  %8914 = add i64 %8913, 4
  store i64 %8914, i64* %PC.i139
  %8915 = shl i64 %8912, 6
  %8916 = icmp slt i64 %8915, 0
  %8917 = shl i64 %8915, 1
  store i64 %8917, i64* %RCX.i140, align 8
  %8918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8919 = zext i1 %8916 to i8
  store i8 %8919, i8* %8918, align 1
  %8920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8921 = trunc i64 %8917 to i32
  %8922 = and i32 %8921, 254
  %8923 = call i32 @llvm.ctpop.i32(i32 %8922)
  %8924 = trunc i32 %8923 to i8
  %8925 = and i8 %8924, 1
  %8926 = xor i8 %8925, 1
  store i8 %8926, i8* %8920, align 1
  %8927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8927, align 1
  %8928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8929 = icmp eq i64 %8917, 0
  %8930 = zext i1 %8929 to i8
  store i8 %8930, i8* %8928, align 1
  %8931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8932 = lshr i64 %8917, 63
  %8933 = trunc i64 %8932 to i8
  store i8 %8933, i8* %8931, align 1
  %8934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8934, align 1
  store %struct.Memory* %loadMem_4912ea, %struct.Memory** %MEMORY
  %loadMem_4912ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8936 = getelementptr inbounds %struct.GPR, %struct.GPR* %8935, i32 0, i32 33
  %8937 = getelementptr inbounds %struct.Reg, %struct.Reg* %8936, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %8937 to i64*
  %8938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8939 = getelementptr inbounds %struct.GPR, %struct.GPR* %8938, i32 0, i32 1
  %8940 = getelementptr inbounds %struct.Reg, %struct.Reg* %8939, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %8940 to i64*
  %8941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8942 = getelementptr inbounds %struct.GPR, %struct.GPR* %8941, i32 0, i32 5
  %8943 = getelementptr inbounds %struct.Reg, %struct.Reg* %8942, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %8943 to i64*
  %8944 = load i64, i64* %RAX.i137
  %8945 = load i64, i64* %RCX.i138
  %8946 = load i64, i64* %PC.i136
  %8947 = add i64 %8946, 3
  store i64 %8947, i64* %PC.i136
  %8948 = add i64 %8945, %8944
  store i64 %8948, i64* %RAX.i137, align 8
  %8949 = icmp ult i64 %8948, %8944
  %8950 = icmp ult i64 %8948, %8945
  %8951 = or i1 %8949, %8950
  %8952 = zext i1 %8951 to i8
  %8953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8952, i8* %8953, align 1
  %8954 = trunc i64 %8948 to i32
  %8955 = and i32 %8954, 255
  %8956 = call i32 @llvm.ctpop.i32(i32 %8955)
  %8957 = trunc i32 %8956 to i8
  %8958 = and i8 %8957, 1
  %8959 = xor i8 %8958, 1
  %8960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8959, i8* %8960, align 1
  %8961 = xor i64 %8945, %8944
  %8962 = xor i64 %8961, %8948
  %8963 = lshr i64 %8962, 4
  %8964 = trunc i64 %8963 to i8
  %8965 = and i8 %8964, 1
  %8966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8965, i8* %8966, align 1
  %8967 = icmp eq i64 %8948, 0
  %8968 = zext i1 %8967 to i8
  %8969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8968, i8* %8969, align 1
  %8970 = lshr i64 %8948, 63
  %8971 = trunc i64 %8970 to i8
  %8972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8971, i8* %8972, align 1
  %8973 = lshr i64 %8944, 63
  %8974 = lshr i64 %8945, 63
  %8975 = xor i64 %8970, %8973
  %8976 = xor i64 %8970, %8974
  %8977 = add i64 %8975, %8976
  %8978 = icmp eq i64 %8977, 2
  %8979 = zext i1 %8978 to i8
  %8980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8979, i8* %8980, align 1
  store %struct.Memory* %loadMem_4912ee, %struct.Memory** %MEMORY
  %loadMem_4912f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8982 = getelementptr inbounds %struct.GPR, %struct.GPR* %8981, i32 0, i32 33
  %8983 = getelementptr inbounds %struct.Reg, %struct.Reg* %8982, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %8983 to i64*
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8985 = getelementptr inbounds %struct.GPR, %struct.GPR* %8984, i32 0, i32 1
  %8986 = getelementptr inbounds %struct.Reg, %struct.Reg* %8985, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %8986 to i64*
  %8987 = load i64, i64* %RAX.i135
  %8988 = load i64, i64* %PC.i134
  %8989 = add i64 %8988, 4
  store i64 %8989, i64* %PC.i134
  %8990 = add i64 64, %8987
  store i64 %8990, i64* %RAX.i135, align 8
  %8991 = icmp ult i64 %8990, %8987
  %8992 = icmp ult i64 %8990, 64
  %8993 = or i1 %8991, %8992
  %8994 = zext i1 %8993 to i8
  %8995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8994, i8* %8995, align 1
  %8996 = trunc i64 %8990 to i32
  %8997 = and i32 %8996, 255
  %8998 = call i32 @llvm.ctpop.i32(i32 %8997)
  %8999 = trunc i32 %8998 to i8
  %9000 = and i8 %8999, 1
  %9001 = xor i8 %9000, 1
  %9002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9001, i8* %9002, align 1
  %9003 = xor i64 64, %8987
  %9004 = xor i64 %9003, %8990
  %9005 = lshr i64 %9004, 4
  %9006 = trunc i64 %9005 to i8
  %9007 = and i8 %9006, 1
  %9008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9007, i8* %9008, align 1
  %9009 = icmp eq i64 %8990, 0
  %9010 = zext i1 %9009 to i8
  %9011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9010, i8* %9011, align 1
  %9012 = lshr i64 %8990, 63
  %9013 = trunc i64 %9012 to i8
  %9014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9013, i8* %9014, align 1
  %9015 = lshr i64 %8987, 63
  %9016 = xor i64 %9012, %9015
  %9017 = add i64 %9016, %9012
  %9018 = icmp eq i64 %9017, 2
  %9019 = zext i1 %9018 to i8
  %9020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9019, i8* %9020, align 1
  store %struct.Memory* %loadMem_4912f1, %struct.Memory** %MEMORY
  %loadMem_4912f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9022 = getelementptr inbounds %struct.GPR, %struct.GPR* %9021, i32 0, i32 33
  %9023 = getelementptr inbounds %struct.Reg, %struct.Reg* %9022, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %9023 to i64*
  %9024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9025 = getelementptr inbounds %struct.GPR, %struct.GPR* %9024, i32 0, i32 5
  %9026 = getelementptr inbounds %struct.Reg, %struct.Reg* %9025, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %9026 to i64*
  %9027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9028 = getelementptr inbounds %struct.GPR, %struct.GPR* %9027, i32 0, i32 15
  %9029 = getelementptr inbounds %struct.Reg, %struct.Reg* %9028, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %9029 to i64*
  %9030 = load i64, i64* %RBP.i133
  %9031 = sub i64 %9030, 32
  %9032 = load i64, i64* %PC.i131
  %9033 = add i64 %9032, 4
  store i64 %9033, i64* %PC.i131
  %9034 = inttoptr i64 %9031 to i32*
  %9035 = load i32, i32* %9034
  %9036 = sext i32 %9035 to i64
  store i64 %9036, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_4912f5, %struct.Memory** %MEMORY
  %loadMem_4912f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9038 = getelementptr inbounds %struct.GPR, %struct.GPR* %9037, i32 0, i32 33
  %9039 = getelementptr inbounds %struct.Reg, %struct.Reg* %9038, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %9039 to i64*
  %9040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9041 = getelementptr inbounds %struct.GPR, %struct.GPR* %9040, i32 0, i32 5
  %9042 = getelementptr inbounds %struct.Reg, %struct.Reg* %9041, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %9042 to i64*
  %9043 = load i64, i64* %RCX.i130
  %9044 = load i64, i64* %PC.i129
  %9045 = add i64 %9044, 4
  store i64 %9045, i64* %PC.i129
  %9046 = shl i64 %9043, 3
  %9047 = icmp slt i64 %9046, 0
  %9048 = shl i64 %9046, 1
  store i64 %9048, i64* %RCX.i130, align 8
  %9049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9050 = zext i1 %9047 to i8
  store i8 %9050, i8* %9049, align 1
  %9051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9052 = trunc i64 %9048 to i32
  %9053 = and i32 %9052, 254
  %9054 = call i32 @llvm.ctpop.i32(i32 %9053)
  %9055 = trunc i32 %9054 to i8
  %9056 = and i8 %9055, 1
  %9057 = xor i8 %9056, 1
  store i8 %9057, i8* %9051, align 1
  %9058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9058, align 1
  %9059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9060 = icmp eq i64 %9048, 0
  %9061 = zext i1 %9060 to i8
  store i8 %9061, i8* %9059, align 1
  %9062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9063 = lshr i64 %9048, 63
  %9064 = trunc i64 %9063 to i8
  store i8 %9064, i8* %9062, align 1
  %9065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9065, align 1
  store %struct.Memory* %loadMem_4912f9, %struct.Memory** %MEMORY
  %loadMem_4912fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %9066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9067 = getelementptr inbounds %struct.GPR, %struct.GPR* %9066, i32 0, i32 33
  %9068 = getelementptr inbounds %struct.Reg, %struct.Reg* %9067, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %9068 to i64*
  %9069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9070 = getelementptr inbounds %struct.GPR, %struct.GPR* %9069, i32 0, i32 1
  %9071 = getelementptr inbounds %struct.Reg, %struct.Reg* %9070, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %9071 to i64*
  %9072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9073 = getelementptr inbounds %struct.GPR, %struct.GPR* %9072, i32 0, i32 5
  %9074 = getelementptr inbounds %struct.Reg, %struct.Reg* %9073, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %9074 to i64*
  %9075 = load i64, i64* %RAX.i127
  %9076 = load i64, i64* %RCX.i128
  %9077 = load i64, i64* %PC.i126
  %9078 = add i64 %9077, 3
  store i64 %9078, i64* %PC.i126
  %9079 = add i64 %9076, %9075
  store i64 %9079, i64* %RAX.i127, align 8
  %9080 = icmp ult i64 %9079, %9075
  %9081 = icmp ult i64 %9079, %9076
  %9082 = or i1 %9080, %9081
  %9083 = zext i1 %9082 to i8
  %9084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9083, i8* %9084, align 1
  %9085 = trunc i64 %9079 to i32
  %9086 = and i32 %9085, 255
  %9087 = call i32 @llvm.ctpop.i32(i32 %9086)
  %9088 = trunc i32 %9087 to i8
  %9089 = and i8 %9088, 1
  %9090 = xor i8 %9089, 1
  %9091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9090, i8* %9091, align 1
  %9092 = xor i64 %9076, %9075
  %9093 = xor i64 %9092, %9079
  %9094 = lshr i64 %9093, 4
  %9095 = trunc i64 %9094 to i8
  %9096 = and i8 %9095, 1
  %9097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9096, i8* %9097, align 1
  %9098 = icmp eq i64 %9079, 0
  %9099 = zext i1 %9098 to i8
  %9100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9099, i8* %9100, align 1
  %9101 = lshr i64 %9079, 63
  %9102 = trunc i64 %9101 to i8
  %9103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9102, i8* %9103, align 1
  %9104 = lshr i64 %9075, 63
  %9105 = lshr i64 %9076, 63
  %9106 = xor i64 %9101, %9104
  %9107 = xor i64 %9101, %9105
  %9108 = add i64 %9106, %9107
  %9109 = icmp eq i64 %9108, 2
  %9110 = zext i1 %9109 to i8
  %9111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9110, i8* %9111, align 1
  store %struct.Memory* %loadMem_4912fd, %struct.Memory** %MEMORY
  %loadMem_491300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9113 = getelementptr inbounds %struct.GPR, %struct.GPR* %9112, i32 0, i32 33
  %9114 = getelementptr inbounds %struct.Reg, %struct.Reg* %9113, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %9114 to i64*
  %9115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9116 = getelementptr inbounds %struct.GPR, %struct.GPR* %9115, i32 0, i32 5
  %9117 = getelementptr inbounds %struct.Reg, %struct.Reg* %9116, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %9117 to i64*
  %9118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9119 = getelementptr inbounds %struct.GPR, %struct.GPR* %9118, i32 0, i32 15
  %9120 = getelementptr inbounds %struct.Reg, %struct.Reg* %9119, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %9120 to i64*
  %9121 = load i64, i64* %RBP.i125
  %9122 = sub i64 %9121, 36
  %9123 = load i64, i64* %PC.i123
  %9124 = add i64 %9123, 4
  store i64 %9124, i64* %PC.i123
  %9125 = inttoptr i64 %9122 to i32*
  %9126 = load i32, i32* %9125
  %9127 = sext i32 %9126 to i64
  store i64 %9127, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_491300, %struct.Memory** %MEMORY
  %loadMem_491304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9129 = getelementptr inbounds %struct.GPR, %struct.GPR* %9128, i32 0, i32 33
  %9130 = getelementptr inbounds %struct.Reg, %struct.Reg* %9129, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %9130 to i64*
  %9131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9132 = getelementptr inbounds %struct.GPR, %struct.GPR* %9131, i32 0, i32 11
  %9133 = getelementptr inbounds %struct.Reg, %struct.Reg* %9132, i32 0, i32 0
  %DI.i = bitcast %union.anon* %9133 to i16*
  %9134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9135 = getelementptr inbounds %struct.GPR, %struct.GPR* %9134, i32 0, i32 1
  %9136 = getelementptr inbounds %struct.Reg, %struct.Reg* %9135, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %9136 to i64*
  %9137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9138 = getelementptr inbounds %struct.GPR, %struct.GPR* %9137, i32 0, i32 5
  %9139 = getelementptr inbounds %struct.Reg, %struct.Reg* %9138, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %9139 to i64*
  %9140 = load i64, i64* %RAX.i121
  %9141 = load i64, i64* %RCX.i122
  %9142 = mul i64 %9141, 4
  %9143 = add i64 %9140, 2
  %9144 = add i64 %9143, %9142
  %9145 = load i16, i16* %DI.i
  %9146 = zext i16 %9145 to i64
  %9147 = load i64, i64* %PC.i120
  %9148 = add i64 %9147, 5
  store i64 %9148, i64* %PC.i120
  %9149 = inttoptr i64 %9144 to i16*
  store i16 %9145, i16* %9149
  store %struct.Memory* %loadMem_491304, %struct.Memory** %MEMORY
  %loadMem_491309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9151 = getelementptr inbounds %struct.GPR, %struct.GPR* %9150, i32 0, i32 33
  %9152 = getelementptr inbounds %struct.Reg, %struct.Reg* %9151, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %9152 to i64*
  %9153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9154 = getelementptr inbounds %struct.GPR, %struct.GPR* %9153, i32 0, i32 1
  %9155 = getelementptr inbounds %struct.Reg, %struct.Reg* %9154, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %9155 to i64*
  %9156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9157 = getelementptr inbounds %struct.GPR, %struct.GPR* %9156, i32 0, i32 15
  %9158 = getelementptr inbounds %struct.Reg, %struct.Reg* %9157, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %9158 to i64*
  %9159 = load i64, i64* %RBP.i119
  %9160 = sub i64 %9159, 32
  %9161 = load i64, i64* %PC.i117
  %9162 = add i64 %9161, 3
  store i64 %9162, i64* %PC.i117
  %9163 = inttoptr i64 %9160 to i32*
  %9164 = load i32, i32* %9163
  %9165 = zext i32 %9164 to i64
  store i64 %9165, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_491309, %struct.Memory** %MEMORY
  %loadMem_49130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9167 = getelementptr inbounds %struct.GPR, %struct.GPR* %9166, i32 0, i32 33
  %9168 = getelementptr inbounds %struct.Reg, %struct.Reg* %9167, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %9168 to i64*
  %9169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9170 = getelementptr inbounds %struct.GPR, %struct.GPR* %9169, i32 0, i32 1
  %9171 = getelementptr inbounds %struct.Reg, %struct.Reg* %9170, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %9171 to i64*
  %9172 = load i64, i64* %RAX.i116
  %9173 = load i64, i64* %PC.i115
  %9174 = add i64 %9173, 3
  store i64 %9174, i64* %PC.i115
  %9175 = trunc i64 %9172 to i32
  %9176 = add i32 1, %9175
  %9177 = zext i32 %9176 to i64
  store i64 %9177, i64* %RAX.i116, align 8
  %9178 = icmp ult i32 %9176, %9175
  %9179 = icmp ult i32 %9176, 1
  %9180 = or i1 %9178, %9179
  %9181 = zext i1 %9180 to i8
  %9182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9181, i8* %9182, align 1
  %9183 = and i32 %9176, 255
  %9184 = call i32 @llvm.ctpop.i32(i32 %9183)
  %9185 = trunc i32 %9184 to i8
  %9186 = and i8 %9185, 1
  %9187 = xor i8 %9186, 1
  %9188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9187, i8* %9188, align 1
  %9189 = xor i64 1, %9172
  %9190 = trunc i64 %9189 to i32
  %9191 = xor i32 %9190, %9176
  %9192 = lshr i32 %9191, 4
  %9193 = trunc i32 %9192 to i8
  %9194 = and i8 %9193, 1
  %9195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9194, i8* %9195, align 1
  %9196 = icmp eq i32 %9176, 0
  %9197 = zext i1 %9196 to i8
  %9198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9197, i8* %9198, align 1
  %9199 = lshr i32 %9176, 31
  %9200 = trunc i32 %9199 to i8
  %9201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9200, i8* %9201, align 1
  %9202 = lshr i32 %9175, 31
  %9203 = xor i32 %9199, %9202
  %9204 = add i32 %9203, %9199
  %9205 = icmp eq i32 %9204, 2
  %9206 = zext i1 %9205 to i8
  %9207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9206, i8* %9207, align 1
  store %struct.Memory* %loadMem_49130c, %struct.Memory** %MEMORY
  %loadMem_49130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9209 = getelementptr inbounds %struct.GPR, %struct.GPR* %9208, i32 0, i32 33
  %9210 = getelementptr inbounds %struct.Reg, %struct.Reg* %9209, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %9210 to i64*
  %9211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9212 = getelementptr inbounds %struct.GPR, %struct.GPR* %9211, i32 0, i32 1
  %9213 = getelementptr inbounds %struct.Reg, %struct.Reg* %9212, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %9213 to i32*
  %9214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9215 = getelementptr inbounds %struct.GPR, %struct.GPR* %9214, i32 0, i32 15
  %9216 = getelementptr inbounds %struct.Reg, %struct.Reg* %9215, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %9216 to i64*
  %9217 = load i64, i64* %RBP.i114
  %9218 = sub i64 %9217, 32
  %9219 = load i32, i32* %EAX.i113
  %9220 = zext i32 %9219 to i64
  %9221 = load i64, i64* %PC.i112
  %9222 = add i64 %9221, 3
  store i64 %9222, i64* %PC.i112
  %9223 = inttoptr i64 %9218 to i32*
  store i32 %9219, i32* %9223
  store %struct.Memory* %loadMem_49130f, %struct.Memory** %MEMORY
  %loadMem_491312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9225 = getelementptr inbounds %struct.GPR, %struct.GPR* %9224, i32 0, i32 33
  %9226 = getelementptr inbounds %struct.Reg, %struct.Reg* %9225, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %9226 to i64*
  %9227 = load i64, i64* %PC.i111
  %9228 = add i64 %9227, -359
  %9229 = load i64, i64* %PC.i111
  %9230 = add i64 %9229, 5
  store i64 %9230, i64* %PC.i111
  %9231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9228, i64* %9231, align 8
  store %struct.Memory* %loadMem_491312, %struct.Memory** %MEMORY
  br label %block_.L_4911ab

block_.L_491317:                                  ; preds = %block_.L_4911ab
  %loadMem_491317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9233 = getelementptr inbounds %struct.GPR, %struct.GPR* %9232, i32 0, i32 33
  %9234 = getelementptr inbounds %struct.Reg, %struct.Reg* %9233, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %9234 to i64*
  %9235 = load i64, i64* %PC.i110
  %9236 = add i64 %9235, 5
  %9237 = load i64, i64* %PC.i110
  %9238 = add i64 %9237, 5
  store i64 %9238, i64* %PC.i110
  %9239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9236, i64* %9239, align 8
  store %struct.Memory* %loadMem_491317, %struct.Memory** %MEMORY
  br label %block_.L_49131c

block_.L_49131c:                                  ; preds = %block_.L_491317
  %loadMem_49131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9241 = getelementptr inbounds %struct.GPR, %struct.GPR* %9240, i32 0, i32 33
  %9242 = getelementptr inbounds %struct.Reg, %struct.Reg* %9241, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %9242 to i64*
  %9243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9244 = getelementptr inbounds %struct.GPR, %struct.GPR* %9243, i32 0, i32 1
  %9245 = getelementptr inbounds %struct.Reg, %struct.Reg* %9244, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %9245 to i64*
  %9246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9247 = getelementptr inbounds %struct.GPR, %struct.GPR* %9246, i32 0, i32 15
  %9248 = getelementptr inbounds %struct.Reg, %struct.Reg* %9247, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %9248 to i64*
  %9249 = load i64, i64* %RBP.i109
  %9250 = sub i64 %9249, 36
  %9251 = load i64, i64* %PC.i107
  %9252 = add i64 %9251, 3
  store i64 %9252, i64* %PC.i107
  %9253 = inttoptr i64 %9250 to i32*
  %9254 = load i32, i32* %9253
  %9255 = zext i32 %9254 to i64
  store i64 %9255, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_49131c, %struct.Memory** %MEMORY
  %loadMem_49131f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9257 = getelementptr inbounds %struct.GPR, %struct.GPR* %9256, i32 0, i32 33
  %9258 = getelementptr inbounds %struct.Reg, %struct.Reg* %9257, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %9258 to i64*
  %9259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9260 = getelementptr inbounds %struct.GPR, %struct.GPR* %9259, i32 0, i32 1
  %9261 = getelementptr inbounds %struct.Reg, %struct.Reg* %9260, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %9261 to i64*
  %9262 = load i64, i64* %RAX.i106
  %9263 = load i64, i64* %PC.i105
  %9264 = add i64 %9263, 3
  store i64 %9264, i64* %PC.i105
  %9265 = trunc i64 %9262 to i32
  %9266 = add i32 1, %9265
  %9267 = zext i32 %9266 to i64
  store i64 %9267, i64* %RAX.i106, align 8
  %9268 = icmp ult i32 %9266, %9265
  %9269 = icmp ult i32 %9266, 1
  %9270 = or i1 %9268, %9269
  %9271 = zext i1 %9270 to i8
  %9272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9271, i8* %9272, align 1
  %9273 = and i32 %9266, 255
  %9274 = call i32 @llvm.ctpop.i32(i32 %9273)
  %9275 = trunc i32 %9274 to i8
  %9276 = and i8 %9275, 1
  %9277 = xor i8 %9276, 1
  %9278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9277, i8* %9278, align 1
  %9279 = xor i64 1, %9262
  %9280 = trunc i64 %9279 to i32
  %9281 = xor i32 %9280, %9266
  %9282 = lshr i32 %9281, 4
  %9283 = trunc i32 %9282 to i8
  %9284 = and i8 %9283, 1
  %9285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9284, i8* %9285, align 1
  %9286 = icmp eq i32 %9266, 0
  %9287 = zext i1 %9286 to i8
  %9288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9287, i8* %9288, align 1
  %9289 = lshr i32 %9266, 31
  %9290 = trunc i32 %9289 to i8
  %9291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9290, i8* %9291, align 1
  %9292 = lshr i32 %9265, 31
  %9293 = xor i32 %9289, %9292
  %9294 = add i32 %9293, %9289
  %9295 = icmp eq i32 %9294, 2
  %9296 = zext i1 %9295 to i8
  %9297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9296, i8* %9297, align 1
  store %struct.Memory* %loadMem_49131f, %struct.Memory** %MEMORY
  %loadMem_491322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9299 = getelementptr inbounds %struct.GPR, %struct.GPR* %9298, i32 0, i32 33
  %9300 = getelementptr inbounds %struct.Reg, %struct.Reg* %9299, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %9300 to i64*
  %9301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9302 = getelementptr inbounds %struct.GPR, %struct.GPR* %9301, i32 0, i32 1
  %9303 = getelementptr inbounds %struct.Reg, %struct.Reg* %9302, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %9303 to i32*
  %9304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9305 = getelementptr inbounds %struct.GPR, %struct.GPR* %9304, i32 0, i32 15
  %9306 = getelementptr inbounds %struct.Reg, %struct.Reg* %9305, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %9306 to i64*
  %9307 = load i64, i64* %RBP.i104
  %9308 = sub i64 %9307, 36
  %9309 = load i32, i32* %EAX.i103
  %9310 = zext i32 %9309 to i64
  %9311 = load i64, i64* %PC.i102
  %9312 = add i64 %9311, 3
  store i64 %9312, i64* %PC.i102
  %9313 = inttoptr i64 %9308 to i32*
  store i32 %9309, i32* %9313
  store %struct.Memory* %loadMem_491322, %struct.Memory** %MEMORY
  %loadMem_491325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9315 = getelementptr inbounds %struct.GPR, %struct.GPR* %9314, i32 0, i32 33
  %9316 = getelementptr inbounds %struct.Reg, %struct.Reg* %9315, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %9316 to i64*
  %9317 = load i64, i64* %PC.i101
  %9318 = add i64 %9317, -396
  %9319 = load i64, i64* %PC.i101
  %9320 = add i64 %9319, 5
  store i64 %9320, i64* %PC.i101
  %9321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9318, i64* %9321, align 8
  store %struct.Memory* %loadMem_491325, %struct.Memory** %MEMORY
  br label %block_.L_491199

block_.L_49132a:                                  ; preds = %block_.L_491199
  %loadMem_49132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9323 = getelementptr inbounds %struct.GPR, %struct.GPR* %9322, i32 0, i32 33
  %9324 = getelementptr inbounds %struct.Reg, %struct.Reg* %9323, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %9324 to i64*
  %9325 = load i64, i64* %PC.i100
  %9326 = add i64 %9325, 165
  %9327 = load i64, i64* %PC.i100
  %9328 = add i64 %9327, 5
  store i64 %9328, i64* %PC.i100
  %9329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9326, i64* %9329, align 8
  store %struct.Memory* %loadMem_49132a, %struct.Memory** %MEMORY
  br label %block_.L_4913cf

block_.L_49132f:                                  ; preds = %block_491189
  %loadMem_49132f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9331 = getelementptr inbounds %struct.GPR, %struct.GPR* %9330, i32 0, i32 33
  %9332 = getelementptr inbounds %struct.Reg, %struct.Reg* %9331, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %9332 to i64*
  %9333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9334 = getelementptr inbounds %struct.GPR, %struct.GPR* %9333, i32 0, i32 1
  %9335 = getelementptr inbounds %struct.Reg, %struct.Reg* %9334, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %9335 to i64*
  %9336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9337 = getelementptr inbounds %struct.GPR, %struct.GPR* %9336, i32 0, i32 15
  %9338 = getelementptr inbounds %struct.Reg, %struct.Reg* %9337, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %9338 to i64*
  %9339 = load i64, i64* %RBP.i99
  %9340 = sub i64 %9339, 44
  %9341 = load i64, i64* %PC.i97
  %9342 = add i64 %9341, 3
  store i64 %9342, i64* %PC.i97
  %9343 = inttoptr i64 %9340 to i32*
  %9344 = load i32, i32* %9343
  %9345 = zext i32 %9344 to i64
  store i64 %9345, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_49132f, %struct.Memory** %MEMORY
  %loadMem_491332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9347 = getelementptr inbounds %struct.GPR, %struct.GPR* %9346, i32 0, i32 33
  %9348 = getelementptr inbounds %struct.Reg, %struct.Reg* %9347, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %9348 to i64*
  %9349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9350 = getelementptr inbounds %struct.GPR, %struct.GPR* %9349, i32 0, i32 1
  %9351 = getelementptr inbounds %struct.Reg, %struct.Reg* %9350, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %9351 to i32*
  %9352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9353 = getelementptr inbounds %struct.GPR, %struct.GPR* %9352, i32 0, i32 15
  %9354 = getelementptr inbounds %struct.Reg, %struct.Reg* %9353, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %9354 to i64*
  %9355 = load i64, i64* %RBP.i96
  %9356 = sub i64 %9355, 36
  %9357 = load i32, i32* %EAX.i95
  %9358 = zext i32 %9357 to i64
  %9359 = load i64, i64* %PC.i94
  %9360 = add i64 %9359, 3
  store i64 %9360, i64* %PC.i94
  %9361 = inttoptr i64 %9356 to i32*
  store i32 %9357, i32* %9361
  store %struct.Memory* %loadMem_491332, %struct.Memory** %MEMORY
  br label %block_.L_491335

block_.L_491335:                                  ; preds = %block_.L_4913bc, %block_.L_49132f
  %loadMem_491335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9363 = getelementptr inbounds %struct.GPR, %struct.GPR* %9362, i32 0, i32 33
  %9364 = getelementptr inbounds %struct.Reg, %struct.Reg* %9363, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %9364 to i64*
  %9365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9366 = getelementptr inbounds %struct.GPR, %struct.GPR* %9365, i32 0, i32 1
  %9367 = getelementptr inbounds %struct.Reg, %struct.Reg* %9366, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %9367 to i64*
  %9368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9369 = getelementptr inbounds %struct.GPR, %struct.GPR* %9368, i32 0, i32 15
  %9370 = getelementptr inbounds %struct.Reg, %struct.Reg* %9369, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %9370 to i64*
  %9371 = load i64, i64* %RBP.i93
  %9372 = sub i64 %9371, 36
  %9373 = load i64, i64* %PC.i91
  %9374 = add i64 %9373, 3
  store i64 %9374, i64* %PC.i91
  %9375 = inttoptr i64 %9372 to i32*
  %9376 = load i32, i32* %9375
  %9377 = zext i32 %9376 to i64
  store i64 %9377, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_491335, %struct.Memory** %MEMORY
  %loadMem_491338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9379 = getelementptr inbounds %struct.GPR, %struct.GPR* %9378, i32 0, i32 33
  %9380 = getelementptr inbounds %struct.Reg, %struct.Reg* %9379, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %9380 to i64*
  %9381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9382 = getelementptr inbounds %struct.GPR, %struct.GPR* %9381, i32 0, i32 1
  %9383 = getelementptr inbounds %struct.Reg, %struct.Reg* %9382, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %9383 to i32*
  %9384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9385 = getelementptr inbounds %struct.GPR, %struct.GPR* %9384, i32 0, i32 15
  %9386 = getelementptr inbounds %struct.Reg, %struct.Reg* %9385, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %9386 to i64*
  %9387 = load i32, i32* %EAX.i89
  %9388 = zext i32 %9387 to i64
  %9389 = load i64, i64* %RBP.i90
  %9390 = sub i64 %9389, 52
  %9391 = load i64, i64* %PC.i88
  %9392 = add i64 %9391, 3
  store i64 %9392, i64* %PC.i88
  %9393 = inttoptr i64 %9390 to i32*
  %9394 = load i32, i32* %9393
  %9395 = sub i32 %9387, %9394
  %9396 = icmp ult i32 %9387, %9394
  %9397 = zext i1 %9396 to i8
  %9398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9397, i8* %9398, align 1
  %9399 = and i32 %9395, 255
  %9400 = call i32 @llvm.ctpop.i32(i32 %9399)
  %9401 = trunc i32 %9400 to i8
  %9402 = and i8 %9401, 1
  %9403 = xor i8 %9402, 1
  %9404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9403, i8* %9404, align 1
  %9405 = xor i32 %9394, %9387
  %9406 = xor i32 %9405, %9395
  %9407 = lshr i32 %9406, 4
  %9408 = trunc i32 %9407 to i8
  %9409 = and i8 %9408, 1
  %9410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9409, i8* %9410, align 1
  %9411 = icmp eq i32 %9395, 0
  %9412 = zext i1 %9411 to i8
  %9413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9412, i8* %9413, align 1
  %9414 = lshr i32 %9395, 31
  %9415 = trunc i32 %9414 to i8
  %9416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9415, i8* %9416, align 1
  %9417 = lshr i32 %9387, 31
  %9418 = lshr i32 %9394, 31
  %9419 = xor i32 %9418, %9417
  %9420 = xor i32 %9414, %9417
  %9421 = add i32 %9420, %9419
  %9422 = icmp eq i32 %9421, 2
  %9423 = zext i1 %9422 to i8
  %9424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9423, i8* %9424, align 1
  store %struct.Memory* %loadMem_491338, %struct.Memory** %MEMORY
  %loadMem_49133b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9426 = getelementptr inbounds %struct.GPR, %struct.GPR* %9425, i32 0, i32 33
  %9427 = getelementptr inbounds %struct.Reg, %struct.Reg* %9426, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %9427 to i64*
  %9428 = load i64, i64* %PC.i87
  %9429 = add i64 %9428, 143
  %9430 = load i64, i64* %PC.i87
  %9431 = add i64 %9430, 6
  %9432 = load i64, i64* %PC.i87
  %9433 = add i64 %9432, 6
  store i64 %9433, i64* %PC.i87
  %9434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9435 = load i8, i8* %9434, align 1
  %9436 = icmp ne i8 %9435, 0
  %9437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9438 = load i8, i8* %9437, align 1
  %9439 = icmp ne i8 %9438, 0
  %9440 = xor i1 %9436, %9439
  %9441 = xor i1 %9440, true
  %9442 = zext i1 %9441 to i8
  store i8 %9442, i8* %BRANCH_TAKEN, align 1
  %9443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9444 = select i1 %9440, i64 %9431, i64 %9429
  store i64 %9444, i64* %9443, align 8
  store %struct.Memory* %loadMem_49133b, %struct.Memory** %MEMORY
  %loadBr_49133b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49133b = icmp eq i8 %loadBr_49133b, 1
  br i1 %cmpBr_49133b, label %block_.L_4913ca, label %block_491341

block_491341:                                     ; preds = %block_.L_491335
  %loadMem_491341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9446 = getelementptr inbounds %struct.GPR, %struct.GPR* %9445, i32 0, i32 33
  %9447 = getelementptr inbounds %struct.Reg, %struct.Reg* %9446, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %9447 to i64*
  %9448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9449 = getelementptr inbounds %struct.GPR, %struct.GPR* %9448, i32 0, i32 1
  %9450 = getelementptr inbounds %struct.Reg, %struct.Reg* %9449, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %9450 to i64*
  %9451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9452 = getelementptr inbounds %struct.GPR, %struct.GPR* %9451, i32 0, i32 15
  %9453 = getelementptr inbounds %struct.Reg, %struct.Reg* %9452, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %9453 to i64*
  %9454 = load i64, i64* %RBP.i86
  %9455 = sub i64 %9454, 40
  %9456 = load i64, i64* %PC.i84
  %9457 = add i64 %9456, 3
  store i64 %9457, i64* %PC.i84
  %9458 = inttoptr i64 %9455 to i32*
  %9459 = load i32, i32* %9458
  %9460 = zext i32 %9459 to i64
  store i64 %9460, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_491341, %struct.Memory** %MEMORY
  %loadMem_491344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9462 = getelementptr inbounds %struct.GPR, %struct.GPR* %9461, i32 0, i32 33
  %9463 = getelementptr inbounds %struct.Reg, %struct.Reg* %9462, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %9463 to i64*
  %9464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9465 = getelementptr inbounds %struct.GPR, %struct.GPR* %9464, i32 0, i32 1
  %9466 = getelementptr inbounds %struct.Reg, %struct.Reg* %9465, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %9466 to i32*
  %9467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9468 = getelementptr inbounds %struct.GPR, %struct.GPR* %9467, i32 0, i32 15
  %9469 = getelementptr inbounds %struct.Reg, %struct.Reg* %9468, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %9469 to i64*
  %9470 = load i64, i64* %RBP.i83
  %9471 = sub i64 %9470, 32
  %9472 = load i32, i32* %EAX.i82
  %9473 = zext i32 %9472 to i64
  %9474 = load i64, i64* %PC.i81
  %9475 = add i64 %9474, 3
  store i64 %9475, i64* %PC.i81
  %9476 = inttoptr i64 %9471 to i32*
  store i32 %9472, i32* %9476
  store %struct.Memory* %loadMem_491344, %struct.Memory** %MEMORY
  br label %block_.L_491347

block_.L_491347:                                  ; preds = %block_491353, %block_491341
  %loadMem_491347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9478 = getelementptr inbounds %struct.GPR, %struct.GPR* %9477, i32 0, i32 33
  %9479 = getelementptr inbounds %struct.Reg, %struct.Reg* %9478, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %9479 to i64*
  %9480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9481 = getelementptr inbounds %struct.GPR, %struct.GPR* %9480, i32 0, i32 1
  %9482 = getelementptr inbounds %struct.Reg, %struct.Reg* %9481, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %9482 to i64*
  %9483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9484 = getelementptr inbounds %struct.GPR, %struct.GPR* %9483, i32 0, i32 15
  %9485 = getelementptr inbounds %struct.Reg, %struct.Reg* %9484, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %9485 to i64*
  %9486 = load i64, i64* %RBP.i80
  %9487 = sub i64 %9486, 32
  %9488 = load i64, i64* %PC.i78
  %9489 = add i64 %9488, 3
  store i64 %9489, i64* %PC.i78
  %9490 = inttoptr i64 %9487 to i32*
  %9491 = load i32, i32* %9490
  %9492 = zext i32 %9491 to i64
  store i64 %9492, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_491347, %struct.Memory** %MEMORY
  %loadMem_49134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9494 = getelementptr inbounds %struct.GPR, %struct.GPR* %9493, i32 0, i32 33
  %9495 = getelementptr inbounds %struct.Reg, %struct.Reg* %9494, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %9495 to i64*
  %9496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9497 = getelementptr inbounds %struct.GPR, %struct.GPR* %9496, i32 0, i32 1
  %9498 = getelementptr inbounds %struct.Reg, %struct.Reg* %9497, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %9498 to i32*
  %9499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9500 = getelementptr inbounds %struct.GPR, %struct.GPR* %9499, i32 0, i32 15
  %9501 = getelementptr inbounds %struct.Reg, %struct.Reg* %9500, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %9501 to i64*
  %9502 = load i32, i32* %EAX.i76
  %9503 = zext i32 %9502 to i64
  %9504 = load i64, i64* %RBP.i77
  %9505 = sub i64 %9504, 48
  %9506 = load i64, i64* %PC.i75
  %9507 = add i64 %9506, 3
  store i64 %9507, i64* %PC.i75
  %9508 = inttoptr i64 %9505 to i32*
  %9509 = load i32, i32* %9508
  %9510 = sub i32 %9502, %9509
  %9511 = icmp ult i32 %9502, %9509
  %9512 = zext i1 %9511 to i8
  %9513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9512, i8* %9513, align 1
  %9514 = and i32 %9510, 255
  %9515 = call i32 @llvm.ctpop.i32(i32 %9514)
  %9516 = trunc i32 %9515 to i8
  %9517 = and i8 %9516, 1
  %9518 = xor i8 %9517, 1
  %9519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9518, i8* %9519, align 1
  %9520 = xor i32 %9509, %9502
  %9521 = xor i32 %9520, %9510
  %9522 = lshr i32 %9521, 4
  %9523 = trunc i32 %9522 to i8
  %9524 = and i8 %9523, 1
  %9525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9524, i8* %9525, align 1
  %9526 = icmp eq i32 %9510, 0
  %9527 = zext i1 %9526 to i8
  %9528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9527, i8* %9528, align 1
  %9529 = lshr i32 %9510, 31
  %9530 = trunc i32 %9529 to i8
  %9531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9530, i8* %9531, align 1
  %9532 = lshr i32 %9502, 31
  %9533 = lshr i32 %9509, 31
  %9534 = xor i32 %9533, %9532
  %9535 = xor i32 %9529, %9532
  %9536 = add i32 %9535, %9534
  %9537 = icmp eq i32 %9536, 2
  %9538 = zext i1 %9537 to i8
  %9539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9538, i8* %9539, align 1
  store %struct.Memory* %loadMem_49134a, %struct.Memory** %MEMORY
  %loadMem_49134d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9541 = getelementptr inbounds %struct.GPR, %struct.GPR* %9540, i32 0, i32 33
  %9542 = getelementptr inbounds %struct.Reg, %struct.Reg* %9541, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %9542 to i64*
  %9543 = load i64, i64* %PC.i74
  %9544 = add i64 %9543, 106
  %9545 = load i64, i64* %PC.i74
  %9546 = add i64 %9545, 6
  %9547 = load i64, i64* %PC.i74
  %9548 = add i64 %9547, 6
  store i64 %9548, i64* %PC.i74
  %9549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9550 = load i8, i8* %9549, align 1
  %9551 = icmp ne i8 %9550, 0
  %9552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9553 = load i8, i8* %9552, align 1
  %9554 = icmp ne i8 %9553, 0
  %9555 = xor i1 %9551, %9554
  %9556 = xor i1 %9555, true
  %9557 = zext i1 %9556 to i8
  store i8 %9557, i8* %BRANCH_TAKEN, align 1
  %9558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9559 = select i1 %9555, i64 %9546, i64 %9544
  store i64 %9559, i64* %9558, align 8
  store %struct.Memory* %loadMem_49134d, %struct.Memory** %MEMORY
  %loadBr_49134d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49134d = icmp eq i8 %loadBr_49134d, 1
  br i1 %cmpBr_49134d, label %block_.L_4913b7, label %block_491353

block_491353:                                     ; preds = %block_.L_491347
  %loadMem_491353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9561 = getelementptr inbounds %struct.GPR, %struct.GPR* %9560, i32 0, i32 33
  %9562 = getelementptr inbounds %struct.Reg, %struct.Reg* %9561, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %9562 to i64*
  %9563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9564 = getelementptr inbounds %struct.GPR, %struct.GPR* %9563, i32 0, i32 1
  %9565 = getelementptr inbounds %struct.Reg, %struct.Reg* %9564, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %9565 to i64*
  %9566 = load i64, i64* %PC.i72
  %9567 = add i64 %9566, 10
  store i64 %9567, i64* %PC.i72
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_491353, %struct.Memory** %MEMORY
  %loadMem_49135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9569 = getelementptr inbounds %struct.GPR, %struct.GPR* %9568, i32 0, i32 33
  %9570 = getelementptr inbounds %struct.Reg, %struct.Reg* %9569, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %9570 to i64*
  %9571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9572 = getelementptr inbounds %struct.GPR, %struct.GPR* %9571, i32 0, i32 5
  %9573 = getelementptr inbounds %struct.Reg, %struct.Reg* %9572, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %9573 to i64*
  %9574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9575 = getelementptr inbounds %struct.GPR, %struct.GPR* %9574, i32 0, i32 15
  %9576 = getelementptr inbounds %struct.Reg, %struct.Reg* %9575, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %9576 to i64*
  %9577 = load i64, i64* %RBP.i71
  %9578 = sub i64 %9577, 4
  %9579 = load i64, i64* %PC.i69
  %9580 = add i64 %9579, 4
  store i64 %9580, i64* %PC.i69
  %9581 = inttoptr i64 %9578 to i32*
  %9582 = load i32, i32* %9581
  %9583 = sext i32 %9582 to i64
  store i64 %9583, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_49135d, %struct.Memory** %MEMORY
  %loadMem_491361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9585 = getelementptr inbounds %struct.GPR, %struct.GPR* %9584, i32 0, i32 33
  %9586 = getelementptr inbounds %struct.Reg, %struct.Reg* %9585, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %9586 to i64*
  %9587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9588 = getelementptr inbounds %struct.GPR, %struct.GPR* %9587, i32 0, i32 5
  %9589 = getelementptr inbounds %struct.Reg, %struct.Reg* %9588, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %9589 to i64*
  %9590 = load i64, i64* %RCX.i68
  %9591 = load i64, i64* %PC.i67
  %9592 = add i64 %9591, 4
  store i64 %9592, i64* %PC.i67
  %9593 = shl i64 %9590, 6
  %9594 = icmp slt i64 %9593, 0
  %9595 = shl i64 %9593, 1
  store i64 %9595, i64* %RCX.i68, align 8
  %9596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9597 = zext i1 %9594 to i8
  store i8 %9597, i8* %9596, align 1
  %9598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9599 = trunc i64 %9595 to i32
  %9600 = and i32 %9599, 254
  %9601 = call i32 @llvm.ctpop.i32(i32 %9600)
  %9602 = trunc i32 %9601 to i8
  %9603 = and i8 %9602, 1
  %9604 = xor i8 %9603, 1
  store i8 %9604, i8* %9598, align 1
  %9605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9605, align 1
  %9606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9607 = icmp eq i64 %9595, 0
  %9608 = zext i1 %9607 to i8
  store i8 %9608, i8* %9606, align 1
  %9609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9610 = lshr i64 %9595, 63
  %9611 = trunc i64 %9610 to i8
  store i8 %9611, i8* %9609, align 1
  %9612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9612, align 1
  store %struct.Memory* %loadMem_491361, %struct.Memory** %MEMORY
  %loadMem_491365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9614 = getelementptr inbounds %struct.GPR, %struct.GPR* %9613, i32 0, i32 33
  %9615 = getelementptr inbounds %struct.Reg, %struct.Reg* %9614, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %9615 to i64*
  %9616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9617 = getelementptr inbounds %struct.GPR, %struct.GPR* %9616, i32 0, i32 1
  %9618 = getelementptr inbounds %struct.Reg, %struct.Reg* %9617, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %9618 to i64*
  %9619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9620 = getelementptr inbounds %struct.GPR, %struct.GPR* %9619, i32 0, i32 7
  %9621 = getelementptr inbounds %struct.Reg, %struct.Reg* %9620, i32 0, i32 0
  %RDX.i66 = bitcast %union.anon* %9621 to i64*
  %9622 = load i64, i64* %RAX.i65
  %9623 = load i64, i64* %PC.i64
  %9624 = add i64 %9623, 3
  store i64 %9624, i64* %PC.i64
  store i64 %9622, i64* %RDX.i66, align 8
  store %struct.Memory* %loadMem_491365, %struct.Memory** %MEMORY
  %loadMem_491368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9626 = getelementptr inbounds %struct.GPR, %struct.GPR* %9625, i32 0, i32 33
  %9627 = getelementptr inbounds %struct.Reg, %struct.Reg* %9626, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %9627 to i64*
  %9628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9629 = getelementptr inbounds %struct.GPR, %struct.GPR* %9628, i32 0, i32 5
  %9630 = getelementptr inbounds %struct.Reg, %struct.Reg* %9629, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %9630 to i64*
  %9631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9632 = getelementptr inbounds %struct.GPR, %struct.GPR* %9631, i32 0, i32 7
  %9633 = getelementptr inbounds %struct.Reg, %struct.Reg* %9632, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %9633 to i64*
  %9634 = load i64, i64* %RDX.i63
  %9635 = load i64, i64* %RCX.i62
  %9636 = load i64, i64* %PC.i61
  %9637 = add i64 %9636, 3
  store i64 %9637, i64* %PC.i61
  %9638 = add i64 %9635, %9634
  store i64 %9638, i64* %RDX.i63, align 8
  %9639 = icmp ult i64 %9638, %9634
  %9640 = icmp ult i64 %9638, %9635
  %9641 = or i1 %9639, %9640
  %9642 = zext i1 %9641 to i8
  %9643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9642, i8* %9643, align 1
  %9644 = trunc i64 %9638 to i32
  %9645 = and i32 %9644, 255
  %9646 = call i32 @llvm.ctpop.i32(i32 %9645)
  %9647 = trunc i32 %9646 to i8
  %9648 = and i8 %9647, 1
  %9649 = xor i8 %9648, 1
  %9650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9649, i8* %9650, align 1
  %9651 = xor i64 %9635, %9634
  %9652 = xor i64 %9651, %9638
  %9653 = lshr i64 %9652, 4
  %9654 = trunc i64 %9653 to i8
  %9655 = and i8 %9654, 1
  %9656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9655, i8* %9656, align 1
  %9657 = icmp eq i64 %9638, 0
  %9658 = zext i1 %9657 to i8
  %9659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9658, i8* %9659, align 1
  %9660 = lshr i64 %9638, 63
  %9661 = trunc i64 %9660 to i8
  %9662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9661, i8* %9662, align 1
  %9663 = lshr i64 %9634, 63
  %9664 = lshr i64 %9635, 63
  %9665 = xor i64 %9660, %9663
  %9666 = xor i64 %9660, %9664
  %9667 = add i64 %9665, %9666
  %9668 = icmp eq i64 %9667, 2
  %9669 = zext i1 %9668 to i8
  %9670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9669, i8* %9670, align 1
  store %struct.Memory* %loadMem_491368, %struct.Memory** %MEMORY
  %loadMem_49136b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9672 = getelementptr inbounds %struct.GPR, %struct.GPR* %9671, i32 0, i32 33
  %9673 = getelementptr inbounds %struct.Reg, %struct.Reg* %9672, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %9673 to i64*
  %9674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9675 = getelementptr inbounds %struct.GPR, %struct.GPR* %9674, i32 0, i32 7
  %9676 = getelementptr inbounds %struct.Reg, %struct.Reg* %9675, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %9676 to i64*
  %9677 = load i64, i64* %RDX.i60
  %9678 = load i64, i64* %PC.i59
  %9679 = add i64 %9678, 4
  store i64 %9679, i64* %PC.i59
  %9680 = add i64 64, %9677
  store i64 %9680, i64* %RDX.i60, align 8
  %9681 = icmp ult i64 %9680, %9677
  %9682 = icmp ult i64 %9680, 64
  %9683 = or i1 %9681, %9682
  %9684 = zext i1 %9683 to i8
  %9685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9684, i8* %9685, align 1
  %9686 = trunc i64 %9680 to i32
  %9687 = and i32 %9686, 255
  %9688 = call i32 @llvm.ctpop.i32(i32 %9687)
  %9689 = trunc i32 %9688 to i8
  %9690 = and i8 %9689, 1
  %9691 = xor i8 %9690, 1
  %9692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9691, i8* %9692, align 1
  %9693 = xor i64 64, %9677
  %9694 = xor i64 %9693, %9680
  %9695 = lshr i64 %9694, 4
  %9696 = trunc i64 %9695 to i8
  %9697 = and i8 %9696, 1
  %9698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9697, i8* %9698, align 1
  %9699 = icmp eq i64 %9680, 0
  %9700 = zext i1 %9699 to i8
  %9701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9700, i8* %9701, align 1
  %9702 = lshr i64 %9680, 63
  %9703 = trunc i64 %9702 to i8
  %9704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9703, i8* %9704, align 1
  %9705 = lshr i64 %9677, 63
  %9706 = xor i64 %9702, %9705
  %9707 = add i64 %9706, %9702
  %9708 = icmp eq i64 %9707, 2
  %9709 = zext i1 %9708 to i8
  %9710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9709, i8* %9710, align 1
  store %struct.Memory* %loadMem_49136b, %struct.Memory** %MEMORY
  %loadMem_49136f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9712 = getelementptr inbounds %struct.GPR, %struct.GPR* %9711, i32 0, i32 33
  %9713 = getelementptr inbounds %struct.Reg, %struct.Reg* %9712, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %9713 to i64*
  %9714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9715 = getelementptr inbounds %struct.GPR, %struct.GPR* %9714, i32 0, i32 5
  %9716 = getelementptr inbounds %struct.Reg, %struct.Reg* %9715, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %9716 to i64*
  %9717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9718 = getelementptr inbounds %struct.GPR, %struct.GPR* %9717, i32 0, i32 15
  %9719 = getelementptr inbounds %struct.Reg, %struct.Reg* %9718, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %9719 to i64*
  %9720 = load i64, i64* %RBP.i58
  %9721 = sub i64 %9720, 32
  %9722 = load i64, i64* %PC.i56
  %9723 = add i64 %9722, 4
  store i64 %9723, i64* %PC.i56
  %9724 = inttoptr i64 %9721 to i32*
  %9725 = load i32, i32* %9724
  %9726 = sext i32 %9725 to i64
  store i64 %9726, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_49136f, %struct.Memory** %MEMORY
  %loadMem_491373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9728 = getelementptr inbounds %struct.GPR, %struct.GPR* %9727, i32 0, i32 33
  %9729 = getelementptr inbounds %struct.Reg, %struct.Reg* %9728, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %9729 to i64*
  %9730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9731 = getelementptr inbounds %struct.GPR, %struct.GPR* %9730, i32 0, i32 5
  %9732 = getelementptr inbounds %struct.Reg, %struct.Reg* %9731, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %9732 to i64*
  %9733 = load i64, i64* %RCX.i55
  %9734 = load i64, i64* %PC.i54
  %9735 = add i64 %9734, 4
  store i64 %9735, i64* %PC.i54
  %9736 = shl i64 %9733, 3
  %9737 = icmp slt i64 %9736, 0
  %9738 = shl i64 %9736, 1
  store i64 %9738, i64* %RCX.i55, align 8
  %9739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9740 = zext i1 %9737 to i8
  store i8 %9740, i8* %9739, align 1
  %9741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9742 = trunc i64 %9738 to i32
  %9743 = and i32 %9742, 254
  %9744 = call i32 @llvm.ctpop.i32(i32 %9743)
  %9745 = trunc i32 %9744 to i8
  %9746 = and i8 %9745, 1
  %9747 = xor i8 %9746, 1
  store i8 %9747, i8* %9741, align 1
  %9748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9748, align 1
  %9749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9750 = icmp eq i64 %9738, 0
  %9751 = zext i1 %9750 to i8
  store i8 %9751, i8* %9749, align 1
  %9752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9753 = lshr i64 %9738, 63
  %9754 = trunc i64 %9753 to i8
  store i8 %9754, i8* %9752, align 1
  %9755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9755, align 1
  store %struct.Memory* %loadMem_491373, %struct.Memory** %MEMORY
  %loadMem_491377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9757 = getelementptr inbounds %struct.GPR, %struct.GPR* %9756, i32 0, i32 33
  %9758 = getelementptr inbounds %struct.Reg, %struct.Reg* %9757, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %9758 to i64*
  %9759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9760 = getelementptr inbounds %struct.GPR, %struct.GPR* %9759, i32 0, i32 5
  %9761 = getelementptr inbounds %struct.Reg, %struct.Reg* %9760, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %9761 to i64*
  %9762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9763 = getelementptr inbounds %struct.GPR, %struct.GPR* %9762, i32 0, i32 7
  %9764 = getelementptr inbounds %struct.Reg, %struct.Reg* %9763, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %9764 to i64*
  %9765 = load i64, i64* %RDX.i53
  %9766 = load i64, i64* %RCX.i52
  %9767 = load i64, i64* %PC.i51
  %9768 = add i64 %9767, 3
  store i64 %9768, i64* %PC.i51
  %9769 = add i64 %9766, %9765
  store i64 %9769, i64* %RDX.i53, align 8
  %9770 = icmp ult i64 %9769, %9765
  %9771 = icmp ult i64 %9769, %9766
  %9772 = or i1 %9770, %9771
  %9773 = zext i1 %9772 to i8
  %9774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9773, i8* %9774, align 1
  %9775 = trunc i64 %9769 to i32
  %9776 = and i32 %9775, 255
  %9777 = call i32 @llvm.ctpop.i32(i32 %9776)
  %9778 = trunc i32 %9777 to i8
  %9779 = and i8 %9778, 1
  %9780 = xor i8 %9779, 1
  %9781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9780, i8* %9781, align 1
  %9782 = xor i64 %9766, %9765
  %9783 = xor i64 %9782, %9769
  %9784 = lshr i64 %9783, 4
  %9785 = trunc i64 %9784 to i8
  %9786 = and i8 %9785, 1
  %9787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9786, i8* %9787, align 1
  %9788 = icmp eq i64 %9769, 0
  %9789 = zext i1 %9788 to i8
  %9790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9789, i8* %9790, align 1
  %9791 = lshr i64 %9769, 63
  %9792 = trunc i64 %9791 to i8
  %9793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9792, i8* %9793, align 1
  %9794 = lshr i64 %9765, 63
  %9795 = lshr i64 %9766, 63
  %9796 = xor i64 %9791, %9794
  %9797 = xor i64 %9791, %9795
  %9798 = add i64 %9796, %9797
  %9799 = icmp eq i64 %9798, 2
  %9800 = zext i1 %9799 to i8
  %9801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9800, i8* %9801, align 1
  store %struct.Memory* %loadMem_491377, %struct.Memory** %MEMORY
  %loadMem_49137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9803 = getelementptr inbounds %struct.GPR, %struct.GPR* %9802, i32 0, i32 33
  %9804 = getelementptr inbounds %struct.Reg, %struct.Reg* %9803, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %9804 to i64*
  %9805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9806 = getelementptr inbounds %struct.GPR, %struct.GPR* %9805, i32 0, i32 5
  %9807 = getelementptr inbounds %struct.Reg, %struct.Reg* %9806, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %9807 to i64*
  %9808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9809 = getelementptr inbounds %struct.GPR, %struct.GPR* %9808, i32 0, i32 15
  %9810 = getelementptr inbounds %struct.Reg, %struct.Reg* %9809, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %9810 to i64*
  %9811 = load i64, i64* %RBP.i50
  %9812 = sub i64 %9811, 36
  %9813 = load i64, i64* %PC.i48
  %9814 = add i64 %9813, 4
  store i64 %9814, i64* %PC.i48
  %9815 = inttoptr i64 %9812 to i32*
  %9816 = load i32, i32* %9815
  %9817 = sext i32 %9816 to i64
  store i64 %9817, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_49137a, %struct.Memory** %MEMORY
  %loadMem_49137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9819 = getelementptr inbounds %struct.GPR, %struct.GPR* %9818, i32 0, i32 33
  %9820 = getelementptr inbounds %struct.Reg, %struct.Reg* %9819, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %9820 to i64*
  %9821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9822 = getelementptr inbounds %struct.GPR, %struct.GPR* %9821, i32 0, i32 5
  %9823 = getelementptr inbounds %struct.Reg, %struct.Reg* %9822, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %9823 to i64*
  %9824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9825 = getelementptr inbounds %struct.GPR, %struct.GPR* %9824, i32 0, i32 7
  %9826 = getelementptr inbounds %struct.Reg, %struct.Reg* %9825, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9826 to i64*
  %9827 = load i64, i64* %RDX.i
  %9828 = load i64, i64* %RCX.i47
  %9829 = mul i64 %9828, 4
  %9830 = add i64 %9829, %9827
  %9831 = load i64, i64* %PC.i46
  %9832 = add i64 %9831, 6
  store i64 %9832, i64* %PC.i46
  %9833 = inttoptr i64 %9830 to i16*
  store i16 0, i16* %9833
  store %struct.Memory* %loadMem_49137e, %struct.Memory** %MEMORY
  %loadMem_491384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9835 = getelementptr inbounds %struct.GPR, %struct.GPR* %9834, i32 0, i32 33
  %9836 = getelementptr inbounds %struct.Reg, %struct.Reg* %9835, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %9836 to i64*
  %9837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9838 = getelementptr inbounds %struct.GPR, %struct.GPR* %9837, i32 0, i32 5
  %9839 = getelementptr inbounds %struct.Reg, %struct.Reg* %9838, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %9839 to i64*
  %9840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9841 = getelementptr inbounds %struct.GPR, %struct.GPR* %9840, i32 0, i32 15
  %9842 = getelementptr inbounds %struct.Reg, %struct.Reg* %9841, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %9842 to i64*
  %9843 = load i64, i64* %RBP.i45
  %9844 = sub i64 %9843, 4
  %9845 = load i64, i64* %PC.i43
  %9846 = add i64 %9845, 4
  store i64 %9846, i64* %PC.i43
  %9847 = inttoptr i64 %9844 to i32*
  %9848 = load i32, i32* %9847
  %9849 = sext i32 %9848 to i64
  store i64 %9849, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_491384, %struct.Memory** %MEMORY
  %loadMem_491388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9851 = getelementptr inbounds %struct.GPR, %struct.GPR* %9850, i32 0, i32 33
  %9852 = getelementptr inbounds %struct.Reg, %struct.Reg* %9851, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %9852 to i64*
  %9853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9854 = getelementptr inbounds %struct.GPR, %struct.GPR* %9853, i32 0, i32 5
  %9855 = getelementptr inbounds %struct.Reg, %struct.Reg* %9854, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %9855 to i64*
  %9856 = load i64, i64* %RCX.i42
  %9857 = load i64, i64* %PC.i41
  %9858 = add i64 %9857, 4
  store i64 %9858, i64* %PC.i41
  %9859 = shl i64 %9856, 6
  %9860 = icmp slt i64 %9859, 0
  %9861 = shl i64 %9859, 1
  store i64 %9861, i64* %RCX.i42, align 8
  %9862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9863 = zext i1 %9860 to i8
  store i8 %9863, i8* %9862, align 1
  %9864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9865 = trunc i64 %9861 to i32
  %9866 = and i32 %9865, 254
  %9867 = call i32 @llvm.ctpop.i32(i32 %9866)
  %9868 = trunc i32 %9867 to i8
  %9869 = and i8 %9868, 1
  %9870 = xor i8 %9869, 1
  store i8 %9870, i8* %9864, align 1
  %9871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9871, align 1
  %9872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9873 = icmp eq i64 %9861, 0
  %9874 = zext i1 %9873 to i8
  store i8 %9874, i8* %9872, align 1
  %9875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9876 = lshr i64 %9861, 63
  %9877 = trunc i64 %9876 to i8
  store i8 %9877, i8* %9875, align 1
  %9878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9878, align 1
  store %struct.Memory* %loadMem_491388, %struct.Memory** %MEMORY
  %loadMem_49138c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9880 = getelementptr inbounds %struct.GPR, %struct.GPR* %9879, i32 0, i32 33
  %9881 = getelementptr inbounds %struct.Reg, %struct.Reg* %9880, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %9881 to i64*
  %9882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9883 = getelementptr inbounds %struct.GPR, %struct.GPR* %9882, i32 0, i32 1
  %9884 = getelementptr inbounds %struct.Reg, %struct.Reg* %9883, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %9884 to i64*
  %9885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9886 = getelementptr inbounds %struct.GPR, %struct.GPR* %9885, i32 0, i32 5
  %9887 = getelementptr inbounds %struct.Reg, %struct.Reg* %9886, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %9887 to i64*
  %9888 = load i64, i64* %RAX.i39
  %9889 = load i64, i64* %RCX.i40
  %9890 = load i64, i64* %PC.i38
  %9891 = add i64 %9890, 3
  store i64 %9891, i64* %PC.i38
  %9892 = add i64 %9889, %9888
  store i64 %9892, i64* %RAX.i39, align 8
  %9893 = icmp ult i64 %9892, %9888
  %9894 = icmp ult i64 %9892, %9889
  %9895 = or i1 %9893, %9894
  %9896 = zext i1 %9895 to i8
  %9897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9896, i8* %9897, align 1
  %9898 = trunc i64 %9892 to i32
  %9899 = and i32 %9898, 255
  %9900 = call i32 @llvm.ctpop.i32(i32 %9899)
  %9901 = trunc i32 %9900 to i8
  %9902 = and i8 %9901, 1
  %9903 = xor i8 %9902, 1
  %9904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9903, i8* %9904, align 1
  %9905 = xor i64 %9889, %9888
  %9906 = xor i64 %9905, %9892
  %9907 = lshr i64 %9906, 4
  %9908 = trunc i64 %9907 to i8
  %9909 = and i8 %9908, 1
  %9910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9909, i8* %9910, align 1
  %9911 = icmp eq i64 %9892, 0
  %9912 = zext i1 %9911 to i8
  %9913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9912, i8* %9913, align 1
  %9914 = lshr i64 %9892, 63
  %9915 = trunc i64 %9914 to i8
  %9916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9915, i8* %9916, align 1
  %9917 = lshr i64 %9888, 63
  %9918 = lshr i64 %9889, 63
  %9919 = xor i64 %9914, %9917
  %9920 = xor i64 %9914, %9918
  %9921 = add i64 %9919, %9920
  %9922 = icmp eq i64 %9921, 2
  %9923 = zext i1 %9922 to i8
  %9924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9923, i8* %9924, align 1
  store %struct.Memory* %loadMem_49138c, %struct.Memory** %MEMORY
  %loadMem_49138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9926 = getelementptr inbounds %struct.GPR, %struct.GPR* %9925, i32 0, i32 33
  %9927 = getelementptr inbounds %struct.Reg, %struct.Reg* %9926, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %9927 to i64*
  %9928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9929 = getelementptr inbounds %struct.GPR, %struct.GPR* %9928, i32 0, i32 1
  %9930 = getelementptr inbounds %struct.Reg, %struct.Reg* %9929, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %9930 to i64*
  %9931 = load i64, i64* %RAX.i37
  %9932 = load i64, i64* %PC.i36
  %9933 = add i64 %9932, 4
  store i64 %9933, i64* %PC.i36
  %9934 = add i64 64, %9931
  store i64 %9934, i64* %RAX.i37, align 8
  %9935 = icmp ult i64 %9934, %9931
  %9936 = icmp ult i64 %9934, 64
  %9937 = or i1 %9935, %9936
  %9938 = zext i1 %9937 to i8
  %9939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9938, i8* %9939, align 1
  %9940 = trunc i64 %9934 to i32
  %9941 = and i32 %9940, 255
  %9942 = call i32 @llvm.ctpop.i32(i32 %9941)
  %9943 = trunc i32 %9942 to i8
  %9944 = and i8 %9943, 1
  %9945 = xor i8 %9944, 1
  %9946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9945, i8* %9946, align 1
  %9947 = xor i64 64, %9931
  %9948 = xor i64 %9947, %9934
  %9949 = lshr i64 %9948, 4
  %9950 = trunc i64 %9949 to i8
  %9951 = and i8 %9950, 1
  %9952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9951, i8* %9952, align 1
  %9953 = icmp eq i64 %9934, 0
  %9954 = zext i1 %9953 to i8
  %9955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9954, i8* %9955, align 1
  %9956 = lshr i64 %9934, 63
  %9957 = trunc i64 %9956 to i8
  %9958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9957, i8* %9958, align 1
  %9959 = lshr i64 %9931, 63
  %9960 = xor i64 %9956, %9959
  %9961 = add i64 %9960, %9956
  %9962 = icmp eq i64 %9961, 2
  %9963 = zext i1 %9962 to i8
  %9964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9963, i8* %9964, align 1
  store %struct.Memory* %loadMem_49138f, %struct.Memory** %MEMORY
  %loadMem_491393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9966 = getelementptr inbounds %struct.GPR, %struct.GPR* %9965, i32 0, i32 33
  %9967 = getelementptr inbounds %struct.Reg, %struct.Reg* %9966, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %9967 to i64*
  %9968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9969 = getelementptr inbounds %struct.GPR, %struct.GPR* %9968, i32 0, i32 5
  %9970 = getelementptr inbounds %struct.Reg, %struct.Reg* %9969, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %9970 to i64*
  %9971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9972 = getelementptr inbounds %struct.GPR, %struct.GPR* %9971, i32 0, i32 15
  %9973 = getelementptr inbounds %struct.Reg, %struct.Reg* %9972, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %9973 to i64*
  %9974 = load i64, i64* %RBP.i35
  %9975 = sub i64 %9974, 32
  %9976 = load i64, i64* %PC.i33
  %9977 = add i64 %9976, 4
  store i64 %9977, i64* %PC.i33
  %9978 = inttoptr i64 %9975 to i32*
  %9979 = load i32, i32* %9978
  %9980 = sext i32 %9979 to i64
  store i64 %9980, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_491393, %struct.Memory** %MEMORY
  %loadMem_491397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9982 = getelementptr inbounds %struct.GPR, %struct.GPR* %9981, i32 0, i32 33
  %9983 = getelementptr inbounds %struct.Reg, %struct.Reg* %9982, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %9983 to i64*
  %9984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9985 = getelementptr inbounds %struct.GPR, %struct.GPR* %9984, i32 0, i32 5
  %9986 = getelementptr inbounds %struct.Reg, %struct.Reg* %9985, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %9986 to i64*
  %9987 = load i64, i64* %RCX.i32
  %9988 = load i64, i64* %PC.i31
  %9989 = add i64 %9988, 4
  store i64 %9989, i64* %PC.i31
  %9990 = shl i64 %9987, 3
  %9991 = icmp slt i64 %9990, 0
  %9992 = shl i64 %9990, 1
  store i64 %9992, i64* %RCX.i32, align 8
  %9993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9994 = zext i1 %9991 to i8
  store i8 %9994, i8* %9993, align 1
  %9995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9996 = trunc i64 %9992 to i32
  %9997 = and i32 %9996, 254
  %9998 = call i32 @llvm.ctpop.i32(i32 %9997)
  %9999 = trunc i32 %9998 to i8
  %10000 = and i8 %9999, 1
  %10001 = xor i8 %10000, 1
  store i8 %10001, i8* %9995, align 1
  %10002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10002, align 1
  %10003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10004 = icmp eq i64 %9992, 0
  %10005 = zext i1 %10004 to i8
  store i8 %10005, i8* %10003, align 1
  %10006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10007 = lshr i64 %9992, 63
  %10008 = trunc i64 %10007 to i8
  store i8 %10008, i8* %10006, align 1
  %10009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10009, align 1
  store %struct.Memory* %loadMem_491397, %struct.Memory** %MEMORY
  %loadMem_49139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %10010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10011 = getelementptr inbounds %struct.GPR, %struct.GPR* %10010, i32 0, i32 33
  %10012 = getelementptr inbounds %struct.Reg, %struct.Reg* %10011, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %10012 to i64*
  %10013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10014 = getelementptr inbounds %struct.GPR, %struct.GPR* %10013, i32 0, i32 1
  %10015 = getelementptr inbounds %struct.Reg, %struct.Reg* %10014, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %10015 to i64*
  %10016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10017 = getelementptr inbounds %struct.GPR, %struct.GPR* %10016, i32 0, i32 5
  %10018 = getelementptr inbounds %struct.Reg, %struct.Reg* %10017, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %10018 to i64*
  %10019 = load i64, i64* %RAX.i29
  %10020 = load i64, i64* %RCX.i30
  %10021 = load i64, i64* %PC.i28
  %10022 = add i64 %10021, 3
  store i64 %10022, i64* %PC.i28
  %10023 = add i64 %10020, %10019
  store i64 %10023, i64* %RAX.i29, align 8
  %10024 = icmp ult i64 %10023, %10019
  %10025 = icmp ult i64 %10023, %10020
  %10026 = or i1 %10024, %10025
  %10027 = zext i1 %10026 to i8
  %10028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10027, i8* %10028, align 1
  %10029 = trunc i64 %10023 to i32
  %10030 = and i32 %10029, 255
  %10031 = call i32 @llvm.ctpop.i32(i32 %10030)
  %10032 = trunc i32 %10031 to i8
  %10033 = and i8 %10032, 1
  %10034 = xor i8 %10033, 1
  %10035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %10034, i8* %10035, align 1
  %10036 = xor i64 %10020, %10019
  %10037 = xor i64 %10036, %10023
  %10038 = lshr i64 %10037, 4
  %10039 = trunc i64 %10038 to i8
  %10040 = and i8 %10039, 1
  %10041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %10040, i8* %10041, align 1
  %10042 = icmp eq i64 %10023, 0
  %10043 = zext i1 %10042 to i8
  %10044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10043, i8* %10044, align 1
  %10045 = lshr i64 %10023, 63
  %10046 = trunc i64 %10045 to i8
  %10047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %10046, i8* %10047, align 1
  %10048 = lshr i64 %10019, 63
  %10049 = lshr i64 %10020, 63
  %10050 = xor i64 %10045, %10048
  %10051 = xor i64 %10045, %10049
  %10052 = add i64 %10050, %10051
  %10053 = icmp eq i64 %10052, 2
  %10054 = zext i1 %10053 to i8
  %10055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %10054, i8* %10055, align 1
  store %struct.Memory* %loadMem_49139b, %struct.Memory** %MEMORY
  %loadMem_49139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %10056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10057 = getelementptr inbounds %struct.GPR, %struct.GPR* %10056, i32 0, i32 33
  %10058 = getelementptr inbounds %struct.Reg, %struct.Reg* %10057, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %10058 to i64*
  %10059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10060 = getelementptr inbounds %struct.GPR, %struct.GPR* %10059, i32 0, i32 5
  %10061 = getelementptr inbounds %struct.Reg, %struct.Reg* %10060, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %10061 to i64*
  %10062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10063 = getelementptr inbounds %struct.GPR, %struct.GPR* %10062, i32 0, i32 15
  %10064 = getelementptr inbounds %struct.Reg, %struct.Reg* %10063, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %10064 to i64*
  %10065 = load i64, i64* %RBP.i27
  %10066 = sub i64 %10065, 36
  %10067 = load i64, i64* %PC.i25
  %10068 = add i64 %10067, 4
  store i64 %10068, i64* %PC.i25
  %10069 = inttoptr i64 %10066 to i32*
  %10070 = load i32, i32* %10069
  %10071 = sext i32 %10070 to i64
  store i64 %10071, i64* %RCX.i26, align 8
  store %struct.Memory* %loadMem_49139e, %struct.Memory** %MEMORY
  %loadMem_4913a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10073 = getelementptr inbounds %struct.GPR, %struct.GPR* %10072, i32 0, i32 33
  %10074 = getelementptr inbounds %struct.Reg, %struct.Reg* %10073, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %10074 to i64*
  %10075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10076 = getelementptr inbounds %struct.GPR, %struct.GPR* %10075, i32 0, i32 1
  %10077 = getelementptr inbounds %struct.Reg, %struct.Reg* %10076, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %10077 to i64*
  %10078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10079 = getelementptr inbounds %struct.GPR, %struct.GPR* %10078, i32 0, i32 5
  %10080 = getelementptr inbounds %struct.Reg, %struct.Reg* %10079, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %10080 to i64*
  %10081 = load i64, i64* %RAX.i24
  %10082 = load i64, i64* %RCX.i
  %10083 = mul i64 %10082, 4
  %10084 = add i64 %10081, 2
  %10085 = add i64 %10084, %10083
  %10086 = load i64, i64* %PC.i23
  %10087 = add i64 %10086, 7
  store i64 %10087, i64* %PC.i23
  %10088 = inttoptr i64 %10085 to i16*
  store i16 0, i16* %10088
  store %struct.Memory* %loadMem_4913a2, %struct.Memory** %MEMORY
  %loadMem_4913a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10090 = getelementptr inbounds %struct.GPR, %struct.GPR* %10089, i32 0, i32 33
  %10091 = getelementptr inbounds %struct.Reg, %struct.Reg* %10090, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %10091 to i64*
  %10092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10093 = getelementptr inbounds %struct.GPR, %struct.GPR* %10092, i32 0, i32 1
  %10094 = getelementptr inbounds %struct.Reg, %struct.Reg* %10093, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %10094 to i64*
  %10095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10096 = getelementptr inbounds %struct.GPR, %struct.GPR* %10095, i32 0, i32 15
  %10097 = getelementptr inbounds %struct.Reg, %struct.Reg* %10096, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %10097 to i64*
  %10098 = load i64, i64* %RBP.i22
  %10099 = sub i64 %10098, 32
  %10100 = load i64, i64* %PC.i20
  %10101 = add i64 %10100, 3
  store i64 %10101, i64* %PC.i20
  %10102 = inttoptr i64 %10099 to i32*
  %10103 = load i32, i32* %10102
  %10104 = zext i32 %10103 to i64
  store i64 %10104, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_4913a9, %struct.Memory** %MEMORY
  %loadMem_4913ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %10105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10106 = getelementptr inbounds %struct.GPR, %struct.GPR* %10105, i32 0, i32 33
  %10107 = getelementptr inbounds %struct.Reg, %struct.Reg* %10106, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %10107 to i64*
  %10108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10109 = getelementptr inbounds %struct.GPR, %struct.GPR* %10108, i32 0, i32 1
  %10110 = getelementptr inbounds %struct.Reg, %struct.Reg* %10109, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %10110 to i64*
  %10111 = load i64, i64* %RAX.i19
  %10112 = load i64, i64* %PC.i18
  %10113 = add i64 %10112, 3
  store i64 %10113, i64* %PC.i18
  %10114 = trunc i64 %10111 to i32
  %10115 = add i32 1, %10114
  %10116 = zext i32 %10115 to i64
  store i64 %10116, i64* %RAX.i19, align 8
  %10117 = icmp ult i32 %10115, %10114
  %10118 = icmp ult i32 %10115, 1
  %10119 = or i1 %10117, %10118
  %10120 = zext i1 %10119 to i8
  %10121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10120, i8* %10121, align 1
  %10122 = and i32 %10115, 255
  %10123 = call i32 @llvm.ctpop.i32(i32 %10122)
  %10124 = trunc i32 %10123 to i8
  %10125 = and i8 %10124, 1
  %10126 = xor i8 %10125, 1
  %10127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %10126, i8* %10127, align 1
  %10128 = xor i64 1, %10111
  %10129 = trunc i64 %10128 to i32
  %10130 = xor i32 %10129, %10115
  %10131 = lshr i32 %10130, 4
  %10132 = trunc i32 %10131 to i8
  %10133 = and i8 %10132, 1
  %10134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %10133, i8* %10134, align 1
  %10135 = icmp eq i32 %10115, 0
  %10136 = zext i1 %10135 to i8
  %10137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10136, i8* %10137, align 1
  %10138 = lshr i32 %10115, 31
  %10139 = trunc i32 %10138 to i8
  %10140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %10139, i8* %10140, align 1
  %10141 = lshr i32 %10114, 31
  %10142 = xor i32 %10138, %10141
  %10143 = add i32 %10142, %10138
  %10144 = icmp eq i32 %10143, 2
  %10145 = zext i1 %10144 to i8
  %10146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %10145, i8* %10146, align 1
  store %struct.Memory* %loadMem_4913ac, %struct.Memory** %MEMORY
  %loadMem_4913af = load %struct.Memory*, %struct.Memory** %MEMORY
  %10147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10148 = getelementptr inbounds %struct.GPR, %struct.GPR* %10147, i32 0, i32 33
  %10149 = getelementptr inbounds %struct.Reg, %struct.Reg* %10148, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %10149 to i64*
  %10150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10151 = getelementptr inbounds %struct.GPR, %struct.GPR* %10150, i32 0, i32 1
  %10152 = getelementptr inbounds %struct.Reg, %struct.Reg* %10151, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %10152 to i32*
  %10153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10154 = getelementptr inbounds %struct.GPR, %struct.GPR* %10153, i32 0, i32 15
  %10155 = getelementptr inbounds %struct.Reg, %struct.Reg* %10154, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %10155 to i64*
  %10156 = load i64, i64* %RBP.i17
  %10157 = sub i64 %10156, 32
  %10158 = load i32, i32* %EAX.i16
  %10159 = zext i32 %10158 to i64
  %10160 = load i64, i64* %PC.i15
  %10161 = add i64 %10160, 3
  store i64 %10161, i64* %PC.i15
  %10162 = inttoptr i64 %10157 to i32*
  store i32 %10158, i32* %10162
  store %struct.Memory* %loadMem_4913af, %struct.Memory** %MEMORY
  %loadMem_4913b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10164 = getelementptr inbounds %struct.GPR, %struct.GPR* %10163, i32 0, i32 33
  %10165 = getelementptr inbounds %struct.Reg, %struct.Reg* %10164, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %10165 to i64*
  %10166 = load i64, i64* %PC.i14
  %10167 = add i64 %10166, -107
  %10168 = load i64, i64* %PC.i14
  %10169 = add i64 %10168, 5
  store i64 %10169, i64* %PC.i14
  %10170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10167, i64* %10170, align 8
  store %struct.Memory* %loadMem_4913b2, %struct.Memory** %MEMORY
  br label %block_.L_491347

block_.L_4913b7:                                  ; preds = %block_.L_491347
  %loadMem_4913b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10172 = getelementptr inbounds %struct.GPR, %struct.GPR* %10171, i32 0, i32 33
  %10173 = getelementptr inbounds %struct.Reg, %struct.Reg* %10172, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %10173 to i64*
  %10174 = load i64, i64* %PC.i13
  %10175 = add i64 %10174, 5
  %10176 = load i64, i64* %PC.i13
  %10177 = add i64 %10176, 5
  store i64 %10177, i64* %PC.i13
  %10178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10175, i64* %10178, align 8
  store %struct.Memory* %loadMem_4913b7, %struct.Memory** %MEMORY
  br label %block_.L_4913bc

block_.L_4913bc:                                  ; preds = %block_.L_4913b7
  %loadMem_4913bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %10179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10180 = getelementptr inbounds %struct.GPR, %struct.GPR* %10179, i32 0, i32 33
  %10181 = getelementptr inbounds %struct.Reg, %struct.Reg* %10180, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %10181 to i64*
  %10182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10183 = getelementptr inbounds %struct.GPR, %struct.GPR* %10182, i32 0, i32 1
  %10184 = getelementptr inbounds %struct.Reg, %struct.Reg* %10183, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %10184 to i64*
  %10185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10186 = getelementptr inbounds %struct.GPR, %struct.GPR* %10185, i32 0, i32 15
  %10187 = getelementptr inbounds %struct.Reg, %struct.Reg* %10186, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %10187 to i64*
  %10188 = load i64, i64* %RBP.i12
  %10189 = sub i64 %10188, 36
  %10190 = load i64, i64* %PC.i10
  %10191 = add i64 %10190, 3
  store i64 %10191, i64* %PC.i10
  %10192 = inttoptr i64 %10189 to i32*
  %10193 = load i32, i32* %10192
  %10194 = zext i32 %10193 to i64
  store i64 %10194, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4913bc, %struct.Memory** %MEMORY
  %loadMem_4913bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %10195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10196 = getelementptr inbounds %struct.GPR, %struct.GPR* %10195, i32 0, i32 33
  %10197 = getelementptr inbounds %struct.Reg, %struct.Reg* %10196, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %10197 to i64*
  %10198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10199 = getelementptr inbounds %struct.GPR, %struct.GPR* %10198, i32 0, i32 1
  %10200 = getelementptr inbounds %struct.Reg, %struct.Reg* %10199, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %10200 to i64*
  %10201 = load i64, i64* %RAX.i
  %10202 = load i64, i64* %PC.i9
  %10203 = add i64 %10202, 3
  store i64 %10203, i64* %PC.i9
  %10204 = trunc i64 %10201 to i32
  %10205 = add i32 1, %10204
  %10206 = zext i32 %10205 to i64
  store i64 %10206, i64* %RAX.i, align 8
  %10207 = icmp ult i32 %10205, %10204
  %10208 = icmp ult i32 %10205, 1
  %10209 = or i1 %10207, %10208
  %10210 = zext i1 %10209 to i8
  %10211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10210, i8* %10211, align 1
  %10212 = and i32 %10205, 255
  %10213 = call i32 @llvm.ctpop.i32(i32 %10212)
  %10214 = trunc i32 %10213 to i8
  %10215 = and i8 %10214, 1
  %10216 = xor i8 %10215, 1
  %10217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %10216, i8* %10217, align 1
  %10218 = xor i64 1, %10201
  %10219 = trunc i64 %10218 to i32
  %10220 = xor i32 %10219, %10205
  %10221 = lshr i32 %10220, 4
  %10222 = trunc i32 %10221 to i8
  %10223 = and i8 %10222, 1
  %10224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %10223, i8* %10224, align 1
  %10225 = icmp eq i32 %10205, 0
  %10226 = zext i1 %10225 to i8
  %10227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10226, i8* %10227, align 1
  %10228 = lshr i32 %10205, 31
  %10229 = trunc i32 %10228 to i8
  %10230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %10229, i8* %10230, align 1
  %10231 = lshr i32 %10204, 31
  %10232 = xor i32 %10228, %10231
  %10233 = add i32 %10232, %10228
  %10234 = icmp eq i32 %10233, 2
  %10235 = zext i1 %10234 to i8
  %10236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %10235, i8* %10236, align 1
  store %struct.Memory* %loadMem_4913bf, %struct.Memory** %MEMORY
  %loadMem_4913c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10238 = getelementptr inbounds %struct.GPR, %struct.GPR* %10237, i32 0, i32 33
  %10239 = getelementptr inbounds %struct.Reg, %struct.Reg* %10238, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %10239 to i64*
  %10240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10241 = getelementptr inbounds %struct.GPR, %struct.GPR* %10240, i32 0, i32 1
  %10242 = getelementptr inbounds %struct.Reg, %struct.Reg* %10241, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %10242 to i32*
  %10243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10244 = getelementptr inbounds %struct.GPR, %struct.GPR* %10243, i32 0, i32 15
  %10245 = getelementptr inbounds %struct.Reg, %struct.Reg* %10244, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %10245 to i64*
  %10246 = load i64, i64* %RBP.i8
  %10247 = sub i64 %10246, 36
  %10248 = load i32, i32* %EAX.i
  %10249 = zext i32 %10248 to i64
  %10250 = load i64, i64* %PC.i7
  %10251 = add i64 %10250, 3
  store i64 %10251, i64* %PC.i7
  %10252 = inttoptr i64 %10247 to i32*
  store i32 %10248, i32* %10252
  store %struct.Memory* %loadMem_4913c2, %struct.Memory** %MEMORY
  %loadMem_4913c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10254 = getelementptr inbounds %struct.GPR, %struct.GPR* %10253, i32 0, i32 33
  %10255 = getelementptr inbounds %struct.Reg, %struct.Reg* %10254, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %10255 to i64*
  %10256 = load i64, i64* %PC.i6
  %10257 = add i64 %10256, -144
  %10258 = load i64, i64* %PC.i6
  %10259 = add i64 %10258, 5
  store i64 %10259, i64* %PC.i6
  %10260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10257, i64* %10260, align 8
  store %struct.Memory* %loadMem_4913c5, %struct.Memory** %MEMORY
  br label %block_.L_491335

block_.L_4913ca:                                  ; preds = %block_.L_491335
  %loadMem_4913ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %10261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10262 = getelementptr inbounds %struct.GPR, %struct.GPR* %10261, i32 0, i32 33
  %10263 = getelementptr inbounds %struct.Reg, %struct.Reg* %10262, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %10263 to i64*
  %10264 = load i64, i64* %PC.i5
  %10265 = add i64 %10264, 5
  %10266 = load i64, i64* %PC.i5
  %10267 = add i64 %10266, 5
  store i64 %10267, i64* %PC.i5
  %10268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10265, i64* %10268, align 8
  store %struct.Memory* %loadMem_4913ca, %struct.Memory** %MEMORY
  br label %block_.L_4913cf

block_.L_4913cf:                                  ; preds = %block_.L_4913ca, %block_.L_49132a
  %loadMem_4913cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %10269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10270 = getelementptr inbounds %struct.GPR, %struct.GPR* %10269, i32 0, i32 33
  %10271 = getelementptr inbounds %struct.Reg, %struct.Reg* %10270, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %10271 to i64*
  %10272 = load i64, i64* %PC.i4
  %10273 = add i64 %10272, 5
  %10274 = load i64, i64* %PC.i4
  %10275 = add i64 %10274, 5
  store i64 %10275, i64* %PC.i4
  %10276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10273, i64* %10276, align 8
  store %struct.Memory* %loadMem_4913cf, %struct.Memory** %MEMORY
  br label %block_.L_4913d4

block_.L_4913d4:                                  ; preds = %block_.L_4913cf, %block_.L_490f46, %block_.L_490dc4
  %loadMem_4913d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10278 = getelementptr inbounds %struct.GPR, %struct.GPR* %10277, i32 0, i32 33
  %10279 = getelementptr inbounds %struct.Reg, %struct.Reg* %10278, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %10279 to i64*
  %10280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10281 = getelementptr inbounds %struct.GPR, %struct.GPR* %10280, i32 0, i32 15
  %10282 = getelementptr inbounds %struct.Reg, %struct.Reg* %10281, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %10282 to i64*
  %10283 = load i64, i64* %PC.i2
  %10284 = add i64 %10283, 1
  store i64 %10284, i64* %PC.i2
  %10285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10286 = load i64, i64* %10285, align 8
  %10287 = add i64 %10286, 8
  %10288 = inttoptr i64 %10286 to i64*
  %10289 = load i64, i64* %10288
  store i64 %10289, i64* %RBP.i3, align 8
  store i64 %10287, i64* %10285, align 8
  store %struct.Memory* %loadMem_4913d4, %struct.Memory** %MEMORY
  %loadMem_4913d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %10290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10291 = getelementptr inbounds %struct.GPR, %struct.GPR* %10290, i32 0, i32 33
  %10292 = getelementptr inbounds %struct.Reg, %struct.Reg* %10291, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %10292 to i64*
  %10293 = load i64, i64* %PC.i1
  %10294 = add i64 %10293, 1
  store i64 %10294, i64* %PC.i1
  %10295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %10296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10297 = load i64, i64* %10296, align 8
  %10298 = inttoptr i64 %10297 to i64*
  %10299 = load i64, i64* %10298
  store i64 %10299, i64* %10295, align 8
  %10300 = add i64 %10297, 8
  store i64 %10300, i64* %10296, align 8
  store %struct.Memory* %loadMem_4913d5, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4913d5
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

define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 2, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x118f8__r11____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R11
  %10 = add i64 %9, 71928
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x118f0__r11____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R11
  %10 = add i64 %9, 71920
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
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

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_490dc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jge_.L_490dc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 48
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

define %struct.Memory* @routine_jge_.L_490db1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 6
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  store i16 0, i16* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x0__0x2__rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 2
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i16*
  store i16 0, i16* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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

define %struct.Memory* @routine_addq__0x40___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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

define %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 2
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i16*
  store i16 0, i16* %19
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

define %struct.Memory* @routine_jmpq_.L_490cfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_490db6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_490ce8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_490f4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_490f46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_490f33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw___rdx____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i16*
  %16 = load i16, i16* %15
  store i16 %16, i16* %DI, align 2
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

define %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 6
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i16*
  store i16 %19, i16* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  store i16 %17, i16* %DI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %18 = add i64 %15, 2
  %19 = add i64 %18, %17
  %20 = load i16, i16* %DI
  %21 = zext i16 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 5
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i16*
  store i16 %20, i16* %24
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

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_movw___rcx____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i16*
  %16 = load i16, i16* %15
  store i16 %16, i16* %DI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i16*
  store i16 %19, i16* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  store i16 %17, i16* %DI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %18 = add i64 %15, 2
  %19 = add i64 %18, %17
  %20 = load i16, i16* %DI
  %21 = zext i16 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 5
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i16*
  store i16 %20, i16* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_490deb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_490f38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_490dd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_490f5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4910e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4910e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4910cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_490f77(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4910d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_490f65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49117f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_49117a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_491167(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4910ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49116c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4910ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_491193(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_49132f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_49132a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_491317(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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

define %struct.Memory* @routine_addq__0x40___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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

define %struct.Memory* @routine_jmpq_.L_4911ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49131c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_491199(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4913cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4913ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4913b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_491347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4913bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_491335(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
