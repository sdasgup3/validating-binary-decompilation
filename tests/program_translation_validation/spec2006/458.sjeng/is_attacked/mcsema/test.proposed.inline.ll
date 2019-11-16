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
define %struct.Memory* @is_attacked(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4013e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4013e0, %struct.Memory** %MEMORY
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i452
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i452
  store i64 %26, i64* %RBP.i453, align 8
  store %struct.Memory* %loadMem_4013e1, %struct.Memory** %MEMORY
  %loadMem_4013e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i451
  %39 = sub i64 %38, 8
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i450
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i450
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_4013e4, %struct.Memory** %MEMORY
  %loadMem_4013e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i448 = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i449
  %55 = sub i64 %54, 12
  %56 = load i32, i32* %ESI.i448
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i447
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i447
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_4013e7, %struct.Memory** %MEMORY
  %loadMem_4013ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RSI.i445 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %RBP.i446
  %71 = sub i64 %70, 12
  %72 = load i64, i64* %PC.i444
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC.i444
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI.i445, align 8
  store %struct.Memory* %loadMem_4013ea, %struct.Memory** %MEMORY
  %loadMem_4013ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 33
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %79 to i64*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %82 to i64*
  %83 = load i64, i64* %RSI.i
  %84 = load i64, i64* %PC.i443
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC.i443
  %86 = and i64 1, %83
  %87 = trunc i64 %86 to i32
  store i64 %86, i64* %RSI.i, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %88, align 1
  %89 = and i32 %87, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %93, i8* %94, align 1
  %95 = icmp eq i32 %87, 0
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %96, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %100, align 1
  store %struct.Memory* %loadMem_4013ed, %struct.Memory** %MEMORY
  %loadMem_4013f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %106 to i32*
  %107 = load i32, i32* %ESI.i
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC.i442
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC.i442
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %111, align 1
  %112 = and i32 %107, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %120, i8* %121, align 1
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %123, i8* %124, align 1
  %125 = lshr i32 %107, 31
  %126 = xor i32 %122, %125
  %127 = add i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %129, i8* %130, align 1
  store %struct.Memory* %loadMem_4013f0, %struct.Memory** %MEMORY
  %loadMem_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %133 to i64*
  %134 = load i64, i64* %PC.i441
  %135 = add i64 %134, 504
  %136 = load i64, i64* %PC.i441
  %137 = add i64 %136, 6
  %138 = load i64, i64* %PC.i441
  %139 = add i64 %138, 6
  store i64 %139, i64* %PC.i441
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %141 = load i8, i8* %140, align 1
  store i8 %141, i8* %BRANCH_TAKEN, align 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %143 = icmp ne i8 %141, 0
  %144 = select i1 %143, i64 %135, i64 %137
  store i64 %144, i64* %142, align 8
  store %struct.Memory* %loadMem_4013f3, %struct.Memory** %MEMORY
  %loadBr_4013f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4013f3 = icmp eq i8 %loadBr_4013f3, 1
  br i1 %cmpBr_4013f3, label %block_.L_4015eb, label %block_4013f9

block_4013f9:                                     ; preds = %entry
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i440
  %152 = sub i64 %151, 28
  %153 = load i64, i64* %PC.i439
  %154 = add i64 %153, 7
  store i64 %154, i64* %PC.i439
  %155 = inttoptr i64 %152 to i32*
  store i32 0, i32* %155
  store %struct.Memory* %loadMem_4013f9, %struct.Memory** %MEMORY
  br label %block_.L_401400

block_.L_401400:                                  ; preds = %block_.L_4014c9, %block_4013f9
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i438
  %163 = sub i64 %162, 28
  %164 = load i64, i64* %PC.i437
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC.i437
  %166 = inttoptr i64 %163 to i32*
  %167 = load i32, i32* %166
  %168 = sub i32 %167, 4
  %169 = icmp ult i32 %167, 4
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %170, i8* %171, align 1
  %172 = and i32 %168, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %176, i8* %177, align 1
  %178 = xor i32 %167, 4
  %179 = xor i32 %178, %168
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %182, i8* %183, align 1
  %184 = icmp eq i32 %168, 0
  %185 = zext i1 %184 to i8
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %185, i8* %186, align 1
  %187 = lshr i32 %168, 31
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %188, i8* %189, align 1
  %190 = lshr i32 %167, 31
  %191 = xor i32 %187, %190
  %192 = add i32 %191, %190
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %194, i8* %195, align 1
  store %struct.Memory* %loadMem_401400, %struct.Memory** %MEMORY
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %PC.i436
  %200 = add i64 %199, 211
  %201 = load i64, i64* %PC.i436
  %202 = add i64 %201, 6
  %203 = load i64, i64* %PC.i436
  %204 = add i64 %203, 6
  store i64 %204, i64* %PC.i436
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %206 = load i8, i8* %205, align 1
  %207 = icmp ne i8 %206, 0
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  %211 = xor i1 %207, %210
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %BRANCH_TAKEN, align 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %215 = select i1 %211, i64 %202, i64 %200
  store i64 %215, i64* %214, align 8
  store %struct.Memory* %loadMem_401404, %struct.Memory** %MEMORY
  %loadBr_401404 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401404 = icmp eq i8 %loadBr_401404, 1
  br i1 %cmpBr_401404, label %block_.L_4014d7, label %block_40140a

block_40140a:                                     ; preds = %block_.L_401400
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 15
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RBP.i435
  %226 = sub i64 %225, 28
  %227 = load i64, i64* %PC.i433
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC.i433
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_40140a, %struct.Memory** %MEMORY
  %loadMem_40140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %RAX.i431
  %242 = mul i64 %241, 4
  %243 = add i64 %242, 4347216
  %244 = load i64, i64* %PC.i430
  %245 = add i64 %244, 7
  store i64 %245, i64* %PC.i430
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RCX.i432, align 8
  store %struct.Memory* %loadMem_40140e, %struct.Memory** %MEMORY
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %ECX.i428 = bitcast %union.anon* %254 to i32*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i429
  %259 = sub i64 %258, 16
  %260 = load i32, i32* %ECX.i428
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC.i427
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i427
  %264 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %264
  store %struct.Memory* %loadMem_401415, %struct.Memory** %MEMORY
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 15
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RBP.i426
  %275 = sub i64 %274, 8
  %276 = load i64, i64* %PC.i424
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC.i424
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_401418, %struct.Memory** %MEMORY
  %loadMem_40141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RCX.i422
  %291 = load i64, i64* %RBP.i423
  %292 = sub i64 %291, 16
  %293 = load i64, i64* %PC.i421
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC.i421
  %295 = trunc i64 %290 to i32
  %296 = inttoptr i64 %292 to i32*
  %297 = load i32, i32* %296
  %298 = add i32 %297, %295
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RCX.i422, align 8
  %300 = icmp ult i32 %298, %295
  %301 = icmp ult i32 %298, %297
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %303, i8* %304, align 1
  %305 = and i32 %298, 255
  %306 = call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %309, i8* %310, align 1
  %311 = xor i32 %297, %295
  %312 = xor i32 %311, %298
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %315, i8* %316, align 1
  %317 = icmp eq i32 %298, 0
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %318, i8* %319, align 1
  %320 = lshr i32 %298, 31
  %321 = trunc i32 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %321, i8* %322, align 1
  %323 = lshr i32 %295, 31
  %324 = lshr i32 %297, 31
  %325 = xor i32 %320, %323
  %326 = xor i32 %320, %324
  %327 = add i32 %325, %326
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %329, i8* %330, align 1
  store %struct.Memory* %loadMem_40141b, %struct.Memory** %MEMORY
  %loadMem_40141e = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %ECX.i419 = bitcast %union.anon* %336 to i32*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i420
  %341 = sub i64 %340, 20
  %342 = load i32, i32* %ECX.i419
  %343 = zext i32 %342 to i64
  %344 = load i64, i64* %PC.i418
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC.i418
  %346 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %346
  store %struct.Memory* %loadMem_40141e, %struct.Memory** %MEMORY
  %loadMem_401421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RBP.i417
  %357 = sub i64 %356, 20
  %358 = load i64, i64* %PC.i415
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC.i415
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360
  %362 = sext i32 %361 to i64
  store i64 %362, i64* %RAX.i416, align 8
  store %struct.Memory* %loadMem_401421, %struct.Memory** %MEMORY
  %loadMem_401425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %RAX.i413
  %373 = mul i64 %372, 4
  %374 = add i64 %373, 8807744
  %375 = load i64, i64* %PC.i412
  %376 = add i64 %375, 7
  store i64 %376, i64* %PC.i412
  %377 = inttoptr i64 %374 to i32*
  %378 = load i32, i32* %377
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_401425, %struct.Memory** %MEMORY
  %loadMem_40142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %ECX.i410 = bitcast %union.anon* %385 to i32*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 15
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RBP.i411
  %390 = sub i64 %389, 24
  %391 = load i32, i32* %ECX.i410
  %392 = zext i32 %391 to i64
  %393 = load i64, i64* %PC.i409
  %394 = add i64 %393, 3
  store i64 %394, i64* %PC.i409
  %395 = inttoptr i64 %390 to i32*
  store i32 %391, i32* %395
  store %struct.Memory* %loadMem_40142c, %struct.Memory** %MEMORY
  %loadMem_40142f = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RBP.i408
  %403 = sub i64 %402, 24
  %404 = load i64, i64* %PC.i407
  %405 = add i64 %404, 4
  store i64 %405, i64* %PC.i407
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = sub i32 %407, 1
  %409 = icmp ult i32 %407, 1
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %410, i8* %411, align 1
  %412 = and i32 %408, 255
  %413 = call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %416, i8* %417, align 1
  %418 = xor i32 %407, 1
  %419 = xor i32 %418, %408
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %422, i8* %423, align 1
  %424 = icmp eq i32 %408, 0
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %425, i8* %426, align 1
  %427 = lshr i32 %408, 31
  %428 = trunc i32 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %428, i8* %429, align 1
  %430 = lshr i32 %407, 31
  %431 = xor i32 %427, %430
  %432 = add i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %434, i8* %435, align 1
  store %struct.Memory* %loadMem_40142f, %struct.Memory** %MEMORY
  %loadMem_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %PC.i406
  %440 = add i64 %439, 33
  %441 = load i64, i64* %PC.i406
  %442 = add i64 %441, 6
  %443 = load i64, i64* %PC.i406
  %444 = add i64 %443, 6
  store i64 %444, i64* %PC.i406
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %446 = load i8, i8* %445, align 1
  %447 = icmp eq i8 %446, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %BRANCH_TAKEN, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %450 = select i1 %447, i64 %440, i64 %442
  store i64 %450, i64* %449, align 8
  store %struct.Memory* %loadMem_401433, %struct.Memory** %MEMORY
  %loadBr_401433 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401433 = icmp eq i8 %loadBr_401433, 1
  br i1 %cmpBr_401433, label %block_.L_401454, label %block_401439

block_401439:                                     ; preds = %block_40140a
  %loadMem_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RBP.i405
  %461 = sub i64 %460, 28
  %462 = load i64, i64* %PC.i403
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i403
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_401439, %struct.Memory** %MEMORY
  %loadMem_40143c = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RAX.i402
  %474 = load i64, i64* %PC.i401
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC.i401
  %476 = and i64 1, %473
  %477 = trunc i64 %476 to i32
  store i64 %476, i64* %RAX.i402, align 8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %478, align 1
  %479 = and i32 %477, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = icmp eq i32 %477, 0
  %486 = zext i1 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %486, i8* %487, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %488, align 1
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %489, align 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %490, align 1
  store %struct.Memory* %loadMem_40143c, %struct.Memory** %MEMORY
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %EAX.i400 = bitcast %union.anon* %496 to i32*
  %497 = load i32, i32* %EAX.i400
  %498 = zext i32 %497 to i64
  %499 = load i64, i64* %PC.i399
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC.i399
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %501, align 1
  %502 = and i32 %497, 255
  %503 = call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %506, i8* %507, align 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %508, align 1
  %509 = icmp eq i32 %497, 0
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %510, i8* %511, align 1
  %512 = lshr i32 %497, 31
  %513 = trunc i32 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %513, i8* %514, align 1
  %515 = lshr i32 %497, 31
  %516 = xor i32 %512, %515
  %517 = add i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %519, i8* %520, align 1
  store %struct.Memory* %loadMem_40143f, %struct.Memory** %MEMORY
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %PC.i398
  %525 = add i64 %524, 18
  %526 = load i64, i64* %PC.i398
  %527 = add i64 %526, 6
  %528 = load i64, i64* %PC.i398
  %529 = add i64 %528, 6
  store i64 %529, i64* %PC.i398
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %531 = load i8, i8* %530, align 1
  store i8 %531, i8* %BRANCH_TAKEN, align 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %533 = icmp ne i8 %531, 0
  %534 = select i1 %533, i64 %525, i64 %527
  store i64 %534, i64* %532, align 8
  store %struct.Memory* %loadMem_401442, %struct.Memory** %MEMORY
  %loadBr_401442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401442 = icmp eq i8 %loadBr_401442, 1
  br i1 %cmpBr_401442, label %block_.L_401454, label %block_401448

block_401448:                                     ; preds = %block_401439
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %RBP.i397
  %542 = sub i64 %541, 4
  %543 = load i64, i64* %PC.i396
  %544 = add i64 %543, 7
  store i64 %544, i64* %PC.i396
  %545 = inttoptr i64 %542 to i32*
  store i32 1, i32* %545
  store %struct.Memory* %loadMem_401448, %struct.Memory** %MEMORY
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i395
  %550 = add i64 %549, 913
  %551 = load i64, i64* %PC.i395
  %552 = add i64 %551, 5
  store i64 %552, i64* %PC.i395
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %550, i64* %553, align 8
  store %struct.Memory* %loadMem_40144f, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401454:                                  ; preds = %block_401439, %block_40140a
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 15
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %RBP.i394
  %561 = sub i64 %560, 24
  %562 = load i64, i64* %PC.i393
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC.i393
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = sub i32 %565, 5
  %567 = icmp ult i32 %565, 5
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %568, i8* %569, align 1
  %570 = and i32 %566, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %574, i8* %575, align 1
  %576 = xor i32 %565, 5
  %577 = xor i32 %576, %566
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %580, i8* %581, align 1
  %582 = icmp eq i32 %566, 0
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %566, 31
  %586 = trunc i32 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %586, i8* %587, align 1
  %588 = lshr i32 %565, 31
  %589 = xor i32 %585, %588
  %590 = add i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %592, i8* %593, align 1
  store %struct.Memory* %loadMem_401454, %struct.Memory** %MEMORY
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i392
  %598 = add i64 %597, 18
  %599 = load i64, i64* %PC.i392
  %600 = add i64 %599, 6
  %601 = load i64, i64* %PC.i392
  %602 = add i64 %601, 6
  store i64 %602, i64* %PC.i392
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %604 = load i8, i8* %603, align 1
  %605 = icmp eq i8 %604, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %BRANCH_TAKEN, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %608 = select i1 %605, i64 %598, i64 %600
  store i64 %608, i64* %607, align 8
  store %struct.Memory* %loadMem_401458, %struct.Memory** %MEMORY
  %loadBr_401458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401458 = icmp eq i8 %loadBr_401458, 1
  br i1 %cmpBr_401458, label %block_.L_40146a, label %block_40145e

block_40145e:                                     ; preds = %block_.L_401454
  %loadMem_40145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i391
  %616 = sub i64 %615, 4
  %617 = load i64, i64* %PC.i390
  %618 = add i64 %617, 7
  store i64 %618, i64* %PC.i390
  %619 = inttoptr i64 %616 to i32*
  store i32 1, i32* %619
  store %struct.Memory* %loadMem_40145e, %struct.Memory** %MEMORY
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %PC.i389
  %624 = add i64 %623, 891
  %625 = load i64, i64* %PC.i389
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i389
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %627, align 8
  store %struct.Memory* %loadMem_401465, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_40146a:                                  ; preds = %block_.L_401454
  %loadMem_40146a = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %PC.i388
  %632 = add i64 %631, 5
  %633 = load i64, i64* %PC.i388
  %634 = add i64 %633, 5
  store i64 %634, i64* %PC.i388
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %632, i64* %635, align 8
  store %struct.Memory* %loadMem_40146a, %struct.Memory** %MEMORY
  br label %block_.L_40146f

block_.L_40146f:                                  ; preds = %block_.L_4014a8, %block_.L_40146a
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i387
  %643 = sub i64 %642, 24
  %644 = load i64, i64* %PC.i386
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC.i386
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
  store %struct.Memory* %loadMem_40146f, %struct.Memory** %MEMORY
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %PC.i385
  %672 = add i64 %671, 81
  %673 = load i64, i64* %PC.i385
  %674 = add i64 %673, 6
  %675 = load i64, i64* %PC.i385
  %676 = add i64 %675, 6
  store i64 %676, i64* %PC.i385
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %678 = load i8, i8* %677, align 1
  store i8 %678, i8* %BRANCH_TAKEN, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %680 = icmp ne i8 %678, 0
  %681 = select i1 %680, i64 %672, i64 %674
  store i64 %681, i64* %679, align 8
  store %struct.Memory* %loadMem_401473, %struct.Memory** %MEMORY
  %loadBr_401473 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401473 = icmp eq i8 %loadBr_401473, 1
  br i1 %cmpBr_401473, label %block_.L_4014c4, label %block_401479

block_401479:                                     ; preds = %block_.L_40146f
  %loadMem_401479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RBP.i384
  %689 = sub i64 %688, 24
  %690 = load i64, i64* %PC.i383
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC.i383
  %692 = inttoptr i64 %689 to i32*
  %693 = load i32, i32* %692
  %694 = sub i32 %693, 11
  %695 = icmp ult i32 %693, 11
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %696, i8* %697, align 1
  %698 = and i32 %694, 255
  %699 = call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %702, i8* %703, align 1
  %704 = xor i32 %693, 11
  %705 = xor i32 %704, %694
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %708, i8* %709, align 1
  %710 = icmp eq i32 %694, 0
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %711, i8* %712, align 1
  %713 = lshr i32 %694, 31
  %714 = trunc i32 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %714, i8* %715, align 1
  %716 = lshr i32 %693, 31
  %717 = xor i32 %713, %716
  %718 = add i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %720, i8* %721, align 1
  store %struct.Memory* %loadMem_401479, %struct.Memory** %MEMORY
  %loadMem_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %PC.i382
  %726 = add i64 %725, 16
  %727 = load i64, i64* %PC.i382
  %728 = add i64 %727, 6
  %729 = load i64, i64* %PC.i382
  %730 = add i64 %729, 6
  store i64 %730, i64* %PC.i382
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %732 = load i8, i8* %731, align 1
  store i8 %732, i8* %BRANCH_TAKEN, align 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %734 = icmp ne i8 %732, 0
  %735 = select i1 %734, i64 %726, i64 %728
  store i64 %735, i64* %733, align 8
  store %struct.Memory* %loadMem_40147d, %struct.Memory** %MEMORY
  %loadBr_40147d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40147d = icmp eq i8 %loadBr_40147d, 1
  br i1 %cmpBr_40147d, label %block_.L_40148d, label %block_401483

block_401483:                                     ; preds = %block_401479
  %loadMem_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i381
  %743 = sub i64 %742, 24
  %744 = load i64, i64* %PC.i380
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i380
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = sub i32 %747, 9
  %749 = icmp ult i32 %747, 9
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %750, i8* %751, align 1
  %752 = and i32 %748, 255
  %753 = call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %756, i8* %757, align 1
  %758 = xor i32 %747, 9
  %759 = xor i32 %758, %748
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %762, i8* %763, align 1
  %764 = icmp eq i32 %748, 0
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %765, i8* %766, align 1
  %767 = lshr i32 %748, 31
  %768 = trunc i32 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %768, i8* %769, align 1
  %770 = lshr i32 %747, 31
  %771 = xor i32 %767, %770
  %772 = add i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %774, i8* %775, align 1
  store %struct.Memory* %loadMem_401483, %struct.Memory** %MEMORY
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %PC.i379
  %780 = add i64 %779, 18
  %781 = load i64, i64* %PC.i379
  %782 = add i64 %781, 6
  %783 = load i64, i64* %PC.i379
  %784 = add i64 %783, 6
  store i64 %784, i64* %PC.i379
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %786 = load i8, i8* %785, align 1
  %787 = icmp eq i8 %786, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %BRANCH_TAKEN, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %790 = select i1 %787, i64 %780, i64 %782
  store i64 %790, i64* %789, align 8
  store %struct.Memory* %loadMem_401487, %struct.Memory** %MEMORY
  %loadBr_401487 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401487 = icmp eq i8 %loadBr_401487, 1
  br i1 %cmpBr_401487, label %block_.L_401499, label %block_.L_40148d

block_.L_40148d:                                  ; preds = %block_401483, %block_401479
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i378
  %798 = sub i64 %797, 4
  %799 = load i64, i64* %PC.i377
  %800 = add i64 %799, 7
  store i64 %800, i64* %PC.i377
  %801 = inttoptr i64 %798 to i32*
  store i32 1, i32* %801
  store %struct.Memory* %loadMem_40148d, %struct.Memory** %MEMORY
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %PC.i376
  %806 = add i64 %805, 844
  %807 = load i64, i64* %PC.i376
  %808 = add i64 %807, 5
  store i64 %808, i64* %PC.i376
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %806, i64* %809, align 8
  store %struct.Memory* %loadMem_401494, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401499:                                  ; preds = %block_401483
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 15
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %815 to i64*
  %816 = load i64, i64* %RBP.i375
  %817 = sub i64 %816, 24
  %818 = load i64, i64* %PC.i374
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC.i374
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820
  %822 = sub i32 %821, 13
  %823 = icmp ult i32 %821, 13
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %824, i8* %825, align 1
  %826 = and i32 %822, 255
  %827 = call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %830, i8* %831, align 1
  %832 = xor i32 %821, 13
  %833 = xor i32 %832, %822
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %836, i8* %837, align 1
  %838 = icmp eq i32 %822, 0
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %839, i8* %840, align 1
  %841 = lshr i32 %822, 31
  %842 = trunc i32 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1
  %844 = lshr i32 %821, 31
  %845 = xor i32 %841, %844
  %846 = add i32 %845, %844
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %848, i8* %849, align 1
  store %struct.Memory* %loadMem_401499, %struct.Memory** %MEMORY
  %loadMem_40149d = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %PC.i373
  %854 = add i64 %853, 11
  %855 = load i64, i64* %PC.i373
  %856 = add i64 %855, 6
  %857 = load i64, i64* %PC.i373
  %858 = add i64 %857, 6
  store i64 %858, i64* %PC.i373
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %860 = load i8, i8* %859, align 1
  store i8 %860, i8* %BRANCH_TAKEN, align 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %862 = icmp ne i8 %860, 0
  %863 = select i1 %862, i64 %854, i64 %856
  store i64 %863, i64* %861, align 8
  store %struct.Memory* %loadMem_40149d, %struct.Memory** %MEMORY
  %loadBr_40149d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40149d = icmp eq i8 %loadBr_40149d, 1
  br i1 %cmpBr_40149d, label %block_.L_4014a8, label %block_4014a3

block_4014a3:                                     ; preds = %block_.L_401499
  %loadMem_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %PC.i372
  %868 = add i64 %867, 33
  %869 = load i64, i64* %PC.i372
  %870 = add i64 %869, 5
  store i64 %870, i64* %PC.i372
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %868, i64* %871, align 8
  store %struct.Memory* %loadMem_4014a3, %struct.Memory** %MEMORY
  br label %block_.L_4014c4

block_.L_4014a8:                                  ; preds = %block_.L_401499
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 15
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %RBP.i371
  %882 = sub i64 %881, 16
  %883 = load i64, i64* %PC.i369
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC.i369
  %885 = inttoptr i64 %882 to i32*
  %886 = load i32, i32* %885
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_4014a8, %struct.Memory** %MEMORY
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 15
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RAX.i367
  %898 = load i64, i64* %RBP.i368
  %899 = sub i64 %898, 20
  %900 = load i64, i64* %PC.i366
  %901 = add i64 %900, 3
  store i64 %901, i64* %PC.i366
  %902 = trunc i64 %897 to i32
  %903 = inttoptr i64 %899 to i32*
  %904 = load i32, i32* %903
  %905 = add i32 %904, %902
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RAX.i367, align 8
  %907 = icmp ult i32 %905, %902
  %908 = icmp ult i32 %905, %904
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %910, i8* %911, align 1
  %912 = and i32 %905, 255
  %913 = call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %916, i8* %917, align 1
  %918 = xor i32 %904, %902
  %919 = xor i32 %918, %905
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %922, i8* %923, align 1
  %924 = icmp eq i32 %905, 0
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %925, i8* %926, align 1
  %927 = lshr i32 %905, 31
  %928 = trunc i32 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %928, i8* %929, align 1
  %930 = lshr i32 %902, 31
  %931 = lshr i32 %904, 31
  %932 = xor i32 %927, %930
  %933 = xor i32 %927, %931
  %934 = add i32 %932, %933
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %936, i8* %937, align 1
  store %struct.Memory* %loadMem_4014ab, %struct.Memory** %MEMORY
  %loadMem_4014ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %EAX.i364 = bitcast %union.anon* %943 to i32*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 15
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RBP.i365
  %948 = sub i64 %947, 20
  %949 = load i32, i32* %EAX.i364
  %950 = zext i32 %949 to i64
  %951 = load i64, i64* %PC.i363
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i363
  %953 = inttoptr i64 %948 to i32*
  store i32 %949, i32* %953
  store %struct.Memory* %loadMem_4014ae, %struct.Memory** %MEMORY
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 15
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RBP.i362
  %964 = sub i64 %963, 20
  %965 = load i64, i64* %PC.i360
  %966 = add i64 %965, 4
  store i64 %966, i64* %PC.i360
  %967 = inttoptr i64 %964 to i32*
  %968 = load i32, i32* %967
  %969 = sext i32 %968 to i64
  store i64 %969, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_4014b1, %struct.Memory** %MEMORY
  %loadMem_4014b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 5
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RCX.i359
  %980 = mul i64 %979, 4
  %981 = add i64 %980, 8807744
  %982 = load i64, i64* %PC.i357
  %983 = add i64 %982, 7
  store i64 %983, i64* %PC.i357
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_4014b5, %struct.Memory** %MEMORY
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %992 to i32*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i356
  %997 = sub i64 %996, 24
  %998 = load i32, i32* %EAX.i355
  %999 = zext i32 %998 to i64
  %1000 = load i64, i64* %PC.i354
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC.i354
  %1002 = inttoptr i64 %997 to i32*
  store i32 %998, i32* %1002
  store %struct.Memory* %loadMem_4014bc, %struct.Memory** %MEMORY
  %loadMem_4014bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %PC.i353
  %1007 = add i64 %1006, -80
  %1008 = load i64, i64* %PC.i353
  %1009 = add i64 %1008, 5
  store i64 %1009, i64* %PC.i353
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1007, i64* %1010, align 8
  store %struct.Memory* %loadMem_4014bf, %struct.Memory** %MEMORY
  br label %block_.L_40146f

block_.L_4014c4:                                  ; preds = %block_4014a3, %block_.L_40146f
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %PC.i352
  %1015 = add i64 %1014, 5
  %1016 = load i64, i64* %PC.i352
  %1017 = add i64 %1016, 5
  store i64 %1017, i64* %PC.i352
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1015, i64* %1018, align 8
  store %struct.Memory* %loadMem_4014c4, %struct.Memory** %MEMORY
  br label %block_.L_4014c9

block_.L_4014c9:                                  ; preds = %block_.L_4014c4
  %loadMem_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 15
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RBP.i351
  %1029 = sub i64 %1028, 28
  %1030 = load i64, i64* %PC.i349
  %1031 = add i64 %1030, 3
  store i64 %1031, i64* %PC.i349
  %1032 = inttoptr i64 %1029 to i32*
  %1033 = load i32, i32* %1032
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_4014c9, %struct.Memory** %MEMORY
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %RAX.i348
  %1042 = load i64, i64* %PC.i347
  %1043 = add i64 %1042, 3
  store i64 %1043, i64* %PC.i347
  %1044 = trunc i64 %1041 to i32
  %1045 = add i32 1, %1044
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX.i348, align 8
  %1047 = icmp ult i32 %1045, %1044
  %1048 = icmp ult i32 %1045, 1
  %1049 = or i1 %1047, %1048
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1050, i8* %1051, align 1
  %1052 = and i32 %1045, 255
  %1053 = call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1056, i8* %1057, align 1
  %1058 = xor i64 1, %1041
  %1059 = trunc i64 %1058 to i32
  %1060 = xor i32 %1059, %1045
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1063, i8* %1064, align 1
  %1065 = icmp eq i32 %1045, 0
  %1066 = zext i1 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1066, i8* %1067, align 1
  %1068 = lshr i32 %1045, 31
  %1069 = trunc i32 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1069, i8* %1070, align 1
  %1071 = lshr i32 %1044, 31
  %1072 = xor i32 %1068, %1071
  %1073 = add i32 %1072, %1068
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1075, i8* %1076, align 1
  store %struct.Memory* %loadMem_4014cc, %struct.Memory** %MEMORY
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 1
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %1082 to i32*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 15
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RBP.i346
  %1087 = sub i64 %1086, 28
  %1088 = load i32, i32* %EAX.i345
  %1089 = zext i32 %1088 to i64
  %1090 = load i64, i64* %PC.i344
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i344
  %1092 = inttoptr i64 %1087 to i32*
  store i32 %1088, i32* %1092
  store %struct.Memory* %loadMem_4014cf, %struct.Memory** %MEMORY
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %PC.i343
  %1097 = add i64 %1096, -210
  %1098 = load i64, i64* %PC.i343
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %PC.i343
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1097, i64* %1100, align 8
  store %struct.Memory* %loadMem_4014d2, %struct.Memory** %MEMORY
  br label %block_.L_401400

block_.L_4014d7:                                  ; preds = %block_.L_401400
  %loadMem_4014d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %RBP.i342
  %1108 = sub i64 %1107, 28
  %1109 = load i64, i64* %PC.i341
  %1110 = add i64 %1109, 7
  store i64 %1110, i64* %PC.i341
  %1111 = inttoptr i64 %1108 to i32*
  store i32 0, i32* %1111
  store %struct.Memory* %loadMem_4014d7, %struct.Memory** %MEMORY
  br label %block_.L_4014de

block_.L_4014de:                                  ; preds = %block_.L_401518, %block_.L_4014d7
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i340
  %1119 = sub i64 %1118, 28
  %1120 = load i64, i64* %PC.i339
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC.i339
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = sub i32 %1123, 8
  %1125 = icmp ult i32 %1123, 8
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1126, i8* %1127, align 1
  %1128 = and i32 %1124, 255
  %1129 = call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1132, i8* %1133, align 1
  %1134 = xor i32 %1123, 8
  %1135 = xor i32 %1134, %1124
  %1136 = lshr i32 %1135, 4
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1138, i8* %1139, align 1
  %1140 = icmp eq i32 %1124, 0
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i32 %1124, 31
  %1144 = trunc i32 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i32 %1123, 31
  %1147 = xor i32 %1143, %1146
  %1148 = add i32 %1147, %1146
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1150, i8* %1151, align 1
  store %struct.Memory* %loadMem_4014de, %struct.Memory** %MEMORY
  %loadMem_4014e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %PC.i338
  %1156 = add i64 %1155, 68
  %1157 = load i64, i64* %PC.i338
  %1158 = add i64 %1157, 6
  %1159 = load i64, i64* %PC.i338
  %1160 = add i64 %1159, 6
  store i64 %1160, i64* %PC.i338
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1162 = load i8, i8* %1161, align 1
  %1163 = icmp ne i8 %1162, 0
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1165 = load i8, i8* %1164, align 1
  %1166 = icmp ne i8 %1165, 0
  %1167 = xor i1 %1163, %1166
  %1168 = xor i1 %1167, true
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %BRANCH_TAKEN, align 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1171 = select i1 %1167, i64 %1158, i64 %1156
  store i64 %1171, i64* %1170, align 8
  store %struct.Memory* %loadMem_4014e2, %struct.Memory** %MEMORY
  %loadBr_4014e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014e2 = icmp eq i8 %loadBr_4014e2, 1
  br i1 %cmpBr_4014e2, label %block_.L_401526, label %block_4014e8

block_4014e8:                                     ; preds = %block_.L_4014de
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 1
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 15
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RBP.i337
  %1182 = sub i64 %1181, 8
  %1183 = load i64, i64* %PC.i335
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %PC.i335
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_4014e8, %struct.Memory** %MEMORY
  %loadMem_4014eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 5
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 15
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RBP.i334
  %1198 = sub i64 %1197, 28
  %1199 = load i64, i64* %PC.i332
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %PC.i332
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_4014eb, %struct.Memory** %MEMORY
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 5
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %RAX.i330
  %1214 = load i64, i64* %RCX.i331
  %1215 = mul i64 %1214, 4
  %1216 = add i64 %1215, 4347232
  %1217 = load i64, i64* %PC.i329
  %1218 = add i64 %1217, 7
  store i64 %1218, i64* %PC.i329
  %1219 = trunc i64 %1213 to i32
  %1220 = inttoptr i64 %1216 to i32*
  %1221 = load i32, i32* %1220
  %1222 = add i32 %1221, %1219
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RAX.i330, align 8
  %1224 = icmp ult i32 %1222, %1219
  %1225 = icmp ult i32 %1222, %1221
  %1226 = or i1 %1224, %1225
  %1227 = zext i1 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1227, i8* %1228, align 1
  %1229 = and i32 %1222, 255
  %1230 = call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1233, i8* %1234, align 1
  %1235 = xor i32 %1221, %1219
  %1236 = xor i32 %1235, %1222
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1239, i8* %1240, align 1
  %1241 = icmp eq i32 %1222, 0
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1242, i8* %1243, align 1
  %1244 = lshr i32 %1222, 31
  %1245 = trunc i32 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1245, i8* %1246, align 1
  %1247 = lshr i32 %1219, 31
  %1248 = lshr i32 %1221, 31
  %1249 = xor i32 %1244, %1247
  %1250 = xor i32 %1244, %1248
  %1251 = add i32 %1249, %1250
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1253, i8* %1254, align 1
  store %struct.Memory* %loadMem_4014ef, %struct.Memory** %MEMORY
  %loadMem_4014f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %1260 to i32*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %1263 to i64*
  %1264 = load i32, i32* %EAX.i327
  %1265 = zext i32 %1264 to i64
  %1266 = load i64, i64* %PC.i326
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i326
  %1268 = shl i64 %1265, 32
  %1269 = ashr exact i64 %1268, 32
  store i64 %1269, i64* %RCX.i328, align 8
  store %struct.Memory* %loadMem_4014f6, %struct.Memory** %MEMORY
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 5
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %RCX.i325
  %1277 = mul i64 %1276, 4
  %1278 = add i64 %1277, 8807744
  %1279 = load i64, i64* %PC.i324
  %1280 = add i64 %1279, 8
  store i64 %1280, i64* %PC.i324
  %1281 = inttoptr i64 %1278 to i32*
  %1282 = load i32, i32* %1281
  %1283 = sub i32 %1282, 3
  %1284 = icmp ult i32 %1282, 3
  %1285 = zext i1 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1285, i8* %1286, align 1
  %1287 = and i32 %1283, 255
  %1288 = call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1291, i8* %1292, align 1
  %1293 = xor i32 %1282, 3
  %1294 = xor i32 %1293, %1283
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1297, i8* %1298, align 1
  %1299 = icmp eq i32 %1283, 0
  %1300 = zext i1 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1300, i8* %1301, align 1
  %1302 = lshr i32 %1283, 31
  %1303 = trunc i32 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1303, i8* %1304, align 1
  %1305 = lshr i32 %1282, 31
  %1306 = xor i32 %1302, %1305
  %1307 = add i32 %1306, %1305
  %1308 = icmp eq i32 %1307, 2
  %1309 = zext i1 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1309, i8* %1310, align 1
  store %struct.Memory* %loadMem_4014f9, %struct.Memory** %MEMORY
  %loadMem_401501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %PC.i323
  %1315 = add i64 %1314, 18
  %1316 = load i64, i64* %PC.i323
  %1317 = add i64 %1316, 6
  %1318 = load i64, i64* %PC.i323
  %1319 = add i64 %1318, 6
  store i64 %1319, i64* %PC.i323
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1321 = load i8, i8* %1320, align 1
  %1322 = icmp eq i8 %1321, 0
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %BRANCH_TAKEN, align 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1325 = select i1 %1322, i64 %1315, i64 %1317
  store i64 %1325, i64* %1324, align 8
  store %struct.Memory* %loadMem_401501, %struct.Memory** %MEMORY
  %loadBr_401501 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401501 = icmp eq i8 %loadBr_401501, 1
  br i1 %cmpBr_401501, label %block_.L_401513, label %block_401507

block_401507:                                     ; preds = %block_4014e8
  %loadMem_401507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 15
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %RBP.i322
  %1333 = sub i64 %1332, 4
  %1334 = load i64, i64* %PC.i321
  %1335 = add i64 %1334, 7
  store i64 %1335, i64* %PC.i321
  %1336 = inttoptr i64 %1333 to i32*
  store i32 1, i32* %1336
  store %struct.Memory* %loadMem_401507, %struct.Memory** %MEMORY
  %loadMem_40150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %PC.i320
  %1341 = add i64 %1340, 722
  %1342 = load i64, i64* %PC.i320
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC.i320
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1341, i64* %1344, align 8
  store %struct.Memory* %loadMem_40150e, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401513:                                  ; preds = %block_4014e8
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %PC.i319
  %1349 = add i64 %1348, 5
  %1350 = load i64, i64* %PC.i319
  %1351 = add i64 %1350, 5
  store i64 %1351, i64* %PC.i319
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1349, i64* %1352, align 8
  store %struct.Memory* %loadMem_401513, %struct.Memory** %MEMORY
  br label %block_.L_401518

block_.L_401518:                                  ; preds = %block_.L_401513
  %loadMem_401518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 1
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 15
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %1361 to i64*
  %1362 = load i64, i64* %RBP.i318
  %1363 = sub i64 %1362, 28
  %1364 = load i64, i64* %PC.i316
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC.i316
  %1366 = inttoptr i64 %1363 to i32*
  %1367 = load i32, i32* %1366
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_401518, %struct.Memory** %MEMORY
  %loadMem_40151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RAX.i315
  %1376 = load i64, i64* %PC.i314
  %1377 = add i64 %1376, 3
  store i64 %1377, i64* %PC.i314
  %1378 = trunc i64 %1375 to i32
  %1379 = add i32 1, %1378
  %1380 = zext i32 %1379 to i64
  store i64 %1380, i64* %RAX.i315, align 8
  %1381 = icmp ult i32 %1379, %1378
  %1382 = icmp ult i32 %1379, 1
  %1383 = or i1 %1381, %1382
  %1384 = zext i1 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1384, i8* %1385, align 1
  %1386 = and i32 %1379, 255
  %1387 = call i32 @llvm.ctpop.i32(i32 %1386)
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1390, i8* %1391, align 1
  %1392 = xor i64 1, %1375
  %1393 = trunc i64 %1392 to i32
  %1394 = xor i32 %1393, %1379
  %1395 = lshr i32 %1394, 4
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1397, i8* %1398, align 1
  %1399 = icmp eq i32 %1379, 0
  %1400 = zext i1 %1399 to i8
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1400, i8* %1401, align 1
  %1402 = lshr i32 %1379, 31
  %1403 = trunc i32 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1403, i8* %1404, align 1
  %1405 = lshr i32 %1378, 31
  %1406 = xor i32 %1402, %1405
  %1407 = add i32 %1406, %1402
  %1408 = icmp eq i32 %1407, 2
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1409, i8* %1410, align 1
  store %struct.Memory* %loadMem_40151b, %struct.Memory** %MEMORY
  %loadMem_40151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 1
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %EAX.i312 = bitcast %union.anon* %1416 to i32*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 15
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1419 to i64*
  %1420 = load i64, i64* %RBP.i313
  %1421 = sub i64 %1420, 28
  %1422 = load i32, i32* %EAX.i312
  %1423 = zext i32 %1422 to i64
  %1424 = load i64, i64* %PC.i311
  %1425 = add i64 %1424, 3
  store i64 %1425, i64* %PC.i311
  %1426 = inttoptr i64 %1421 to i32*
  store i32 %1422, i32* %1426
  store %struct.Memory* %loadMem_40151e, %struct.Memory** %MEMORY
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %PC.i310
  %1431 = add i64 %1430, -67
  %1432 = load i64, i64* %PC.i310
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i310
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1431, i64* %1434, align 8
  store %struct.Memory* %loadMem_401521, %struct.Memory** %MEMORY
  br label %block_.L_4014de

block_.L_401526:                                  ; preds = %block_.L_4014de
  %loadMem_401526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 15
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %1440 to i64*
  %1441 = load i64, i64* %RBP.i309
  %1442 = sub i64 %1441, 28
  %1443 = load i64, i64* %PC.i308
  %1444 = add i64 %1443, 7
  store i64 %1444, i64* %PC.i308
  %1445 = inttoptr i64 %1442 to i32*
  store i32 0, i32* %1445
  store %struct.Memory* %loadMem_401526, %struct.Memory** %MEMORY
  br label %block_.L_40152d

block_.L_40152d:                                  ; preds = %block_.L_4015d1, %block_.L_401526
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RBP.i307
  %1453 = sub i64 %1452, 28
  %1454 = load i64, i64* %PC.i306
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC.i306
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = sub i32 %1457, 4
  %1459 = icmp ult i32 %1457, 4
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1460, i8* %1461, align 1
  %1462 = and i32 %1458, 255
  %1463 = call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1466, i8* %1467, align 1
  %1468 = xor i32 %1457, 4
  %1469 = xor i32 %1468, %1458
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1472, i8* %1473, align 1
  %1474 = icmp eq i32 %1458, 0
  %1475 = zext i1 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1475, i8* %1476, align 1
  %1477 = lshr i32 %1458, 31
  %1478 = trunc i32 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1478, i8* %1479, align 1
  %1480 = lshr i32 %1457, 31
  %1481 = xor i32 %1477, %1480
  %1482 = add i32 %1481, %1480
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1484, i8* %1485, align 1
  store %struct.Memory* %loadMem_40152d, %struct.Memory** %MEMORY
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %PC.i305
  %1490 = add i64 %1489, 174
  %1491 = load i64, i64* %PC.i305
  %1492 = add i64 %1491, 6
  %1493 = load i64, i64* %PC.i305
  %1494 = add i64 %1493, 6
  store i64 %1494, i64* %PC.i305
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1496 = load i8, i8* %1495, align 1
  %1497 = icmp ne i8 %1496, 0
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1499 = load i8, i8* %1498, align 1
  %1500 = icmp ne i8 %1499, 0
  %1501 = xor i1 %1497, %1500
  %1502 = xor i1 %1501, true
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %BRANCH_TAKEN, align 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1505 = select i1 %1501, i64 %1492, i64 %1490
  store i64 %1505, i64* %1504, align 8
  store %struct.Memory* %loadMem_401531, %struct.Memory** %MEMORY
  %loadBr_401531 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401531 = icmp eq i8 %loadBr_401531, 1
  br i1 %cmpBr_401531, label %block_.L_4015df, label %block_401537

block_401537:                                     ; preds = %block_.L_40152d
  %loadMem_401537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 15
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RBP.i304
  %1516 = sub i64 %1515, 28
  %1517 = load i64, i64* %PC.i302
  %1518 = add i64 %1517, 4
  store i64 %1518, i64* %PC.i302
  %1519 = inttoptr i64 %1516 to i32*
  %1520 = load i32, i32* %1519
  %1521 = sext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_401537, %struct.Memory** %MEMORY
  %loadMem_40153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 33
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 1
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 5
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %1530 to i64*
  %1531 = load i64, i64* %RAX.i300
  %1532 = mul i64 %1531, 4
  %1533 = add i64 %1532, 4347264
  %1534 = load i64, i64* %PC.i299
  %1535 = add i64 %1534, 7
  store i64 %1535, i64* %PC.i299
  %1536 = inttoptr i64 %1533 to i32*
  %1537 = load i32, i32* %1536
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_40153b, %struct.Memory** %MEMORY
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 5
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %ECX.i297 = bitcast %union.anon* %1544 to i32*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i298
  %1549 = sub i64 %1548, 16
  %1550 = load i32, i32* %ECX.i297
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %PC.i296
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i296
  %1554 = inttoptr i64 %1549 to i32*
  store i32 %1550, i32* %1554
  store %struct.Memory* %loadMem_401542, %struct.Memory** %MEMORY
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RBP.i295
  %1565 = sub i64 %1564, 8
  %1566 = load i64, i64* %PC.i293
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC.i293
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_401545, %struct.Memory** %MEMORY
  %loadMem_401548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 5
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 15
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RCX.i291
  %1581 = load i64, i64* %RBP.i292
  %1582 = sub i64 %1581, 16
  %1583 = load i64, i64* %PC.i290
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i290
  %1585 = trunc i64 %1580 to i32
  %1586 = inttoptr i64 %1582 to i32*
  %1587 = load i32, i32* %1586
  %1588 = add i32 %1587, %1585
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RCX.i291, align 8
  %1590 = icmp ult i32 %1588, %1585
  %1591 = icmp ult i32 %1588, %1587
  %1592 = or i1 %1590, %1591
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1593, i8* %1594, align 1
  %1595 = and i32 %1588, 255
  %1596 = call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1599, i8* %1600, align 1
  %1601 = xor i32 %1587, %1585
  %1602 = xor i32 %1601, %1588
  %1603 = lshr i32 %1602, 4
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1605, i8* %1606, align 1
  %1607 = icmp eq i32 %1588, 0
  %1608 = zext i1 %1607 to i8
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1608, i8* %1609, align 1
  %1610 = lshr i32 %1588, 31
  %1611 = trunc i32 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1611, i8* %1612, align 1
  %1613 = lshr i32 %1585, 31
  %1614 = lshr i32 %1587, 31
  %1615 = xor i32 %1610, %1613
  %1616 = xor i32 %1610, %1614
  %1617 = add i32 %1615, %1616
  %1618 = icmp eq i32 %1617, 2
  %1619 = zext i1 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1619, i8* %1620, align 1
  store %struct.Memory* %loadMem_401548, %struct.Memory** %MEMORY
  %loadMem_40154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 5
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %ECX.i288 = bitcast %union.anon* %1626 to i32*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 15
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1629 to i64*
  %1630 = load i64, i64* %RBP.i289
  %1631 = sub i64 %1630, 20
  %1632 = load i32, i32* %ECX.i288
  %1633 = zext i32 %1632 to i64
  %1634 = load i64, i64* %PC.i287
  %1635 = add i64 %1634, 3
  store i64 %1635, i64* %PC.i287
  %1636 = inttoptr i64 %1631 to i32*
  store i32 %1632, i32* %1636
  store %struct.Memory* %loadMem_40154b, %struct.Memory** %MEMORY
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 1
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RBP.i286
  %1647 = sub i64 %1646, 20
  %1648 = load i64, i64* %PC.i284
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %PC.i284
  %1650 = inttoptr i64 %1647 to i32*
  %1651 = load i32, i32* %1650
  %1652 = sext i32 %1651 to i64
  store i64 %1652, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_40154e, %struct.Memory** %MEMORY
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 1
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 5
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %1661 to i64*
  %1662 = load i64, i64* %RAX.i282
  %1663 = mul i64 %1662, 4
  %1664 = add i64 %1663, 8807744
  %1665 = load i64, i64* %PC.i281
  %1666 = add i64 %1665, 7
  store i64 %1666, i64* %PC.i281
  %1667 = inttoptr i64 %1664 to i32*
  %1668 = load i32, i32* %1667
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RCX.i283, align 8
  store %struct.Memory* %loadMem_401552, %struct.Memory** %MEMORY
  %loadMem_401559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 5
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %ECX.i279 = bitcast %union.anon* %1675 to i32*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 15
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %RBP.i280
  %1680 = sub i64 %1679, 24
  %1681 = load i32, i32* %ECX.i279
  %1682 = zext i32 %1681 to i64
  %1683 = load i64, i64* %PC.i278
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i278
  %1685 = inttoptr i64 %1680 to i32*
  store i32 %1681, i32* %1685
  store %struct.Memory* %loadMem_401559, %struct.Memory** %MEMORY
  %loadMem_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 15
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %RBP.i277
  %1693 = sub i64 %1692, 24
  %1694 = load i64, i64* %PC.i276
  %1695 = add i64 %1694, 4
  store i64 %1695, i64* %PC.i276
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696
  %1698 = sub i32 %1697, 5
  %1699 = icmp ult i32 %1697, 5
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1700, i8* %1701, align 1
  %1702 = and i32 %1698, 255
  %1703 = call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1706, i8* %1707, align 1
  %1708 = xor i32 %1697, 5
  %1709 = xor i32 %1708, %1698
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1712, i8* %1713, align 1
  %1714 = icmp eq i32 %1698, 0
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1715, i8* %1716, align 1
  %1717 = lshr i32 %1698, 31
  %1718 = trunc i32 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1718, i8* %1719, align 1
  %1720 = lshr i32 %1697, 31
  %1721 = xor i32 %1717, %1720
  %1722 = add i32 %1721, %1720
  %1723 = icmp eq i32 %1722, 2
  %1724 = zext i1 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1724, i8* %1725, align 1
  store %struct.Memory* %loadMem_40155c, %struct.Memory** %MEMORY
  %loadMem_401560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %PC.i275
  %1730 = add i64 %1729, 18
  %1731 = load i64, i64* %PC.i275
  %1732 = add i64 %1731, 6
  %1733 = load i64, i64* %PC.i275
  %1734 = add i64 %1733, 6
  store i64 %1734, i64* %PC.i275
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1736 = load i8, i8* %1735, align 1
  %1737 = icmp eq i8 %1736, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %BRANCH_TAKEN, align 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1740 = select i1 %1737, i64 %1730, i64 %1732
  store i64 %1740, i64* %1739, align 8
  store %struct.Memory* %loadMem_401560, %struct.Memory** %MEMORY
  %loadBr_401560 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401560 = icmp eq i8 %loadBr_401560, 1
  br i1 %cmpBr_401560, label %block_.L_401572, label %block_401566

block_401566:                                     ; preds = %block_401537
  %loadMem_401566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %RBP.i274
  %1748 = sub i64 %1747, 4
  %1749 = load i64, i64* %PC.i273
  %1750 = add i64 %1749, 7
  store i64 %1750, i64* %PC.i273
  %1751 = inttoptr i64 %1748 to i32*
  store i32 1, i32* %1751
  store %struct.Memory* %loadMem_401566, %struct.Memory** %MEMORY
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %PC.i272
  %1756 = add i64 %1755, 627
  %1757 = load i64, i64* %PC.i272
  %1758 = add i64 %1757, 5
  store i64 %1758, i64* %PC.i272
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1756, i64* %1759, align 8
  store %struct.Memory* %loadMem_40156d, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401572:                                  ; preds = %block_401537
  %loadMem_401572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %PC.i271
  %1764 = add i64 %1763, 5
  %1765 = load i64, i64* %PC.i271
  %1766 = add i64 %1765, 5
  store i64 %1766, i64* %PC.i271
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1764, i64* %1767, align 8
  store %struct.Memory* %loadMem_401572, %struct.Memory** %MEMORY
  br label %block_.L_401577

block_.L_401577:                                  ; preds = %block_.L_4015b0, %block_.L_401572
  %loadMem_401577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i270
  %1775 = sub i64 %1774, 24
  %1776 = load i64, i64* %PC.i269
  %1777 = add i64 %1776, 4
  store i64 %1777, i64* %PC.i269
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1780, align 1
  %1781 = and i32 %1779, 255
  %1782 = call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1785, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1787, align 1
  %1788 = icmp eq i32 %1779, 0
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1789, i8* %1790, align 1
  %1791 = lshr i32 %1779, 31
  %1792 = trunc i32 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1792, i8* %1793, align 1
  %1794 = lshr i32 %1779, 31
  %1795 = xor i32 %1791, %1794
  %1796 = add i32 %1795, %1794
  %1797 = icmp eq i32 %1796, 2
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1798, i8* %1799, align 1
  store %struct.Memory* %loadMem_401577, %struct.Memory** %MEMORY
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %PC.i268
  %1804 = add i64 %1803, 81
  %1805 = load i64, i64* %PC.i268
  %1806 = add i64 %1805, 6
  %1807 = load i64, i64* %PC.i268
  %1808 = add i64 %1807, 6
  store i64 %1808, i64* %PC.i268
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1810 = load i8, i8* %1809, align 1
  store i8 %1810, i8* %BRANCH_TAKEN, align 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1812 = icmp ne i8 %1810, 0
  %1813 = select i1 %1812, i64 %1804, i64 %1806
  store i64 %1813, i64* %1811, align 8
  store %struct.Memory* %loadMem_40157b, %struct.Memory** %MEMORY
  %loadBr_40157b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40157b = icmp eq i8 %loadBr_40157b, 1
  br i1 %cmpBr_40157b, label %block_.L_4015cc, label %block_401581

block_401581:                                     ; preds = %block_.L_401577
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 15
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1819 to i64*
  %1820 = load i64, i64* %RBP.i267
  %1821 = sub i64 %1820, 24
  %1822 = load i64, i64* %PC.i266
  %1823 = add i64 %1822, 4
  store i64 %1823, i64* %PC.i266
  %1824 = inttoptr i64 %1821 to i32*
  %1825 = load i32, i32* %1824
  %1826 = sub i32 %1825, 7
  %1827 = icmp ult i32 %1825, 7
  %1828 = zext i1 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1828, i8* %1829, align 1
  %1830 = and i32 %1826, 255
  %1831 = call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1834, i8* %1835, align 1
  %1836 = xor i32 %1825, 7
  %1837 = xor i32 %1836, %1826
  %1838 = lshr i32 %1837, 4
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1840, i8* %1841, align 1
  %1842 = icmp eq i32 %1826, 0
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1843, i8* %1844, align 1
  %1845 = lshr i32 %1826, 31
  %1846 = trunc i32 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1846, i8* %1847, align 1
  %1848 = lshr i32 %1825, 31
  %1849 = xor i32 %1845, %1848
  %1850 = add i32 %1849, %1848
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1852, i8* %1853, align 1
  store %struct.Memory* %loadMem_401581, %struct.Memory** %MEMORY
  %loadMem_401585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %PC.i265
  %1858 = add i64 %1857, 16
  %1859 = load i64, i64* %PC.i265
  %1860 = add i64 %1859, 6
  %1861 = load i64, i64* %PC.i265
  %1862 = add i64 %1861, 6
  store i64 %1862, i64* %PC.i265
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1864 = load i8, i8* %1863, align 1
  store i8 %1864, i8* %BRANCH_TAKEN, align 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1866 = icmp ne i8 %1864, 0
  %1867 = select i1 %1866, i64 %1858, i64 %1860
  store i64 %1867, i64* %1865, align 8
  store %struct.Memory* %loadMem_401585, %struct.Memory** %MEMORY
  %loadBr_401585 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401585 = icmp eq i8 %loadBr_401585, 1
  br i1 %cmpBr_401585, label %block_.L_401595, label %block_40158b

block_40158b:                                     ; preds = %block_401581
  %loadMem_40158b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RBP.i264
  %1875 = sub i64 %1874, 24
  %1876 = load i64, i64* %PC.i263
  %1877 = add i64 %1876, 4
  store i64 %1877, i64* %PC.i263
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = sub i32 %1879, 9
  %1881 = icmp ult i32 %1879, 9
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1882, i8* %1883, align 1
  %1884 = and i32 %1880, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = xor i32 %1879, 9
  %1891 = xor i32 %1890, %1880
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1894, i8* %1895, align 1
  %1896 = icmp eq i32 %1880, 0
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1897, i8* %1898, align 1
  %1899 = lshr i32 %1880, 31
  %1900 = trunc i32 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1879, 31
  %1903 = xor i32 %1899, %1902
  %1904 = add i32 %1903, %1902
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1906, i8* %1907, align 1
  store %struct.Memory* %loadMem_40158b, %struct.Memory** %MEMORY
  %loadMem_40158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %PC.i262
  %1912 = add i64 %1911, 18
  %1913 = load i64, i64* %PC.i262
  %1914 = add i64 %1913, 6
  %1915 = load i64, i64* %PC.i262
  %1916 = add i64 %1915, 6
  store i64 %1916, i64* %PC.i262
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1918 = load i8, i8* %1917, align 1
  %1919 = icmp eq i8 %1918, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %BRANCH_TAKEN, align 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1922 = select i1 %1919, i64 %1912, i64 %1914
  store i64 %1922, i64* %1921, align 8
  store %struct.Memory* %loadMem_40158f, %struct.Memory** %MEMORY
  %loadBr_40158f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40158f = icmp eq i8 %loadBr_40158f, 1
  br i1 %cmpBr_40158f, label %block_.L_4015a1, label %block_.L_401595

block_.L_401595:                                  ; preds = %block_40158b, %block_401581
  %loadMem_401595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 15
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %RBP.i261
  %1930 = sub i64 %1929, 4
  %1931 = load i64, i64* %PC.i260
  %1932 = add i64 %1931, 7
  store i64 %1932, i64* %PC.i260
  %1933 = inttoptr i64 %1930 to i32*
  store i32 1, i32* %1933
  store %struct.Memory* %loadMem_401595, %struct.Memory** %MEMORY
  %loadMem_40159c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %PC.i259
  %1938 = add i64 %1937, 580
  %1939 = load i64, i64* %PC.i259
  %1940 = add i64 %1939, 5
  store i64 %1940, i64* %PC.i259
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1938, i64* %1941, align 8
  store %struct.Memory* %loadMem_40159c, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_4015a1:                                  ; preds = %block_40158b
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 33
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i258
  %1949 = sub i64 %1948, 24
  %1950 = load i64, i64* %PC.i257
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i257
  %1952 = inttoptr i64 %1949 to i32*
  %1953 = load i32, i32* %1952
  %1954 = sub i32 %1953, 13
  %1955 = icmp ult i32 %1953, 13
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1956, i8* %1957, align 1
  %1958 = and i32 %1954, 255
  %1959 = call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1962, i8* %1963, align 1
  %1964 = xor i32 %1953, 13
  %1965 = xor i32 %1964, %1954
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1968, i8* %1969, align 1
  %1970 = icmp eq i32 %1954, 0
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1971, i8* %1972, align 1
  %1973 = lshr i32 %1954, 31
  %1974 = trunc i32 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1974, i8* %1975, align 1
  %1976 = lshr i32 %1953, 31
  %1977 = xor i32 %1973, %1976
  %1978 = add i32 %1977, %1976
  %1979 = icmp eq i32 %1978, 2
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1980, i8* %1981, align 1
  store %struct.Memory* %loadMem_4015a1, %struct.Memory** %MEMORY
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %PC.i256
  %1986 = add i64 %1985, 11
  %1987 = load i64, i64* %PC.i256
  %1988 = add i64 %1987, 6
  %1989 = load i64, i64* %PC.i256
  %1990 = add i64 %1989, 6
  store i64 %1990, i64* %PC.i256
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1992 = load i8, i8* %1991, align 1
  store i8 %1992, i8* %BRANCH_TAKEN, align 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1994 = icmp ne i8 %1992, 0
  %1995 = select i1 %1994, i64 %1986, i64 %1988
  store i64 %1995, i64* %1993, align 8
  store %struct.Memory* %loadMem_4015a5, %struct.Memory** %MEMORY
  %loadBr_4015a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015a5 = icmp eq i8 %loadBr_4015a5, 1
  br i1 %cmpBr_4015a5, label %block_.L_4015b0, label %block_4015ab

block_4015ab:                                     ; preds = %block_.L_4015a1
  %loadMem_4015ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %PC.i255
  %2000 = add i64 %1999, 33
  %2001 = load i64, i64* %PC.i255
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %PC.i255
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2000, i64* %2003, align 8
  store %struct.Memory* %loadMem_4015ab, %struct.Memory** %MEMORY
  br label %block_.L_4015cc

block_.L_4015b0:                                  ; preds = %block_.L_4015a1
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 1
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i254
  %2014 = sub i64 %2013, 16
  %2015 = load i64, i64* %PC.i252
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC.i252
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_4015b0, %struct.Memory** %MEMORY
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 1
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 15
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RAX.i250
  %2030 = load i64, i64* %RBP.i251
  %2031 = sub i64 %2030, 20
  %2032 = load i64, i64* %PC.i249
  %2033 = add i64 %2032, 3
  store i64 %2033, i64* %PC.i249
  %2034 = trunc i64 %2029 to i32
  %2035 = inttoptr i64 %2031 to i32*
  %2036 = load i32, i32* %2035
  %2037 = add i32 %2036, %2034
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i250, align 8
  %2039 = icmp ult i32 %2037, %2034
  %2040 = icmp ult i32 %2037, %2036
  %2041 = or i1 %2039, %2040
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2042, i8* %2043, align 1
  %2044 = and i32 %2037, 255
  %2045 = call i32 @llvm.ctpop.i32(i32 %2044)
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2048, i8* %2049, align 1
  %2050 = xor i32 %2036, %2034
  %2051 = xor i32 %2050, %2037
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2054, i8* %2055, align 1
  %2056 = icmp eq i32 %2037, 0
  %2057 = zext i1 %2056 to i8
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2057, i8* %2058, align 1
  %2059 = lshr i32 %2037, 31
  %2060 = trunc i32 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2060, i8* %2061, align 1
  %2062 = lshr i32 %2034, 31
  %2063 = lshr i32 %2036, 31
  %2064 = xor i32 %2059, %2062
  %2065 = xor i32 %2059, %2063
  %2066 = add i32 %2064, %2065
  %2067 = icmp eq i32 %2066, 2
  %2068 = zext i1 %2067 to i8
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2068, i8* %2069, align 1
  store %struct.Memory* %loadMem_4015b3, %struct.Memory** %MEMORY
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 1
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %2075 to i32*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 15
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2078 to i64*
  %2079 = load i64, i64* %RBP.i248
  %2080 = sub i64 %2079, 20
  %2081 = load i32, i32* %EAX.i247
  %2082 = zext i32 %2081 to i64
  %2083 = load i64, i64* %PC.i246
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %PC.i246
  %2085 = inttoptr i64 %2080 to i32*
  store i32 %2081, i32* %2085
  store %struct.Memory* %loadMem_4015b6, %struct.Memory** %MEMORY
  %loadMem_4015b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 5
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 15
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %RBP.i245
  %2096 = sub i64 %2095, 20
  %2097 = load i64, i64* %PC.i243
  %2098 = add i64 %2097, 4
  store i64 %2098, i64* %PC.i243
  %2099 = inttoptr i64 %2096 to i32*
  %2100 = load i32, i32* %2099
  %2101 = sext i32 %2100 to i64
  store i64 %2101, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_4015b9, %struct.Memory** %MEMORY
  %loadMem_4015bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 1
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 5
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RCX.i242
  %2112 = mul i64 %2111, 4
  %2113 = add i64 %2112, 8807744
  %2114 = load i64, i64* %PC.i240
  %2115 = add i64 %2114, 7
  store i64 %2115, i64* %PC.i240
  %2116 = inttoptr i64 %2113 to i32*
  %2117 = load i32, i32* %2116
  %2118 = zext i32 %2117 to i64
  store i64 %2118, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_4015bd, %struct.Memory** %MEMORY
  %loadMem_4015c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %2124 to i32*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i239
  %2129 = sub i64 %2128, 24
  %2130 = load i32, i32* %EAX.i238
  %2131 = zext i32 %2130 to i64
  %2132 = load i64, i64* %PC.i237
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %PC.i237
  %2134 = inttoptr i64 %2129 to i32*
  store i32 %2130, i32* %2134
  store %struct.Memory* %loadMem_4015c4, %struct.Memory** %MEMORY
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %PC.i236
  %2139 = add i64 %2138, -80
  %2140 = load i64, i64* %PC.i236
  %2141 = add i64 %2140, 5
  store i64 %2141, i64* %PC.i236
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2139, i64* %2142, align 8
  store %struct.Memory* %loadMem_4015c7, %struct.Memory** %MEMORY
  br label %block_.L_401577

block_.L_4015cc:                                  ; preds = %block_4015ab, %block_.L_401577
  %loadMem_4015cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %PC.i235
  %2147 = add i64 %2146, 5
  %2148 = load i64, i64* %PC.i235
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i235
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2147, i64* %2150, align 8
  store %struct.Memory* %loadMem_4015cc, %struct.Memory** %MEMORY
  br label %block_.L_4015d1

block_.L_4015d1:                                  ; preds = %block_.L_4015cc
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 15
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RBP.i234
  %2161 = sub i64 %2160, 28
  %2162 = load i64, i64* %PC.i232
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i232
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_4015d1, %struct.Memory** %MEMORY
  %loadMem_4015d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RAX.i231
  %2174 = load i64, i64* %PC.i230
  %2175 = add i64 %2174, 3
  store i64 %2175, i64* %PC.i230
  %2176 = trunc i64 %2173 to i32
  %2177 = add i32 1, %2176
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RAX.i231, align 8
  %2179 = icmp ult i32 %2177, %2176
  %2180 = icmp ult i32 %2177, 1
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2182, i8* %2183, align 1
  %2184 = and i32 %2177, 255
  %2185 = call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2188, i8* %2189, align 1
  %2190 = xor i64 1, %2173
  %2191 = trunc i64 %2190 to i32
  %2192 = xor i32 %2191, %2177
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2195, i8* %2196, align 1
  %2197 = icmp eq i32 %2177, 0
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2198, i8* %2199, align 1
  %2200 = lshr i32 %2177, 31
  %2201 = trunc i32 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2176, 31
  %2204 = xor i32 %2200, %2203
  %2205 = add i32 %2204, %2200
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2207, i8* %2208, align 1
  store %struct.Memory* %loadMem_4015d4, %struct.Memory** %MEMORY
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %2214 to i32*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i229
  %2219 = sub i64 %2218, 28
  %2220 = load i32, i32* %EAX.i228
  %2221 = zext i32 %2220 to i64
  %2222 = load i64, i64* %PC.i227
  %2223 = add i64 %2222, 3
  store i64 %2223, i64* %PC.i227
  %2224 = inttoptr i64 %2219 to i32*
  store i32 %2220, i32* %2224
  store %struct.Memory* %loadMem_4015d7, %struct.Memory** %MEMORY
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %PC.i226
  %2229 = add i64 %2228, -173
  %2230 = load i64, i64* %PC.i226
  %2231 = add i64 %2230, 5
  store i64 %2231, i64* %PC.i226
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2229, i64* %2232, align 8
  store %struct.Memory* %loadMem_4015da, %struct.Memory** %MEMORY
  br label %block_.L_40152d

block_.L_4015df:                                  ; preds = %block_.L_40152d
  %loadMem_4015df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i225
  %2240 = sub i64 %2239, 4
  %2241 = load i64, i64* %PC.i224
  %2242 = add i64 %2241, 7
  store i64 %2242, i64* %PC.i224
  %2243 = inttoptr i64 %2240 to i32*
  store i32 0, i32* %2243
  store %struct.Memory* %loadMem_4015df, %struct.Memory** %MEMORY
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %PC.i223
  %2248 = add i64 %2247, 506
  %2249 = load i64, i64* %PC.i223
  %2250 = add i64 %2249, 5
  store i64 %2250, i64* %PC.i223
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2248, i64* %2251, align 8
  store %struct.Memory* %loadMem_4015e6, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_4015eb:                                  ; preds = %entry
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i222
  %2259 = sub i64 %2258, 28
  %2260 = load i64, i64* %PC.i221
  %2261 = add i64 %2260, 7
  store i64 %2261, i64* %PC.i221
  %2262 = inttoptr i64 %2259 to i32*
  store i32 0, i32* %2262
  store %struct.Memory* %loadMem_4015eb, %struct.Memory** %MEMORY
  br label %block_.L_4015f2

block_.L_4015f2:                                  ; preds = %block_.L_4016bb, %block_.L_4015eb
  %loadMem_4015f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 15
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RBP.i220
  %2270 = sub i64 %2269, 28
  %2271 = load i64, i64* %PC.i219
  %2272 = add i64 %2271, 4
  store i64 %2272, i64* %PC.i219
  %2273 = inttoptr i64 %2270 to i32*
  %2274 = load i32, i32* %2273
  %2275 = sub i32 %2274, 4
  %2276 = icmp ult i32 %2274, 4
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2277, i8* %2278, align 1
  %2279 = and i32 %2275, 255
  %2280 = call i32 @llvm.ctpop.i32(i32 %2279)
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = xor i8 %2282, 1
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2283, i8* %2284, align 1
  %2285 = xor i32 %2274, 4
  %2286 = xor i32 %2285, %2275
  %2287 = lshr i32 %2286, 4
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2289, i8* %2290, align 1
  %2291 = icmp eq i32 %2275, 0
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2292, i8* %2293, align 1
  %2294 = lshr i32 %2275, 31
  %2295 = trunc i32 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2295, i8* %2296, align 1
  %2297 = lshr i32 %2274, 31
  %2298 = xor i32 %2294, %2297
  %2299 = add i32 %2298, %2297
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2301, i8* %2302, align 1
  store %struct.Memory* %loadMem_4015f2, %struct.Memory** %MEMORY
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %PC.i218
  %2307 = add i64 %2306, 211
  %2308 = load i64, i64* %PC.i218
  %2309 = add i64 %2308, 6
  %2310 = load i64, i64* %PC.i218
  %2311 = add i64 %2310, 6
  store i64 %2311, i64* %PC.i218
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2313 = load i8, i8* %2312, align 1
  %2314 = icmp ne i8 %2313, 0
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2316 = load i8, i8* %2315, align 1
  %2317 = icmp ne i8 %2316, 0
  %2318 = xor i1 %2314, %2317
  %2319 = xor i1 %2318, true
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %BRANCH_TAKEN, align 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2322 = select i1 %2318, i64 %2309, i64 %2307
  store i64 %2322, i64* %2321, align 8
  store %struct.Memory* %loadMem_4015f6, %struct.Memory** %MEMORY
  %loadBr_4015f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015f6 = icmp eq i8 %loadBr_4015f6, 1
  br i1 %cmpBr_4015f6, label %block_.L_4016c9, label %block_4015fc

block_4015fc:                                     ; preds = %block_.L_4015f2
  %loadMem_4015fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 1
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 15
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %RBP.i217
  %2333 = sub i64 %2332, 28
  %2334 = load i64, i64* %PC.i215
  %2335 = add i64 %2334, 4
  store i64 %2335, i64* %PC.i215
  %2336 = inttoptr i64 %2333 to i32*
  %2337 = load i32, i32* %2336
  %2338 = sext i32 %2337 to i64
  store i64 %2338, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_4015fc, %struct.Memory** %MEMORY
  %loadMem_401600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 1
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 5
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RAX.i213
  %2349 = mul i64 %2348, 4
  %2350 = add i64 %2349, 4347216
  %2351 = load i64, i64* %PC.i212
  %2352 = add i64 %2351, 7
  store i64 %2352, i64* %PC.i212
  %2353 = inttoptr i64 %2350 to i32*
  %2354 = load i32, i32* %2353
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_401600, %struct.Memory** %MEMORY
  %loadMem_401607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 5
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %2361 to i32*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i211
  %2366 = sub i64 %2365, 16
  %2367 = load i32, i32* %ECX.i210
  %2368 = zext i32 %2367 to i64
  %2369 = load i64, i64* %PC.i209
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %PC.i209
  %2371 = inttoptr i64 %2366 to i32*
  store i32 %2367, i32* %2371
  store %struct.Memory* %loadMem_401607, %struct.Memory** %MEMORY
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 5
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 15
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2380 to i64*
  %2381 = load i64, i64* %RBP.i208
  %2382 = sub i64 %2381, 8
  %2383 = load i64, i64* %PC.i206
  %2384 = add i64 %2383, 3
  store i64 %2384, i64* %PC.i206
  %2385 = inttoptr i64 %2382 to i32*
  %2386 = load i32, i32* %2385
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_40160a, %struct.Memory** %MEMORY
  %loadMem_40160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 5
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 15
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %RCX.i204
  %2398 = load i64, i64* %RBP.i205
  %2399 = sub i64 %2398, 16
  %2400 = load i64, i64* %PC.i203
  %2401 = add i64 %2400, 3
  store i64 %2401, i64* %PC.i203
  %2402 = trunc i64 %2397 to i32
  %2403 = inttoptr i64 %2399 to i32*
  %2404 = load i32, i32* %2403
  %2405 = add i32 %2404, %2402
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RCX.i204, align 8
  %2407 = icmp ult i32 %2405, %2402
  %2408 = icmp ult i32 %2405, %2404
  %2409 = or i1 %2407, %2408
  %2410 = zext i1 %2409 to i8
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2410, i8* %2411, align 1
  %2412 = and i32 %2405, 255
  %2413 = call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2416, i8* %2417, align 1
  %2418 = xor i32 %2404, %2402
  %2419 = xor i32 %2418, %2405
  %2420 = lshr i32 %2419, 4
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2422, i8* %2423, align 1
  %2424 = icmp eq i32 %2405, 0
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2425, i8* %2426, align 1
  %2427 = lshr i32 %2405, 31
  %2428 = trunc i32 %2427 to i8
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2428, i8* %2429, align 1
  %2430 = lshr i32 %2402, 31
  %2431 = lshr i32 %2404, 31
  %2432 = xor i32 %2427, %2430
  %2433 = xor i32 %2427, %2431
  %2434 = add i32 %2432, %2433
  %2435 = icmp eq i32 %2434, 2
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2436, i8* %2437, align 1
  store %struct.Memory* %loadMem_40160d, %struct.Memory** %MEMORY
  %loadMem_401610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 5
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %ECX.i201 = bitcast %union.anon* %2443 to i32*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 15
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %RBP.i202
  %2448 = sub i64 %2447, 20
  %2449 = load i32, i32* %ECX.i201
  %2450 = zext i32 %2449 to i64
  %2451 = load i64, i64* %PC.i200
  %2452 = add i64 %2451, 3
  store i64 %2452, i64* %PC.i200
  %2453 = inttoptr i64 %2448 to i32*
  store i32 %2449, i32* %2453
  store %struct.Memory* %loadMem_401610, %struct.Memory** %MEMORY
  %loadMem_401613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 1
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %2459 to i64*
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 15
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %RBP.i199
  %2464 = sub i64 %2463, 20
  %2465 = load i64, i64* %PC.i197
  %2466 = add i64 %2465, 4
  store i64 %2466, i64* %PC.i197
  %2467 = inttoptr i64 %2464 to i32*
  %2468 = load i32, i32* %2467
  %2469 = sext i32 %2468 to i64
  store i64 %2469, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_401613, %struct.Memory** %MEMORY
  %loadMem_401617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 1
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 5
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %RAX.i195
  %2480 = mul i64 %2479, 4
  %2481 = add i64 %2480, 8807744
  %2482 = load i64, i64* %PC.i194
  %2483 = add i64 %2482, 7
  store i64 %2483, i64* %PC.i194
  %2484 = inttoptr i64 %2481 to i32*
  %2485 = load i32, i32* %2484
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_401617, %struct.Memory** %MEMORY
  %loadMem_40161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 5
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %ECX.i192 = bitcast %union.anon* %2492 to i32*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i193
  %2497 = sub i64 %2496, 24
  %2498 = load i32, i32* %ECX.i192
  %2499 = zext i32 %2498 to i64
  %2500 = load i64, i64* %PC.i191
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i191
  %2502 = inttoptr i64 %2497 to i32*
  store i32 %2498, i32* %2502
  store %struct.Memory* %loadMem_40161e, %struct.Memory** %MEMORY
  %loadMem_401621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 15
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %RBP.i190
  %2510 = sub i64 %2509, 24
  %2511 = load i64, i64* %PC.i189
  %2512 = add i64 %2511, 4
  store i64 %2512, i64* %PC.i189
  %2513 = inttoptr i64 %2510 to i32*
  %2514 = load i32, i32* %2513
  %2515 = sub i32 %2514, 2
  %2516 = icmp ult i32 %2514, 2
  %2517 = zext i1 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2517, i8* %2518, align 1
  %2519 = and i32 %2515, 255
  %2520 = call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2523, i8* %2524, align 1
  %2525 = xor i32 %2514, 2
  %2526 = xor i32 %2525, %2515
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2529, i8* %2530, align 1
  %2531 = icmp eq i32 %2515, 0
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i32 %2515, 31
  %2535 = trunc i32 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2535, i8* %2536, align 1
  %2537 = lshr i32 %2514, 31
  %2538 = xor i32 %2534, %2537
  %2539 = add i32 %2538, %2537
  %2540 = icmp eq i32 %2539, 2
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2541, i8* %2542, align 1
  store %struct.Memory* %loadMem_401621, %struct.Memory** %MEMORY
  %loadMem_401625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i188
  %2547 = add i64 %2546, 33
  %2548 = load i64, i64* %PC.i188
  %2549 = add i64 %2548, 6
  %2550 = load i64, i64* %PC.i188
  %2551 = add i64 %2550, 6
  store i64 %2551, i64* %PC.i188
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2553 = load i8, i8* %2552, align 1
  %2554 = icmp eq i8 %2553, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %BRANCH_TAKEN, align 1
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2557 = select i1 %2554, i64 %2547, i64 %2549
  store i64 %2557, i64* %2556, align 8
  store %struct.Memory* %loadMem_401625, %struct.Memory** %MEMORY
  %loadBr_401625 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401625 = icmp eq i8 %loadBr_401625, 1
  br i1 %cmpBr_401625, label %block_.L_401646, label %block_40162b

block_40162b:                                     ; preds = %block_4015fc
  %loadMem_40162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 1
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 15
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2566 to i64*
  %2567 = load i64, i64* %RBP.i187
  %2568 = sub i64 %2567, 28
  %2569 = load i64, i64* %PC.i185
  %2570 = add i64 %2569, 3
  store i64 %2570, i64* %PC.i185
  %2571 = inttoptr i64 %2568 to i32*
  %2572 = load i32, i32* %2571
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_40162b, %struct.Memory** %MEMORY
  %loadMem_40162e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RAX.i184
  %2581 = load i64, i64* %PC.i183
  %2582 = add i64 %2581, 3
  store i64 %2582, i64* %PC.i183
  %2583 = and i64 1, %2580
  %2584 = trunc i64 %2583 to i32
  store i64 %2583, i64* %RAX.i184, align 8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2585, align 1
  %2586 = and i32 %2584, 255
  %2587 = call i32 @llvm.ctpop.i32(i32 %2586)
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  %2590 = xor i8 %2589, 1
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2590, i8* %2591, align 1
  %2592 = icmp eq i32 %2584, 0
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2593, i8* %2594, align 1
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2595, align 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2596, align 1
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2597, align 1
  store %struct.Memory* %loadMem_40162e, %struct.Memory** %MEMORY
  %loadMem_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 1
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %2603 to i32*
  %2604 = load i32, i32* %EAX.i182
  %2605 = zext i32 %2604 to i64
  %2606 = load i64, i64* %PC.i181
  %2607 = add i64 %2606, 3
  store i64 %2607, i64* %PC.i181
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2608, align 1
  %2609 = and i32 %2604, 255
  %2610 = call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2613, i8* %2614, align 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2615, align 1
  %2616 = icmp eq i32 %2604, 0
  %2617 = zext i1 %2616 to i8
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2617, i8* %2618, align 1
  %2619 = lshr i32 %2604, 31
  %2620 = trunc i32 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2620, i8* %2621, align 1
  %2622 = lshr i32 %2604, 31
  %2623 = xor i32 %2619, %2622
  %2624 = add i32 %2623, %2622
  %2625 = icmp eq i32 %2624, 2
  %2626 = zext i1 %2625 to i8
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2626, i8* %2627, align 1
  store %struct.Memory* %loadMem_401631, %struct.Memory** %MEMORY
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %PC.i180
  %2632 = add i64 %2631, 18
  %2633 = load i64, i64* %PC.i180
  %2634 = add i64 %2633, 6
  %2635 = load i64, i64* %PC.i180
  %2636 = add i64 %2635, 6
  store i64 %2636, i64* %PC.i180
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2638 = load i8, i8* %2637, align 1
  %2639 = icmp eq i8 %2638, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %BRANCH_TAKEN, align 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2642 = select i1 %2639, i64 %2632, i64 %2634
  store i64 %2642, i64* %2641, align 8
  store %struct.Memory* %loadMem_401634, %struct.Memory** %MEMORY
  %loadBr_401634 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401634 = icmp eq i8 %loadBr_401634, 1
  br i1 %cmpBr_401634, label %block_.L_401646, label %block_40163a

block_40163a:                                     ; preds = %block_40162b
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 15
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2648 to i64*
  %2649 = load i64, i64* %RBP.i179
  %2650 = sub i64 %2649, 4
  %2651 = load i64, i64* %PC.i178
  %2652 = add i64 %2651, 7
  store i64 %2652, i64* %PC.i178
  %2653 = inttoptr i64 %2650 to i32*
  store i32 1, i32* %2653
  store %struct.Memory* %loadMem_40163a, %struct.Memory** %MEMORY
  %loadMem_401641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %PC.i177
  %2658 = add i64 %2657, 415
  %2659 = load i64, i64* %PC.i177
  %2660 = add i64 %2659, 5
  store i64 %2660, i64* %PC.i177
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2658, i64* %2661, align 8
  store %struct.Memory* %loadMem_401641, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401646:                                  ; preds = %block_40162b, %block_4015fc
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i176
  %2669 = sub i64 %2668, 24
  %2670 = load i64, i64* %PC.i175
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i175
  %2672 = inttoptr i64 %2669 to i32*
  %2673 = load i32, i32* %2672
  %2674 = sub i32 %2673, 6
  %2675 = icmp ult i32 %2673, 6
  %2676 = zext i1 %2675 to i8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2676, i8* %2677, align 1
  %2678 = and i32 %2674, 255
  %2679 = call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2682, i8* %2683, align 1
  %2684 = xor i32 %2673, 6
  %2685 = xor i32 %2684, %2674
  %2686 = lshr i32 %2685, 4
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2688, i8* %2689, align 1
  %2690 = icmp eq i32 %2674, 0
  %2691 = zext i1 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2691, i8* %2692, align 1
  %2693 = lshr i32 %2674, 31
  %2694 = trunc i32 %2693 to i8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2694, i8* %2695, align 1
  %2696 = lshr i32 %2673, 31
  %2697 = xor i32 %2693, %2696
  %2698 = add i32 %2697, %2696
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2700, i8* %2701, align 1
  store %struct.Memory* %loadMem_401646, %struct.Memory** %MEMORY
  %loadMem_40164a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %PC.i174
  %2706 = add i64 %2705, 18
  %2707 = load i64, i64* %PC.i174
  %2708 = add i64 %2707, 6
  %2709 = load i64, i64* %PC.i174
  %2710 = add i64 %2709, 6
  store i64 %2710, i64* %PC.i174
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2712 = load i8, i8* %2711, align 1
  %2713 = icmp eq i8 %2712, 0
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %BRANCH_TAKEN, align 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2716 = select i1 %2713, i64 %2706, i64 %2708
  store i64 %2716, i64* %2715, align 8
  store %struct.Memory* %loadMem_40164a, %struct.Memory** %MEMORY
  %loadBr_40164a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40164a = icmp eq i8 %loadBr_40164a, 1
  br i1 %cmpBr_40164a, label %block_.L_40165c, label %block_401650

block_401650:                                     ; preds = %block_.L_401646
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i173
  %2724 = sub i64 %2723, 4
  %2725 = load i64, i64* %PC.i172
  %2726 = add i64 %2725, 7
  store i64 %2726, i64* %PC.i172
  %2727 = inttoptr i64 %2724 to i32*
  store i32 1, i32* %2727
  store %struct.Memory* %loadMem_401650, %struct.Memory** %MEMORY
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %PC.i171
  %2732 = add i64 %2731, 393
  %2733 = load i64, i64* %PC.i171
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i171
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2732, i64* %2735, align 8
  store %struct.Memory* %loadMem_401657, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_40165c:                                  ; preds = %block_.L_401646
  %loadMem_40165c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %PC.i170
  %2740 = add i64 %2739, 5
  %2741 = load i64, i64* %PC.i170
  %2742 = add i64 %2741, 5
  store i64 %2742, i64* %PC.i170
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2740, i64* %2743, align 8
  store %struct.Memory* %loadMem_40165c, %struct.Memory** %MEMORY
  br label %block_.L_401661

block_.L_401661:                                  ; preds = %block_.L_40169a, %block_.L_40165c
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 15
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %RBP.i169
  %2751 = sub i64 %2750, 24
  %2752 = load i64, i64* %PC.i168
  %2753 = add i64 %2752, 4
  store i64 %2753, i64* %PC.i168
  %2754 = inttoptr i64 %2751 to i32*
  %2755 = load i32, i32* %2754
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2756, align 1
  %2757 = and i32 %2755, 255
  %2758 = call i32 @llvm.ctpop.i32(i32 %2757)
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  %2761 = xor i8 %2760, 1
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2761, i8* %2762, align 1
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2763, align 1
  %2764 = icmp eq i32 %2755, 0
  %2765 = zext i1 %2764 to i8
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2765, i8* %2766, align 1
  %2767 = lshr i32 %2755, 31
  %2768 = trunc i32 %2767 to i8
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2768, i8* %2769, align 1
  %2770 = lshr i32 %2755, 31
  %2771 = xor i32 %2767, %2770
  %2772 = add i32 %2771, %2770
  %2773 = icmp eq i32 %2772, 2
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2774, i8* %2775, align 1
  store %struct.Memory* %loadMem_401661, %struct.Memory** %MEMORY
  %loadMem_401665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i167
  %2780 = add i64 %2779, 81
  %2781 = load i64, i64* %PC.i167
  %2782 = add i64 %2781, 6
  %2783 = load i64, i64* %PC.i167
  %2784 = add i64 %2783, 6
  store i64 %2784, i64* %PC.i167
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2786 = load i8, i8* %2785, align 1
  store i8 %2786, i8* %BRANCH_TAKEN, align 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2788 = icmp ne i8 %2786, 0
  %2789 = select i1 %2788, i64 %2780, i64 %2782
  store i64 %2789, i64* %2787, align 8
  store %struct.Memory* %loadMem_401665, %struct.Memory** %MEMORY
  %loadBr_401665 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401665 = icmp eq i8 %loadBr_401665, 1
  br i1 %cmpBr_401665, label %block_.L_4016b6, label %block_40166b

block_40166b:                                     ; preds = %block_.L_401661
  %loadMem_40166b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 15
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %RBP.i166
  %2797 = sub i64 %2796, 24
  %2798 = load i64, i64* %PC.i165
  %2799 = add i64 %2798, 4
  store i64 %2799, i64* %PC.i165
  %2800 = inttoptr i64 %2797 to i32*
  %2801 = load i32, i32* %2800
  %2802 = sub i32 %2801, 12
  %2803 = icmp ult i32 %2801, 12
  %2804 = zext i1 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2804, i8* %2805, align 1
  %2806 = and i32 %2802, 255
  %2807 = call i32 @llvm.ctpop.i32(i32 %2806)
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  %2810 = xor i8 %2809, 1
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2810, i8* %2811, align 1
  %2812 = xor i32 %2801, 12
  %2813 = xor i32 %2812, %2802
  %2814 = lshr i32 %2813, 4
  %2815 = trunc i32 %2814 to i8
  %2816 = and i8 %2815, 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2816, i8* %2817, align 1
  %2818 = icmp eq i32 %2802, 0
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2819, i8* %2820, align 1
  %2821 = lshr i32 %2802, 31
  %2822 = trunc i32 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2822, i8* %2823, align 1
  %2824 = lshr i32 %2801, 31
  %2825 = xor i32 %2821, %2824
  %2826 = add i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2828, i8* %2829, align 1
  store %struct.Memory* %loadMem_40166b, %struct.Memory** %MEMORY
  %loadMem_40166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %PC.i164
  %2834 = add i64 %2833, 16
  %2835 = load i64, i64* %PC.i164
  %2836 = add i64 %2835, 6
  %2837 = load i64, i64* %PC.i164
  %2838 = add i64 %2837, 6
  store i64 %2838, i64* %PC.i164
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2840 = load i8, i8* %2839, align 1
  store i8 %2840, i8* %BRANCH_TAKEN, align 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2842 = icmp ne i8 %2840, 0
  %2843 = select i1 %2842, i64 %2834, i64 %2836
  store i64 %2843, i64* %2841, align 8
  store %struct.Memory* %loadMem_40166f, %struct.Memory** %MEMORY
  %loadBr_40166f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40166f = icmp eq i8 %loadBr_40166f, 1
  br i1 %cmpBr_40166f, label %block_.L_40167f, label %block_401675

block_401675:                                     ; preds = %block_40166b
  %loadMem_401675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 15
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RBP.i163
  %2851 = sub i64 %2850, 24
  %2852 = load i64, i64* %PC.i162
  %2853 = add i64 %2852, 4
  store i64 %2853, i64* %PC.i162
  %2854 = inttoptr i64 %2851 to i32*
  %2855 = load i32, i32* %2854
  %2856 = sub i32 %2855, 10
  %2857 = icmp ult i32 %2855, 10
  %2858 = zext i1 %2857 to i8
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2858, i8* %2859, align 1
  %2860 = and i32 %2856, 255
  %2861 = call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2864, i8* %2865, align 1
  %2866 = xor i32 %2855, 10
  %2867 = xor i32 %2866, %2856
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2870, i8* %2871, align 1
  %2872 = icmp eq i32 %2856, 0
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2873, i8* %2874, align 1
  %2875 = lshr i32 %2856, 31
  %2876 = trunc i32 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2876, i8* %2877, align 1
  %2878 = lshr i32 %2855, 31
  %2879 = xor i32 %2875, %2878
  %2880 = add i32 %2879, %2878
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2882, i8* %2883, align 1
  store %struct.Memory* %loadMem_401675, %struct.Memory** %MEMORY
  %loadMem_401679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %PC.i161
  %2888 = add i64 %2887, 18
  %2889 = load i64, i64* %PC.i161
  %2890 = add i64 %2889, 6
  %2891 = load i64, i64* %PC.i161
  %2892 = add i64 %2891, 6
  store i64 %2892, i64* %PC.i161
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2894 = load i8, i8* %2893, align 1
  %2895 = icmp eq i8 %2894, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %BRANCH_TAKEN, align 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2898 = select i1 %2895, i64 %2888, i64 %2890
  store i64 %2898, i64* %2897, align 8
  store %struct.Memory* %loadMem_401679, %struct.Memory** %MEMORY
  %loadBr_401679 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401679 = icmp eq i8 %loadBr_401679, 1
  br i1 %cmpBr_401679, label %block_.L_40168b, label %block_.L_40167f

block_.L_40167f:                                  ; preds = %block_401675, %block_40166b
  %loadMem_40167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 15
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RBP.i160
  %2906 = sub i64 %2905, 4
  %2907 = load i64, i64* %PC.i159
  %2908 = add i64 %2907, 7
  store i64 %2908, i64* %PC.i159
  %2909 = inttoptr i64 %2906 to i32*
  store i32 1, i32* %2909
  store %struct.Memory* %loadMem_40167f, %struct.Memory** %MEMORY
  %loadMem_401686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %PC.i158
  %2914 = add i64 %2913, 346
  %2915 = load i64, i64* %PC.i158
  %2916 = add i64 %2915, 5
  store i64 %2916, i64* %PC.i158
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2914, i64* %2917, align 8
  store %struct.Memory* %loadMem_401686, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_40168b:                                  ; preds = %block_401675
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 15
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RBP.i157
  %2925 = sub i64 %2924, 24
  %2926 = load i64, i64* %PC.i156
  %2927 = add i64 %2926, 4
  store i64 %2927, i64* %PC.i156
  %2928 = inttoptr i64 %2925 to i32*
  %2929 = load i32, i32* %2928
  %2930 = sub i32 %2929, 13
  %2931 = icmp ult i32 %2929, 13
  %2932 = zext i1 %2931 to i8
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2932, i8* %2933, align 1
  %2934 = and i32 %2930, 255
  %2935 = call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2938, i8* %2939, align 1
  %2940 = xor i32 %2929, 13
  %2941 = xor i32 %2940, %2930
  %2942 = lshr i32 %2941, 4
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2944, i8* %2945, align 1
  %2946 = icmp eq i32 %2930, 0
  %2947 = zext i1 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2930, 31
  %2950 = trunc i32 %2949 to i8
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2950, i8* %2951, align 1
  %2952 = lshr i32 %2929, 31
  %2953 = xor i32 %2949, %2952
  %2954 = add i32 %2953, %2952
  %2955 = icmp eq i32 %2954, 2
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2956, i8* %2957, align 1
  store %struct.Memory* %loadMem_40168b, %struct.Memory** %MEMORY
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2960 to i64*
  %2961 = load i64, i64* %PC.i155
  %2962 = add i64 %2961, 11
  %2963 = load i64, i64* %PC.i155
  %2964 = add i64 %2963, 6
  %2965 = load i64, i64* %PC.i155
  %2966 = add i64 %2965, 6
  store i64 %2966, i64* %PC.i155
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2968 = load i8, i8* %2967, align 1
  store i8 %2968, i8* %BRANCH_TAKEN, align 1
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2970 = icmp ne i8 %2968, 0
  %2971 = select i1 %2970, i64 %2962, i64 %2964
  store i64 %2971, i64* %2969, align 8
  store %struct.Memory* %loadMem_40168f, %struct.Memory** %MEMORY
  %loadBr_40168f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40168f = icmp eq i8 %loadBr_40168f, 1
  br i1 %cmpBr_40168f, label %block_.L_40169a, label %block_401695

block_401695:                                     ; preds = %block_.L_40168b
  %loadMem_401695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %PC.i154
  %2976 = add i64 %2975, 33
  %2977 = load i64, i64* %PC.i154
  %2978 = add i64 %2977, 5
  store i64 %2978, i64* %PC.i154
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2976, i64* %2979, align 8
  store %struct.Memory* %loadMem_401695, %struct.Memory** %MEMORY
  br label %block_.L_4016b6

block_.L_40169a:                                  ; preds = %block_.L_40168b
  %loadMem_40169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RBP.i153
  %2990 = sub i64 %2989, 16
  %2991 = load i64, i64* %PC.i151
  %2992 = add i64 %2991, 3
  store i64 %2992, i64* %PC.i151
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_40169a, %struct.Memory** %MEMORY
  %loadMem_40169d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 1
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RAX.i149
  %3006 = load i64, i64* %RBP.i150
  %3007 = sub i64 %3006, 20
  %3008 = load i64, i64* %PC.i148
  %3009 = add i64 %3008, 3
  store i64 %3009, i64* %PC.i148
  %3010 = trunc i64 %3005 to i32
  %3011 = inttoptr i64 %3007 to i32*
  %3012 = load i32, i32* %3011
  %3013 = add i32 %3012, %3010
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RAX.i149, align 8
  %3015 = icmp ult i32 %3013, %3010
  %3016 = icmp ult i32 %3013, %3012
  %3017 = or i1 %3015, %3016
  %3018 = zext i1 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3018, i8* %3019, align 1
  %3020 = and i32 %3013, 255
  %3021 = call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3024, i8* %3025, align 1
  %3026 = xor i32 %3012, %3010
  %3027 = xor i32 %3026, %3013
  %3028 = lshr i32 %3027, 4
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3030, i8* %3031, align 1
  %3032 = icmp eq i32 %3013, 0
  %3033 = zext i1 %3032 to i8
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3033, i8* %3034, align 1
  %3035 = lshr i32 %3013, 31
  %3036 = trunc i32 %3035 to i8
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3036, i8* %3037, align 1
  %3038 = lshr i32 %3010, 31
  %3039 = lshr i32 %3012, 31
  %3040 = xor i32 %3035, %3038
  %3041 = xor i32 %3035, %3039
  %3042 = add i32 %3040, %3041
  %3043 = icmp eq i32 %3042, 2
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3044, i8* %3045, align 1
  store %struct.Memory* %loadMem_40169d, %struct.Memory** %MEMORY
  %loadMem_4016a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 1
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %EAX.i146 = bitcast %union.anon* %3051 to i32*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i147
  %3056 = sub i64 %3055, 20
  %3057 = load i32, i32* %EAX.i146
  %3058 = zext i32 %3057 to i64
  %3059 = load i64, i64* %PC.i145
  %3060 = add i64 %3059, 3
  store i64 %3060, i64* %PC.i145
  %3061 = inttoptr i64 %3056 to i32*
  store i32 %3057, i32* %3061
  store %struct.Memory* %loadMem_4016a0, %struct.Memory** %MEMORY
  %loadMem_4016a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 15
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RBP.i144
  %3072 = sub i64 %3071, 20
  %3073 = load i64, i64* %PC.i142
  %3074 = add i64 %3073, 4
  store i64 %3074, i64* %PC.i142
  %3075 = inttoptr i64 %3072 to i32*
  %3076 = load i32, i32* %3075
  %3077 = sext i32 %3076 to i64
  store i64 %3077, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_4016a3, %struct.Memory** %MEMORY
  %loadMem_4016a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 5
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RCX.i141
  %3088 = mul i64 %3087, 4
  %3089 = add i64 %3088, 8807744
  %3090 = load i64, i64* %PC.i139
  %3091 = add i64 %3090, 7
  store i64 %3091, i64* %PC.i139
  %3092 = inttoptr i64 %3089 to i32*
  %3093 = load i32, i32* %3092
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_4016a7, %struct.Memory** %MEMORY
  %loadMem_4016ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 1
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %3100 to i32*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 15
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %RBP.i138
  %3105 = sub i64 %3104, 24
  %3106 = load i32, i32* %EAX.i137
  %3107 = zext i32 %3106 to i64
  %3108 = load i64, i64* %PC.i136
  %3109 = add i64 %3108, 3
  store i64 %3109, i64* %PC.i136
  %3110 = inttoptr i64 %3105 to i32*
  store i32 %3106, i32* %3110
  store %struct.Memory* %loadMem_4016ae, %struct.Memory** %MEMORY
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %PC.i135
  %3115 = add i64 %3114, -80
  %3116 = load i64, i64* %PC.i135
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %PC.i135
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3115, i64* %3118, align 8
  store %struct.Memory* %loadMem_4016b1, %struct.Memory** %MEMORY
  br label %block_.L_401661

block_.L_4016b6:                                  ; preds = %block_401695, %block_.L_401661
  %loadMem_4016b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3121 to i64*
  %3122 = load i64, i64* %PC.i134
  %3123 = add i64 %3122, 5
  %3124 = load i64, i64* %PC.i134
  %3125 = add i64 %3124, 5
  store i64 %3125, i64* %PC.i134
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3123, i64* %3126, align 8
  store %struct.Memory* %loadMem_4016b6, %struct.Memory** %MEMORY
  br label %block_.L_4016bb

block_.L_4016bb:                                  ; preds = %block_.L_4016b6
  %loadMem_4016bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 1
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 15
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %RBP.i133
  %3137 = sub i64 %3136, 28
  %3138 = load i64, i64* %PC.i131
  %3139 = add i64 %3138, 3
  store i64 %3139, i64* %PC.i131
  %3140 = inttoptr i64 %3137 to i32*
  %3141 = load i32, i32* %3140
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_4016bb, %struct.Memory** %MEMORY
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 1
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RAX.i130
  %3150 = load i64, i64* %PC.i129
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i129
  %3152 = trunc i64 %3149 to i32
  %3153 = add i32 1, %3152
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RAX.i130, align 8
  %3155 = icmp ult i32 %3153, %3152
  %3156 = icmp ult i32 %3153, 1
  %3157 = or i1 %3155, %3156
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3158, i8* %3159, align 1
  %3160 = and i32 %3153, 255
  %3161 = call i32 @llvm.ctpop.i32(i32 %3160)
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = xor i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3164, i8* %3165, align 1
  %3166 = xor i64 1, %3149
  %3167 = trunc i64 %3166 to i32
  %3168 = xor i32 %3167, %3153
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3171, i8* %3172, align 1
  %3173 = icmp eq i32 %3153, 0
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3153, 31
  %3177 = trunc i32 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i32 %3152, 31
  %3180 = xor i32 %3176, %3179
  %3181 = add i32 %3180, %3176
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3184, align 1
  store %struct.Memory* %loadMem_4016be, %struct.Memory** %MEMORY
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %3190 to i32*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 15
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %RBP.i128
  %3195 = sub i64 %3194, 28
  %3196 = load i32, i32* %EAX.i127
  %3197 = zext i32 %3196 to i64
  %3198 = load i64, i64* %PC.i126
  %3199 = add i64 %3198, 3
  store i64 %3199, i64* %PC.i126
  %3200 = inttoptr i64 %3195 to i32*
  store i32 %3196, i32* %3200
  store %struct.Memory* %loadMem_4016c1, %struct.Memory** %MEMORY
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %PC.i125
  %3205 = add i64 %3204, -210
  %3206 = load i64, i64* %PC.i125
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i125
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3205, i64* %3208, align 8
  store %struct.Memory* %loadMem_4016c4, %struct.Memory** %MEMORY
  br label %block_.L_4015f2

block_.L_4016c9:                                  ; preds = %block_.L_4015f2
  %loadMem_4016c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 15
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3214 to i64*
  %3215 = load i64, i64* %RBP.i124
  %3216 = sub i64 %3215, 28
  %3217 = load i64, i64* %PC.i123
  %3218 = add i64 %3217, 7
  store i64 %3218, i64* %PC.i123
  %3219 = inttoptr i64 %3216 to i32*
  store i32 0, i32* %3219
  store %struct.Memory* %loadMem_4016c9, %struct.Memory** %MEMORY
  br label %block_.L_4016d0

block_.L_4016d0:                                  ; preds = %block_.L_40170a, %block_.L_4016c9
  %loadMem_4016d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 15
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %RBP.i122
  %3227 = sub i64 %3226, 28
  %3228 = load i64, i64* %PC.i121
  %3229 = add i64 %3228, 4
  store i64 %3229, i64* %PC.i121
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230
  %3232 = sub i32 %3231, 8
  %3233 = icmp ult i32 %3231, 8
  %3234 = zext i1 %3233 to i8
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3234, i8* %3235, align 1
  %3236 = and i32 %3232, 255
  %3237 = call i32 @llvm.ctpop.i32(i32 %3236)
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  %3240 = xor i8 %3239, 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3240, i8* %3241, align 1
  %3242 = xor i32 %3231, 8
  %3243 = xor i32 %3242, %3232
  %3244 = lshr i32 %3243, 4
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3246, i8* %3247, align 1
  %3248 = icmp eq i32 %3232, 0
  %3249 = zext i1 %3248 to i8
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3249, i8* %3250, align 1
  %3251 = lshr i32 %3232, 31
  %3252 = trunc i32 %3251 to i8
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3252, i8* %3253, align 1
  %3254 = lshr i32 %3231, 31
  %3255 = xor i32 %3251, %3254
  %3256 = add i32 %3255, %3254
  %3257 = icmp eq i32 %3256, 2
  %3258 = zext i1 %3257 to i8
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3258, i8* %3259, align 1
  store %struct.Memory* %loadMem_4016d0, %struct.Memory** %MEMORY
  %loadMem_4016d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %PC.i120
  %3264 = add i64 %3263, 68
  %3265 = load i64, i64* %PC.i120
  %3266 = add i64 %3265, 6
  %3267 = load i64, i64* %PC.i120
  %3268 = add i64 %3267, 6
  store i64 %3268, i64* %PC.i120
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3270 = load i8, i8* %3269, align 1
  %3271 = icmp ne i8 %3270, 0
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3273 = load i8, i8* %3272, align 1
  %3274 = icmp ne i8 %3273, 0
  %3275 = xor i1 %3271, %3274
  %3276 = xor i1 %3275, true
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %BRANCH_TAKEN, align 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3279 = select i1 %3275, i64 %3266, i64 %3264
  store i64 %3279, i64* %3278, align 8
  store %struct.Memory* %loadMem_4016d4, %struct.Memory** %MEMORY
  %loadBr_4016d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016d4 = icmp eq i8 %loadBr_4016d4, 1
  br i1 %cmpBr_4016d4, label %block_.L_401718, label %block_4016da

block_4016da:                                     ; preds = %block_.L_4016d0
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 1
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 15
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3288 to i64*
  %3289 = load i64, i64* %RBP.i119
  %3290 = sub i64 %3289, 8
  %3291 = load i64, i64* %PC.i117
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i117
  %3293 = inttoptr i64 %3290 to i32*
  %3294 = load i32, i32* %3293
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_4016da, %struct.Memory** %MEMORY
  %loadMem_4016dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 5
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 15
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RBP.i116
  %3306 = sub i64 %3305, 28
  %3307 = load i64, i64* %PC.i114
  %3308 = add i64 %3307, 4
  store i64 %3308, i64* %PC.i114
  %3309 = inttoptr i64 %3306 to i32*
  %3310 = load i32, i32* %3309
  %3311 = sext i32 %3310 to i64
  store i64 %3311, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_4016dd, %struct.Memory** %MEMORY
  %loadMem_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 5
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RAX.i112
  %3322 = load i64, i64* %RCX.i113
  %3323 = mul i64 %3322, 4
  %3324 = add i64 %3323, 4347232
  %3325 = load i64, i64* %PC.i111
  %3326 = add i64 %3325, 7
  store i64 %3326, i64* %PC.i111
  %3327 = trunc i64 %3321 to i32
  %3328 = inttoptr i64 %3324 to i32*
  %3329 = load i32, i32* %3328
  %3330 = add i32 %3329, %3327
  %3331 = zext i32 %3330 to i64
  store i64 %3331, i64* %RAX.i112, align 8
  %3332 = icmp ult i32 %3330, %3327
  %3333 = icmp ult i32 %3330, %3329
  %3334 = or i1 %3332, %3333
  %3335 = zext i1 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3335, i8* %3336, align 1
  %3337 = and i32 %3330, 255
  %3338 = call i32 @llvm.ctpop.i32(i32 %3337)
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = xor i8 %3340, 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3341, i8* %3342, align 1
  %3343 = xor i32 %3329, %3327
  %3344 = xor i32 %3343, %3330
  %3345 = lshr i32 %3344, 4
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3347, i8* %3348, align 1
  %3349 = icmp eq i32 %3330, 0
  %3350 = zext i1 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3350, i8* %3351, align 1
  %3352 = lshr i32 %3330, 31
  %3353 = trunc i32 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i32 %3327, 31
  %3356 = lshr i32 %3329, 31
  %3357 = xor i32 %3352, %3355
  %3358 = xor i32 %3352, %3356
  %3359 = add i32 %3357, %3358
  %3360 = icmp eq i32 %3359, 2
  %3361 = zext i1 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3361, i8* %3362, align 1
  store %struct.Memory* %loadMem_4016e1, %struct.Memory** %MEMORY
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %3368 to i32*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 5
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %3371 to i64*
  %3372 = load i32, i32* %EAX.i109
  %3373 = zext i32 %3372 to i64
  %3374 = load i64, i64* %PC.i108
  %3375 = add i64 %3374, 3
  store i64 %3375, i64* %PC.i108
  %3376 = shl i64 %3373, 32
  %3377 = ashr exact i64 %3376, 32
  store i64 %3377, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_4016e8, %struct.Memory** %MEMORY
  %loadMem_4016eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 5
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %RCX.i107
  %3385 = mul i64 %3384, 4
  %3386 = add i64 %3385, 8807744
  %3387 = load i64, i64* %PC.i106
  %3388 = add i64 %3387, 8
  store i64 %3388, i64* %PC.i106
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389
  %3391 = sub i32 %3390, 4
  %3392 = icmp ult i32 %3390, 4
  %3393 = zext i1 %3392 to i8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3393, i8* %3394, align 1
  %3395 = and i32 %3391, 255
  %3396 = call i32 @llvm.ctpop.i32(i32 %3395)
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = xor i8 %3398, 1
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3399, i8* %3400, align 1
  %3401 = xor i32 %3390, 4
  %3402 = xor i32 %3401, %3391
  %3403 = lshr i32 %3402, 4
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3405, i8* %3406, align 1
  %3407 = icmp eq i32 %3391, 0
  %3408 = zext i1 %3407 to i8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3408, i8* %3409, align 1
  %3410 = lshr i32 %3391, 31
  %3411 = trunc i32 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3411, i8* %3412, align 1
  %3413 = lshr i32 %3390, 31
  %3414 = xor i32 %3410, %3413
  %3415 = add i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3417, i8* %3418, align 1
  store %struct.Memory* %loadMem_4016eb, %struct.Memory** %MEMORY
  %loadMem_4016f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %PC.i105
  %3423 = add i64 %3422, 18
  %3424 = load i64, i64* %PC.i105
  %3425 = add i64 %3424, 6
  %3426 = load i64, i64* %PC.i105
  %3427 = add i64 %3426, 6
  store i64 %3427, i64* %PC.i105
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3429 = load i8, i8* %3428, align 1
  %3430 = icmp eq i8 %3429, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %BRANCH_TAKEN, align 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3433 = select i1 %3430, i64 %3423, i64 %3425
  store i64 %3433, i64* %3432, align 8
  store %struct.Memory* %loadMem_4016f3, %struct.Memory** %MEMORY
  %loadBr_4016f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016f3 = icmp eq i8 %loadBr_4016f3, 1
  br i1 %cmpBr_4016f3, label %block_.L_401705, label %block_4016f9

block_4016f9:                                     ; preds = %block_4016da
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i104
  %3441 = sub i64 %3440, 4
  %3442 = load i64, i64* %PC.i103
  %3443 = add i64 %3442, 7
  store i64 %3443, i64* %PC.i103
  %3444 = inttoptr i64 %3441 to i32*
  store i32 1, i32* %3444
  store %struct.Memory* %loadMem_4016f9, %struct.Memory** %MEMORY
  %loadMem_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %PC.i102
  %3449 = add i64 %3448, 224
  %3450 = load i64, i64* %PC.i102
  %3451 = add i64 %3450, 5
  store i64 %3451, i64* %PC.i102
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3449, i64* %3452, align 8
  store %struct.Memory* %loadMem_401700, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_401705:                                  ; preds = %block_4016da
  %loadMem_401705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %PC.i101
  %3457 = add i64 %3456, 5
  %3458 = load i64, i64* %PC.i101
  %3459 = add i64 %3458, 5
  store i64 %3459, i64* %PC.i101
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3457, i64* %3460, align 8
  store %struct.Memory* %loadMem_401705, %struct.Memory** %MEMORY
  br label %block_.L_40170a

block_.L_40170a:                                  ; preds = %block_.L_401705
  %loadMem_40170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 1
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3466 to i64*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 15
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3469 to i64*
  %3470 = load i64, i64* %RBP.i100
  %3471 = sub i64 %3470, 28
  %3472 = load i64, i64* %PC.i98
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %PC.i98
  %3474 = inttoptr i64 %3471 to i32*
  %3475 = load i32, i32* %3474
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_40170a, %struct.Memory** %MEMORY
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 1
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RAX.i97
  %3484 = load i64, i64* %PC.i96
  %3485 = add i64 %3484, 3
  store i64 %3485, i64* %PC.i96
  %3486 = trunc i64 %3483 to i32
  %3487 = add i32 1, %3486
  %3488 = zext i32 %3487 to i64
  store i64 %3488, i64* %RAX.i97, align 8
  %3489 = icmp ult i32 %3487, %3486
  %3490 = icmp ult i32 %3487, 1
  %3491 = or i1 %3489, %3490
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3492, i8* %3493, align 1
  %3494 = and i32 %3487, 255
  %3495 = call i32 @llvm.ctpop.i32(i32 %3494)
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3498, i8* %3499, align 1
  %3500 = xor i64 1, %3483
  %3501 = trunc i64 %3500 to i32
  %3502 = xor i32 %3501, %3487
  %3503 = lshr i32 %3502, 4
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3505, i8* %3506, align 1
  %3507 = icmp eq i32 %3487, 0
  %3508 = zext i1 %3507 to i8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3508, i8* %3509, align 1
  %3510 = lshr i32 %3487, 31
  %3511 = trunc i32 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3511, i8* %3512, align 1
  %3513 = lshr i32 %3486, 31
  %3514 = xor i32 %3510, %3513
  %3515 = add i32 %3514, %3510
  %3516 = icmp eq i32 %3515, 2
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3517, i8* %3518, align 1
  store %struct.Memory* %loadMem_40170d, %struct.Memory** %MEMORY
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %3524 to i32*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 15
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %RBP.i95
  %3529 = sub i64 %3528, 28
  %3530 = load i32, i32* %EAX.i94
  %3531 = zext i32 %3530 to i64
  %3532 = load i64, i64* %PC.i93
  %3533 = add i64 %3532, 3
  store i64 %3533, i64* %PC.i93
  %3534 = inttoptr i64 %3529 to i32*
  store i32 %3530, i32* %3534
  store %struct.Memory* %loadMem_401710, %struct.Memory** %MEMORY
  %loadMem_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3537 to i64*
  %3538 = load i64, i64* %PC.i92
  %3539 = add i64 %3538, -67
  %3540 = load i64, i64* %PC.i92
  %3541 = add i64 %3540, 5
  store i64 %3541, i64* %PC.i92
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3539, i64* %3542, align 8
  store %struct.Memory* %loadMem_401713, %struct.Memory** %MEMORY
  br label %block_.L_4016d0

block_.L_401718:                                  ; preds = %block_.L_4016d0
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 15
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RBP.i91
  %3550 = sub i64 %3549, 28
  %3551 = load i64, i64* %PC.i90
  %3552 = add i64 %3551, 7
  store i64 %3552, i64* %PC.i90
  %3553 = inttoptr i64 %3550 to i32*
  store i32 0, i32* %3553
  store %struct.Memory* %loadMem_401718, %struct.Memory** %MEMORY
  br label %block_.L_40171f

block_.L_40171f:                                  ; preds = %block_.L_4017cb, %block_.L_401718
  %loadMem_40171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 15
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %RBP.i89
  %3561 = sub i64 %3560, 28
  %3562 = load i64, i64* %PC.i88
  %3563 = add i64 %3562, 4
  store i64 %3563, i64* %PC.i88
  %3564 = inttoptr i64 %3561 to i32*
  %3565 = load i32, i32* %3564
  %3566 = sub i32 %3565, 4
  %3567 = icmp ult i32 %3565, 4
  %3568 = zext i1 %3567 to i8
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3568, i8* %3569, align 1
  %3570 = and i32 %3566, 255
  %3571 = call i32 @llvm.ctpop.i32(i32 %3570)
  %3572 = trunc i32 %3571 to i8
  %3573 = and i8 %3572, 1
  %3574 = xor i8 %3573, 1
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3574, i8* %3575, align 1
  %3576 = xor i32 %3565, 4
  %3577 = xor i32 %3576, %3566
  %3578 = lshr i32 %3577, 4
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3580, i8* %3581, align 1
  %3582 = icmp eq i32 %3566, 0
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3583, i8* %3584, align 1
  %3585 = lshr i32 %3566, 31
  %3586 = trunc i32 %3585 to i8
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3586, i8* %3587, align 1
  %3588 = lshr i32 %3565, 31
  %3589 = xor i32 %3585, %3588
  %3590 = add i32 %3589, %3588
  %3591 = icmp eq i32 %3590, 2
  %3592 = zext i1 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3592, i8* %3593, align 1
  store %struct.Memory* %loadMem_40171f, %struct.Memory** %MEMORY
  %loadMem_401723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %PC.i87
  %3598 = add i64 %3597, 182
  %3599 = load i64, i64* %PC.i87
  %3600 = add i64 %3599, 6
  %3601 = load i64, i64* %PC.i87
  %3602 = add i64 %3601, 6
  store i64 %3602, i64* %PC.i87
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3604 = load i8, i8* %3603, align 1
  %3605 = icmp ne i8 %3604, 0
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3607 = load i8, i8* %3606, align 1
  %3608 = icmp ne i8 %3607, 0
  %3609 = xor i1 %3605, %3608
  %3610 = xor i1 %3609, true
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %BRANCH_TAKEN, align 1
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3613 = select i1 %3609, i64 %3600, i64 %3598
  store i64 %3613, i64* %3612, align 8
  store %struct.Memory* %loadMem_401723, %struct.Memory** %MEMORY
  %loadBr_401723 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401723 = icmp eq i8 %loadBr_401723, 1
  br i1 %cmpBr_401723, label %block_.L_4017d9, label %block_401729

block_401729:                                     ; preds = %block_.L_40171f
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 33
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 1
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 15
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3622 to i64*
  %3623 = load i64, i64* %RBP.i86
  %3624 = sub i64 %3623, 28
  %3625 = load i64, i64* %PC.i84
  %3626 = add i64 %3625, 4
  store i64 %3626, i64* %PC.i84
  %3627 = inttoptr i64 %3624 to i32*
  %3628 = load i32, i32* %3627
  %3629 = sext i32 %3628 to i64
  store i64 %3629, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_401729, %struct.Memory** %MEMORY
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 1
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 5
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %RAX.i82
  %3640 = mul i64 %3639, 4
  %3641 = add i64 %3640, 4347264
  %3642 = load i64, i64* %PC.i81
  %3643 = add i64 %3642, 7
  store i64 %3643, i64* %PC.i81
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = zext i32 %3645 to i64
  store i64 %3646, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_40172d, %struct.Memory** %MEMORY
  %loadMem_401734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 5
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %ECX.i79 = bitcast %union.anon* %3652 to i32*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RBP.i80
  %3657 = sub i64 %3656, 16
  %3658 = load i32, i32* %ECX.i79
  %3659 = zext i32 %3658 to i64
  %3660 = load i64, i64* %PC.i78
  %3661 = add i64 %3660, 3
  store i64 %3661, i64* %PC.i78
  %3662 = inttoptr i64 %3657 to i32*
  store i32 %3658, i32* %3662
  store %struct.Memory* %loadMem_401734, %struct.Memory** %MEMORY
  %loadMem_401737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 5
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 15
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RBP.i77
  %3673 = sub i64 %3672, 8
  %3674 = load i64, i64* %PC.i75
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i75
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_401737, %struct.Memory** %MEMORY
  %loadMem_40173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 1
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i74
  %3689 = sub i64 %3688, 28
  %3690 = load i64, i64* %PC.i72
  %3691 = add i64 %3690, 4
  store i64 %3691, i64* %PC.i72
  %3692 = inttoptr i64 %3689 to i32*
  %3693 = load i32, i32* %3692
  %3694 = sext i32 %3693 to i64
  store i64 %3694, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_40173a, %struct.Memory** %MEMORY
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 1
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 5
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RCX.i71
  %3705 = load i64, i64* %RAX.i70
  %3706 = mul i64 %3705, 4
  %3707 = add i64 %3706, 4347264
  %3708 = load i64, i64* %PC.i69
  %3709 = add i64 %3708, 7
  store i64 %3709, i64* %PC.i69
  %3710 = trunc i64 %3704 to i32
  %3711 = inttoptr i64 %3707 to i32*
  %3712 = load i32, i32* %3711
  %3713 = add i32 %3712, %3710
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RCX.i71, align 8
  %3715 = icmp ult i32 %3713, %3710
  %3716 = icmp ult i32 %3713, %3712
  %3717 = or i1 %3715, %3716
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3718, i8* %3719, align 1
  %3720 = and i32 %3713, 255
  %3721 = call i32 @llvm.ctpop.i32(i32 %3720)
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = xor i8 %3723, 1
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3724, i8* %3725, align 1
  %3726 = xor i32 %3712, %3710
  %3727 = xor i32 %3726, %3713
  %3728 = lshr i32 %3727, 4
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3730, i8* %3731, align 1
  %3732 = icmp eq i32 %3713, 0
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3733, i8* %3734, align 1
  %3735 = lshr i32 %3713, 31
  %3736 = trunc i32 %3735 to i8
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3736, i8* %3737, align 1
  %3738 = lshr i32 %3710, 31
  %3739 = lshr i32 %3712, 31
  %3740 = xor i32 %3735, %3738
  %3741 = xor i32 %3735, %3739
  %3742 = add i32 %3740, %3741
  %3743 = icmp eq i32 %3742, 2
  %3744 = zext i1 %3743 to i8
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3744, i8* %3745, align 1
  store %struct.Memory* %loadMem_40173e, %struct.Memory** %MEMORY
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 5
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %ECX.i67 = bitcast %union.anon* %3751 to i32*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %RBP.i68
  %3756 = sub i64 %3755, 20
  %3757 = load i32, i32* %ECX.i67
  %3758 = zext i32 %3757 to i64
  %3759 = load i64, i64* %PC.i66
  %3760 = add i64 %3759, 3
  store i64 %3760, i64* %PC.i66
  %3761 = inttoptr i64 %3756 to i32*
  store i32 %3757, i32* %3761
  store %struct.Memory* %loadMem_401745, %struct.Memory** %MEMORY
  %loadMem_401748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 1
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 15
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %RBP.i65
  %3772 = sub i64 %3771, 20
  %3773 = load i64, i64* %PC.i63
  %3774 = add i64 %3773, 4
  store i64 %3774, i64* %PC.i63
  %3775 = inttoptr i64 %3772 to i32*
  %3776 = load i32, i32* %3775
  %3777 = sext i32 %3776 to i64
  store i64 %3777, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_401748, %struct.Memory** %MEMORY
  %loadMem_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 1
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 5
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %3786 to i64*
  %3787 = load i64, i64* %RAX.i61
  %3788 = mul i64 %3787, 4
  %3789 = add i64 %3788, 8807744
  %3790 = load i64, i64* %PC.i60
  %3791 = add i64 %3790, 7
  store i64 %3791, i64* %PC.i60
  %3792 = inttoptr i64 %3789 to i32*
  %3793 = load i32, i32* %3792
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_40174c, %struct.Memory** %MEMORY
  %loadMem_401753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 5
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3800 to i32*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RBP.i59
  %3805 = sub i64 %3804, 24
  %3806 = load i32, i32* %ECX.i
  %3807 = zext i32 %3806 to i64
  %3808 = load i64, i64* %PC.i58
  %3809 = add i64 %3808, 3
  store i64 %3809, i64* %PC.i58
  %3810 = inttoptr i64 %3805 to i32*
  store i32 %3806, i32* %3810
  store %struct.Memory* %loadMem_401753, %struct.Memory** %MEMORY
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 15
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %RBP.i57
  %3818 = sub i64 %3817, 24
  %3819 = load i64, i64* %PC.i56
  %3820 = add i64 %3819, 4
  store i64 %3820, i64* %PC.i56
  %3821 = inttoptr i64 %3818 to i32*
  %3822 = load i32, i32* %3821
  %3823 = sub i32 %3822, 6
  %3824 = icmp ult i32 %3822, 6
  %3825 = zext i1 %3824 to i8
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3825, i8* %3826, align 1
  %3827 = and i32 %3823, 255
  %3828 = call i32 @llvm.ctpop.i32(i32 %3827)
  %3829 = trunc i32 %3828 to i8
  %3830 = and i8 %3829, 1
  %3831 = xor i8 %3830, 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3831, i8* %3832, align 1
  %3833 = xor i32 %3822, 6
  %3834 = xor i32 %3833, %3823
  %3835 = lshr i32 %3834, 4
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3837, i8* %3838, align 1
  %3839 = icmp eq i32 %3823, 0
  %3840 = zext i1 %3839 to i8
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3840, i8* %3841, align 1
  %3842 = lshr i32 %3823, 31
  %3843 = trunc i32 %3842 to i8
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3843, i8* %3844, align 1
  %3845 = lshr i32 %3822, 31
  %3846 = xor i32 %3842, %3845
  %3847 = add i32 %3846, %3845
  %3848 = icmp eq i32 %3847, 2
  %3849 = zext i1 %3848 to i8
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3849, i8* %3850, align 1
  store %struct.Memory* %loadMem_401756, %struct.Memory** %MEMORY
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %PC.i55
  %3855 = add i64 %3854, 18
  %3856 = load i64, i64* %PC.i55
  %3857 = add i64 %3856, 6
  %3858 = load i64, i64* %PC.i55
  %3859 = add i64 %3858, 6
  store i64 %3859, i64* %PC.i55
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3861 = load i8, i8* %3860, align 1
  %3862 = icmp eq i8 %3861, 0
  %3863 = zext i1 %3862 to i8
  store i8 %3863, i8* %BRANCH_TAKEN, align 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3865 = select i1 %3862, i64 %3855, i64 %3857
  store i64 %3865, i64* %3864, align 8
  store %struct.Memory* %loadMem_40175a, %struct.Memory** %MEMORY
  %loadBr_40175a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40175a = icmp eq i8 %loadBr_40175a, 1
  br i1 %cmpBr_40175a, label %block_.L_40176c, label %block_401760

block_401760:                                     ; preds = %block_401729
  %loadMem_401760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 15
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3871 to i64*
  %3872 = load i64, i64* %RBP.i54
  %3873 = sub i64 %3872, 4
  %3874 = load i64, i64* %PC.i53
  %3875 = add i64 %3874, 7
  store i64 %3875, i64* %PC.i53
  %3876 = inttoptr i64 %3873 to i32*
  store i32 1, i32* %3876
  store %struct.Memory* %loadMem_401760, %struct.Memory** %MEMORY
  %loadMem_401767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3879 to i64*
  %3880 = load i64, i64* %PC.i52
  %3881 = add i64 %3880, 121
  %3882 = load i64, i64* %PC.i52
  %3883 = add i64 %3882, 5
  store i64 %3883, i64* %PC.i52
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3881, i64* %3884, align 8
  store %struct.Memory* %loadMem_401767, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_40176c:                                  ; preds = %block_401729
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 33
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3887 to i64*
  %3888 = load i64, i64* %PC.i51
  %3889 = add i64 %3888, 5
  %3890 = load i64, i64* %PC.i51
  %3891 = add i64 %3890, 5
  store i64 %3891, i64* %PC.i51
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3889, i64* %3892, align 8
  store %struct.Memory* %loadMem_40176c, %struct.Memory** %MEMORY
  br label %block_.L_401771

block_.L_401771:                                  ; preds = %block_.L_4017aa, %block_.L_40176c
  %loadMem_401771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i50
  %3900 = sub i64 %3899, 24
  %3901 = load i64, i64* %PC.i49
  %3902 = add i64 %3901, 4
  store i64 %3902, i64* %PC.i49
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3905, align 1
  %3906 = and i32 %3904, 255
  %3907 = call i32 @llvm.ctpop.i32(i32 %3906)
  %3908 = trunc i32 %3907 to i8
  %3909 = and i8 %3908, 1
  %3910 = xor i8 %3909, 1
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3910, i8* %3911, align 1
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3912, align 1
  %3913 = icmp eq i32 %3904, 0
  %3914 = zext i1 %3913 to i8
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3914, i8* %3915, align 1
  %3916 = lshr i32 %3904, 31
  %3917 = trunc i32 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3917, i8* %3918, align 1
  %3919 = lshr i32 %3904, 31
  %3920 = xor i32 %3916, %3919
  %3921 = add i32 %3920, %3919
  %3922 = icmp eq i32 %3921, 2
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3923, i8* %3924, align 1
  store %struct.Memory* %loadMem_401771, %struct.Memory** %MEMORY
  %loadMem_401775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3927 to i64*
  %3928 = load i64, i64* %PC.i48
  %3929 = add i64 %3928, 81
  %3930 = load i64, i64* %PC.i48
  %3931 = add i64 %3930, 6
  %3932 = load i64, i64* %PC.i48
  %3933 = add i64 %3932, 6
  store i64 %3933, i64* %PC.i48
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3935 = load i8, i8* %3934, align 1
  store i8 %3935, i8* %BRANCH_TAKEN, align 1
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3937 = icmp ne i8 %3935, 0
  %3938 = select i1 %3937, i64 %3929, i64 %3931
  store i64 %3938, i64* %3936, align 8
  store %struct.Memory* %loadMem_401775, %struct.Memory** %MEMORY
  %loadBr_401775 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401775 = icmp eq i8 %loadBr_401775, 1
  br i1 %cmpBr_401775, label %block_.L_4017c6, label %block_40177b

block_40177b:                                     ; preds = %block_.L_401771
  %loadMem_40177b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 15
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RBP.i47
  %3946 = sub i64 %3945, 24
  %3947 = load i64, i64* %PC.i46
  %3948 = add i64 %3947, 4
  store i64 %3948, i64* %PC.i46
  %3949 = inttoptr i64 %3946 to i32*
  %3950 = load i32, i32* %3949
  %3951 = sub i32 %3950, 8
  %3952 = icmp ult i32 %3950, 8
  %3953 = zext i1 %3952 to i8
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3953, i8* %3954, align 1
  %3955 = and i32 %3951, 255
  %3956 = call i32 @llvm.ctpop.i32(i32 %3955)
  %3957 = trunc i32 %3956 to i8
  %3958 = and i8 %3957, 1
  %3959 = xor i8 %3958, 1
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3959, i8* %3960, align 1
  %3961 = xor i32 %3950, 8
  %3962 = xor i32 %3961, %3951
  %3963 = lshr i32 %3962, 4
  %3964 = trunc i32 %3963 to i8
  %3965 = and i8 %3964, 1
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3965, i8* %3966, align 1
  %3967 = icmp eq i32 %3951, 0
  %3968 = zext i1 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3968, i8* %3969, align 1
  %3970 = lshr i32 %3951, 31
  %3971 = trunc i32 %3970 to i8
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3971, i8* %3972, align 1
  %3973 = lshr i32 %3950, 31
  %3974 = xor i32 %3970, %3973
  %3975 = add i32 %3974, %3973
  %3976 = icmp eq i32 %3975, 2
  %3977 = zext i1 %3976 to i8
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3977, i8* %3978, align 1
  store %struct.Memory* %loadMem_40177b, %struct.Memory** %MEMORY
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %PC.i45
  %3983 = add i64 %3982, 16
  %3984 = load i64, i64* %PC.i45
  %3985 = add i64 %3984, 6
  %3986 = load i64, i64* %PC.i45
  %3987 = add i64 %3986, 6
  store i64 %3987, i64* %PC.i45
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3989 = load i8, i8* %3988, align 1
  store i8 %3989, i8* %BRANCH_TAKEN, align 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3991 = icmp ne i8 %3989, 0
  %3992 = select i1 %3991, i64 %3983, i64 %3985
  store i64 %3992, i64* %3990, align 8
  store %struct.Memory* %loadMem_40177f, %struct.Memory** %MEMORY
  %loadBr_40177f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40177f = icmp eq i8 %loadBr_40177f, 1
  br i1 %cmpBr_40177f, label %block_.L_40178f, label %block_401785

block_401785:                                     ; preds = %block_40177b
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RBP.i44
  %4000 = sub i64 %3999, 24
  %4001 = load i64, i64* %PC.i43
  %4002 = add i64 %4001, 4
  store i64 %4002, i64* %PC.i43
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = sub i32 %4004, 10
  %4006 = icmp ult i32 %4004, 10
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4007, i8* %4008, align 1
  %4009 = and i32 %4005, 255
  %4010 = call i32 @llvm.ctpop.i32(i32 %4009)
  %4011 = trunc i32 %4010 to i8
  %4012 = and i8 %4011, 1
  %4013 = xor i8 %4012, 1
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4013, i8* %4014, align 1
  %4015 = xor i32 %4004, 10
  %4016 = xor i32 %4015, %4005
  %4017 = lshr i32 %4016, 4
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4019, i8* %4020, align 1
  %4021 = icmp eq i32 %4005, 0
  %4022 = zext i1 %4021 to i8
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4022, i8* %4023, align 1
  %4024 = lshr i32 %4005, 31
  %4025 = trunc i32 %4024 to i8
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4025, i8* %4026, align 1
  %4027 = lshr i32 %4004, 31
  %4028 = xor i32 %4024, %4027
  %4029 = add i32 %4028, %4027
  %4030 = icmp eq i32 %4029, 2
  %4031 = zext i1 %4030 to i8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4031, i8* %4032, align 1
  store %struct.Memory* %loadMem_401785, %struct.Memory** %MEMORY
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %PC.i42
  %4037 = add i64 %4036, 18
  %4038 = load i64, i64* %PC.i42
  %4039 = add i64 %4038, 6
  %4040 = load i64, i64* %PC.i42
  %4041 = add i64 %4040, 6
  store i64 %4041, i64* %PC.i42
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4043 = load i8, i8* %4042, align 1
  %4044 = icmp eq i8 %4043, 0
  %4045 = zext i1 %4044 to i8
  store i8 %4045, i8* %BRANCH_TAKEN, align 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4047 = select i1 %4044, i64 %4037, i64 %4039
  store i64 %4047, i64* %4046, align 8
  store %struct.Memory* %loadMem_401789, %struct.Memory** %MEMORY
  %loadBr_401789 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401789 = icmp eq i8 %loadBr_401789, 1
  br i1 %cmpBr_401789, label %block_.L_40179b, label %block_.L_40178f

block_.L_40178f:                                  ; preds = %block_401785, %block_40177b
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RBP.i41
  %4055 = sub i64 %4054, 4
  %4056 = load i64, i64* %PC.i40
  %4057 = add i64 %4056, 7
  store i64 %4057, i64* %PC.i40
  %4058 = inttoptr i64 %4055 to i32*
  store i32 1, i32* %4058
  store %struct.Memory* %loadMem_40178f, %struct.Memory** %MEMORY
  %loadMem_401796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %PC.i39
  %4063 = add i64 %4062, 74
  %4064 = load i64, i64* %PC.i39
  %4065 = add i64 %4064, 5
  store i64 %4065, i64* %PC.i39
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4063, i64* %4066, align 8
  store %struct.Memory* %loadMem_401796, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_40179b:                                  ; preds = %block_401785
  %loadMem_40179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i38
  %4074 = sub i64 %4073, 24
  %4075 = load i64, i64* %PC.i37
  %4076 = add i64 %4075, 4
  store i64 %4076, i64* %PC.i37
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = sub i32 %4078, 13
  %4080 = icmp ult i32 %4078, 13
  %4081 = zext i1 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4081, i8* %4082, align 1
  %4083 = and i32 %4079, 255
  %4084 = call i32 @llvm.ctpop.i32(i32 %4083)
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4087, i8* %4088, align 1
  %4089 = xor i32 %4078, 13
  %4090 = xor i32 %4089, %4079
  %4091 = lshr i32 %4090, 4
  %4092 = trunc i32 %4091 to i8
  %4093 = and i8 %4092, 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4093, i8* %4094, align 1
  %4095 = icmp eq i32 %4079, 0
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4096, i8* %4097, align 1
  %4098 = lshr i32 %4079, 31
  %4099 = trunc i32 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4099, i8* %4100, align 1
  %4101 = lshr i32 %4078, 31
  %4102 = xor i32 %4098, %4101
  %4103 = add i32 %4102, %4101
  %4104 = icmp eq i32 %4103, 2
  %4105 = zext i1 %4104 to i8
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4105, i8* %4106, align 1
  store %struct.Memory* %loadMem_40179b, %struct.Memory** %MEMORY
  %loadMem_40179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 33
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %PC.i36
  %4111 = add i64 %4110, 11
  %4112 = load i64, i64* %PC.i36
  %4113 = add i64 %4112, 6
  %4114 = load i64, i64* %PC.i36
  %4115 = add i64 %4114, 6
  store i64 %4115, i64* %PC.i36
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4117 = load i8, i8* %4116, align 1
  store i8 %4117, i8* %BRANCH_TAKEN, align 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4119 = icmp ne i8 %4117, 0
  %4120 = select i1 %4119, i64 %4111, i64 %4113
  store i64 %4120, i64* %4118, align 8
  store %struct.Memory* %loadMem_40179f, %struct.Memory** %MEMORY
  %loadBr_40179f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40179f = icmp eq i8 %loadBr_40179f, 1
  br i1 %cmpBr_40179f, label %block_.L_4017aa, label %block_4017a5

block_4017a5:                                     ; preds = %block_.L_40179b
  %loadMem_4017a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4123 to i64*
  %4124 = load i64, i64* %PC.i35
  %4125 = add i64 %4124, 33
  %4126 = load i64, i64* %PC.i35
  %4127 = add i64 %4126, 5
  store i64 %4127, i64* %PC.i35
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4125, i64* %4128, align 8
  store %struct.Memory* %loadMem_4017a5, %struct.Memory** %MEMORY
  br label %block_.L_4017c6

block_.L_4017aa:                                  ; preds = %block_.L_40179b
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 1
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 15
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %RBP.i34
  %4139 = sub i64 %4138, 16
  %4140 = load i64, i64* %PC.i32
  %4141 = add i64 %4140, 3
  store i64 %4141, i64* %PC.i32
  %4142 = inttoptr i64 %4139 to i32*
  %4143 = load i32, i32* %4142
  %4144 = zext i32 %4143 to i64
  store i64 %4144, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_4017aa, %struct.Memory** %MEMORY
  %loadMem_4017ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 33
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 1
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 15
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4153 to i64*
  %4154 = load i64, i64* %RAX.i30
  %4155 = load i64, i64* %RBP.i31
  %4156 = sub i64 %4155, 20
  %4157 = load i64, i64* %PC.i29
  %4158 = add i64 %4157, 3
  store i64 %4158, i64* %PC.i29
  %4159 = trunc i64 %4154 to i32
  %4160 = inttoptr i64 %4156 to i32*
  %4161 = load i32, i32* %4160
  %4162 = add i32 %4161, %4159
  %4163 = zext i32 %4162 to i64
  store i64 %4163, i64* %RAX.i30, align 8
  %4164 = icmp ult i32 %4162, %4159
  %4165 = icmp ult i32 %4162, %4161
  %4166 = or i1 %4164, %4165
  %4167 = zext i1 %4166 to i8
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4167, i8* %4168, align 1
  %4169 = and i32 %4162, 255
  %4170 = call i32 @llvm.ctpop.i32(i32 %4169)
  %4171 = trunc i32 %4170 to i8
  %4172 = and i8 %4171, 1
  %4173 = xor i8 %4172, 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4173, i8* %4174, align 1
  %4175 = xor i32 %4161, %4159
  %4176 = xor i32 %4175, %4162
  %4177 = lshr i32 %4176, 4
  %4178 = trunc i32 %4177 to i8
  %4179 = and i8 %4178, 1
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4179, i8* %4180, align 1
  %4181 = icmp eq i32 %4162, 0
  %4182 = zext i1 %4181 to i8
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4182, i8* %4183, align 1
  %4184 = lshr i32 %4162, 31
  %4185 = trunc i32 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4185, i8* %4186, align 1
  %4187 = lshr i32 %4159, 31
  %4188 = lshr i32 %4161, 31
  %4189 = xor i32 %4184, %4187
  %4190 = xor i32 %4184, %4188
  %4191 = add i32 %4189, %4190
  %4192 = icmp eq i32 %4191, 2
  %4193 = zext i1 %4192 to i8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4193, i8* %4194, align 1
  store %struct.Memory* %loadMem_4017ad, %struct.Memory** %MEMORY
  %loadMem_4017b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 1
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %4200 to i32*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 15
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %RBP.i28
  %4205 = sub i64 %4204, 20
  %4206 = load i32, i32* %EAX.i27
  %4207 = zext i32 %4206 to i64
  %4208 = load i64, i64* %PC.i26
  %4209 = add i64 %4208, 3
  store i64 %4209, i64* %PC.i26
  %4210 = inttoptr i64 %4205 to i32*
  store i32 %4206, i32* %4210
  store %struct.Memory* %loadMem_4017b0, %struct.Memory** %MEMORY
  %loadMem_4017b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i25
  %4221 = sub i64 %4220, 20
  %4222 = load i64, i64* %PC.i23
  %4223 = add i64 %4222, 4
  store i64 %4223, i64* %PC.i23
  %4224 = inttoptr i64 %4221 to i32*
  %4225 = load i32, i32* %4224
  %4226 = sext i32 %4225 to i64
  store i64 %4226, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_4017b3, %struct.Memory** %MEMORY
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 5
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RCX.i
  %4237 = mul i64 %4236, 4
  %4238 = add i64 %4237, 8807744
  %4239 = load i64, i64* %PC.i21
  %4240 = add i64 %4239, 7
  store i64 %4240, i64* %PC.i21
  %4241 = inttoptr i64 %4238 to i32*
  %4242 = load i32, i32* %4241
  %4243 = zext i32 %4242 to i64
  store i64 %4243, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_4017b7, %struct.Memory** %MEMORY
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %4249 to i32*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 15
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %RBP.i20
  %4254 = sub i64 %4253, 24
  %4255 = load i32, i32* %EAX.i19
  %4256 = zext i32 %4255 to i64
  %4257 = load i64, i64* %PC.i18
  %4258 = add i64 %4257, 3
  store i64 %4258, i64* %PC.i18
  %4259 = inttoptr i64 %4254 to i32*
  store i32 %4255, i32* %4259
  store %struct.Memory* %loadMem_4017be, %struct.Memory** %MEMORY
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4262 to i64*
  %4263 = load i64, i64* %PC.i17
  %4264 = add i64 %4263, -80
  %4265 = load i64, i64* %PC.i17
  %4266 = add i64 %4265, 5
  store i64 %4266, i64* %PC.i17
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4264, i64* %4267, align 8
  store %struct.Memory* %loadMem_4017c1, %struct.Memory** %MEMORY
  br label %block_.L_401771

block_.L_4017c6:                                  ; preds = %block_4017a5, %block_.L_401771
  %loadMem_4017c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %PC.i16
  %4272 = add i64 %4271, 5
  %4273 = load i64, i64* %PC.i16
  %4274 = add i64 %4273, 5
  store i64 %4274, i64* %PC.i16
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4272, i64* %4275, align 8
  store %struct.Memory* %loadMem_4017c6, %struct.Memory** %MEMORY
  br label %block_.L_4017cb

block_.L_4017cb:                                  ; preds = %block_.L_4017c6
  %loadMem_4017cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 1
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 15
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4284 to i64*
  %4285 = load i64, i64* %RBP.i15
  %4286 = sub i64 %4285, 28
  %4287 = load i64, i64* %PC.i13
  %4288 = add i64 %4287, 3
  store i64 %4288, i64* %PC.i13
  %4289 = inttoptr i64 %4286 to i32*
  %4290 = load i32, i32* %4289
  %4291 = zext i32 %4290 to i64
  store i64 %4291, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_4017cb, %struct.Memory** %MEMORY
  %loadMem_4017ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 33
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 1
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4297 to i64*
  %4298 = load i64, i64* %RAX.i12
  %4299 = load i64, i64* %PC.i11
  %4300 = add i64 %4299, 3
  store i64 %4300, i64* %PC.i11
  %4301 = trunc i64 %4298 to i32
  %4302 = add i32 1, %4301
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %RAX.i12, align 8
  %4304 = icmp ult i32 %4302, %4301
  %4305 = icmp ult i32 %4302, 1
  %4306 = or i1 %4304, %4305
  %4307 = zext i1 %4306 to i8
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4307, i8* %4308, align 1
  %4309 = and i32 %4302, 255
  %4310 = call i32 @llvm.ctpop.i32(i32 %4309)
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  %4313 = xor i8 %4312, 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4313, i8* %4314, align 1
  %4315 = xor i64 1, %4298
  %4316 = trunc i64 %4315 to i32
  %4317 = xor i32 %4316, %4302
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4320, i8* %4321, align 1
  %4322 = icmp eq i32 %4302, 0
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4323, i8* %4324, align 1
  %4325 = lshr i32 %4302, 31
  %4326 = trunc i32 %4325 to i8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4326, i8* %4327, align 1
  %4328 = lshr i32 %4301, 31
  %4329 = xor i32 %4325, %4328
  %4330 = add i32 %4329, %4325
  %4331 = icmp eq i32 %4330, 2
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4332, i8* %4333, align 1
  store %struct.Memory* %loadMem_4017ce, %struct.Memory** %MEMORY
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 1
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4339 to i32*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 15
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4342 to i64*
  %4343 = load i64, i64* %RBP.i10
  %4344 = sub i64 %4343, 28
  %4345 = load i32, i32* %EAX.i
  %4346 = zext i32 %4345 to i64
  %4347 = load i64, i64* %PC.i9
  %4348 = add i64 %4347, 3
  store i64 %4348, i64* %PC.i9
  %4349 = inttoptr i64 %4344 to i32*
  store i32 %4345, i32* %4349
  store %struct.Memory* %loadMem_4017d1, %struct.Memory** %MEMORY
  %loadMem_4017d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4352 to i64*
  %4353 = load i64, i64* %PC.i8
  %4354 = add i64 %4353, -181
  %4355 = load i64, i64* %PC.i8
  %4356 = add i64 %4355, 5
  store i64 %4356, i64* %PC.i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4354, i64* %4357, align 8
  store %struct.Memory* %loadMem_4017d4, %struct.Memory** %MEMORY
  br label %block_.L_40171f

block_.L_4017d9:                                  ; preds = %block_.L_40171f
  %loadMem_4017d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 15
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %RBP.i7
  %4365 = sub i64 %4364, 4
  %4366 = load i64, i64* %PC.i6
  %4367 = add i64 %4366, 7
  store i64 %4367, i64* %PC.i6
  %4368 = inttoptr i64 %4365 to i32*
  store i32 0, i32* %4368
  store %struct.Memory* %loadMem_4017d9, %struct.Memory** %MEMORY
  br label %block_.L_4017e0

block_.L_4017e0:                                  ; preds = %block_.L_4017d9, %block_.L_40178f, %block_401760, %block_4016f9, %block_.L_40167f, %block_401650, %block_40163a, %block_.L_4015df, %block_.L_401595, %block_401566, %block_401507, %block_.L_40148d, %block_40145e, %block_401448
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 15
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RBP.i5
  %4379 = sub i64 %4378, 4
  %4380 = load i64, i64* %PC.i4
  %4381 = add i64 %4380, 3
  store i64 %4381, i64* %PC.i4
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4017e0, %struct.Memory** %MEMORY
  %loadMem_4017e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 15
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %PC.i2
  %4392 = add i64 %4391, 1
  store i64 %4392, i64* %PC.i2
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4394 = load i64, i64* %4393, align 8
  %4395 = add i64 %4394, 8
  %4396 = inttoptr i64 %4394 to i64*
  %4397 = load i64, i64* %4396
  store i64 %4397, i64* %RBP.i3, align 8
  store i64 %4395, i64* %4393, align 8
  store %struct.Memory* %loadMem_4017e3, %struct.Memory** %MEMORY
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %PC.i1
  %4402 = add i64 %4401, 1
  store i64 %4402, i64* %PC.i1
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4405 = load i64, i64* %4404, align 8
  %4406 = inttoptr i64 %4405 to i64*
  %4407 = load i64, i64* %4406
  store i64 %4407, i64* %4403, align 8
  %4408 = add i64 %4405, 8
  store i64 %4408, i64* %4404, align 8
  store %struct.Memory* %loadMem_4017e4, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4017e4
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_andl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_je_.L_4015eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4014d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425550___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_401454(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_401454(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_40146a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40146f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4014c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 11
  %16 = icmp ult i32 %14, 11
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
  %25 = xor i32 %14, 11
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

define %struct.Memory* @routine_je_.L_40148d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_401499(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4014a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4014c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4014c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401400(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_401526(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x425560___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4347232
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 3
  %17 = icmp ult i32 %15, 3
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 3
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401513(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401518(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4014de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4015df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x425580___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401572(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4015cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_401595(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4015a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4015b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4015cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4015d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40152d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4016c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_401646(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jne_.L_40165c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401661(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4016b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 12
  %16 = icmp ult i32 %14, 12
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
  %25 = xor i32 %14, 12
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

define %struct.Memory* @routine_je_.L_40167f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40168b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40169a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4016b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4016bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4015f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401718(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 4
  %17 = icmp ult i32 %15, 4
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 4
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401705(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40170a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4017d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x425580___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4347264
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40176c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401771(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4017c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40178f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40179b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4017aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4017cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40171f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
