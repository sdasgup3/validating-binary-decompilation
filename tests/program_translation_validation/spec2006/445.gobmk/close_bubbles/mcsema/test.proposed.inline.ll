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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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
define %struct.Memory* @close_bubbles(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_46d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_46d5f0, %struct.Memory** %MEMORY
  %loadMem_46d5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i626 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i626
  %27 = load i64, i64* %PC.i625
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i625
  store i64 %26, i64* %RBP.i627, align 8
  store %struct.Memory* %loadMem_46d5f1, %struct.Memory** %MEMORY
  %loadMem_46d5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i646 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i646
  %36 = load i64, i64* %PC.i645
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i645
  %38 = sub i64 %35, 1648
  store i64 %38, i64* %RSP.i646, align 8
  %39 = icmp ult i64 %35, 1648
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
  %49 = xor i64 1648, %35
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
  store %struct.Memory* %loadMem_46d5f4, %struct.Memory** %MEMORY
  %loadMem_46d5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RSI.i
  %77 = load i32, i32* %ESI.i
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC.i644
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC.i644
  %81 = xor i64 %78, %76
  %82 = trunc i64 %81 to i32
  %83 = and i64 %81, 4294967295
  store i64 %83, i64* %RSI.i, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1
  %91 = icmp eq i32 %82, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %92, i8* %93, align 1
  %94 = lshr i32 %82, 31
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %95, i8* %96, align 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  store %struct.Memory* %loadMem_46d5fb, %struct.Memory** %MEMORY
  %loadMem_46d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %PC.i642
  %106 = add i64 %105, 5
  store i64 %106, i64* %PC.i642
  store i64 1600, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_46d5fd, %struct.Memory** %MEMORY
  %loadMem_46d602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %EAX.i640 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %115 to i64*
  %116 = load i32, i32* %EAX.i640
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i639
  %119 = add i64 %118, 2
  store i64 %119, i64* %PC.i639
  %120 = and i64 %117, 4294967295
  store i64 %120, i64* %RDX.i641, align 8
  store %struct.Memory* %loadMem_46d602, %struct.Memory** %MEMORY
  %loadMem_46d604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i638
  %131 = sub i64 %130, 1616
  %132 = load i64, i64* %PC.i636
  %133 = add i64 %132, 7
  store i64 %133, i64* %PC.i636
  store i64 %131, i64* %RCX.i637, align 8
  store %struct.Memory* %loadMem_46d604, %struct.Memory** %MEMORY
  %loadMem_46d60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RDI.i634 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i635
  %144 = sub i64 %143, 8
  %145 = load i64, i64* %RDI.i634
  %146 = load i64, i64* %PC.i633
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC.i633
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148
  store %struct.Memory* %loadMem_46d60b, %struct.Memory** %MEMORY
  %loadMem_46d60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RBP.i632
  %156 = sub i64 %155, 1624
  %157 = load i64, i64* %PC.i631
  %158 = add i64 %157, 10
  store i64 %158, i64* %PC.i631
  %159 = inttoptr i64 %156 to i32*
  store i32 1, i32* %159
  store %struct.Memory* %loadMem_46d60f, %struct.Memory** %MEMORY
  %loadMem_46d619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 11
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RCX.i630
  %170 = load i64, i64* %PC.i629
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i629
  store i64 %169, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46d619, %struct.Memory** %MEMORY
  %loadMem1_46d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %PC.i628
  %176 = add i64 %175, -443820
  %177 = load i64, i64* %PC.i628
  %178 = add i64 %177, 5
  %179 = load i64, i64* %PC.i628
  %180 = add i64 %179, 5
  store i64 %180, i64* %PC.i628
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %178, i64* %184
  store i64 %183, i64* %181, align 8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %176, i64* %185, align 8
  store %struct.Memory* %loadMem1_46d61c, %struct.Memory** %MEMORY
  %loadMem2_46d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46d61c = load i64, i64* %3
  %186 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_46d61c)
  store %struct.Memory* %186, %struct.Memory** %MEMORY
  br label %block_.L_46d621

block_.L_46d621:                                  ; preds = %block_.L_46db31, %entry
  %loadMem_46d621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i624
  %194 = sub i64 %193, 1624
  %195 = load i64, i64* %PC.i623
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC.i623
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %199, align 1
  %200 = and i32 %198, 255
  %201 = call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %204, i8* %205, align 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %206, align 1
  %207 = icmp eq i32 %198, 0
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %198, 31
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %211, i8* %212, align 1
  %213 = lshr i32 %198, 31
  %214 = xor i32 %210, %213
  %215 = add i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %217, i8* %218, align 1
  store %struct.Memory* %loadMem_46d621, %struct.Memory** %MEMORY
  %loadMem_46d628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %PC.i622
  %223 = add i64 %222, 1294
  %224 = load i64, i64* %PC.i622
  %225 = add i64 %224, 6
  %226 = load i64, i64* %PC.i622
  %227 = add i64 %226, 6
  store i64 %227, i64* %PC.i622
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %229 = load i8, i8* %228, align 1
  store i8 %229, i8* %BRANCH_TAKEN, align 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %231 = icmp ne i8 %229, 0
  %232 = select i1 %231, i64 %223, i64 %225
  store i64 %232, i64* %230, align 8
  store %struct.Memory* %loadMem_46d628, %struct.Memory** %MEMORY
  %loadBr_46d628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d628 = icmp eq i8 %loadBr_46d628, 1
  br i1 %cmpBr_46d628, label %block_.L_46db36, label %block_46d62e

block_46d62e:                                     ; preds = %block_.L_46d621
  %loadMem_46d62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 15
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RBP.i621
  %240 = sub i64 %239, 1624
  %241 = load i64, i64* %PC.i620
  %242 = add i64 %241, 10
  store i64 %242, i64* %PC.i620
  %243 = inttoptr i64 %240 to i32*
  store i32 0, i32* %243
  store %struct.Memory* %loadMem_46d62e, %struct.Memory** %MEMORY
  %loadMem_46d638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i619
  %251 = sub i64 %250, 1620
  %252 = load i64, i64* %PC.i618
  %253 = add i64 %252, 10
  store i64 %253, i64* %PC.i618
  %254 = inttoptr i64 %251 to i32*
  store i32 21, i32* %254
  store %struct.Memory* %loadMem_46d638, %struct.Memory** %MEMORY
  br label %block_.L_46d642

block_.L_46d642:                                  ; preds = %block_.L_46db1d, %block_46d62e
  %loadMem_46d642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i617
  %262 = sub i64 %261, 1620
  %263 = load i64, i64* %PC.i616
  %264 = add i64 %263, 10
  store i64 %264, i64* %PC.i616
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = sub i32 %266, 400
  %268 = icmp ult i32 %266, 400
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %269, i8* %270, align 1
  %271 = and i32 %267, 255
  %272 = call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %275, i8* %276, align 1
  %277 = xor i32 %266, 400
  %278 = xor i32 %277, %267
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %281, i8* %282, align 1
  %283 = icmp eq i32 %267, 0
  %284 = zext i1 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %284, i8* %285, align 1
  %286 = lshr i32 %267, 31
  %287 = trunc i32 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %287, i8* %288, align 1
  %289 = lshr i32 %266, 31
  %290 = xor i32 %286, %289
  %291 = add i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %293, i8* %294, align 1
  store %struct.Memory* %loadMem_46d642, %struct.Memory** %MEMORY
  %loadMem_46d64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %PC.i615
  %299 = add i64 %298, 1253
  %300 = load i64, i64* %PC.i615
  %301 = add i64 %300, 6
  %302 = load i64, i64* %PC.i615
  %303 = add i64 %302, 6
  store i64 %303, i64* %PC.i615
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %305 = load i8, i8* %304, align 1
  %306 = icmp ne i8 %305, 0
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %308 = load i8, i8* %307, align 1
  %309 = icmp ne i8 %308, 0
  %310 = xor i1 %306, %309
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %BRANCH_TAKEN, align 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %314 = select i1 %310, i64 %301, i64 %299
  store i64 %314, i64* %313, align 8
  store %struct.Memory* %loadMem_46d64c, %struct.Memory** %MEMORY
  %loadBr_46d64c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d64c = icmp eq i8 %loadBr_46d64c, 1
  br i1 %cmpBr_46d64c, label %block_.L_46db31, label %block_46d652

block_46d652:                                     ; preds = %block_.L_46d642
  %loadMem_46d652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 33
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i614
  %322 = sub i64 %321, 1628
  %323 = load i64, i64* %PC.i613
  %324 = add i64 %323, 10
  store i64 %324, i64* %PC.i613
  %325 = inttoptr i64 %322 to i32*
  store i32 0, i32* %325
  store %struct.Memory* %loadMem_46d652, %struct.Memory** %MEMORY
  %loadMem_46d65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 15
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RBP.i612
  %333 = sub i64 %332, 1632
  %334 = load i64, i64* %PC.i611
  %335 = add i64 %334, 10
  store i64 %335, i64* %PC.i611
  %336 = inttoptr i64 %333 to i32*
  store i32 0, i32* %336
  store %struct.Memory* %loadMem_46d65c, %struct.Memory** %MEMORY
  %loadMem_46d666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 15
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %RBP.i610
  %344 = sub i64 %343, 1636
  %345 = load i64, i64* %PC.i609
  %346 = add i64 %345, 10
  store i64 %346, i64* %PC.i609
  %347 = inttoptr i64 %344 to i32*
  store i32 0, i32* %347
  store %struct.Memory* %loadMem_46d666, %struct.Memory** %MEMORY
  %loadMem_46d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 15
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RBP.i608
  %358 = sub i64 %357, 1620
  %359 = load i64, i64* %PC.i606
  %360 = add i64 %359, 7
  store i64 %360, i64* %PC.i606
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_46d670, %struct.Memory** %MEMORY
  %loadMem_46d677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RAX.i604
  %374 = add i64 %373, 12099168
  %375 = load i64, i64* %PC.i603
  %376 = add i64 %375, 8
  store i64 %376, i64* %PC.i603
  %377 = inttoptr i64 %374 to i8*
  %378 = load i8, i8* %377
  %379 = zext i8 %378 to i64
  store i64 %379, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_46d677, %struct.Memory** %MEMORY
  %loadMem_46d67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %ECX.i602 = bitcast %union.anon* %385 to i32*
  %386 = load i32, i32* %ECX.i602
  %387 = zext i32 %386 to i64
  %388 = load i64, i64* %PC.i601
  %389 = add i64 %388, 3
  store i64 %389, i64* %PC.i601
  %390 = sub i32 %386, 3
  %391 = icmp ult i32 %386, 3
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %392, i8* %393, align 1
  %394 = and i32 %390, 255
  %395 = call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %398, i8* %399, align 1
  %400 = xor i64 3, %387
  %401 = trunc i64 %400 to i32
  %402 = xor i32 %401, %390
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %405, i8* %406, align 1
  %407 = icmp eq i32 %390, 0
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %408, i8* %409, align 1
  %410 = lshr i32 %390, 31
  %411 = trunc i32 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %411, i8* %412, align 1
  %413 = lshr i32 %386, 31
  %414 = xor i32 %410, %413
  %415 = add i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %417, i8* %418, align 1
  store %struct.Memory* %loadMem_46d67f, %struct.Memory** %MEMORY
  %loadMem_46d682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i600
  %423 = add i64 %422, 48
  %424 = load i64, i64* %PC.i600
  %425 = add i64 %424, 6
  %426 = load i64, i64* %PC.i600
  %427 = add i64 %426, 6
  store i64 %427, i64* %PC.i600
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %429 = load i8, i8* %428, align 1
  store i8 %429, i8* %BRANCH_TAKEN, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = icmp ne i8 %429, 0
  %432 = select i1 %431, i64 %423, i64 %425
  store i64 %432, i64* %430, align 8
  store %struct.Memory* %loadMem_46d682, %struct.Memory** %MEMORY
  %loadBr_46d682 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d682 = icmp eq i8 %loadBr_46d682, 1
  br i1 %cmpBr_46d682, label %block_.L_46d6b2, label %block_46d688

block_46d688:                                     ; preds = %block_46d652
  %loadMem_46d688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RBP.i599
  %443 = sub i64 %442, 8
  %444 = load i64, i64* %PC.i597
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC.i597
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446
  store i64 %447, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_46d688, %struct.Memory** %MEMORY
  %loadMem_46d68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i596
  %458 = sub i64 %457, 1620
  %459 = load i64, i64* %PC.i594
  %460 = add i64 %459, 7
  store i64 %460, i64* %PC.i594
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RCX.i595, align 8
  store %struct.Memory* %loadMem_46d68c, %struct.Memory** %MEMORY
  %loadMem_46d693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RAX.i592
  %474 = load i64, i64* %RCX.i593
  %475 = mul i64 %474, 4
  %476 = add i64 %475, %473
  %477 = load i64, i64* %PC.i591
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC.i591
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %481, align 1
  %482 = and i32 %480, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %488, align 1
  %489 = icmp eq i32 %480, 0
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %490, i8* %491, align 1
  %492 = lshr i32 %480, 31
  %493 = trunc i32 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %493, i8* %494, align 1
  %495 = lshr i32 %480, 31
  %496 = xor i32 %492, %495
  %497 = add i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %499, i8* %500, align 1
  store %struct.Memory* %loadMem_46d693, %struct.Memory** %MEMORY
  %loadMem_46d697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %PC.i590
  %505 = add i64 %504, 27
  %506 = load i64, i64* %PC.i590
  %507 = add i64 %506, 6
  %508 = load i64, i64* %PC.i590
  %509 = add i64 %508, 6
  store i64 %509, i64* %PC.i590
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %511 = load i8, i8* %510, align 1
  %512 = icmp eq i8 %511, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %BRANCH_TAKEN, align 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %515 = select i1 %512, i64 %505, i64 %507
  store i64 %515, i64* %514, align 8
  store %struct.Memory* %loadMem_46d697, %struct.Memory** %MEMORY
  %loadBr_46d697 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d697 = icmp eq i8 %loadBr_46d697, 1
  br i1 %cmpBr_46d697, label %block_.L_46d6b2, label %block_46d69d

block_46d69d:                                     ; preds = %block_46d688
  %loadMem_46d69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RBP.i589
  %526 = sub i64 %525, 1620
  %527 = load i64, i64* %PC.i587
  %528 = add i64 %527, 7
  store i64 %528, i64* %PC.i587
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_46d69d, %struct.Memory** %MEMORY
  %loadMem_46d6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %RBP.i586
  %542 = load i64, i64* %RAX.i585
  %543 = mul i64 %542, 4
  %544 = add i64 %541, -1616
  %545 = add i64 %544, %543
  %546 = load i64, i64* %PC.i584
  %547 = add i64 %546, 8
  store i64 %547, i64* %PC.i584
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sub i32 %549, 3
  %551 = icmp ult i32 %549, 3
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %552, i8* %553, align 1
  %554 = and i32 %550, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %558, i8* %559, align 1
  %560 = xor i32 %549, 3
  %561 = xor i32 %560, %550
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1
  %566 = icmp eq i32 %550, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1
  %569 = lshr i32 %550, 31
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1
  %572 = lshr i32 %549, 31
  %573 = xor i32 %569, %572
  %574 = add i32 %573, %572
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %576, i8* %577, align 1
  store %struct.Memory* %loadMem_46d6a4, %struct.Memory** %MEMORY
  %loadMem_46d6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %PC.i583
  %582 = add i64 %581, 11
  %583 = load i64, i64* %PC.i583
  %584 = add i64 %583, 6
  %585 = load i64, i64* %PC.i583
  %586 = add i64 %585, 6
  store i64 %586, i64* %PC.i583
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %588 = load i8, i8* %587, align 1
  %589 = icmp eq i8 %588, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %BRANCH_TAKEN, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %592 = select i1 %589, i64 %582, i64 %584
  store i64 %592, i64* %591, align 8
  store %struct.Memory* %loadMem_46d6ac, %struct.Memory** %MEMORY
  %loadBr_46d6ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6ac = icmp eq i8 %loadBr_46d6ac, 1
  br i1 %cmpBr_46d6ac, label %block_.L_46d6b7, label %block_.L_46d6b2

block_.L_46d6b2:                                  ; preds = %block_46d69d, %block_46d688, %block_46d652
  %loadMem_46d6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %PC.i582
  %597 = add i64 %596, 1131
  %598 = load i64, i64* %PC.i582
  %599 = add i64 %598, 5
  store i64 %599, i64* %PC.i582
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %597, i64* %600, align 8
  store %struct.Memory* %loadMem_46d6b2, %struct.Memory** %MEMORY
  br label %block_.L_46db1d

block_.L_46d6b7:                                  ; preds = %block_46d69d
  %loadMem_46d6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 15
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RBP.i581
  %611 = sub i64 %610, 1620
  %612 = load i64, i64* %PC.i579
  %613 = add i64 %612, 6
  store i64 %613, i64* %PC.i579
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i580, align 8
  store %struct.Memory* %loadMem_46d6b7, %struct.Memory** %MEMORY
  %loadMem_46d6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 1
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RAX.i578
  %624 = load i64, i64* %PC.i577
  %625 = add i64 %624, 3
  store i64 %625, i64* %PC.i577
  %626 = trunc i64 %623 to i32
  %627 = add i32 20, %626
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX.i578, align 8
  %629 = icmp ult i32 %627, %626
  %630 = icmp ult i32 %627, 20
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %632, i8* %633, align 1
  %634 = and i32 %627, 255
  %635 = call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %638, i8* %639, align 1
  %640 = xor i64 20, %623
  %641 = trunc i64 %640 to i32
  %642 = xor i32 %641, %627
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %645, i8* %646, align 1
  %647 = icmp eq i32 %627, 0
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %648, i8* %649, align 1
  %650 = lshr i32 %627, 31
  %651 = trunc i32 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %651, i8* %652, align 1
  %653 = lshr i32 %626, 31
  %654 = xor i32 %650, %653
  %655 = add i32 %654, %650
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %657, i8* %658, align 1
  store %struct.Memory* %loadMem_46d6bd, %struct.Memory** %MEMORY
  %loadMem_46d6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %664 to i32*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 5
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RCX.i576 = bitcast %union.anon* %667 to i64*
  %668 = load i32, i32* %EAX.i575
  %669 = zext i32 %668 to i64
  %670 = load i64, i64* %PC.i574
  %671 = add i64 %670, 3
  store i64 %671, i64* %PC.i574
  %672 = shl i64 %669, 32
  %673 = ashr exact i64 %672, 32
  store i64 %673, i64* %RCX.i576, align 8
  store %struct.Memory* %loadMem_46d6c0, %struct.Memory** %MEMORY
  %loadMem_46d6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 5
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %RCX.i573
  %684 = add i64 %683, 12099168
  %685 = load i64, i64* %PC.i571
  %686 = add i64 %685, 8
  store i64 %686, i64* %PC.i571
  %687 = inttoptr i64 %684 to i8*
  %688 = load i8, i8* %687
  %689 = zext i8 %688 to i64
  store i64 %689, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_46d6c3, %struct.Memory** %MEMORY
  %loadMem_46d6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %695 to i32*
  %696 = load i32, i32* %EAX.i570
  %697 = zext i32 %696 to i64
  %698 = load i64, i64* %PC.i569
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC.i569
  %700 = sub i32 %696, 3
  %701 = icmp ult i32 %696, 3
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %702, i8* %703, align 1
  %704 = and i32 %700, 255
  %705 = call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %708, i8* %709, align 1
  %710 = xor i64 3, %697
  %711 = trunc i64 %710 to i32
  %712 = xor i32 %711, %700
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %715, i8* %716, align 1
  %717 = icmp eq i32 %700, 0
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %718, i8* %719, align 1
  %720 = lshr i32 %700, 31
  %721 = trunc i32 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %721, i8* %722, align 1
  %723 = lshr i32 %696, 31
  %724 = xor i32 %720, %723
  %725 = add i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %727, i8* %728, align 1
  store %struct.Memory* %loadMem_46d6cb, %struct.Memory** %MEMORY
  %loadMem_46d6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i568
  %733 = add i64 %732, 32
  %734 = load i64, i64* %PC.i568
  %735 = add i64 %734, 6
  %736 = load i64, i64* %PC.i568
  %737 = add i64 %736, 6
  store i64 %737, i64* %PC.i568
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %739 = load i8, i8* %738, align 1
  store i8 %739, i8* %BRANCH_TAKEN, align 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %741 = icmp ne i8 %739, 0
  %742 = select i1 %741, i64 %733, i64 %735
  store i64 %742, i64* %740, align 8
  store %struct.Memory* %loadMem_46d6ce, %struct.Memory** %MEMORY
  %loadBr_46d6ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6ce = icmp eq i8 %loadBr_46d6ce, 1
  br i1 %cmpBr_46d6ce, label %block_.L_46d6ee, label %block_46d6d4

block_46d6d4:                                     ; preds = %block_.L_46d6b7
  %loadMem_46d6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 1
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 15
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RBP.i567
  %753 = sub i64 %752, 1620
  %754 = load i64, i64* %PC.i565
  %755 = add i64 %754, 6
  store i64 %755, i64* %PC.i565
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_46d6d4, %struct.Memory** %MEMORY
  %loadMem_46d6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RAX.i564
  %766 = load i64, i64* %PC.i563
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC.i563
  %768 = trunc i64 %765 to i32
  %769 = add i32 20, %768
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RAX.i564, align 8
  %771 = icmp ult i32 %769, %768
  %772 = icmp ult i32 %769, 20
  %773 = or i1 %771, %772
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %774, i8* %775, align 1
  %776 = and i32 %769, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1
  %782 = xor i64 20, %765
  %783 = trunc i64 %782 to i32
  %784 = xor i32 %783, %769
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %787, i8* %788, align 1
  %789 = icmp eq i32 %769, 0
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %790, i8* %791, align 1
  %792 = lshr i32 %769, 31
  %793 = trunc i32 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %793, i8* %794, align 1
  %795 = lshr i32 %768, 31
  %796 = xor i32 %792, %795
  %797 = add i32 %796, %792
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %799, i8* %800, align 1
  store %struct.Memory* %loadMem_46d6da, %struct.Memory** %MEMORY
  %loadMem_46d6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %EAX.i561 = bitcast %union.anon* %806 to i32*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %809 to i64*
  %810 = load i32, i32* %EAX.i561
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC.i560
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i560
  %814 = shl i64 %811, 32
  %815 = ashr exact i64 %814, 32
  store i64 %815, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_46d6dd, %struct.Memory** %MEMORY
  %loadMem_46d6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 5
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RBP.i559
  %826 = load i64, i64* %RCX.i558
  %827 = mul i64 %826, 4
  %828 = add i64 %825, -1616
  %829 = add i64 %828, %827
  %830 = load i64, i64* %PC.i557
  %831 = add i64 %830, 8
  store i64 %831, i64* %PC.i557
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832
  %834 = sub i32 %833, 3
  %835 = icmp ult i32 %833, 3
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %836, i8* %837, align 1
  %838 = and i32 %834, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1
  %844 = xor i32 %833, 3
  %845 = xor i32 %844, %834
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %848, i8* %849, align 1
  %850 = icmp eq i32 %834, 0
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %851, i8* %852, align 1
  %853 = lshr i32 %834, 31
  %854 = trunc i32 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %854, i8* %855, align 1
  %856 = lshr i32 %833, 31
  %857 = xor i32 %853, %856
  %858 = add i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %860, i8* %861, align 1
  store %struct.Memory* %loadMem_46d6e0, %struct.Memory** %MEMORY
  %loadMem_46d6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %PC.i556
  %866 = add i64 %865, 171
  %867 = load i64, i64* %PC.i556
  %868 = add i64 %867, 6
  %869 = load i64, i64* %PC.i556
  %870 = add i64 %869, 6
  store i64 %870, i64* %PC.i556
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %872 = load i8, i8* %871, align 1
  store i8 %872, i8* %BRANCH_TAKEN, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %874 = icmp ne i8 %872, 0
  %875 = select i1 %874, i64 %866, i64 %868
  store i64 %875, i64* %873, align 8
  store %struct.Memory* %loadMem_46d6e8, %struct.Memory** %MEMORY
  %loadBr_46d6e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6e8 = icmp eq i8 %loadBr_46d6e8, 1
  br i1 %cmpBr_46d6e8, label %block_.L_46d793, label %block_.L_46d6ee

block_.L_46d6ee:                                  ; preds = %block_46d6d4, %block_.L_46d6b7
  %loadMem_46d6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %RBP.i555
  %886 = sub i64 %885, 1620
  %887 = load i64, i64* %PC.i553
  %888 = add i64 %887, 6
  store i64 %888, i64* %PC.i553
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_46d6ee, %struct.Memory** %MEMORY
  %loadMem_46d6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 1
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RAX.i552
  %899 = load i64, i64* %PC.i551
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i551
  %901 = trunc i64 %898 to i32
  %902 = sub i32 %901, 1
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i552, align 8
  %904 = icmp ult i32 %901, 1
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %905, i8* %906, align 1
  %907 = and i32 %902, 255
  %908 = call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %911, i8* %912, align 1
  %913 = xor i64 1, %898
  %914 = trunc i64 %913 to i32
  %915 = xor i32 %914, %902
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %918, i8* %919, align 1
  %920 = icmp eq i32 %902, 0
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %921, i8* %922, align 1
  %923 = lshr i32 %902, 31
  %924 = trunc i32 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %924, i8* %925, align 1
  %926 = lshr i32 %901, 31
  %927 = xor i32 %923, %926
  %928 = add i32 %927, %926
  %929 = icmp eq i32 %928, 2
  %930 = zext i1 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %930, i8* %931, align 1
  store %struct.Memory* %loadMem_46d6f4, %struct.Memory** %MEMORY
  %loadMem_46d6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 33
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %EAX.i549 = bitcast %union.anon* %937 to i32*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 5
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %940 to i64*
  %941 = load i32, i32* %EAX.i549
  %942 = zext i32 %941 to i64
  %943 = load i64, i64* %PC.i548
  %944 = add i64 %943, 3
  store i64 %944, i64* %PC.i548
  %945 = shl i64 %942, 32
  %946 = ashr exact i64 %945, 32
  store i64 %946, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_46d6f7, %struct.Memory** %MEMORY
  %loadMem_46d6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 1
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 5
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RCX.i547
  %957 = add i64 %956, 12099168
  %958 = load i64, i64* %PC.i545
  %959 = add i64 %958, 8
  store i64 %959, i64* %PC.i545
  %960 = inttoptr i64 %957 to i8*
  %961 = load i8, i8* %960
  %962 = zext i8 %961 to i64
  store i64 %962, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_46d6fa, %struct.Memory** %MEMORY
  %loadMem_46d702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %968 to i32*
  %969 = load i32, i32* %EAX.i544
  %970 = zext i32 %969 to i64
  %971 = load i64, i64* %PC.i543
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i543
  %973 = sub i32 %969, 3
  %974 = icmp ult i32 %969, 3
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %975, i8* %976, align 1
  %977 = and i32 %973, 255
  %978 = call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %981, i8* %982, align 1
  %983 = xor i64 3, %970
  %984 = trunc i64 %983 to i32
  %985 = xor i32 %984, %973
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %988, i8* %989, align 1
  %990 = icmp eq i32 %973, 0
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %991, i8* %992, align 1
  %993 = lshr i32 %973, 31
  %994 = trunc i32 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %994, i8* %995, align 1
  %996 = lshr i32 %969, 31
  %997 = xor i32 %993, %996
  %998 = add i32 %997, %996
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1000, i8* %1001, align 1
  store %struct.Memory* %loadMem_46d702, %struct.Memory** %MEMORY
  %loadMem_46d705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %PC.i542
  %1006 = add i64 %1005, 32
  %1007 = load i64, i64* %PC.i542
  %1008 = add i64 %1007, 6
  %1009 = load i64, i64* %PC.i542
  %1010 = add i64 %1009, 6
  store i64 %1010, i64* %PC.i542
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1012 = load i8, i8* %1011, align 1
  store i8 %1012, i8* %BRANCH_TAKEN, align 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1014 = icmp ne i8 %1012, 0
  %1015 = select i1 %1014, i64 %1006, i64 %1008
  store i64 %1015, i64* %1013, align 8
  store %struct.Memory* %loadMem_46d705, %struct.Memory** %MEMORY
  %loadBr_46d705 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d705 = icmp eq i8 %loadBr_46d705, 1
  br i1 %cmpBr_46d705, label %block_.L_46d725, label %block_46d70b

block_46d70b:                                     ; preds = %block_.L_46d6ee
  %loadMem_46d70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 15
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RBP.i541
  %1026 = sub i64 %1025, 1620
  %1027 = load i64, i64* %PC.i539
  %1028 = add i64 %1027, 6
  store i64 %1028, i64* %PC.i539
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_46d70b, %struct.Memory** %MEMORY
  %loadMem_46d711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 1
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RAX.i538
  %1039 = load i64, i64* %PC.i537
  %1040 = add i64 %1039, 3
  store i64 %1040, i64* %PC.i537
  %1041 = trunc i64 %1038 to i32
  %1042 = sub i32 %1041, 1
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX.i538, align 8
  %1044 = icmp ult i32 %1041, 1
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1045, i8* %1046, align 1
  %1047 = and i32 %1042, 255
  %1048 = call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1051, i8* %1052, align 1
  %1053 = xor i64 1, %1038
  %1054 = trunc i64 %1053 to i32
  %1055 = xor i32 %1054, %1042
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1058, i8* %1059, align 1
  %1060 = icmp eq i32 %1042, 0
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1061, i8* %1062, align 1
  %1063 = lshr i32 %1042, 31
  %1064 = trunc i32 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1064, i8* %1065, align 1
  %1066 = lshr i32 %1041, 31
  %1067 = xor i32 %1063, %1066
  %1068 = add i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1070, i8* %1071, align 1
  store %struct.Memory* %loadMem_46d711, %struct.Memory** %MEMORY
  %loadMem_46d714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %1077 to i32*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 5
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %1080 to i64*
  %1081 = load i32, i32* %EAX.i535
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %PC.i534
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i534
  %1085 = shl i64 %1082, 32
  %1086 = ashr exact i64 %1085, 32
  store i64 %1086, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_46d714, %struct.Memory** %MEMORY
  %loadMem_46d717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 5
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 15
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RBP.i533
  %1097 = load i64, i64* %RCX.i532
  %1098 = mul i64 %1097, 4
  %1099 = add i64 %1096, -1616
  %1100 = add i64 %1099, %1098
  %1101 = load i64, i64* %PC.i531
  %1102 = add i64 %1101, 8
  store i64 %1102, i64* %PC.i531
  %1103 = inttoptr i64 %1100 to i32*
  %1104 = load i32, i32* %1103
  %1105 = sub i32 %1104, 3
  %1106 = icmp ult i32 %1104, 3
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1107, i8* %1108, align 1
  %1109 = and i32 %1105, 255
  %1110 = call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1113, i8* %1114, align 1
  %1115 = xor i32 %1104, 3
  %1116 = xor i32 %1115, %1105
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1119, i8* %1120, align 1
  %1121 = icmp eq i32 %1105, 0
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1122, i8* %1123, align 1
  %1124 = lshr i32 %1105, 31
  %1125 = trunc i32 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1125, i8* %1126, align 1
  %1127 = lshr i32 %1104, 31
  %1128 = xor i32 %1124, %1127
  %1129 = add i32 %1128, %1127
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1131, i8* %1132, align 1
  store %struct.Memory* %loadMem_46d717, %struct.Memory** %MEMORY
  %loadMem_46d71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %PC.i530
  %1137 = add i64 %1136, 116
  %1138 = load i64, i64* %PC.i530
  %1139 = add i64 %1138, 6
  %1140 = load i64, i64* %PC.i530
  %1141 = add i64 %1140, 6
  store i64 %1141, i64* %PC.i530
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1143 = load i8, i8* %1142, align 1
  store i8 %1143, i8* %BRANCH_TAKEN, align 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1145 = icmp ne i8 %1143, 0
  %1146 = select i1 %1145, i64 %1137, i64 %1139
  store i64 %1146, i64* %1144, align 8
  store %struct.Memory* %loadMem_46d71f, %struct.Memory** %MEMORY
  %loadBr_46d71f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d71f = icmp eq i8 %loadBr_46d71f, 1
  br i1 %cmpBr_46d71f, label %block_.L_46d793, label %block_.L_46d725

block_.L_46d725:                                  ; preds = %block_46d70b, %block_.L_46d6ee
  %loadMem_46d725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 15
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %RBP.i529
  %1157 = sub i64 %1156, 1620
  %1158 = load i64, i64* %PC.i527
  %1159 = add i64 %1158, 6
  store i64 %1159, i64* %PC.i527
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_46d725, %struct.Memory** %MEMORY
  %loadMem_46d72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RAX.i526
  %1170 = load i64, i64* %PC.i525
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i525
  %1172 = trunc i64 %1169 to i32
  %1173 = sub i32 %1172, 20
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i526, align 8
  %1175 = icmp ult i32 %1172, 20
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1176, i8* %1177, align 1
  %1178 = and i32 %1173, 255
  %1179 = call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1182, i8* %1183, align 1
  %1184 = xor i64 20, %1169
  %1185 = trunc i64 %1184 to i32
  %1186 = xor i32 %1185, %1173
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1189, i8* %1190, align 1
  %1191 = icmp eq i32 %1173, 0
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1192, i8* %1193, align 1
  %1194 = lshr i32 %1173, 31
  %1195 = trunc i32 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i32 %1172, 31
  %1198 = xor i32 %1194, %1197
  %1199 = add i32 %1198, %1197
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1201, i8* %1202, align 1
  store %struct.Memory* %loadMem_46d72b, %struct.Memory** %MEMORY
  %loadMem_46d72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %1208 to i32*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 5
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %1211 to i64*
  %1212 = load i32, i32* %EAX.i523
  %1213 = zext i32 %1212 to i64
  %1214 = load i64, i64* %PC.i522
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i522
  %1216 = shl i64 %1213, 32
  %1217 = ashr exact i64 %1216, 32
  store i64 %1217, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_46d72e, %struct.Memory** %MEMORY
  %loadMem_46d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 1
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 5
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RCX.i521
  %1228 = add i64 %1227, 12099168
  %1229 = load i64, i64* %PC.i519
  %1230 = add i64 %1229, 8
  store i64 %1230, i64* %PC.i519
  %1231 = inttoptr i64 %1228 to i8*
  %1232 = load i8, i8* %1231
  %1233 = zext i8 %1232 to i64
  store i64 %1233, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_46d731, %struct.Memory** %MEMORY
  %loadMem_46d739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %1239 to i32*
  %1240 = load i32, i32* %EAX.i518
  %1241 = zext i32 %1240 to i64
  %1242 = load i64, i64* %PC.i517
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i517
  %1244 = sub i32 %1240, 3
  %1245 = icmp ult i32 %1240, 3
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1246, i8* %1247, align 1
  %1248 = and i32 %1244, 255
  %1249 = call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1252, i8* %1253, align 1
  %1254 = xor i64 3, %1241
  %1255 = trunc i64 %1254 to i32
  %1256 = xor i32 %1255, %1244
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1
  %1261 = icmp eq i32 %1244, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1
  %1264 = lshr i32 %1244, 31
  %1265 = trunc i32 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1
  %1267 = lshr i32 %1240, 31
  %1268 = xor i32 %1264, %1267
  %1269 = add i32 %1268, %1267
  %1270 = icmp eq i32 %1269, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1272, align 1
  store %struct.Memory* %loadMem_46d739, %struct.Memory** %MEMORY
  %loadMem_46d73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %PC.i516
  %1277 = add i64 %1276, 32
  %1278 = load i64, i64* %PC.i516
  %1279 = add i64 %1278, 6
  %1280 = load i64, i64* %PC.i516
  %1281 = add i64 %1280, 6
  store i64 %1281, i64* %PC.i516
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1283 = load i8, i8* %1282, align 1
  store i8 %1283, i8* %BRANCH_TAKEN, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1285 = icmp ne i8 %1283, 0
  %1286 = select i1 %1285, i64 %1277, i64 %1279
  store i64 %1286, i64* %1284, align 8
  store %struct.Memory* %loadMem_46d73c, %struct.Memory** %MEMORY
  %loadBr_46d73c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d73c = icmp eq i8 %loadBr_46d73c, 1
  br i1 %cmpBr_46d73c, label %block_.L_46d75c, label %block_46d742

block_46d742:                                     ; preds = %block_.L_46d725
  %loadMem_46d742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 15
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RBP.i515
  %1297 = sub i64 %1296, 1620
  %1298 = load i64, i64* %PC.i513
  %1299 = add i64 %1298, 6
  store i64 %1299, i64* %PC.i513
  %1300 = inttoptr i64 %1297 to i32*
  %1301 = load i32, i32* %1300
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_46d742, %struct.Memory** %MEMORY
  %loadMem_46d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 1
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RAX.i512
  %1310 = load i64, i64* %PC.i511
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC.i511
  %1312 = trunc i64 %1309 to i32
  %1313 = sub i32 %1312, 20
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX.i512, align 8
  %1315 = icmp ult i32 %1312, 20
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1316, i8* %1317, align 1
  %1318 = and i32 %1313, 255
  %1319 = call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1322, i8* %1323, align 1
  %1324 = xor i64 20, %1309
  %1325 = trunc i64 %1324 to i32
  %1326 = xor i32 %1325, %1313
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1329, i8* %1330, align 1
  %1331 = icmp eq i32 %1313, 0
  %1332 = zext i1 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1332, i8* %1333, align 1
  %1334 = lshr i32 %1313, 31
  %1335 = trunc i32 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1335, i8* %1336, align 1
  %1337 = lshr i32 %1312, 31
  %1338 = xor i32 %1334, %1337
  %1339 = add i32 %1338, %1337
  %1340 = icmp eq i32 %1339, 2
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1341, i8* %1342, align 1
  store %struct.Memory* %loadMem_46d748, %struct.Memory** %MEMORY
  %loadMem_46d74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %EAX.i509 = bitcast %union.anon* %1348 to i32*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 5
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %1351 to i64*
  %1352 = load i32, i32* %EAX.i509
  %1353 = zext i32 %1352 to i64
  %1354 = load i64, i64* %PC.i508
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i508
  %1356 = shl i64 %1353, 32
  %1357 = ashr exact i64 %1356, 32
  store i64 %1357, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_46d74b, %struct.Memory** %MEMORY
  %loadMem_46d74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 5
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 15
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RBP.i507
  %1368 = load i64, i64* %RCX.i506
  %1369 = mul i64 %1368, 4
  %1370 = add i64 %1367, -1616
  %1371 = add i64 %1370, %1369
  %1372 = load i64, i64* %PC.i505
  %1373 = add i64 %1372, 8
  store i64 %1373, i64* %PC.i505
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = sub i32 %1375, 3
  %1377 = icmp ult i32 %1375, 3
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1
  %1380 = and i32 %1376, 255
  %1381 = call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1384, i8* %1385, align 1
  %1386 = xor i32 %1375, 3
  %1387 = xor i32 %1386, %1376
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1390, i8* %1391, align 1
  %1392 = icmp eq i32 %1376, 0
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1393, i8* %1394, align 1
  %1395 = lshr i32 %1376, 31
  %1396 = trunc i32 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1396, i8* %1397, align 1
  %1398 = lshr i32 %1375, 31
  %1399 = xor i32 %1395, %1398
  %1400 = add i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1402, i8* %1403, align 1
  store %struct.Memory* %loadMem_46d74e, %struct.Memory** %MEMORY
  %loadMem_46d756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i504
  %1408 = add i64 %1407, 61
  %1409 = load i64, i64* %PC.i504
  %1410 = add i64 %1409, 6
  %1411 = load i64, i64* %PC.i504
  %1412 = add i64 %1411, 6
  store i64 %1412, i64* %PC.i504
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1414 = load i8, i8* %1413, align 1
  store i8 %1414, i8* %BRANCH_TAKEN, align 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1416 = icmp ne i8 %1414, 0
  %1417 = select i1 %1416, i64 %1408, i64 %1410
  store i64 %1417, i64* %1415, align 8
  store %struct.Memory* %loadMem_46d756, %struct.Memory** %MEMORY
  %loadBr_46d756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d756 = icmp eq i8 %loadBr_46d756, 1
  br i1 %cmpBr_46d756, label %block_.L_46d793, label %block_.L_46d75c

block_.L_46d75c:                                  ; preds = %block_46d742, %block_.L_46d725
  %loadMem_46d75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i503
  %1428 = sub i64 %1427, 1620
  %1429 = load i64, i64* %PC.i501
  %1430 = add i64 %1429, 6
  store i64 %1430, i64* %PC.i501
  %1431 = inttoptr i64 %1428 to i32*
  %1432 = load i32, i32* %1431
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_46d75c, %struct.Memory** %MEMORY
  %loadMem_46d762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 1
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RAX.i500
  %1441 = load i64, i64* %PC.i499
  %1442 = add i64 %1441, 3
  store i64 %1442, i64* %PC.i499
  %1443 = trunc i64 %1440 to i32
  %1444 = add i32 1, %1443
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RAX.i500, align 8
  %1446 = icmp ult i32 %1444, %1443
  %1447 = icmp ult i32 %1444, 1
  %1448 = or i1 %1446, %1447
  %1449 = zext i1 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1449, i8* %1450, align 1
  %1451 = and i32 %1444, 255
  %1452 = call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1455, i8* %1456, align 1
  %1457 = xor i64 1, %1440
  %1458 = trunc i64 %1457 to i32
  %1459 = xor i32 %1458, %1444
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1462, i8* %1463, align 1
  %1464 = icmp eq i32 %1444, 0
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1465, i8* %1466, align 1
  %1467 = lshr i32 %1444, 31
  %1468 = trunc i32 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1468, i8* %1469, align 1
  %1470 = lshr i32 %1443, 31
  %1471 = xor i32 %1467, %1470
  %1472 = add i32 %1471, %1467
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1474, i8* %1475, align 1
  store %struct.Memory* %loadMem_46d762, %struct.Memory** %MEMORY
  %loadMem_46d765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %1481 to i32*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 5
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %1484 to i64*
  %1485 = load i32, i32* %EAX.i497
  %1486 = zext i32 %1485 to i64
  %1487 = load i64, i64* %PC.i496
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %PC.i496
  %1489 = shl i64 %1486, 32
  %1490 = ashr exact i64 %1489, 32
  store i64 %1490, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_46d765, %struct.Memory** %MEMORY
  %loadMem_46d768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 1
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 5
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RCX.i495
  %1501 = add i64 %1500, 12099168
  %1502 = load i64, i64* %PC.i493
  %1503 = add i64 %1502, 8
  store i64 %1503, i64* %PC.i493
  %1504 = inttoptr i64 %1501 to i8*
  %1505 = load i8, i8* %1504
  %1506 = zext i8 %1505 to i64
  store i64 %1506, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_46d768, %struct.Memory** %MEMORY
  %loadMem_46d770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %EAX.i492 = bitcast %union.anon* %1512 to i32*
  %1513 = load i32, i32* %EAX.i492
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC.i491
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %PC.i491
  %1517 = sub i32 %1513, 3
  %1518 = icmp ult i32 %1513, 3
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1519, i8* %1520, align 1
  %1521 = and i32 %1517, 255
  %1522 = call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1525, i8* %1526, align 1
  %1527 = xor i64 3, %1514
  %1528 = trunc i64 %1527 to i32
  %1529 = xor i32 %1528, %1517
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1532, i8* %1533, align 1
  %1534 = icmp eq i32 %1517, 0
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1535, i8* %1536, align 1
  %1537 = lshr i32 %1517, 31
  %1538 = trunc i32 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1538, i8* %1539, align 1
  %1540 = lshr i32 %1513, 31
  %1541 = xor i32 %1537, %1540
  %1542 = add i32 %1541, %1540
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1544, i8* %1545, align 1
  store %struct.Memory* %loadMem_46d770, %struct.Memory** %MEMORY
  %loadMem_46d773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %PC.i490
  %1550 = add i64 %1549, 65
  %1551 = load i64, i64* %PC.i490
  %1552 = add i64 %1551, 6
  %1553 = load i64, i64* %PC.i490
  %1554 = add i64 %1553, 6
  store i64 %1554, i64* %PC.i490
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1556 = load i8, i8* %1555, align 1
  store i8 %1556, i8* %BRANCH_TAKEN, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1558 = icmp ne i8 %1556, 0
  %1559 = select i1 %1558, i64 %1550, i64 %1552
  store i64 %1559, i64* %1557, align 8
  store %struct.Memory* %loadMem_46d773, %struct.Memory** %MEMORY
  %loadBr_46d773 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d773 = icmp eq i8 %loadBr_46d773, 1
  br i1 %cmpBr_46d773, label %block_.L_46d7b4, label %block_46d779

block_46d779:                                     ; preds = %block_.L_46d75c
  %loadMem_46d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %RBP.i489
  %1570 = sub i64 %1569, 1620
  %1571 = load i64, i64* %PC.i487
  %1572 = add i64 %1571, 6
  store i64 %1572, i64* %PC.i487
  %1573 = inttoptr i64 %1570 to i32*
  %1574 = load i32, i32* %1573
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_46d779, %struct.Memory** %MEMORY
  %loadMem_46d77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %RAX.i486
  %1583 = load i64, i64* %PC.i485
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i485
  %1585 = trunc i64 %1582 to i32
  %1586 = add i32 1, %1585
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RAX.i486, align 8
  %1588 = icmp ult i32 %1586, %1585
  %1589 = icmp ult i32 %1586, 1
  %1590 = or i1 %1588, %1589
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1591, i8* %1592, align 1
  %1593 = and i32 %1586, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1
  %1599 = xor i64 1, %1582
  %1600 = trunc i64 %1599 to i32
  %1601 = xor i32 %1600, %1586
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1604, i8* %1605, align 1
  %1606 = icmp eq i32 %1586, 0
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1607, i8* %1608, align 1
  %1609 = lshr i32 %1586, 31
  %1610 = trunc i32 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1610, i8* %1611, align 1
  %1612 = lshr i32 %1585, 31
  %1613 = xor i32 %1609, %1612
  %1614 = add i32 %1613, %1609
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1616, i8* %1617, align 1
  store %struct.Memory* %loadMem_46d77f, %struct.Memory** %MEMORY
  %loadMem_46d782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %1623 to i32*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 5
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1626 to i64*
  %1627 = load i32, i32* %EAX.i483
  %1628 = zext i32 %1627 to i64
  %1629 = load i64, i64* %PC.i482
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %PC.i482
  %1631 = shl i64 %1628, 32
  %1632 = ashr exact i64 %1631, 32
  store i64 %1632, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_46d782, %struct.Memory** %MEMORY
  %loadMem_46d785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 5
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 15
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RBP.i481
  %1643 = load i64, i64* %RCX.i480
  %1644 = mul i64 %1643, 4
  %1645 = add i64 %1642, -1616
  %1646 = add i64 %1645, %1644
  %1647 = load i64, i64* %PC.i479
  %1648 = add i64 %1647, 8
  store i64 %1648, i64* %PC.i479
  %1649 = inttoptr i64 %1646 to i32*
  %1650 = load i32, i32* %1649
  %1651 = sub i32 %1650, 3
  %1652 = icmp ult i32 %1650, 3
  %1653 = zext i1 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1653, i8* %1654, align 1
  %1655 = and i32 %1651, 255
  %1656 = call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1659, i8* %1660, align 1
  %1661 = xor i32 %1650, 3
  %1662 = xor i32 %1661, %1651
  %1663 = lshr i32 %1662, 4
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1665, i8* %1666, align 1
  %1667 = icmp eq i32 %1651, 0
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1668, i8* %1669, align 1
  %1670 = lshr i32 %1651, 31
  %1671 = trunc i32 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1671, i8* %1672, align 1
  %1673 = lshr i32 %1650, 31
  %1674 = xor i32 %1670, %1673
  %1675 = add i32 %1674, %1673
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1677, i8* %1678, align 1
  store %struct.Memory* %loadMem_46d785, %struct.Memory** %MEMORY
  %loadMem_46d78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %PC.i478
  %1683 = add i64 %1682, 39
  %1684 = load i64, i64* %PC.i478
  %1685 = add i64 %1684, 6
  %1686 = load i64, i64* %PC.i478
  %1687 = add i64 %1686, 6
  store i64 %1687, i64* %PC.i478
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1689 = load i8, i8* %1688, align 1
  %1690 = icmp eq i8 %1689, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %BRANCH_TAKEN, align 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1693 = select i1 %1690, i64 %1683, i64 %1685
  store i64 %1693, i64* %1692, align 8
  store %struct.Memory* %loadMem_46d78d, %struct.Memory** %MEMORY
  %loadBr_46d78d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d78d = icmp eq i8 %loadBr_46d78d, 1
  br i1 %cmpBr_46d78d, label %block_.L_46d7b4, label %block_.L_46d793

block_.L_46d793:                                  ; preds = %block_46d779, %block_46d742, %block_46d70b, %block_46d6d4
  %loadMem_46d793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 15
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RBP.i477
  %1701 = sub i64 %1700, 1624
  %1702 = load i64, i64* %PC.i476
  %1703 = add i64 %1702, 10
  store i64 %1703, i64* %PC.i476
  %1704 = inttoptr i64 %1701 to i32*
  store i32 1, i32* %1704
  store %struct.Memory* %loadMem_46d793, %struct.Memory** %MEMORY
  %loadMem_46d79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 15
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %RBP.i475
  %1715 = sub i64 %1714, 1620
  %1716 = load i64, i64* %PC.i473
  %1717 = add i64 %1716, 7
  store i64 %1717, i64* %PC.i473
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718
  %1720 = sext i32 %1719 to i64
  store i64 %1720, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_46d79d, %struct.Memory** %MEMORY
  %loadMem_46d7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 1
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 15
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %RBP.i472
  %1731 = load i64, i64* %RAX.i471
  %1732 = mul i64 %1731, 4
  %1733 = add i64 %1730, -1616
  %1734 = add i64 %1733, %1732
  %1735 = load i64, i64* %PC.i470
  %1736 = add i64 %1735, 11
  store i64 %1736, i64* %PC.i470
  %1737 = inttoptr i64 %1734 to i32*
  store i32 3, i32* %1737
  store %struct.Memory* %loadMem_46d7a4, %struct.Memory** %MEMORY
  %loadMem_46d7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %PC.i469
  %1742 = add i64 %1741, 873
  %1743 = load i64, i64* %PC.i469
  %1744 = add i64 %1743, 5
  store i64 %1744, i64* %PC.i469
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1742, i64* %1745, align 8
  store %struct.Memory* %loadMem_46d7af, %struct.Memory** %MEMORY
  br label %block_.L_46db18

block_.L_46d7b4:                                  ; preds = %block_46d779, %block_.L_46d75c
  %loadMem_46d7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i468
  %1756 = sub i64 %1755, 1620
  %1757 = load i64, i64* %PC.i466
  %1758 = add i64 %1757, 7
  store i64 %1758, i64* %PC.i466
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = sext i32 %1760 to i64
  store i64 %1761, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_46d7b4, %struct.Memory** %MEMORY
  %loadMem_46d7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i465
  %1772 = load i64, i64* %RAX.i464
  %1773 = mul i64 %1772, 4
  %1774 = add i64 %1771, -1616
  %1775 = add i64 %1774, %1773
  %1776 = load i64, i64* %PC.i463
  %1777 = add i64 %1776, 8
  store i64 %1777, i64* %PC.i463
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778
  %1780 = sub i32 %1779, 1
  %1781 = icmp ult i32 %1779, 1
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1782, i8* %1783, align 1
  %1784 = and i32 %1780, 255
  %1785 = call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1788, i8* %1789, align 1
  %1790 = xor i32 %1779, 1
  %1791 = xor i32 %1790, %1780
  %1792 = lshr i32 %1791, 4
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1794, i8* %1795, align 1
  %1796 = icmp eq i32 %1780, 0
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1797, i8* %1798, align 1
  %1799 = lshr i32 %1780, 31
  %1800 = trunc i32 %1799 to i8
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1800, i8* %1801, align 1
  %1802 = lshr i32 %1779, 31
  %1803 = xor i32 %1799, %1802
  %1804 = add i32 %1803, %1802
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1806, i8* %1807, align 1
  store %struct.Memory* %loadMem_46d7bb, %struct.Memory** %MEMORY
  %loadMem_46d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %PC.i462
  %1812 = add i64 %1811, 330
  %1813 = load i64, i64* %PC.i462
  %1814 = add i64 %1813, 6
  %1815 = load i64, i64* %PC.i462
  %1816 = add i64 %1815, 6
  store i64 %1816, i64* %PC.i462
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1818 = load i8, i8* %1817, align 1
  store i8 %1818, i8* %BRANCH_TAKEN, align 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1820 = icmp ne i8 %1818, 0
  %1821 = select i1 %1820, i64 %1812, i64 %1814
  store i64 %1821, i64* %1819, align 8
  store %struct.Memory* %loadMem_46d7c3, %struct.Memory** %MEMORY
  %loadBr_46d7c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7c3 = icmp eq i8 %loadBr_46d7c3, 1
  br i1 %cmpBr_46d7c3, label %block_.L_46d90d, label %block_46d7c9

block_46d7c9:                                     ; preds = %block_.L_46d7b4
  %loadMem_46d7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 1
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RBP.i461
  %1832 = sub i64 %1831, 1620
  %1833 = load i64, i64* %PC.i459
  %1834 = add i64 %1833, 6
  store i64 %1834, i64* %PC.i459
  %1835 = inttoptr i64 %1832 to i32*
  %1836 = load i32, i32* %1835
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_46d7c9, %struct.Memory** %MEMORY
  %loadMem_46d7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 1
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RAX.i458
  %1845 = load i64, i64* %PC.i457
  %1846 = add i64 %1845, 3
  store i64 %1846, i64* %PC.i457
  %1847 = trunc i64 %1844 to i32
  %1848 = add i32 20, %1847
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RAX.i458, align 8
  %1850 = icmp ult i32 %1848, %1847
  %1851 = icmp ult i32 %1848, 20
  %1852 = or i1 %1850, %1851
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1853, i8* %1854, align 1
  %1855 = and i32 %1848, 255
  %1856 = call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1859, i8* %1860, align 1
  %1861 = xor i64 20, %1844
  %1862 = trunc i64 %1861 to i32
  %1863 = xor i32 %1862, %1848
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1866, i8* %1867, align 1
  %1868 = icmp eq i32 %1848, 0
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1869, i8* %1870, align 1
  %1871 = lshr i32 %1848, 31
  %1872 = trunc i32 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1872, i8* %1873, align 1
  %1874 = lshr i32 %1847, 31
  %1875 = xor i32 %1871, %1874
  %1876 = add i32 %1875, %1871
  %1877 = icmp eq i32 %1876, 2
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1878, i8* %1879, align 1
  store %struct.Memory* %loadMem_46d7cf, %struct.Memory** %MEMORY
  %loadMem_46d7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %EAX.i455 = bitcast %union.anon* %1885 to i32*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 5
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %1888 to i64*
  %1889 = load i32, i32* %EAX.i455
  %1890 = zext i32 %1889 to i64
  %1891 = load i64, i64* %PC.i454
  %1892 = add i64 %1891, 3
  store i64 %1892, i64* %PC.i454
  %1893 = shl i64 %1890, 32
  %1894 = ashr exact i64 %1893, 32
  store i64 %1894, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_46d7d2, %struct.Memory** %MEMORY
  %loadMem_46d7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 1
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 5
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RCX.i453
  %1905 = add i64 %1904, 12099168
  %1906 = load i64, i64* %PC.i451
  %1907 = add i64 %1906, 8
  store i64 %1907, i64* %PC.i451
  %1908 = inttoptr i64 %1905 to i8*
  %1909 = load i8, i8* %1908
  %1910 = zext i8 %1909 to i64
  store i64 %1910, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_46d7d5, %struct.Memory** %MEMORY
  %loadMem_46d7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 1
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %1916 to i32*
  %1917 = load i32, i32* %EAX.i450
  %1918 = zext i32 %1917 to i64
  %1919 = load i64, i64* %PC.i449
  %1920 = add i64 %1919, 3
  store i64 %1920, i64* %PC.i449
  %1921 = sub i32 %1917, 3
  %1922 = icmp ult i32 %1917, 3
  %1923 = zext i1 %1922 to i8
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1923, i8* %1924, align 1
  %1925 = and i32 %1921, 255
  %1926 = call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1929, i8* %1930, align 1
  %1931 = xor i64 3, %1918
  %1932 = trunc i64 %1931 to i32
  %1933 = xor i32 %1932, %1921
  %1934 = lshr i32 %1933, 4
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1936, i8* %1937, align 1
  %1938 = icmp eq i32 %1921, 0
  %1939 = zext i1 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1939, i8* %1940, align 1
  %1941 = lshr i32 %1921, 31
  %1942 = trunc i32 %1941 to i8
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1942, i8* %1943, align 1
  %1944 = lshr i32 %1917, 31
  %1945 = xor i32 %1941, %1944
  %1946 = add i32 %1945, %1944
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1948, i8* %1949, align 1
  store %struct.Memory* %loadMem_46d7dd, %struct.Memory** %MEMORY
  %loadMem_46d7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %PC.i448
  %1954 = add i64 %1953, 58
  %1955 = load i64, i64* %PC.i448
  %1956 = add i64 %1955, 6
  %1957 = load i64, i64* %PC.i448
  %1958 = add i64 %1957, 6
  store i64 %1958, i64* %PC.i448
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1960 = load i8, i8* %1959, align 1
  store i8 %1960, i8* %BRANCH_TAKEN, align 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1962 = icmp ne i8 %1960, 0
  %1963 = select i1 %1962, i64 %1954, i64 %1956
  store i64 %1963, i64* %1961, align 8
  store %struct.Memory* %loadMem_46d7e0, %struct.Memory** %MEMORY
  %loadBr_46d7e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7e0 = icmp eq i8 %loadBr_46d7e0, 1
  br i1 %cmpBr_46d7e0, label %block_.L_46d81a, label %block_46d7e6

block_46d7e6:                                     ; preds = %block_46d7c9
  %loadMem_46d7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 15
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %RBP.i447
  %1974 = sub i64 %1973, 8
  %1975 = load i64, i64* %PC.i445
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC.i445
  %1977 = inttoptr i64 %1974 to i64*
  %1978 = load i64, i64* %1977
  store i64 %1978, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_46d7e6, %struct.Memory** %MEMORY
  %loadMem_46d7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 5
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RBP.i444
  %1989 = sub i64 %1988, 1620
  %1990 = load i64, i64* %PC.i442
  %1991 = add i64 %1990, 6
  store i64 %1991, i64* %PC.i442
  %1992 = inttoptr i64 %1989 to i32*
  %1993 = load i32, i32* %1992
  %1994 = zext i32 %1993 to i64
  store i64 %1994, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_46d7ea, %struct.Memory** %MEMORY
  %loadMem_46d7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 5
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %RCX.i441
  %2002 = load i64, i64* %PC.i440
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i440
  %2004 = trunc i64 %2001 to i32
  %2005 = add i32 20, %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RCX.i441, align 8
  %2007 = icmp ult i32 %2005, %2004
  %2008 = icmp ult i32 %2005, 20
  %2009 = or i1 %2007, %2008
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2010, i8* %2011, align 1
  %2012 = and i32 %2005, 255
  %2013 = call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2016, i8* %2017, align 1
  %2018 = xor i64 20, %2001
  %2019 = trunc i64 %2018 to i32
  %2020 = xor i32 %2019, %2005
  %2021 = lshr i32 %2020, 4
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2023, i8* %2024, align 1
  %2025 = icmp eq i32 %2005, 0
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2005, 31
  %2029 = trunc i32 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2029, i8* %2030, align 1
  %2031 = lshr i32 %2004, 31
  %2032 = xor i32 %2028, %2031
  %2033 = add i32 %2032, %2028
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2035, i8* %2036, align 1
  store %struct.Memory* %loadMem_46d7f0, %struct.Memory** %MEMORY
  %loadMem_46d7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 5
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %ECX.i438 = bitcast %union.anon* %2042 to i32*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 7
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RDX.i439 = bitcast %union.anon* %2045 to i64*
  %2046 = load i32, i32* %ECX.i438
  %2047 = zext i32 %2046 to i64
  %2048 = load i64, i64* %PC.i437
  %2049 = add i64 %2048, 3
  store i64 %2049, i64* %PC.i437
  %2050 = shl i64 %2047, 32
  %2051 = ashr exact i64 %2050, 32
  store i64 %2051, i64* %RDX.i439, align 8
  store %struct.Memory* %loadMem_46d7f3, %struct.Memory** %MEMORY
  %loadMem_46d7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 1
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 7
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RDX.i436 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %RAX.i435
  %2062 = load i64, i64* %RDX.i436
  %2063 = mul i64 %2062, 4
  %2064 = add i64 %2063, %2061
  %2065 = load i64, i64* %PC.i434
  %2066 = add i64 %2065, 4
  store i64 %2066, i64* %PC.i434
  %2067 = inttoptr i64 %2064 to i32*
  %2068 = load i32, i32* %2067
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2069, align 1
  %2070 = and i32 %2068, 255
  %2071 = call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2074, i8* %2075, align 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2076, align 1
  %2077 = icmp eq i32 %2068, 0
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2078, i8* %2079, align 1
  %2080 = lshr i32 %2068, 31
  %2081 = trunc i32 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2081, i8* %2082, align 1
  %2083 = lshr i32 %2068, 31
  %2084 = xor i32 %2080, %2083
  %2085 = add i32 %2084, %2083
  %2086 = icmp eq i32 %2085, 2
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2087, i8* %2088, align 1
  store %struct.Memory* %loadMem_46d7f6, %struct.Memory** %MEMORY
  %loadMem_46d7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %PC.i433
  %2093 = add i64 %2092, 275
  %2094 = load i64, i64* %PC.i433
  %2095 = add i64 %2094, 6
  %2096 = load i64, i64* %PC.i433
  %2097 = add i64 %2096, 6
  store i64 %2097, i64* %PC.i433
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2099 = load i8, i8* %2098, align 1
  %2100 = icmp eq i8 %2099, 0
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2102 = load i8, i8* %2101, align 1
  %2103 = icmp ne i8 %2102, 0
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2105 = load i8, i8* %2104, align 1
  %2106 = icmp ne i8 %2105, 0
  %2107 = xor i1 %2103, %2106
  %2108 = xor i1 %2107, true
  %2109 = and i1 %2100, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %BRANCH_TAKEN, align 1
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2112 = select i1 %2109, i64 %2093, i64 %2095
  store i64 %2112, i64* %2111, align 8
  store %struct.Memory* %loadMem_46d7fa, %struct.Memory** %MEMORY
  %loadBr_46d7fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7fa = icmp eq i8 %loadBr_46d7fa, 1
  br i1 %cmpBr_46d7fa, label %block_.L_46d90d, label %block_46d800

block_46d800:                                     ; preds = %block_46d7e6
  %loadMem_46d800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 1
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 15
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RBP.i432
  %2123 = sub i64 %2122, 1620
  %2124 = load i64, i64* %PC.i430
  %2125 = add i64 %2124, 6
  store i64 %2125, i64* %PC.i430
  %2126 = inttoptr i64 %2123 to i32*
  %2127 = load i32, i32* %2126
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_46d800, %struct.Memory** %MEMORY
  %loadMem_46d806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RAX.i429
  %2136 = load i64, i64* %PC.i428
  %2137 = add i64 %2136, 3
  store i64 %2137, i64* %PC.i428
  %2138 = trunc i64 %2135 to i32
  %2139 = add i32 20, %2138
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RAX.i429, align 8
  %2141 = icmp ult i32 %2139, %2138
  %2142 = icmp ult i32 %2139, 20
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2144, i8* %2145, align 1
  %2146 = and i32 %2139, 255
  %2147 = call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2150, i8* %2151, align 1
  %2152 = xor i64 20, %2135
  %2153 = trunc i64 %2152 to i32
  %2154 = xor i32 %2153, %2139
  %2155 = lshr i32 %2154, 4
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2157, i8* %2158, align 1
  %2159 = icmp eq i32 %2139, 0
  %2160 = zext i1 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2160, i8* %2161, align 1
  %2162 = lshr i32 %2139, 31
  %2163 = trunc i32 %2162 to i8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2163, i8* %2164, align 1
  %2165 = lshr i32 %2138, 31
  %2166 = xor i32 %2162, %2165
  %2167 = add i32 %2166, %2162
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2169, i8* %2170, align 1
  store %struct.Memory* %loadMem_46d806, %struct.Memory** %MEMORY
  %loadMem_46d809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 1
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %2176 to i32*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 5
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %2179 to i64*
  %2180 = load i32, i32* %EAX.i426
  %2181 = zext i32 %2180 to i64
  %2182 = load i64, i64* %PC.i425
  %2183 = add i64 %2182, 3
  store i64 %2183, i64* %PC.i425
  %2184 = shl i64 %2181, 32
  %2185 = ashr exact i64 %2184, 32
  store i64 %2185, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_46d809, %struct.Memory** %MEMORY
  %loadMem_46d80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 5
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 15
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %RBP.i424
  %2196 = load i64, i64* %RCX.i423
  %2197 = mul i64 %2196, 4
  %2198 = add i64 %2195, -1616
  %2199 = add i64 %2198, %2197
  %2200 = load i64, i64* %PC.i422
  %2201 = add i64 %2200, 8
  store i64 %2201, i64* %PC.i422
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202
  %2204 = sub i32 %2203, 1
  %2205 = icmp ult i32 %2203, 1
  %2206 = zext i1 %2205 to i8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2206, i8* %2207, align 1
  %2208 = and i32 %2204, 255
  %2209 = call i32 @llvm.ctpop.i32(i32 %2208)
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = xor i8 %2211, 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2212, i8* %2213, align 1
  %2214 = xor i32 %2203, 1
  %2215 = xor i32 %2214, %2204
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2218, i8* %2219, align 1
  %2220 = icmp eq i32 %2204, 0
  %2221 = zext i1 %2220 to i8
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2221, i8* %2222, align 1
  %2223 = lshr i32 %2204, 31
  %2224 = trunc i32 %2223 to i8
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2224, i8* %2225, align 1
  %2226 = lshr i32 %2203, 31
  %2227 = xor i32 %2223, %2226
  %2228 = add i32 %2227, %2226
  %2229 = icmp eq i32 %2228, 2
  %2230 = zext i1 %2229 to i8
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2230, i8* %2231, align 1
  store %struct.Memory* %loadMem_46d80c, %struct.Memory** %MEMORY
  %loadMem_46d814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %PC.i421
  %2236 = add i64 %2235, 249
  %2237 = load i64, i64* %PC.i421
  %2238 = add i64 %2237, 6
  %2239 = load i64, i64* %PC.i421
  %2240 = add i64 %2239, 6
  store i64 %2240, i64* %PC.i421
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2242 = load i8, i8* %2241, align 1
  store i8 %2242, i8* %BRANCH_TAKEN, align 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2244 = icmp ne i8 %2242, 0
  %2245 = select i1 %2244, i64 %2236, i64 %2238
  store i64 %2245, i64* %2243, align 8
  store %struct.Memory* %loadMem_46d814, %struct.Memory** %MEMORY
  %loadBr_46d814 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d814 = icmp eq i8 %loadBr_46d814, 1
  br i1 %cmpBr_46d814, label %block_.L_46d90d, label %block_.L_46d81a

block_.L_46d81a:                                  ; preds = %block_46d800, %block_46d7c9
  %loadMem_46d81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 1
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 15
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2254 to i64*
  %2255 = load i64, i64* %RBP.i420
  %2256 = sub i64 %2255, 1620
  %2257 = load i64, i64* %PC.i418
  %2258 = add i64 %2257, 6
  store i64 %2258, i64* %PC.i418
  %2259 = inttoptr i64 %2256 to i32*
  %2260 = load i32, i32* %2259
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_46d81a, %struct.Memory** %MEMORY
  %loadMem_46d820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 1
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %RAX.i417
  %2269 = load i64, i64* %PC.i416
  %2270 = add i64 %2269, 3
  store i64 %2270, i64* %PC.i416
  %2271 = trunc i64 %2268 to i32
  %2272 = sub i32 %2271, 1
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %RAX.i417, align 8
  %2274 = icmp ult i32 %2271, 1
  %2275 = zext i1 %2274 to i8
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2275, i8* %2276, align 1
  %2277 = and i32 %2272, 255
  %2278 = call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2281, i8* %2282, align 1
  %2283 = xor i64 1, %2268
  %2284 = trunc i64 %2283 to i32
  %2285 = xor i32 %2284, %2272
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2288, i8* %2289, align 1
  %2290 = icmp eq i32 %2272, 0
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2272, 31
  %2294 = trunc i32 %2293 to i8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2294, i8* %2295, align 1
  %2296 = lshr i32 %2271, 31
  %2297 = xor i32 %2293, %2296
  %2298 = add i32 %2297, %2296
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2300, i8* %2301, align 1
  store %struct.Memory* %loadMem_46d820, %struct.Memory** %MEMORY
  %loadMem_46d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 1
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %2307 to i32*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 5
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %2310 to i64*
  %2311 = load i32, i32* %EAX.i414
  %2312 = zext i32 %2311 to i64
  %2313 = load i64, i64* %PC.i413
  %2314 = add i64 %2313, 3
  store i64 %2314, i64* %PC.i413
  %2315 = shl i64 %2312, 32
  %2316 = ashr exact i64 %2315, 32
  store i64 %2316, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_46d823, %struct.Memory** %MEMORY
  %loadMem_46d826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i412
  %2327 = add i64 %2326, 12099168
  %2328 = load i64, i64* %PC.i410
  %2329 = add i64 %2328, 8
  store i64 %2329, i64* %PC.i410
  %2330 = inttoptr i64 %2327 to i8*
  %2331 = load i8, i8* %2330
  %2332 = zext i8 %2331 to i64
  store i64 %2332, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_46d826, %struct.Memory** %MEMORY
  %loadMem_46d82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %2338 to i32*
  %2339 = load i32, i32* %EAX.i409
  %2340 = zext i32 %2339 to i64
  %2341 = load i64, i64* %PC.i408
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %PC.i408
  %2343 = sub i32 %2339, 3
  %2344 = icmp ult i32 %2339, 3
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2345, i8* %2346, align 1
  %2347 = and i32 %2343, 255
  %2348 = call i32 @llvm.ctpop.i32(i32 %2347)
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2351, i8* %2352, align 1
  %2353 = xor i64 3, %2340
  %2354 = trunc i64 %2353 to i32
  %2355 = xor i32 %2354, %2343
  %2356 = lshr i32 %2355, 4
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2358, i8* %2359, align 1
  %2360 = icmp eq i32 %2343, 0
  %2361 = zext i1 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2361, i8* %2362, align 1
  %2363 = lshr i32 %2343, 31
  %2364 = trunc i32 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2364, i8* %2365, align 1
  %2366 = lshr i32 %2339, 31
  %2367 = xor i32 %2363, %2366
  %2368 = add i32 %2367, %2366
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2370, i8* %2371, align 1
  store %struct.Memory* %loadMem_46d82e, %struct.Memory** %MEMORY
  %loadMem_46d831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %PC.i407
  %2376 = add i64 %2375, 58
  %2377 = load i64, i64* %PC.i407
  %2378 = add i64 %2377, 6
  %2379 = load i64, i64* %PC.i407
  %2380 = add i64 %2379, 6
  store i64 %2380, i64* %PC.i407
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2382 = load i8, i8* %2381, align 1
  store i8 %2382, i8* %BRANCH_TAKEN, align 1
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2384 = icmp ne i8 %2382, 0
  %2385 = select i1 %2384, i64 %2376, i64 %2378
  store i64 %2385, i64* %2383, align 8
  store %struct.Memory* %loadMem_46d831, %struct.Memory** %MEMORY
  %loadBr_46d831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d831 = icmp eq i8 %loadBr_46d831, 1
  br i1 %cmpBr_46d831, label %block_.L_46d86b, label %block_46d837

block_46d837:                                     ; preds = %block_.L_46d81a
  %loadMem_46d837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 1
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RBP.i406
  %2396 = sub i64 %2395, 8
  %2397 = load i64, i64* %PC.i404
  %2398 = add i64 %2397, 4
  store i64 %2398, i64* %PC.i404
  %2399 = inttoptr i64 %2396 to i64*
  %2400 = load i64, i64* %2399
  store i64 %2400, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_46d837, %struct.Memory** %MEMORY
  %loadMem_46d83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i403
  %2411 = sub i64 %2410, 1620
  %2412 = load i64, i64* %PC.i401
  %2413 = add i64 %2412, 6
  store i64 %2413, i64* %PC.i401
  %2414 = inttoptr i64 %2411 to i32*
  %2415 = load i32, i32* %2414
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_46d83b, %struct.Memory** %MEMORY
  %loadMem_46d841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 5
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RCX.i400
  %2424 = load i64, i64* %PC.i399
  %2425 = add i64 %2424, 3
  store i64 %2425, i64* %PC.i399
  %2426 = trunc i64 %2423 to i32
  %2427 = sub i32 %2426, 1
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RCX.i400, align 8
  %2429 = icmp ult i32 %2426, 1
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2430, i8* %2431, align 1
  %2432 = and i32 %2427, 255
  %2433 = call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2436, i8* %2437, align 1
  %2438 = xor i64 1, %2423
  %2439 = trunc i64 %2438 to i32
  %2440 = xor i32 %2439, %2427
  %2441 = lshr i32 %2440, 4
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2443, i8* %2444, align 1
  %2445 = icmp eq i32 %2427, 0
  %2446 = zext i1 %2445 to i8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2446, i8* %2447, align 1
  %2448 = lshr i32 %2427, 31
  %2449 = trunc i32 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2449, i8* %2450, align 1
  %2451 = lshr i32 %2426, 31
  %2452 = xor i32 %2448, %2451
  %2453 = add i32 %2452, %2451
  %2454 = icmp eq i32 %2453, 2
  %2455 = zext i1 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2455, i8* %2456, align 1
  store %struct.Memory* %loadMem_46d841, %struct.Memory** %MEMORY
  %loadMem_46d844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 33
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2459 to i64*
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 5
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %ECX.i397 = bitcast %union.anon* %2462 to i32*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 7
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %2465 to i64*
  %2466 = load i32, i32* %ECX.i397
  %2467 = zext i32 %2466 to i64
  %2468 = load i64, i64* %PC.i396
  %2469 = add i64 %2468, 3
  store i64 %2469, i64* %PC.i396
  %2470 = shl i64 %2467, 32
  %2471 = ashr exact i64 %2470, 32
  store i64 %2471, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_46d844, %struct.Memory** %MEMORY
  %loadMem_46d847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 1
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 7
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RAX.i394
  %2482 = load i64, i64* %RDX.i395
  %2483 = mul i64 %2482, 4
  %2484 = add i64 %2483, %2481
  %2485 = load i64, i64* %PC.i393
  %2486 = add i64 %2485, 4
  store i64 %2486, i64* %PC.i393
  %2487 = inttoptr i64 %2484 to i32*
  %2488 = load i32, i32* %2487
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2489, align 1
  %2490 = and i32 %2488, 255
  %2491 = call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2494, i8* %2495, align 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2496, align 1
  %2497 = icmp eq i32 %2488, 0
  %2498 = zext i1 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2498, i8* %2499, align 1
  %2500 = lshr i32 %2488, 31
  %2501 = trunc i32 %2500 to i8
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2501, i8* %2502, align 1
  %2503 = lshr i32 %2488, 31
  %2504 = xor i32 %2500, %2503
  %2505 = add i32 %2504, %2503
  %2506 = icmp eq i32 %2505, 2
  %2507 = zext i1 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2507, i8* %2508, align 1
  store %struct.Memory* %loadMem_46d847, %struct.Memory** %MEMORY
  %loadMem_46d84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %PC.i392
  %2513 = add i64 %2512, 194
  %2514 = load i64, i64* %PC.i392
  %2515 = add i64 %2514, 6
  %2516 = load i64, i64* %PC.i392
  %2517 = add i64 %2516, 6
  store i64 %2517, i64* %PC.i392
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2519 = load i8, i8* %2518, align 1
  %2520 = icmp eq i8 %2519, 0
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2522 = load i8, i8* %2521, align 1
  %2523 = icmp ne i8 %2522, 0
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2525 = load i8, i8* %2524, align 1
  %2526 = icmp ne i8 %2525, 0
  %2527 = xor i1 %2523, %2526
  %2528 = xor i1 %2527, true
  %2529 = and i1 %2520, %2528
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %BRANCH_TAKEN, align 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2532 = select i1 %2529, i64 %2513, i64 %2515
  store i64 %2532, i64* %2531, align 8
  store %struct.Memory* %loadMem_46d84b, %struct.Memory** %MEMORY
  %loadBr_46d84b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d84b = icmp eq i8 %loadBr_46d84b, 1
  br i1 %cmpBr_46d84b, label %block_.L_46d90d, label %block_46d851

block_46d851:                                     ; preds = %block_46d837
  %loadMem_46d851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 1
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 15
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %2541 to i64*
  %2542 = load i64, i64* %RBP.i391
  %2543 = sub i64 %2542, 1620
  %2544 = load i64, i64* %PC.i389
  %2545 = add i64 %2544, 6
  store i64 %2545, i64* %PC.i389
  %2546 = inttoptr i64 %2543 to i32*
  %2547 = load i32, i32* %2546
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_46d851, %struct.Memory** %MEMORY
  %loadMem_46d857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 1
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %RAX.i388
  %2556 = load i64, i64* %PC.i387
  %2557 = add i64 %2556, 3
  store i64 %2557, i64* %PC.i387
  %2558 = trunc i64 %2555 to i32
  %2559 = sub i32 %2558, 1
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i388, align 8
  %2561 = icmp ult i32 %2558, 1
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2562, i8* %2563, align 1
  %2564 = and i32 %2559, 255
  %2565 = call i32 @llvm.ctpop.i32(i32 %2564)
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = xor i8 %2567, 1
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2568, i8* %2569, align 1
  %2570 = xor i64 1, %2555
  %2571 = trunc i64 %2570 to i32
  %2572 = xor i32 %2571, %2559
  %2573 = lshr i32 %2572, 4
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2575, i8* %2576, align 1
  %2577 = icmp eq i32 %2559, 0
  %2578 = zext i1 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2578, i8* %2579, align 1
  %2580 = lshr i32 %2559, 31
  %2581 = trunc i32 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2581, i8* %2582, align 1
  %2583 = lshr i32 %2558, 31
  %2584 = xor i32 %2580, %2583
  %2585 = add i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2587, i8* %2588, align 1
  store %struct.Memory* %loadMem_46d857, %struct.Memory** %MEMORY
  %loadMem_46d85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 1
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %2594 to i32*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 5
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %2597 to i64*
  %2598 = load i32, i32* %EAX.i385
  %2599 = zext i32 %2598 to i64
  %2600 = load i64, i64* %PC.i384
  %2601 = add i64 %2600, 3
  store i64 %2601, i64* %PC.i384
  %2602 = shl i64 %2599, 32
  %2603 = ashr exact i64 %2602, 32
  store i64 %2603, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_46d85a, %struct.Memory** %MEMORY
  %loadMem_46d85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 5
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i383
  %2614 = load i64, i64* %RCX.i382
  %2615 = mul i64 %2614, 4
  %2616 = add i64 %2613, -1616
  %2617 = add i64 %2616, %2615
  %2618 = load i64, i64* %PC.i381
  %2619 = add i64 %2618, 8
  store i64 %2619, i64* %PC.i381
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = sub i32 %2621, 1
  %2623 = icmp ult i32 %2621, 1
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2624, i8* %2625, align 1
  %2626 = and i32 %2622, 255
  %2627 = call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2630, i8* %2631, align 1
  %2632 = xor i32 %2621, 1
  %2633 = xor i32 %2632, %2622
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2622, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2622, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2621, 31
  %2645 = xor i32 %2641, %2644
  %2646 = add i32 %2645, %2644
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2648, i8* %2649, align 1
  store %struct.Memory* %loadMem_46d85d, %struct.Memory** %MEMORY
  %loadMem_46d865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %PC.i380
  %2654 = add i64 %2653, 168
  %2655 = load i64, i64* %PC.i380
  %2656 = add i64 %2655, 6
  %2657 = load i64, i64* %PC.i380
  %2658 = add i64 %2657, 6
  store i64 %2658, i64* %PC.i380
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2660 = load i8, i8* %2659, align 1
  store i8 %2660, i8* %BRANCH_TAKEN, align 1
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2662 = icmp ne i8 %2660, 0
  %2663 = select i1 %2662, i64 %2654, i64 %2656
  store i64 %2663, i64* %2661, align 8
  store %struct.Memory* %loadMem_46d865, %struct.Memory** %MEMORY
  %loadBr_46d865 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d865 = icmp eq i8 %loadBr_46d865, 1
  br i1 %cmpBr_46d865, label %block_.L_46d90d, label %block_.L_46d86b

block_.L_46d86b:                                  ; preds = %block_46d851, %block_.L_46d81a
  %loadMem_46d86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 1
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RBP.i379
  %2674 = sub i64 %2673, 1620
  %2675 = load i64, i64* %PC.i377
  %2676 = add i64 %2675, 6
  store i64 %2676, i64* %PC.i377
  %2677 = inttoptr i64 %2674 to i32*
  %2678 = load i32, i32* %2677
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_46d86b, %struct.Memory** %MEMORY
  %loadMem_46d871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RAX.i376
  %2687 = load i64, i64* %PC.i375
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i375
  %2689 = trunc i64 %2686 to i32
  %2690 = sub i32 %2689, 20
  %2691 = zext i32 %2690 to i64
  store i64 %2691, i64* %RAX.i376, align 8
  %2692 = icmp ult i32 %2689, 20
  %2693 = zext i1 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2693, i8* %2694, align 1
  %2695 = and i32 %2690, 255
  %2696 = call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2699, i8* %2700, align 1
  %2701 = xor i64 20, %2686
  %2702 = trunc i64 %2701 to i32
  %2703 = xor i32 %2702, %2690
  %2704 = lshr i32 %2703, 4
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2706, i8* %2707, align 1
  %2708 = icmp eq i32 %2690, 0
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2709, i8* %2710, align 1
  %2711 = lshr i32 %2690, 31
  %2712 = trunc i32 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2689, 31
  %2715 = xor i32 %2711, %2714
  %2716 = add i32 %2715, %2714
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2718, i8* %2719, align 1
  store %struct.Memory* %loadMem_46d871, %struct.Memory** %MEMORY
  %loadMem_46d874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 1
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %2725 to i32*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 5
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %2728 to i64*
  %2729 = load i32, i32* %EAX.i373
  %2730 = zext i32 %2729 to i64
  %2731 = load i64, i64* %PC.i372
  %2732 = add i64 %2731, 3
  store i64 %2732, i64* %PC.i372
  %2733 = shl i64 %2730, 32
  %2734 = ashr exact i64 %2733, 32
  store i64 %2734, i64* %RCX.i374, align 8
  store %struct.Memory* %loadMem_46d874, %struct.Memory** %MEMORY
  %loadMem_46d877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 5
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RCX.i371
  %2745 = add i64 %2744, 12099168
  %2746 = load i64, i64* %PC.i369
  %2747 = add i64 %2746, 8
  store i64 %2747, i64* %PC.i369
  %2748 = inttoptr i64 %2745 to i8*
  %2749 = load i8, i8* %2748
  %2750 = zext i8 %2749 to i64
  store i64 %2750, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_46d877, %struct.Memory** %MEMORY
  %loadMem_46d87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 1
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %2756 to i32*
  %2757 = load i32, i32* %EAX.i368
  %2758 = zext i32 %2757 to i64
  %2759 = load i64, i64* %PC.i367
  %2760 = add i64 %2759, 3
  store i64 %2760, i64* %PC.i367
  %2761 = sub i32 %2757, 3
  %2762 = icmp ult i32 %2757, 3
  %2763 = zext i1 %2762 to i8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2763, i8* %2764, align 1
  %2765 = and i32 %2761, 255
  %2766 = call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2769, i8* %2770, align 1
  %2771 = xor i64 3, %2758
  %2772 = trunc i64 %2771 to i32
  %2773 = xor i32 %2772, %2761
  %2774 = lshr i32 %2773, 4
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2776, i8* %2777, align 1
  %2778 = icmp eq i32 %2761, 0
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2779, i8* %2780, align 1
  %2781 = lshr i32 %2761, 31
  %2782 = trunc i32 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2782, i8* %2783, align 1
  %2784 = lshr i32 %2757, 31
  %2785 = xor i32 %2781, %2784
  %2786 = add i32 %2785, %2784
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2788, i8* %2789, align 1
  store %struct.Memory* %loadMem_46d87f, %struct.Memory** %MEMORY
  %loadMem_46d882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i366
  %2794 = add i64 %2793, 58
  %2795 = load i64, i64* %PC.i366
  %2796 = add i64 %2795, 6
  %2797 = load i64, i64* %PC.i366
  %2798 = add i64 %2797, 6
  store i64 %2798, i64* %PC.i366
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2800 = load i8, i8* %2799, align 1
  store i8 %2800, i8* %BRANCH_TAKEN, align 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2802 = icmp ne i8 %2800, 0
  %2803 = select i1 %2802, i64 %2794, i64 %2796
  store i64 %2803, i64* %2801, align 8
  store %struct.Memory* %loadMem_46d882, %struct.Memory** %MEMORY
  %loadBr_46d882 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d882 = icmp eq i8 %loadBr_46d882, 1
  br i1 %cmpBr_46d882, label %block_.L_46d8bc, label %block_46d888

block_46d888:                                     ; preds = %block_.L_46d86b
  %loadMem_46d888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 1
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 15
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %RBP.i365
  %2814 = sub i64 %2813, 8
  %2815 = load i64, i64* %PC.i363
  %2816 = add i64 %2815, 4
  store i64 %2816, i64* %PC.i363
  %2817 = inttoptr i64 %2814 to i64*
  %2818 = load i64, i64* %2817
  store i64 %2818, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_46d888, %struct.Memory** %MEMORY
  %loadMem_46d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 5
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 15
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RBP.i362
  %2829 = sub i64 %2828, 1620
  %2830 = load i64, i64* %PC.i360
  %2831 = add i64 %2830, 6
  store i64 %2831, i64* %PC.i360
  %2832 = inttoptr i64 %2829 to i32*
  %2833 = load i32, i32* %2832
  %2834 = zext i32 %2833 to i64
  store i64 %2834, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_46d88c, %struct.Memory** %MEMORY
  %loadMem_46d892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 5
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %2840 to i64*
  %2841 = load i64, i64* %RCX.i359
  %2842 = load i64, i64* %PC.i358
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %PC.i358
  %2844 = trunc i64 %2841 to i32
  %2845 = sub i32 %2844, 20
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RCX.i359, align 8
  %2847 = icmp ult i32 %2844, 20
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2848, i8* %2849, align 1
  %2850 = and i32 %2845, 255
  %2851 = call i32 @llvm.ctpop.i32(i32 %2850)
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2854, i8* %2855, align 1
  %2856 = xor i64 20, %2841
  %2857 = trunc i64 %2856 to i32
  %2858 = xor i32 %2857, %2845
  %2859 = lshr i32 %2858, 4
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2861, i8* %2862, align 1
  %2863 = icmp eq i32 %2845, 0
  %2864 = zext i1 %2863 to i8
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2864, i8* %2865, align 1
  %2866 = lshr i32 %2845, 31
  %2867 = trunc i32 %2866 to i8
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2867, i8* %2868, align 1
  %2869 = lshr i32 %2844, 31
  %2870 = xor i32 %2866, %2869
  %2871 = add i32 %2870, %2869
  %2872 = icmp eq i32 %2871, 2
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2873, i8* %2874, align 1
  store %struct.Memory* %loadMem_46d892, %struct.Memory** %MEMORY
  %loadMem_46d895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 5
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %2880 to i32*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 7
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %2883 to i64*
  %2884 = load i32, i32* %ECX.i356
  %2885 = zext i32 %2884 to i64
  %2886 = load i64, i64* %PC.i355
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i355
  %2888 = shl i64 %2885, 32
  %2889 = ashr exact i64 %2888, 32
  store i64 %2889, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_46d895, %struct.Memory** %MEMORY
  %loadMem_46d898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 1
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 7
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RAX.i353
  %2900 = load i64, i64* %RDX.i354
  %2901 = mul i64 %2900, 4
  %2902 = add i64 %2901, %2899
  %2903 = load i64, i64* %PC.i352
  %2904 = add i64 %2903, 4
  store i64 %2904, i64* %PC.i352
  %2905 = inttoptr i64 %2902 to i32*
  %2906 = load i32, i32* %2905
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2907, align 1
  %2908 = and i32 %2906, 255
  %2909 = call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2912, i8* %2913, align 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2914, align 1
  %2915 = icmp eq i32 %2906, 0
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2916, i8* %2917, align 1
  %2918 = lshr i32 %2906, 31
  %2919 = trunc i32 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2919, i8* %2920, align 1
  %2921 = lshr i32 %2906, 31
  %2922 = xor i32 %2918, %2921
  %2923 = add i32 %2922, %2921
  %2924 = icmp eq i32 %2923, 2
  %2925 = zext i1 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2925, i8* %2926, align 1
  store %struct.Memory* %loadMem_46d898, %struct.Memory** %MEMORY
  %loadMem_46d89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %PC.i351
  %2931 = add i64 %2930, 113
  %2932 = load i64, i64* %PC.i351
  %2933 = add i64 %2932, 6
  %2934 = load i64, i64* %PC.i351
  %2935 = add i64 %2934, 6
  store i64 %2935, i64* %PC.i351
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2937 = load i8, i8* %2936, align 1
  %2938 = icmp eq i8 %2937, 0
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2940 = load i8, i8* %2939, align 1
  %2941 = icmp ne i8 %2940, 0
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2943 = load i8, i8* %2942, align 1
  %2944 = icmp ne i8 %2943, 0
  %2945 = xor i1 %2941, %2944
  %2946 = xor i1 %2945, true
  %2947 = and i1 %2938, %2946
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %BRANCH_TAKEN, align 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2950 = select i1 %2947, i64 %2931, i64 %2933
  store i64 %2950, i64* %2949, align 8
  store %struct.Memory* %loadMem_46d89c, %struct.Memory** %MEMORY
  %loadBr_46d89c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d89c = icmp eq i8 %loadBr_46d89c, 1
  br i1 %cmpBr_46d89c, label %block_.L_46d90d, label %block_46d8a2

block_46d8a2:                                     ; preds = %block_46d888
  %loadMem_46d8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 1
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RBP.i350
  %2961 = sub i64 %2960, 1620
  %2962 = load i64, i64* %PC.i348
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i348
  %2964 = inttoptr i64 %2961 to i32*
  %2965 = load i32, i32* %2964
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_46d8a2, %struct.Memory** %MEMORY
  %loadMem_46d8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 1
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RAX.i347
  %2974 = load i64, i64* %PC.i346
  %2975 = add i64 %2974, 3
  store i64 %2975, i64* %PC.i346
  %2976 = trunc i64 %2973 to i32
  %2977 = sub i32 %2976, 20
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RAX.i347, align 8
  %2979 = icmp ult i32 %2976, 20
  %2980 = zext i1 %2979 to i8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2980, i8* %2981, align 1
  %2982 = and i32 %2977, 255
  %2983 = call i32 @llvm.ctpop.i32(i32 %2982)
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2986, i8* %2987, align 1
  %2988 = xor i64 20, %2973
  %2989 = trunc i64 %2988 to i32
  %2990 = xor i32 %2989, %2977
  %2991 = lshr i32 %2990, 4
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2993, i8* %2994, align 1
  %2995 = icmp eq i32 %2977, 0
  %2996 = zext i1 %2995 to i8
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2996, i8* %2997, align 1
  %2998 = lshr i32 %2977, 31
  %2999 = trunc i32 %2998 to i8
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2999, i8* %3000, align 1
  %3001 = lshr i32 %2976, 31
  %3002 = xor i32 %2998, %3001
  %3003 = add i32 %3002, %3001
  %3004 = icmp eq i32 %3003, 2
  %3005 = zext i1 %3004 to i8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3005, i8* %3006, align 1
  store %struct.Memory* %loadMem_46d8a8, %struct.Memory** %MEMORY
  %loadMem_46d8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %3012 to i32*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 5
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %3015 to i64*
  %3016 = load i32, i32* %EAX.i344
  %3017 = zext i32 %3016 to i64
  %3018 = load i64, i64* %PC.i343
  %3019 = add i64 %3018, 3
  store i64 %3019, i64* %PC.i343
  %3020 = shl i64 %3017, 32
  %3021 = ashr exact i64 %3020, 32
  store i64 %3021, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_46d8ab, %struct.Memory** %MEMORY
  %loadMem_46d8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 5
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 15
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RBP.i342
  %3032 = load i64, i64* %RCX.i341
  %3033 = mul i64 %3032, 4
  %3034 = add i64 %3031, -1616
  %3035 = add i64 %3034, %3033
  %3036 = load i64, i64* %PC.i340
  %3037 = add i64 %3036, 8
  store i64 %3037, i64* %PC.i340
  %3038 = inttoptr i64 %3035 to i32*
  %3039 = load i32, i32* %3038
  %3040 = sub i32 %3039, 1
  %3041 = icmp ult i32 %3039, 1
  %3042 = zext i1 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3042, i8* %3043, align 1
  %3044 = and i32 %3040, 255
  %3045 = call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3048, i8* %3049, align 1
  %3050 = xor i32 %3039, 1
  %3051 = xor i32 %3050, %3040
  %3052 = lshr i32 %3051, 4
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3054, i8* %3055, align 1
  %3056 = icmp eq i32 %3040, 0
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3057, i8* %3058, align 1
  %3059 = lshr i32 %3040, 31
  %3060 = trunc i32 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3060, i8* %3061, align 1
  %3062 = lshr i32 %3039, 31
  %3063 = xor i32 %3059, %3062
  %3064 = add i32 %3063, %3062
  %3065 = icmp eq i32 %3064, 2
  %3066 = zext i1 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3066, i8* %3067, align 1
  store %struct.Memory* %loadMem_46d8ae, %struct.Memory** %MEMORY
  %loadMem_46d8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %PC.i339
  %3072 = add i64 %3071, 87
  %3073 = load i64, i64* %PC.i339
  %3074 = add i64 %3073, 6
  %3075 = load i64, i64* %PC.i339
  %3076 = add i64 %3075, 6
  store i64 %3076, i64* %PC.i339
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3078 = load i8, i8* %3077, align 1
  store i8 %3078, i8* %BRANCH_TAKEN, align 1
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3080 = icmp ne i8 %3078, 0
  %3081 = select i1 %3080, i64 %3072, i64 %3074
  store i64 %3081, i64* %3079, align 8
  store %struct.Memory* %loadMem_46d8b6, %struct.Memory** %MEMORY
  %loadBr_46d8b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8b6 = icmp eq i8 %loadBr_46d8b6, 1
  br i1 %cmpBr_46d8b6, label %block_.L_46d90d, label %block_.L_46d8bc

block_.L_46d8bc:                                  ; preds = %block_46d8a2, %block_.L_46d86b
  %loadMem_46d8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 1
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 15
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %RBP.i338
  %3092 = sub i64 %3091, 1620
  %3093 = load i64, i64* %PC.i336
  %3094 = add i64 %3093, 6
  store i64 %3094, i64* %PC.i336
  %3095 = inttoptr i64 %3092 to i32*
  %3096 = load i32, i32* %3095
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_46d8bc, %struct.Memory** %MEMORY
  %loadMem_46d8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 1
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %RAX.i335
  %3105 = load i64, i64* %PC.i334
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i334
  %3107 = trunc i64 %3104 to i32
  %3108 = add i32 1, %3107
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RAX.i335, align 8
  %3110 = icmp ult i32 %3108, %3107
  %3111 = icmp ult i32 %3108, 1
  %3112 = or i1 %3110, %3111
  %3113 = zext i1 %3112 to i8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3113, i8* %3114, align 1
  %3115 = and i32 %3108, 255
  %3116 = call i32 @llvm.ctpop.i32(i32 %3115)
  %3117 = trunc i32 %3116 to i8
  %3118 = and i8 %3117, 1
  %3119 = xor i8 %3118, 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3119, i8* %3120, align 1
  %3121 = xor i64 1, %3104
  %3122 = trunc i64 %3121 to i32
  %3123 = xor i32 %3122, %3108
  %3124 = lshr i32 %3123, 4
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3126, i8* %3127, align 1
  %3128 = icmp eq i32 %3108, 0
  %3129 = zext i1 %3128 to i8
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3129, i8* %3130, align 1
  %3131 = lshr i32 %3108, 31
  %3132 = trunc i32 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3132, i8* %3133, align 1
  %3134 = lshr i32 %3107, 31
  %3135 = xor i32 %3131, %3134
  %3136 = add i32 %3135, %3131
  %3137 = icmp eq i32 %3136, 2
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3138, i8* %3139, align 1
  store %struct.Memory* %loadMem_46d8c2, %struct.Memory** %MEMORY
  %loadMem_46d8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 1
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %3145 to i32*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 5
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %3148 to i64*
  %3149 = load i32, i32* %EAX.i332
  %3150 = zext i32 %3149 to i64
  %3151 = load i64, i64* %PC.i331
  %3152 = add i64 %3151, 3
  store i64 %3152, i64* %PC.i331
  %3153 = shl i64 %3150, 32
  %3154 = ashr exact i64 %3153, 32
  store i64 %3154, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_46d8c5, %struct.Memory** %MEMORY
  %loadMem_46d8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 1
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 5
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %3163 to i64*
  %3164 = load i64, i64* %RCX.i330
  %3165 = add i64 %3164, 12099168
  %3166 = load i64, i64* %PC.i328
  %3167 = add i64 %3166, 8
  store i64 %3167, i64* %PC.i328
  %3168 = inttoptr i64 %3165 to i8*
  %3169 = load i8, i8* %3168
  %3170 = zext i8 %3169 to i64
  store i64 %3170, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_46d8c8, %struct.Memory** %MEMORY
  %loadMem_46d8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %3176 to i32*
  %3177 = load i32, i32* %EAX.i327
  %3178 = zext i32 %3177 to i64
  %3179 = load i64, i64* %PC.i326
  %3180 = add i64 %3179, 3
  store i64 %3180, i64* %PC.i326
  %3181 = sub i32 %3177, 3
  %3182 = icmp ult i32 %3177, 3
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3183, i8* %3184, align 1
  %3185 = and i32 %3181, 255
  %3186 = call i32 @llvm.ctpop.i32(i32 %3185)
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = xor i8 %3188, 1
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3189, i8* %3190, align 1
  %3191 = xor i64 3, %3178
  %3192 = trunc i64 %3191 to i32
  %3193 = xor i32 %3192, %3181
  %3194 = lshr i32 %3193, 4
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3196, i8* %3197, align 1
  %3198 = icmp eq i32 %3181, 0
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3199, i8* %3200, align 1
  %3201 = lshr i32 %3181, 31
  %3202 = trunc i32 %3201 to i8
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3202, i8* %3203, align 1
  %3204 = lshr i32 %3177, 31
  %3205 = xor i32 %3201, %3204
  %3206 = add i32 %3205, %3204
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3208, i8* %3209, align 1
  store %struct.Memory* %loadMem_46d8d0, %struct.Memory** %MEMORY
  %loadMem_46d8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %PC.i325
  %3214 = add i64 %3213, 68
  %3215 = load i64, i64* %PC.i325
  %3216 = add i64 %3215, 6
  %3217 = load i64, i64* %PC.i325
  %3218 = add i64 %3217, 6
  store i64 %3218, i64* %PC.i325
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3220 = load i8, i8* %3219, align 1
  store i8 %3220, i8* %BRANCH_TAKEN, align 1
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3222 = icmp ne i8 %3220, 0
  %3223 = select i1 %3222, i64 %3214, i64 %3216
  store i64 %3223, i64* %3221, align 8
  store %struct.Memory* %loadMem_46d8d3, %struct.Memory** %MEMORY
  %loadBr_46d8d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8d3 = icmp eq i8 %loadBr_46d8d3, 1
  br i1 %cmpBr_46d8d3, label %block_.L_46d917, label %block_46d8d9

block_46d8d9:                                     ; preds = %block_.L_46d8bc
  %loadMem_46d8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 1
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 15
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %RBP.i324
  %3234 = sub i64 %3233, 8
  %3235 = load i64, i64* %PC.i322
  %3236 = add i64 %3235, 4
  store i64 %3236, i64* %PC.i322
  %3237 = inttoptr i64 %3234 to i64*
  %3238 = load i64, i64* %3237
  store i64 %3238, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_46d8d9, %struct.Memory** %MEMORY
  %loadMem_46d8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 5
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 15
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %3247 to i64*
  %3248 = load i64, i64* %RBP.i321
  %3249 = sub i64 %3248, 1620
  %3250 = load i64, i64* %PC.i319
  %3251 = add i64 %3250, 6
  store i64 %3251, i64* %PC.i319
  %3252 = inttoptr i64 %3249 to i32*
  %3253 = load i32, i32* %3252
  %3254 = zext i32 %3253 to i64
  store i64 %3254, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_46d8dd, %struct.Memory** %MEMORY
  %loadMem_46d8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 5
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %RCX.i318
  %3262 = load i64, i64* %PC.i317
  %3263 = add i64 %3262, 3
  store i64 %3263, i64* %PC.i317
  %3264 = trunc i64 %3261 to i32
  %3265 = add i32 1, %3264
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RCX.i318, align 8
  %3267 = icmp ult i32 %3265, %3264
  %3268 = icmp ult i32 %3265, 1
  %3269 = or i1 %3267, %3268
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3270, i8* %3271, align 1
  %3272 = and i32 %3265, 255
  %3273 = call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3276, i8* %3277, align 1
  %3278 = xor i64 1, %3261
  %3279 = trunc i64 %3278 to i32
  %3280 = xor i32 %3279, %3265
  %3281 = lshr i32 %3280, 4
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3283, i8* %3284, align 1
  %3285 = icmp eq i32 %3265, 0
  %3286 = zext i1 %3285 to i8
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3286, i8* %3287, align 1
  %3288 = lshr i32 %3265, 31
  %3289 = trunc i32 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3289, i8* %3290, align 1
  %3291 = lshr i32 %3264, 31
  %3292 = xor i32 %3288, %3291
  %3293 = add i32 %3292, %3288
  %3294 = icmp eq i32 %3293, 2
  %3295 = zext i1 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3295, i8* %3296, align 1
  store %struct.Memory* %loadMem_46d8e3, %struct.Memory** %MEMORY
  %loadMem_46d8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 5
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %ECX.i315 = bitcast %union.anon* %3302 to i32*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 7
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %3305 to i64*
  %3306 = load i32, i32* %ECX.i315
  %3307 = zext i32 %3306 to i64
  %3308 = load i64, i64* %PC.i314
  %3309 = add i64 %3308, 3
  store i64 %3309, i64* %PC.i314
  %3310 = shl i64 %3307, 32
  %3311 = ashr exact i64 %3310, 32
  store i64 %3311, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_46d8e6, %struct.Memory** %MEMORY
  %loadMem_46d8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 7
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RAX.i312
  %3322 = load i64, i64* %RDX.i313
  %3323 = mul i64 %3322, 4
  %3324 = add i64 %3323, %3321
  %3325 = load i64, i64* %PC.i311
  %3326 = add i64 %3325, 4
  store i64 %3326, i64* %PC.i311
  %3327 = inttoptr i64 %3324 to i32*
  %3328 = load i32, i32* %3327
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3329, align 1
  %3330 = and i32 %3328, 255
  %3331 = call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3334, i8* %3335, align 1
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3336, align 1
  %3337 = icmp eq i32 %3328, 0
  %3338 = zext i1 %3337 to i8
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3338, i8* %3339, align 1
  %3340 = lshr i32 %3328, 31
  %3341 = trunc i32 %3340 to i8
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3341, i8* %3342, align 1
  %3343 = lshr i32 %3328, 31
  %3344 = xor i32 %3340, %3343
  %3345 = add i32 %3344, %3343
  %3346 = icmp eq i32 %3345, 2
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3347, i8* %3348, align 1
  store %struct.Memory* %loadMem_46d8e9, %struct.Memory** %MEMORY
  %loadMem_46d8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3351 to i64*
  %3352 = load i64, i64* %PC.i310
  %3353 = add i64 %3352, 32
  %3354 = load i64, i64* %PC.i310
  %3355 = add i64 %3354, 6
  %3356 = load i64, i64* %PC.i310
  %3357 = add i64 %3356, 6
  store i64 %3357, i64* %PC.i310
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3359 = load i8, i8* %3358, align 1
  %3360 = icmp eq i8 %3359, 0
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3362 = load i8, i8* %3361, align 1
  %3363 = icmp ne i8 %3362, 0
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3365 = load i8, i8* %3364, align 1
  %3366 = icmp ne i8 %3365, 0
  %3367 = xor i1 %3363, %3366
  %3368 = xor i1 %3367, true
  %3369 = and i1 %3360, %3368
  %3370 = zext i1 %3369 to i8
  store i8 %3370, i8* %BRANCH_TAKEN, align 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3372 = select i1 %3369, i64 %3353, i64 %3355
  store i64 %3372, i64* %3371, align 8
  store %struct.Memory* %loadMem_46d8ed, %struct.Memory** %MEMORY
  %loadBr_46d8ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8ed = icmp eq i8 %loadBr_46d8ed, 1
  br i1 %cmpBr_46d8ed, label %block_.L_46d90d, label %block_46d8f3

block_46d8f3:                                     ; preds = %block_46d8d9
  %loadMem_46d8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i309
  %3383 = sub i64 %3382, 1620
  %3384 = load i64, i64* %PC.i307
  %3385 = add i64 %3384, 6
  store i64 %3385, i64* %PC.i307
  %3386 = inttoptr i64 %3383 to i32*
  %3387 = load i32, i32* %3386
  %3388 = zext i32 %3387 to i64
  store i64 %3388, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_46d8f3, %struct.Memory** %MEMORY
  %loadMem_46d8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 1
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RAX.i306
  %3396 = load i64, i64* %PC.i305
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i305
  %3398 = trunc i64 %3395 to i32
  %3399 = add i32 1, %3398
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RAX.i306, align 8
  %3401 = icmp ult i32 %3399, %3398
  %3402 = icmp ult i32 %3399, 1
  %3403 = or i1 %3401, %3402
  %3404 = zext i1 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3404, i8* %3405, align 1
  %3406 = and i32 %3399, 255
  %3407 = call i32 @llvm.ctpop.i32(i32 %3406)
  %3408 = trunc i32 %3407 to i8
  %3409 = and i8 %3408, 1
  %3410 = xor i8 %3409, 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3410, i8* %3411, align 1
  %3412 = xor i64 1, %3395
  %3413 = trunc i64 %3412 to i32
  %3414 = xor i32 %3413, %3399
  %3415 = lshr i32 %3414, 4
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3417, i8* %3418, align 1
  %3419 = icmp eq i32 %3399, 0
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3420, i8* %3421, align 1
  %3422 = lshr i32 %3399, 31
  %3423 = trunc i32 %3422 to i8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3423, i8* %3424, align 1
  %3425 = lshr i32 %3398, 31
  %3426 = xor i32 %3422, %3425
  %3427 = add i32 %3426, %3422
  %3428 = icmp eq i32 %3427, 2
  %3429 = zext i1 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3429, i8* %3430, align 1
  store %struct.Memory* %loadMem_46d8f9, %struct.Memory** %MEMORY
  %loadMem_46d8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 1
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %3436 to i32*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 5
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %3439 to i64*
  %3440 = load i32, i32* %EAX.i303
  %3441 = zext i32 %3440 to i64
  %3442 = load i64, i64* %PC.i302
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i302
  %3444 = shl i64 %3441, 32
  %3445 = ashr exact i64 %3444, 32
  store i64 %3445, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_46d8fc, %struct.Memory** %MEMORY
  %loadMem_46d8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 5
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RBP.i301
  %3456 = load i64, i64* %RCX.i300
  %3457 = mul i64 %3456, 4
  %3458 = add i64 %3455, -1616
  %3459 = add i64 %3458, %3457
  %3460 = load i64, i64* %PC.i299
  %3461 = add i64 %3460, 8
  store i64 %3461, i64* %PC.i299
  %3462 = inttoptr i64 %3459 to i32*
  %3463 = load i32, i32* %3462
  %3464 = sub i32 %3463, 1
  %3465 = icmp ult i32 %3463, 1
  %3466 = zext i1 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3466, i8* %3467, align 1
  %3468 = and i32 %3464, 255
  %3469 = call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3472, i8* %3473, align 1
  %3474 = xor i32 %3463, 1
  %3475 = xor i32 %3474, %3464
  %3476 = lshr i32 %3475, 4
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3478, i8* %3479, align 1
  %3480 = icmp eq i32 %3464, 0
  %3481 = zext i1 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3481, i8* %3482, align 1
  %3483 = lshr i32 %3464, 31
  %3484 = trunc i32 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3484, i8* %3485, align 1
  %3486 = lshr i32 %3463, 31
  %3487 = xor i32 %3483, %3486
  %3488 = add i32 %3487, %3486
  %3489 = icmp eq i32 %3488, 2
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3490, i8* %3491, align 1
  store %struct.Memory* %loadMem_46d8ff, %struct.Memory** %MEMORY
  %loadMem_46d907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %PC.i298
  %3496 = add i64 %3495, 16
  %3497 = load i64, i64* %PC.i298
  %3498 = add i64 %3497, 6
  %3499 = load i64, i64* %PC.i298
  %3500 = add i64 %3499, 6
  store i64 %3500, i64* %PC.i298
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3502 = load i8, i8* %3501, align 1
  %3503 = icmp eq i8 %3502, 0
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %BRANCH_TAKEN, align 1
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3506 = select i1 %3503, i64 %3496, i64 %3498
  store i64 %3506, i64* %3505, align 8
  store %struct.Memory* %loadMem_46d907, %struct.Memory** %MEMORY
  %loadBr_46d907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d907 = icmp eq i8 %loadBr_46d907, 1
  br i1 %cmpBr_46d907, label %block_.L_46d917, label %block_.L_46d90d

block_.L_46d90d:                                  ; preds = %block_46d8f3, %block_46d8d9, %block_46d8a2, %block_46d888, %block_46d851, %block_46d837, %block_46d800, %block_46d7e6, %block_.L_46d7b4
  %loadMem_46d90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 15
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %3512 to i64*
  %3513 = load i64, i64* %RBP.i297
  %3514 = sub i64 %3513, 1628
  %3515 = load i64, i64* %PC.i296
  %3516 = add i64 %3515, 10
  store i64 %3516, i64* %PC.i296
  %3517 = inttoptr i64 %3514 to i32*
  store i32 1, i32* %3517
  store %struct.Memory* %loadMem_46d90d, %struct.Memory** %MEMORY
  br label %block_.L_46d917

block_.L_46d917:                                  ; preds = %block_.L_46d90d, %block_46d8f3, %block_.L_46d8bc
  %loadMem_46d917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 33
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 1
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 15
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %3526 to i64*
  %3527 = load i64, i64* %RBP.i295
  %3528 = sub i64 %3527, 1620
  %3529 = load i64, i64* %PC.i293
  %3530 = add i64 %3529, 7
  store i64 %3530, i64* %PC.i293
  %3531 = inttoptr i64 %3528 to i32*
  %3532 = load i32, i32* %3531
  %3533 = sext i32 %3532 to i64
  store i64 %3533, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_46d917, %struct.Memory** %MEMORY
  %loadMem_46d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 15
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %3542 to i64*
  %3543 = load i64, i64* %RBP.i292
  %3544 = load i64, i64* %RAX.i291
  %3545 = mul i64 %3544, 4
  %3546 = add i64 %3543, -1616
  %3547 = add i64 %3546, %3545
  %3548 = load i64, i64* %PC.i290
  %3549 = add i64 %3548, 8
  store i64 %3549, i64* %PC.i290
  %3550 = inttoptr i64 %3547 to i32*
  %3551 = load i32, i32* %3550
  %3552 = sub i32 %3551, 2
  %3553 = icmp ult i32 %3551, 2
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3554, i8* %3555, align 1
  %3556 = and i32 %3552, 255
  %3557 = call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3560, i8* %3561, align 1
  %3562 = xor i32 %3551, 2
  %3563 = xor i32 %3562, %3552
  %3564 = lshr i32 %3563, 4
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3566, i8* %3567, align 1
  %3568 = icmp eq i32 %3552, 0
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3569, i8* %3570, align 1
  %3571 = lshr i32 %3552, 31
  %3572 = trunc i32 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3572, i8* %3573, align 1
  %3574 = lshr i32 %3551, 31
  %3575 = xor i32 %3571, %3574
  %3576 = add i32 %3575, %3574
  %3577 = icmp eq i32 %3576, 2
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3579, align 1
  store %struct.Memory* %loadMem_46d91e, %struct.Memory** %MEMORY
  %loadMem_46d926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i289
  %3584 = add i64 %3583, 330
  %3585 = load i64, i64* %PC.i289
  %3586 = add i64 %3585, 6
  %3587 = load i64, i64* %PC.i289
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i289
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3590 = load i8, i8* %3589, align 1
  store i8 %3590, i8* %BRANCH_TAKEN, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3592 = icmp ne i8 %3590, 0
  %3593 = select i1 %3592, i64 %3584, i64 %3586
  store i64 %3593, i64* %3591, align 8
  store %struct.Memory* %loadMem_46d926, %struct.Memory** %MEMORY
  %loadBr_46d926 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d926 = icmp eq i8 %loadBr_46d926, 1
  br i1 %cmpBr_46d926, label %block_.L_46da70, label %block_46d92c

block_46d92c:                                     ; preds = %block_.L_46d917
  %loadMem_46d92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 1
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 15
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RBP.i288
  %3604 = sub i64 %3603, 1620
  %3605 = load i64, i64* %PC.i286
  %3606 = add i64 %3605, 6
  store i64 %3606, i64* %PC.i286
  %3607 = inttoptr i64 %3604 to i32*
  %3608 = load i32, i32* %3607
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_46d92c, %struct.Memory** %MEMORY
  %loadMem_46d932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 33
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 1
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %RAX.i285
  %3617 = load i64, i64* %PC.i284
  %3618 = add i64 %3617, 3
  store i64 %3618, i64* %PC.i284
  %3619 = trunc i64 %3616 to i32
  %3620 = add i32 20, %3619
  %3621 = zext i32 %3620 to i64
  store i64 %3621, i64* %RAX.i285, align 8
  %3622 = icmp ult i32 %3620, %3619
  %3623 = icmp ult i32 %3620, 20
  %3624 = or i1 %3622, %3623
  %3625 = zext i1 %3624 to i8
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3625, i8* %3626, align 1
  %3627 = and i32 %3620, 255
  %3628 = call i32 @llvm.ctpop.i32(i32 %3627)
  %3629 = trunc i32 %3628 to i8
  %3630 = and i8 %3629, 1
  %3631 = xor i8 %3630, 1
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3631, i8* %3632, align 1
  %3633 = xor i64 20, %3616
  %3634 = trunc i64 %3633 to i32
  %3635 = xor i32 %3634, %3620
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3638, i8* %3639, align 1
  %3640 = icmp eq i32 %3620, 0
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3641, i8* %3642, align 1
  %3643 = lshr i32 %3620, 31
  %3644 = trunc i32 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3644, i8* %3645, align 1
  %3646 = lshr i32 %3619, 31
  %3647 = xor i32 %3643, %3646
  %3648 = add i32 %3647, %3643
  %3649 = icmp eq i32 %3648, 2
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3650, i8* %3651, align 1
  store %struct.Memory* %loadMem_46d932, %struct.Memory** %MEMORY
  %loadMem_46d935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 1
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %EAX.i282 = bitcast %union.anon* %3657 to i32*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 5
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %3660 to i64*
  %3661 = load i32, i32* %EAX.i282
  %3662 = zext i32 %3661 to i64
  %3663 = load i64, i64* %PC.i281
  %3664 = add i64 %3663, 3
  store i64 %3664, i64* %PC.i281
  %3665 = shl i64 %3662, 32
  %3666 = ashr exact i64 %3665, 32
  store i64 %3666, i64* %RCX.i283, align 8
  store %struct.Memory* %loadMem_46d935, %struct.Memory** %MEMORY
  %loadMem_46d938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 5
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RCX.i280
  %3677 = add i64 %3676, 12099168
  %3678 = load i64, i64* %PC.i278
  %3679 = add i64 %3678, 8
  store i64 %3679, i64* %PC.i278
  %3680 = inttoptr i64 %3677 to i8*
  %3681 = load i8, i8* %3680
  %3682 = zext i8 %3681 to i64
  store i64 %3682, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_46d938, %struct.Memory** %MEMORY
  %loadMem_46d940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 1
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %3688 to i32*
  %3689 = load i32, i32* %EAX.i277
  %3690 = zext i32 %3689 to i64
  %3691 = load i64, i64* %PC.i276
  %3692 = add i64 %3691, 3
  store i64 %3692, i64* %PC.i276
  %3693 = sub i32 %3689, 3
  %3694 = icmp ult i32 %3689, 3
  %3695 = zext i1 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3695, i8* %3696, align 1
  %3697 = and i32 %3693, 255
  %3698 = call i32 @llvm.ctpop.i32(i32 %3697)
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  %3701 = xor i8 %3700, 1
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3701, i8* %3702, align 1
  %3703 = xor i64 3, %3690
  %3704 = trunc i64 %3703 to i32
  %3705 = xor i32 %3704, %3693
  %3706 = lshr i32 %3705, 4
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3708, i8* %3709, align 1
  %3710 = icmp eq i32 %3693, 0
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3711, i8* %3712, align 1
  %3713 = lshr i32 %3693, 31
  %3714 = trunc i32 %3713 to i8
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3714, i8* %3715, align 1
  %3716 = lshr i32 %3689, 31
  %3717 = xor i32 %3713, %3716
  %3718 = add i32 %3717, %3716
  %3719 = icmp eq i32 %3718, 2
  %3720 = zext i1 %3719 to i8
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3720, i8* %3721, align 1
  store %struct.Memory* %loadMem_46d940, %struct.Memory** %MEMORY
  %loadMem_46d943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %PC.i275
  %3726 = add i64 %3725, 58
  %3727 = load i64, i64* %PC.i275
  %3728 = add i64 %3727, 6
  %3729 = load i64, i64* %PC.i275
  %3730 = add i64 %3729, 6
  store i64 %3730, i64* %PC.i275
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3732 = load i8, i8* %3731, align 1
  store i8 %3732, i8* %BRANCH_TAKEN, align 1
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3734 = icmp ne i8 %3732, 0
  %3735 = select i1 %3734, i64 %3726, i64 %3728
  store i64 %3735, i64* %3733, align 8
  store %struct.Memory* %loadMem_46d943, %struct.Memory** %MEMORY
  %loadBr_46d943 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d943 = icmp eq i8 %loadBr_46d943, 1
  br i1 %cmpBr_46d943, label %block_.L_46d97d, label %block_46d949

block_46d949:                                     ; preds = %block_46d92c
  %loadMem_46d949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 1
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 15
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %3744 to i64*
  %3745 = load i64, i64* %RBP.i274
  %3746 = sub i64 %3745, 8
  %3747 = load i64, i64* %PC.i272
  %3748 = add i64 %3747, 4
  store i64 %3748, i64* %PC.i272
  %3749 = inttoptr i64 %3746 to i64*
  %3750 = load i64, i64* %3749
  store i64 %3750, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_46d949, %struct.Memory** %MEMORY
  %loadMem_46d94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 5
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 15
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %RBP.i271
  %3761 = sub i64 %3760, 1620
  %3762 = load i64, i64* %PC.i269
  %3763 = add i64 %3762, 6
  store i64 %3763, i64* %PC.i269
  %3764 = inttoptr i64 %3761 to i32*
  %3765 = load i32, i32* %3764
  %3766 = zext i32 %3765 to i64
  store i64 %3766, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_46d94d, %struct.Memory** %MEMORY
  %loadMem_46d953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 5
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %RCX.i268
  %3774 = load i64, i64* %PC.i267
  %3775 = add i64 %3774, 3
  store i64 %3775, i64* %PC.i267
  %3776 = trunc i64 %3773 to i32
  %3777 = add i32 20, %3776
  %3778 = zext i32 %3777 to i64
  store i64 %3778, i64* %RCX.i268, align 8
  %3779 = icmp ult i32 %3777, %3776
  %3780 = icmp ult i32 %3777, 20
  %3781 = or i1 %3779, %3780
  %3782 = zext i1 %3781 to i8
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3782, i8* %3783, align 1
  %3784 = and i32 %3777, 255
  %3785 = call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3788, i8* %3789, align 1
  %3790 = xor i64 20, %3773
  %3791 = trunc i64 %3790 to i32
  %3792 = xor i32 %3791, %3777
  %3793 = lshr i32 %3792, 4
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3795, i8* %3796, align 1
  %3797 = icmp eq i32 %3777, 0
  %3798 = zext i1 %3797 to i8
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3798, i8* %3799, align 1
  %3800 = lshr i32 %3777, 31
  %3801 = trunc i32 %3800 to i8
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3801, i8* %3802, align 1
  %3803 = lshr i32 %3776, 31
  %3804 = xor i32 %3800, %3803
  %3805 = add i32 %3804, %3800
  %3806 = icmp eq i32 %3805, 2
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3807, i8* %3808, align 1
  store %struct.Memory* %loadMem_46d953, %struct.Memory** %MEMORY
  %loadMem_46d956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 5
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %ECX.i265 = bitcast %union.anon* %3814 to i32*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 7
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %3817 to i64*
  %3818 = load i32, i32* %ECX.i265
  %3819 = zext i32 %3818 to i64
  %3820 = load i64, i64* %PC.i264
  %3821 = add i64 %3820, 3
  store i64 %3821, i64* %PC.i264
  %3822 = shl i64 %3819, 32
  %3823 = ashr exact i64 %3822, 32
  store i64 %3823, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_46d956, %struct.Memory** %MEMORY
  %loadMem_46d959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 1
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 7
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %RAX.i262
  %3834 = load i64, i64* %RDX.i263
  %3835 = mul i64 %3834, 4
  %3836 = add i64 %3835, %3833
  %3837 = load i64, i64* %PC.i261
  %3838 = add i64 %3837, 4
  store i64 %3838, i64* %PC.i261
  %3839 = inttoptr i64 %3836 to i32*
  %3840 = load i32, i32* %3839
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3841, align 1
  %3842 = and i32 %3840, 255
  %3843 = call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3846, i8* %3847, align 1
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3848, align 1
  %3849 = icmp eq i32 %3840, 0
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3850, i8* %3851, align 1
  %3852 = lshr i32 %3840, 31
  %3853 = trunc i32 %3852 to i8
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3853, i8* %3854, align 1
  %3855 = lshr i32 %3840, 31
  %3856 = xor i32 %3852, %3855
  %3857 = add i32 %3856, %3855
  %3858 = icmp eq i32 %3857, 2
  %3859 = zext i1 %3858 to i8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3859, i8* %3860, align 1
  store %struct.Memory* %loadMem_46d959, %struct.Memory** %MEMORY
  %loadMem_46d95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %PC.i260
  %3865 = add i64 %3864, 275
  %3866 = load i64, i64* %PC.i260
  %3867 = add i64 %3866, 6
  %3868 = load i64, i64* %PC.i260
  %3869 = add i64 %3868, 6
  store i64 %3869, i64* %PC.i260
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3871 = load i8, i8* %3870, align 1
  %3872 = icmp ne i8 %3871, 0
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3874 = load i8, i8* %3873, align 1
  %3875 = icmp ne i8 %3874, 0
  %3876 = xor i1 %3872, %3875
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %BRANCH_TAKEN, align 1
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3879 = select i1 %3876, i64 %3865, i64 %3867
  store i64 %3879, i64* %3878, align 8
  store %struct.Memory* %loadMem_46d95d, %struct.Memory** %MEMORY
  %loadBr_46d95d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d95d = icmp eq i8 %loadBr_46d95d, 1
  br i1 %cmpBr_46d95d, label %block_.L_46da70, label %block_46d963

block_46d963:                                     ; preds = %block_46d949
  %loadMem_46d963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i259
  %3890 = sub i64 %3889, 1620
  %3891 = load i64, i64* %PC.i257
  %3892 = add i64 %3891, 6
  store i64 %3892, i64* %PC.i257
  %3893 = inttoptr i64 %3890 to i32*
  %3894 = load i32, i32* %3893
  %3895 = zext i32 %3894 to i64
  store i64 %3895, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_46d963, %struct.Memory** %MEMORY
  %loadMem_46d969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 1
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RAX.i256
  %3903 = load i64, i64* %PC.i255
  %3904 = add i64 %3903, 3
  store i64 %3904, i64* %PC.i255
  %3905 = trunc i64 %3902 to i32
  %3906 = add i32 20, %3905
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RAX.i256, align 8
  %3908 = icmp ult i32 %3906, %3905
  %3909 = icmp ult i32 %3906, 20
  %3910 = or i1 %3908, %3909
  %3911 = zext i1 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3911, i8* %3912, align 1
  %3913 = and i32 %3906, 255
  %3914 = call i32 @llvm.ctpop.i32(i32 %3913)
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = xor i8 %3916, 1
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3917, i8* %3918, align 1
  %3919 = xor i64 20, %3902
  %3920 = trunc i64 %3919 to i32
  %3921 = xor i32 %3920, %3906
  %3922 = lshr i32 %3921, 4
  %3923 = trunc i32 %3922 to i8
  %3924 = and i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3924, i8* %3925, align 1
  %3926 = icmp eq i32 %3906, 0
  %3927 = zext i1 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3927, i8* %3928, align 1
  %3929 = lshr i32 %3906, 31
  %3930 = trunc i32 %3929 to i8
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3930, i8* %3931, align 1
  %3932 = lshr i32 %3905, 31
  %3933 = xor i32 %3929, %3932
  %3934 = add i32 %3933, %3929
  %3935 = icmp eq i32 %3934, 2
  %3936 = zext i1 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3936, i8* %3937, align 1
  store %struct.Memory* %loadMem_46d969, %struct.Memory** %MEMORY
  %loadMem_46d96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 1
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %3943 to i32*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 5
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %3946 to i64*
  %3947 = load i32, i32* %EAX.i253
  %3948 = zext i32 %3947 to i64
  %3949 = load i64, i64* %PC.i252
  %3950 = add i64 %3949, 3
  store i64 %3950, i64* %PC.i252
  %3951 = shl i64 %3948, 32
  %3952 = ashr exact i64 %3951, 32
  store i64 %3952, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_46d96c, %struct.Memory** %MEMORY
  %loadMem_46d96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 33
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 5
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 15
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3961 to i64*
  %3962 = load i64, i64* %RBP.i251
  %3963 = load i64, i64* %RCX.i250
  %3964 = mul i64 %3963, 4
  %3965 = add i64 %3962, -1616
  %3966 = add i64 %3965, %3964
  %3967 = load i64, i64* %PC.i249
  %3968 = add i64 %3967, 8
  store i64 %3968, i64* %PC.i249
  %3969 = inttoptr i64 %3966 to i32*
  %3970 = load i32, i32* %3969
  %3971 = sub i32 %3970, 2
  %3972 = icmp ult i32 %3970, 2
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3973, i8* %3974, align 1
  %3975 = and i32 %3971, 255
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3979, i8* %3980, align 1
  %3981 = xor i32 %3970, 2
  %3982 = xor i32 %3981, %3971
  %3983 = lshr i32 %3982, 4
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3985, i8* %3986, align 1
  %3987 = icmp eq i32 %3971, 0
  %3988 = zext i1 %3987 to i8
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3988, i8* %3989, align 1
  %3990 = lshr i32 %3971, 31
  %3991 = trunc i32 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3991, i8* %3992, align 1
  %3993 = lshr i32 %3970, 31
  %3994 = xor i32 %3990, %3993
  %3995 = add i32 %3994, %3993
  %3996 = icmp eq i32 %3995, 2
  %3997 = zext i1 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3997, i8* %3998, align 1
  store %struct.Memory* %loadMem_46d96f, %struct.Memory** %MEMORY
  %loadMem_46d977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %PC.i248
  %4003 = add i64 %4002, 249
  %4004 = load i64, i64* %PC.i248
  %4005 = add i64 %4004, 6
  %4006 = load i64, i64* %PC.i248
  %4007 = add i64 %4006, 6
  store i64 %4007, i64* %PC.i248
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4009 = load i8, i8* %4008, align 1
  store i8 %4009, i8* %BRANCH_TAKEN, align 1
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4011 = icmp ne i8 %4009, 0
  %4012 = select i1 %4011, i64 %4003, i64 %4005
  store i64 %4012, i64* %4010, align 8
  store %struct.Memory* %loadMem_46d977, %struct.Memory** %MEMORY
  %loadBr_46d977 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d977 = icmp eq i8 %loadBr_46d977, 1
  br i1 %cmpBr_46d977, label %block_.L_46da70, label %block_.L_46d97d

block_.L_46d97d:                                  ; preds = %block_46d963, %block_46d92c
  %loadMem_46d97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 33
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4015 to i64*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 1
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 15
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %4021 to i64*
  %4022 = load i64, i64* %RBP.i247
  %4023 = sub i64 %4022, 1620
  %4024 = load i64, i64* %PC.i245
  %4025 = add i64 %4024, 6
  store i64 %4025, i64* %PC.i245
  %4026 = inttoptr i64 %4023 to i32*
  %4027 = load i32, i32* %4026
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_46d97d, %struct.Memory** %MEMORY
  %loadMem_46d983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 1
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RAX.i244
  %4036 = load i64, i64* %PC.i243
  %4037 = add i64 %4036, 3
  store i64 %4037, i64* %PC.i243
  %4038 = trunc i64 %4035 to i32
  %4039 = sub i32 %4038, 1
  %4040 = zext i32 %4039 to i64
  store i64 %4040, i64* %RAX.i244, align 8
  %4041 = icmp ult i32 %4038, 1
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4042, i8* %4043, align 1
  %4044 = and i32 %4039, 255
  %4045 = call i32 @llvm.ctpop.i32(i32 %4044)
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  %4048 = xor i8 %4047, 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4048, i8* %4049, align 1
  %4050 = xor i64 1, %4035
  %4051 = trunc i64 %4050 to i32
  %4052 = xor i32 %4051, %4039
  %4053 = lshr i32 %4052, 4
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4055, i8* %4056, align 1
  %4057 = icmp eq i32 %4039, 0
  %4058 = zext i1 %4057 to i8
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4058, i8* %4059, align 1
  %4060 = lshr i32 %4039, 31
  %4061 = trunc i32 %4060 to i8
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4061, i8* %4062, align 1
  %4063 = lshr i32 %4038, 31
  %4064 = xor i32 %4060, %4063
  %4065 = add i32 %4064, %4063
  %4066 = icmp eq i32 %4065, 2
  %4067 = zext i1 %4066 to i8
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4067, i8* %4068, align 1
  store %struct.Memory* %loadMem_46d983, %struct.Memory** %MEMORY
  %loadMem_46d986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 1
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %4074 to i32*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 5
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %4077 to i64*
  %4078 = load i32, i32* %EAX.i241
  %4079 = zext i32 %4078 to i64
  %4080 = load i64, i64* %PC.i240
  %4081 = add i64 %4080, 3
  store i64 %4081, i64* %PC.i240
  %4082 = shl i64 %4079, 32
  %4083 = ashr exact i64 %4082, 32
  store i64 %4083, i64* %RCX.i242, align 8
  store %struct.Memory* %loadMem_46d986, %struct.Memory** %MEMORY
  %loadMem_46d989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 1
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 5
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RCX.i239
  %4094 = add i64 %4093, 12099168
  %4095 = load i64, i64* %PC.i237
  %4096 = add i64 %4095, 8
  store i64 %4096, i64* %PC.i237
  %4097 = inttoptr i64 %4094 to i8*
  %4098 = load i8, i8* %4097
  %4099 = zext i8 %4098 to i64
  store i64 %4099, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_46d989, %struct.Memory** %MEMORY
  %loadMem_46d991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 1
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %4105 to i32*
  %4106 = load i32, i32* %EAX.i236
  %4107 = zext i32 %4106 to i64
  %4108 = load i64, i64* %PC.i235
  %4109 = add i64 %4108, 3
  store i64 %4109, i64* %PC.i235
  %4110 = sub i32 %4106, 3
  %4111 = icmp ult i32 %4106, 3
  %4112 = zext i1 %4111 to i8
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4112, i8* %4113, align 1
  %4114 = and i32 %4110, 255
  %4115 = call i32 @llvm.ctpop.i32(i32 %4114)
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = xor i8 %4117, 1
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4118, i8* %4119, align 1
  %4120 = xor i64 3, %4107
  %4121 = trunc i64 %4120 to i32
  %4122 = xor i32 %4121, %4110
  %4123 = lshr i32 %4122, 4
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4125, i8* %4126, align 1
  %4127 = icmp eq i32 %4110, 0
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i32 %4110, 31
  %4131 = trunc i32 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4131, i8* %4132, align 1
  %4133 = lshr i32 %4106, 31
  %4134 = xor i32 %4130, %4133
  %4135 = add i32 %4134, %4133
  %4136 = icmp eq i32 %4135, 2
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4137, i8* %4138, align 1
  store %struct.Memory* %loadMem_46d991, %struct.Memory** %MEMORY
  %loadMem_46d994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %PC.i234
  %4143 = add i64 %4142, 58
  %4144 = load i64, i64* %PC.i234
  %4145 = add i64 %4144, 6
  %4146 = load i64, i64* %PC.i234
  %4147 = add i64 %4146, 6
  store i64 %4147, i64* %PC.i234
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4149 = load i8, i8* %4148, align 1
  store i8 %4149, i8* %BRANCH_TAKEN, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4151 = icmp ne i8 %4149, 0
  %4152 = select i1 %4151, i64 %4143, i64 %4145
  store i64 %4152, i64* %4150, align 8
  store %struct.Memory* %loadMem_46d994, %struct.Memory** %MEMORY
  %loadBr_46d994 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d994 = icmp eq i8 %loadBr_46d994, 1
  br i1 %cmpBr_46d994, label %block_.L_46d9ce, label %block_46d99a

block_46d99a:                                     ; preds = %block_.L_46d97d
  %loadMem_46d99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4155 to i64*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 1
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 15
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %RBP.i233
  %4163 = sub i64 %4162, 8
  %4164 = load i64, i64* %PC.i231
  %4165 = add i64 %4164, 4
  store i64 %4165, i64* %PC.i231
  %4166 = inttoptr i64 %4163 to i64*
  %4167 = load i64, i64* %4166
  store i64 %4167, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_46d99a, %struct.Memory** %MEMORY
  %loadMem_46d99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 5
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 15
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RBP.i230
  %4178 = sub i64 %4177, 1620
  %4179 = load i64, i64* %PC.i228
  %4180 = add i64 %4179, 6
  store i64 %4180, i64* %PC.i228
  %4181 = inttoptr i64 %4178 to i32*
  %4182 = load i32, i32* %4181
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_46d99e, %struct.Memory** %MEMORY
  %loadMem_46d9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 5
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %4189 to i64*
  %4190 = load i64, i64* %RCX.i227
  %4191 = load i64, i64* %PC.i226
  %4192 = add i64 %4191, 3
  store i64 %4192, i64* %PC.i226
  %4193 = trunc i64 %4190 to i32
  %4194 = sub i32 %4193, 1
  %4195 = zext i32 %4194 to i64
  store i64 %4195, i64* %RCX.i227, align 8
  %4196 = icmp ult i32 %4193, 1
  %4197 = zext i1 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4197, i8* %4198, align 1
  %4199 = and i32 %4194, 255
  %4200 = call i32 @llvm.ctpop.i32(i32 %4199)
  %4201 = trunc i32 %4200 to i8
  %4202 = and i8 %4201, 1
  %4203 = xor i8 %4202, 1
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4203, i8* %4204, align 1
  %4205 = xor i64 1, %4190
  %4206 = trunc i64 %4205 to i32
  %4207 = xor i32 %4206, %4194
  %4208 = lshr i32 %4207, 4
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4210, i8* %4211, align 1
  %4212 = icmp eq i32 %4194, 0
  %4213 = zext i1 %4212 to i8
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4213, i8* %4214, align 1
  %4215 = lshr i32 %4194, 31
  %4216 = trunc i32 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4216, i8* %4217, align 1
  %4218 = lshr i32 %4193, 31
  %4219 = xor i32 %4215, %4218
  %4220 = add i32 %4219, %4218
  %4221 = icmp eq i32 %4220, 2
  %4222 = zext i1 %4221 to i8
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4222, i8* %4223, align 1
  store %struct.Memory* %loadMem_46d9a4, %struct.Memory** %MEMORY
  %loadMem_46d9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 33
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 5
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %ECX.i224 = bitcast %union.anon* %4229 to i32*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 7
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %4232 to i64*
  %4233 = load i32, i32* %ECX.i224
  %4234 = zext i32 %4233 to i64
  %4235 = load i64, i64* %PC.i223
  %4236 = add i64 %4235, 3
  store i64 %4236, i64* %PC.i223
  %4237 = shl i64 %4234, 32
  %4238 = ashr exact i64 %4237, 32
  store i64 %4238, i64* %RDX.i225, align 8
  store %struct.Memory* %loadMem_46d9a7, %struct.Memory** %MEMORY
  %loadMem_46d9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 33
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 1
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 7
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RDX.i222 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %RAX.i221
  %4249 = load i64, i64* %RDX.i222
  %4250 = mul i64 %4249, 4
  %4251 = add i64 %4250, %4248
  %4252 = load i64, i64* %PC.i220
  %4253 = add i64 %4252, 4
  store i64 %4253, i64* %PC.i220
  %4254 = inttoptr i64 %4251 to i32*
  %4255 = load i32, i32* %4254
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4256, align 1
  %4257 = and i32 %4255, 255
  %4258 = call i32 @llvm.ctpop.i32(i32 %4257)
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  %4261 = xor i8 %4260, 1
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4261, i8* %4262, align 1
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4263, align 1
  %4264 = icmp eq i32 %4255, 0
  %4265 = zext i1 %4264 to i8
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4265, i8* %4266, align 1
  %4267 = lshr i32 %4255, 31
  %4268 = trunc i32 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4268, i8* %4269, align 1
  %4270 = lshr i32 %4255, 31
  %4271 = xor i32 %4267, %4270
  %4272 = add i32 %4271, %4270
  %4273 = icmp eq i32 %4272, 2
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4274, i8* %4275, align 1
  store %struct.Memory* %loadMem_46d9aa, %struct.Memory** %MEMORY
  %loadMem_46d9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4278 to i64*
  %4279 = load i64, i64* %PC.i219
  %4280 = add i64 %4279, 194
  %4281 = load i64, i64* %PC.i219
  %4282 = add i64 %4281, 6
  %4283 = load i64, i64* %PC.i219
  %4284 = add i64 %4283, 6
  store i64 %4284, i64* %PC.i219
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4286 = load i8, i8* %4285, align 1
  %4287 = icmp ne i8 %4286, 0
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4289 = load i8, i8* %4288, align 1
  %4290 = icmp ne i8 %4289, 0
  %4291 = xor i1 %4287, %4290
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %BRANCH_TAKEN, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4294 = select i1 %4291, i64 %4280, i64 %4282
  store i64 %4294, i64* %4293, align 8
  store %struct.Memory* %loadMem_46d9ae, %struct.Memory** %MEMORY
  %loadBr_46d9ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9ae = icmp eq i8 %loadBr_46d9ae, 1
  br i1 %cmpBr_46d9ae, label %block_.L_46da70, label %block_46d9b4

block_46d9b4:                                     ; preds = %block_46d99a
  %loadMem_46d9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 1
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 15
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RBP.i218
  %4305 = sub i64 %4304, 1620
  %4306 = load i64, i64* %PC.i216
  %4307 = add i64 %4306, 6
  store i64 %4307, i64* %PC.i216
  %4308 = inttoptr i64 %4305 to i32*
  %4309 = load i32, i32* %4308
  %4310 = zext i32 %4309 to i64
  store i64 %4310, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_46d9b4, %struct.Memory** %MEMORY
  %loadMem_46d9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 1
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %RAX.i215
  %4318 = load i64, i64* %PC.i214
  %4319 = add i64 %4318, 3
  store i64 %4319, i64* %PC.i214
  %4320 = trunc i64 %4317 to i32
  %4321 = sub i32 %4320, 1
  %4322 = zext i32 %4321 to i64
  store i64 %4322, i64* %RAX.i215, align 8
  %4323 = icmp ult i32 %4320, 1
  %4324 = zext i1 %4323 to i8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4324, i8* %4325, align 1
  %4326 = and i32 %4321, 255
  %4327 = call i32 @llvm.ctpop.i32(i32 %4326)
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  %4330 = xor i8 %4329, 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4330, i8* %4331, align 1
  %4332 = xor i64 1, %4317
  %4333 = trunc i64 %4332 to i32
  %4334 = xor i32 %4333, %4321
  %4335 = lshr i32 %4334, 4
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4337, i8* %4338, align 1
  %4339 = icmp eq i32 %4321, 0
  %4340 = zext i1 %4339 to i8
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4340, i8* %4341, align 1
  %4342 = lshr i32 %4321, 31
  %4343 = trunc i32 %4342 to i8
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4343, i8* %4344, align 1
  %4345 = lshr i32 %4320, 31
  %4346 = xor i32 %4342, %4345
  %4347 = add i32 %4346, %4345
  %4348 = icmp eq i32 %4347, 2
  %4349 = zext i1 %4348 to i8
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4349, i8* %4350, align 1
  store %struct.Memory* %loadMem_46d9ba, %struct.Memory** %MEMORY
  %loadMem_46d9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 1
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %4356 to i32*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 5
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %4359 to i64*
  %4360 = load i32, i32* %EAX.i212
  %4361 = zext i32 %4360 to i64
  %4362 = load i64, i64* %PC.i211
  %4363 = add i64 %4362, 3
  store i64 %4363, i64* %PC.i211
  %4364 = shl i64 %4361, 32
  %4365 = ashr exact i64 %4364, 32
  store i64 %4365, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_46d9bd, %struct.Memory** %MEMORY
  %loadMem_46d9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 33
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 5
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 15
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RBP.i210
  %4376 = load i64, i64* %RCX.i209
  %4377 = mul i64 %4376, 4
  %4378 = add i64 %4375, -1616
  %4379 = add i64 %4378, %4377
  %4380 = load i64, i64* %PC.i208
  %4381 = add i64 %4380, 8
  store i64 %4381, i64* %PC.i208
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = sub i32 %4383, 2
  %4385 = icmp ult i32 %4383, 2
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4386, i8* %4387, align 1
  %4388 = and i32 %4384, 255
  %4389 = call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4392, i8* %4393, align 1
  %4394 = xor i32 %4383, 2
  %4395 = xor i32 %4394, %4384
  %4396 = lshr i32 %4395, 4
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4398, i8* %4399, align 1
  %4400 = icmp eq i32 %4384, 0
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i32 %4384, 31
  %4404 = trunc i32 %4403 to i8
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4404, i8* %4405, align 1
  %4406 = lshr i32 %4383, 31
  %4407 = xor i32 %4403, %4406
  %4408 = add i32 %4407, %4406
  %4409 = icmp eq i32 %4408, 2
  %4410 = zext i1 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4410, i8* %4411, align 1
  store %struct.Memory* %loadMem_46d9c0, %struct.Memory** %MEMORY
  %loadMem_46d9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %PC.i207
  %4416 = add i64 %4415, 168
  %4417 = load i64, i64* %PC.i207
  %4418 = add i64 %4417, 6
  %4419 = load i64, i64* %PC.i207
  %4420 = add i64 %4419, 6
  store i64 %4420, i64* %PC.i207
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4422 = load i8, i8* %4421, align 1
  store i8 %4422, i8* %BRANCH_TAKEN, align 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4424 = icmp ne i8 %4422, 0
  %4425 = select i1 %4424, i64 %4416, i64 %4418
  store i64 %4425, i64* %4423, align 8
  store %struct.Memory* %loadMem_46d9c8, %struct.Memory** %MEMORY
  %loadBr_46d9c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9c8 = icmp eq i8 %loadBr_46d9c8, 1
  br i1 %cmpBr_46d9c8, label %block_.L_46da70, label %block_.L_46d9ce

block_.L_46d9ce:                                  ; preds = %block_46d9b4, %block_.L_46d97d
  %loadMem_46d9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 1
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 15
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %4434 to i64*
  %4435 = load i64, i64* %RBP.i206
  %4436 = sub i64 %4435, 1620
  %4437 = load i64, i64* %PC.i204
  %4438 = add i64 %4437, 6
  store i64 %4438, i64* %PC.i204
  %4439 = inttoptr i64 %4436 to i32*
  %4440 = load i32, i32* %4439
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_46d9ce, %struct.Memory** %MEMORY
  %loadMem_46d9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 1
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RAX.i203
  %4449 = load i64, i64* %PC.i202
  %4450 = add i64 %4449, 3
  store i64 %4450, i64* %PC.i202
  %4451 = trunc i64 %4448 to i32
  %4452 = sub i32 %4451, 20
  %4453 = zext i32 %4452 to i64
  store i64 %4453, i64* %RAX.i203, align 8
  %4454 = icmp ult i32 %4451, 20
  %4455 = zext i1 %4454 to i8
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4455, i8* %4456, align 1
  %4457 = and i32 %4452, 255
  %4458 = call i32 @llvm.ctpop.i32(i32 %4457)
  %4459 = trunc i32 %4458 to i8
  %4460 = and i8 %4459, 1
  %4461 = xor i8 %4460, 1
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4461, i8* %4462, align 1
  %4463 = xor i64 20, %4448
  %4464 = trunc i64 %4463 to i32
  %4465 = xor i32 %4464, %4452
  %4466 = lshr i32 %4465, 4
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4468, i8* %4469, align 1
  %4470 = icmp eq i32 %4452, 0
  %4471 = zext i1 %4470 to i8
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4471, i8* %4472, align 1
  %4473 = lshr i32 %4452, 31
  %4474 = trunc i32 %4473 to i8
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4474, i8* %4475, align 1
  %4476 = lshr i32 %4451, 31
  %4477 = xor i32 %4473, %4476
  %4478 = add i32 %4477, %4476
  %4479 = icmp eq i32 %4478, 2
  %4480 = zext i1 %4479 to i8
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4480, i8* %4481, align 1
  store %struct.Memory* %loadMem_46d9d4, %struct.Memory** %MEMORY
  %loadMem_46d9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 1
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %4487 to i32*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 5
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %4490 to i64*
  %4491 = load i32, i32* %EAX.i200
  %4492 = zext i32 %4491 to i64
  %4493 = load i64, i64* %PC.i199
  %4494 = add i64 %4493, 3
  store i64 %4494, i64* %PC.i199
  %4495 = shl i64 %4492, 32
  %4496 = ashr exact i64 %4495, 32
  store i64 %4496, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_46d9d7, %struct.Memory** %MEMORY
  %loadMem_46d9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 1
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 5
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %RCX.i198
  %4507 = add i64 %4506, 12099168
  %4508 = load i64, i64* %PC.i196
  %4509 = add i64 %4508, 8
  store i64 %4509, i64* %PC.i196
  %4510 = inttoptr i64 %4507 to i8*
  %4511 = load i8, i8* %4510
  %4512 = zext i8 %4511 to i64
  store i64 %4512, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_46d9da, %struct.Memory** %MEMORY
  %loadMem_46d9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 1
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %EAX.i195 = bitcast %union.anon* %4518 to i32*
  %4519 = load i32, i32* %EAX.i195
  %4520 = zext i32 %4519 to i64
  %4521 = load i64, i64* %PC.i194
  %4522 = add i64 %4521, 3
  store i64 %4522, i64* %PC.i194
  %4523 = sub i32 %4519, 3
  %4524 = icmp ult i32 %4519, 3
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4525, i8* %4526, align 1
  %4527 = and i32 %4523, 255
  %4528 = call i32 @llvm.ctpop.i32(i32 %4527)
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = xor i8 %4530, 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4531, i8* %4532, align 1
  %4533 = xor i64 3, %4520
  %4534 = trunc i64 %4533 to i32
  %4535 = xor i32 %4534, %4523
  %4536 = lshr i32 %4535, 4
  %4537 = trunc i32 %4536 to i8
  %4538 = and i8 %4537, 1
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4538, i8* %4539, align 1
  %4540 = icmp eq i32 %4523, 0
  %4541 = zext i1 %4540 to i8
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4541, i8* %4542, align 1
  %4543 = lshr i32 %4523, 31
  %4544 = trunc i32 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4544, i8* %4545, align 1
  %4546 = lshr i32 %4519, 31
  %4547 = xor i32 %4543, %4546
  %4548 = add i32 %4547, %4546
  %4549 = icmp eq i32 %4548, 2
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4550, i8* %4551, align 1
  store %struct.Memory* %loadMem_46d9e2, %struct.Memory** %MEMORY
  %loadMem_46d9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %PC.i193
  %4556 = add i64 %4555, 58
  %4557 = load i64, i64* %PC.i193
  %4558 = add i64 %4557, 6
  %4559 = load i64, i64* %PC.i193
  %4560 = add i64 %4559, 6
  store i64 %4560, i64* %PC.i193
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4562 = load i8, i8* %4561, align 1
  store i8 %4562, i8* %BRANCH_TAKEN, align 1
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4564 = icmp ne i8 %4562, 0
  %4565 = select i1 %4564, i64 %4556, i64 %4558
  store i64 %4565, i64* %4563, align 8
  store %struct.Memory* %loadMem_46d9e5, %struct.Memory** %MEMORY
  %loadBr_46d9e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9e5 = icmp eq i8 %loadBr_46d9e5, 1
  br i1 %cmpBr_46d9e5, label %block_.L_46da1f, label %block_46d9eb

block_46d9eb:                                     ; preds = %block_.L_46d9ce
  %loadMem_46d9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 1
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 15
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %RBP.i192
  %4576 = sub i64 %4575, 8
  %4577 = load i64, i64* %PC.i190
  %4578 = add i64 %4577, 4
  store i64 %4578, i64* %PC.i190
  %4579 = inttoptr i64 %4576 to i64*
  %4580 = load i64, i64* %4579
  store i64 %4580, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_46d9eb, %struct.Memory** %MEMORY
  %loadMem_46d9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 5
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 15
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RBP.i189
  %4591 = sub i64 %4590, 1620
  %4592 = load i64, i64* %PC.i187
  %4593 = add i64 %4592, 6
  store i64 %4593, i64* %PC.i187
  %4594 = inttoptr i64 %4591 to i32*
  %4595 = load i32, i32* %4594
  %4596 = zext i32 %4595 to i64
  store i64 %4596, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_46d9ef, %struct.Memory** %MEMORY
  %loadMem_46d9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4599 to i64*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 5
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %4602 to i64*
  %4603 = load i64, i64* %RCX.i186
  %4604 = load i64, i64* %PC.i185
  %4605 = add i64 %4604, 3
  store i64 %4605, i64* %PC.i185
  %4606 = trunc i64 %4603 to i32
  %4607 = sub i32 %4606, 20
  %4608 = zext i32 %4607 to i64
  store i64 %4608, i64* %RCX.i186, align 8
  %4609 = icmp ult i32 %4606, 20
  %4610 = zext i1 %4609 to i8
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4610, i8* %4611, align 1
  %4612 = and i32 %4607, 255
  %4613 = call i32 @llvm.ctpop.i32(i32 %4612)
  %4614 = trunc i32 %4613 to i8
  %4615 = and i8 %4614, 1
  %4616 = xor i8 %4615, 1
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4616, i8* %4617, align 1
  %4618 = xor i64 20, %4603
  %4619 = trunc i64 %4618 to i32
  %4620 = xor i32 %4619, %4607
  %4621 = lshr i32 %4620, 4
  %4622 = trunc i32 %4621 to i8
  %4623 = and i8 %4622, 1
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4623, i8* %4624, align 1
  %4625 = icmp eq i32 %4607, 0
  %4626 = zext i1 %4625 to i8
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4626, i8* %4627, align 1
  %4628 = lshr i32 %4607, 31
  %4629 = trunc i32 %4628 to i8
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4629, i8* %4630, align 1
  %4631 = lshr i32 %4606, 31
  %4632 = xor i32 %4628, %4631
  %4633 = add i32 %4632, %4631
  %4634 = icmp eq i32 %4633, 2
  %4635 = zext i1 %4634 to i8
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4635, i8* %4636, align 1
  store %struct.Memory* %loadMem_46d9f5, %struct.Memory** %MEMORY
  %loadMem_46d9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 5
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %ECX.i183 = bitcast %union.anon* %4642 to i32*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 7
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %4645 to i64*
  %4646 = load i32, i32* %ECX.i183
  %4647 = zext i32 %4646 to i64
  %4648 = load i64, i64* %PC.i182
  %4649 = add i64 %4648, 3
  store i64 %4649, i64* %PC.i182
  %4650 = shl i64 %4647, 32
  %4651 = ashr exact i64 %4650, 32
  store i64 %4651, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_46d9f8, %struct.Memory** %MEMORY
  %loadMem_46d9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 7
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %RAX.i180
  %4662 = load i64, i64* %RDX.i181
  %4663 = mul i64 %4662, 4
  %4664 = add i64 %4663, %4661
  %4665 = load i64, i64* %PC.i179
  %4666 = add i64 %4665, 4
  store i64 %4666, i64* %PC.i179
  %4667 = inttoptr i64 %4664 to i32*
  %4668 = load i32, i32* %4667
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4669, align 1
  %4670 = and i32 %4668, 255
  %4671 = call i32 @llvm.ctpop.i32(i32 %4670)
  %4672 = trunc i32 %4671 to i8
  %4673 = and i8 %4672, 1
  %4674 = xor i8 %4673, 1
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4674, i8* %4675, align 1
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4676, align 1
  %4677 = icmp eq i32 %4668, 0
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4678, i8* %4679, align 1
  %4680 = lshr i32 %4668, 31
  %4681 = trunc i32 %4680 to i8
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4681, i8* %4682, align 1
  %4683 = lshr i32 %4668, 31
  %4684 = xor i32 %4680, %4683
  %4685 = add i32 %4684, %4683
  %4686 = icmp eq i32 %4685, 2
  %4687 = zext i1 %4686 to i8
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4687, i8* %4688, align 1
  store %struct.Memory* %loadMem_46d9fb, %struct.Memory** %MEMORY
  %loadMem_46d9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 33
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %PC.i178
  %4693 = add i64 %4692, 113
  %4694 = load i64, i64* %PC.i178
  %4695 = add i64 %4694, 6
  %4696 = load i64, i64* %PC.i178
  %4697 = add i64 %4696, 6
  store i64 %4697, i64* %PC.i178
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4699 = load i8, i8* %4698, align 1
  %4700 = icmp ne i8 %4699, 0
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4702 = load i8, i8* %4701, align 1
  %4703 = icmp ne i8 %4702, 0
  %4704 = xor i1 %4700, %4703
  %4705 = zext i1 %4704 to i8
  store i8 %4705, i8* %BRANCH_TAKEN, align 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4707 = select i1 %4704, i64 %4693, i64 %4695
  store i64 %4707, i64* %4706, align 8
  store %struct.Memory* %loadMem_46d9ff, %struct.Memory** %MEMORY
  %loadBr_46d9ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9ff = icmp eq i8 %loadBr_46d9ff, 1
  br i1 %cmpBr_46d9ff, label %block_.L_46da70, label %block_46da05

block_46da05:                                     ; preds = %block_46d9eb
  %loadMem_46da05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 15
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RBP.i177
  %4718 = sub i64 %4717, 1620
  %4719 = load i64, i64* %PC.i175
  %4720 = add i64 %4719, 6
  store i64 %4720, i64* %PC.i175
  %4721 = inttoptr i64 %4718 to i32*
  %4722 = load i32, i32* %4721
  %4723 = zext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_46da05, %struct.Memory** %MEMORY
  %loadMem_46da0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %4729 to i64*
  %4730 = load i64, i64* %RAX.i174
  %4731 = load i64, i64* %PC.i173
  %4732 = add i64 %4731, 3
  store i64 %4732, i64* %PC.i173
  %4733 = trunc i64 %4730 to i32
  %4734 = sub i32 %4733, 20
  %4735 = zext i32 %4734 to i64
  store i64 %4735, i64* %RAX.i174, align 8
  %4736 = icmp ult i32 %4733, 20
  %4737 = zext i1 %4736 to i8
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4737, i8* %4738, align 1
  %4739 = and i32 %4734, 255
  %4740 = call i32 @llvm.ctpop.i32(i32 %4739)
  %4741 = trunc i32 %4740 to i8
  %4742 = and i8 %4741, 1
  %4743 = xor i8 %4742, 1
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4743, i8* %4744, align 1
  %4745 = xor i64 20, %4730
  %4746 = trunc i64 %4745 to i32
  %4747 = xor i32 %4746, %4734
  %4748 = lshr i32 %4747, 4
  %4749 = trunc i32 %4748 to i8
  %4750 = and i8 %4749, 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4750, i8* %4751, align 1
  %4752 = icmp eq i32 %4734, 0
  %4753 = zext i1 %4752 to i8
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4753, i8* %4754, align 1
  %4755 = lshr i32 %4734, 31
  %4756 = trunc i32 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4756, i8* %4757, align 1
  %4758 = lshr i32 %4733, 31
  %4759 = xor i32 %4755, %4758
  %4760 = add i32 %4759, %4758
  %4761 = icmp eq i32 %4760, 2
  %4762 = zext i1 %4761 to i8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4762, i8* %4763, align 1
  store %struct.Memory* %loadMem_46da0b, %struct.Memory** %MEMORY
  %loadMem_46da0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 1
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %EAX.i171 = bitcast %union.anon* %4769 to i32*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 5
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4772 to i64*
  %4773 = load i32, i32* %EAX.i171
  %4774 = zext i32 %4773 to i64
  %4775 = load i64, i64* %PC.i170
  %4776 = add i64 %4775, 3
  store i64 %4776, i64* %PC.i170
  %4777 = shl i64 %4774, 32
  %4778 = ashr exact i64 %4777, 32
  store i64 %4778, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_46da0e, %struct.Memory** %MEMORY
  %loadMem_46da11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 5
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 15
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4787 to i64*
  %4788 = load i64, i64* %RBP.i169
  %4789 = load i64, i64* %RCX.i168
  %4790 = mul i64 %4789, 4
  %4791 = add i64 %4788, -1616
  %4792 = add i64 %4791, %4790
  %4793 = load i64, i64* %PC.i167
  %4794 = add i64 %4793, 8
  store i64 %4794, i64* %PC.i167
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = sub i32 %4796, 2
  %4798 = icmp ult i32 %4796, 2
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4799, i8* %4800, align 1
  %4801 = and i32 %4797, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801)
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1
  %4807 = xor i32 %4796, 2
  %4808 = xor i32 %4807, %4797
  %4809 = lshr i32 %4808, 4
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4811, i8* %4812, align 1
  %4813 = icmp eq i32 %4797, 0
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4814, i8* %4815, align 1
  %4816 = lshr i32 %4797, 31
  %4817 = trunc i32 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4817, i8* %4818, align 1
  %4819 = lshr i32 %4796, 31
  %4820 = xor i32 %4816, %4819
  %4821 = add i32 %4820, %4819
  %4822 = icmp eq i32 %4821, 2
  %4823 = zext i1 %4822 to i8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4823, i8* %4824, align 1
  store %struct.Memory* %loadMem_46da11, %struct.Memory** %MEMORY
  %loadMem_46da19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 33
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %PC.i166
  %4829 = add i64 %4828, 87
  %4830 = load i64, i64* %PC.i166
  %4831 = add i64 %4830, 6
  %4832 = load i64, i64* %PC.i166
  %4833 = add i64 %4832, 6
  store i64 %4833, i64* %PC.i166
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4835 = load i8, i8* %4834, align 1
  store i8 %4835, i8* %BRANCH_TAKEN, align 1
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4837 = icmp ne i8 %4835, 0
  %4838 = select i1 %4837, i64 %4829, i64 %4831
  store i64 %4838, i64* %4836, align 8
  store %struct.Memory* %loadMem_46da19, %struct.Memory** %MEMORY
  %loadBr_46da19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da19 = icmp eq i8 %loadBr_46da19, 1
  br i1 %cmpBr_46da19, label %block_.L_46da70, label %block_.L_46da1f

block_.L_46da1f:                                  ; preds = %block_46da05, %block_.L_46d9ce
  %loadMem_46da1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 1
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 15
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RBP.i165
  %4849 = sub i64 %4848, 1620
  %4850 = load i64, i64* %PC.i163
  %4851 = add i64 %4850, 6
  store i64 %4851, i64* %PC.i163
  %4852 = inttoptr i64 %4849 to i32*
  %4853 = load i32, i32* %4852
  %4854 = zext i32 %4853 to i64
  store i64 %4854, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_46da1f, %struct.Memory** %MEMORY
  %loadMem_46da25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 1
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %RAX.i162
  %4862 = load i64, i64* %PC.i161
  %4863 = add i64 %4862, 3
  store i64 %4863, i64* %PC.i161
  %4864 = trunc i64 %4861 to i32
  %4865 = add i32 1, %4864
  %4866 = zext i32 %4865 to i64
  store i64 %4866, i64* %RAX.i162, align 8
  %4867 = icmp ult i32 %4865, %4864
  %4868 = icmp ult i32 %4865, 1
  %4869 = or i1 %4867, %4868
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4870, i8* %4871, align 1
  %4872 = and i32 %4865, 255
  %4873 = call i32 @llvm.ctpop.i32(i32 %4872)
  %4874 = trunc i32 %4873 to i8
  %4875 = and i8 %4874, 1
  %4876 = xor i8 %4875, 1
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4876, i8* %4877, align 1
  %4878 = xor i64 1, %4861
  %4879 = trunc i64 %4878 to i32
  %4880 = xor i32 %4879, %4865
  %4881 = lshr i32 %4880, 4
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4883, i8* %4884, align 1
  %4885 = icmp eq i32 %4865, 0
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4886, i8* %4887, align 1
  %4888 = lshr i32 %4865, 31
  %4889 = trunc i32 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4889, i8* %4890, align 1
  %4891 = lshr i32 %4864, 31
  %4892 = xor i32 %4888, %4891
  %4893 = add i32 %4892, %4888
  %4894 = icmp eq i32 %4893, 2
  %4895 = zext i1 %4894 to i8
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4895, i8* %4896, align 1
  store %struct.Memory* %loadMem_46da25, %struct.Memory** %MEMORY
  %loadMem_46da28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 33
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 1
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %4902 to i32*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 5
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %4905 to i64*
  %4906 = load i32, i32* %EAX.i159
  %4907 = zext i32 %4906 to i64
  %4908 = load i64, i64* %PC.i158
  %4909 = add i64 %4908, 3
  store i64 %4909, i64* %PC.i158
  %4910 = shl i64 %4907, 32
  %4911 = ashr exact i64 %4910, 32
  store i64 %4911, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_46da28, %struct.Memory** %MEMORY
  %loadMem_46da2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 33
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4914 to i64*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 1
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 5
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %4920 to i64*
  %4921 = load i64, i64* %RCX.i157
  %4922 = add i64 %4921, 12099168
  %4923 = load i64, i64* %PC.i155
  %4924 = add i64 %4923, 8
  store i64 %4924, i64* %PC.i155
  %4925 = inttoptr i64 %4922 to i8*
  %4926 = load i8, i8* %4925
  %4927 = zext i8 %4926 to i64
  store i64 %4927, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_46da2b, %struct.Memory** %MEMORY
  %loadMem_46da33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 33
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 1
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %4933 to i32*
  %4934 = load i32, i32* %EAX.i154
  %4935 = zext i32 %4934 to i64
  %4936 = load i64, i64* %PC.i153
  %4937 = add i64 %4936, 3
  store i64 %4937, i64* %PC.i153
  %4938 = sub i32 %4934, 3
  %4939 = icmp ult i32 %4934, 3
  %4940 = zext i1 %4939 to i8
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4940, i8* %4941, align 1
  %4942 = and i32 %4938, 255
  %4943 = call i32 @llvm.ctpop.i32(i32 %4942)
  %4944 = trunc i32 %4943 to i8
  %4945 = and i8 %4944, 1
  %4946 = xor i8 %4945, 1
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4946, i8* %4947, align 1
  %4948 = xor i64 3, %4935
  %4949 = trunc i64 %4948 to i32
  %4950 = xor i32 %4949, %4938
  %4951 = lshr i32 %4950, 4
  %4952 = trunc i32 %4951 to i8
  %4953 = and i8 %4952, 1
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4953, i8* %4954, align 1
  %4955 = icmp eq i32 %4938, 0
  %4956 = zext i1 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4956, i8* %4957, align 1
  %4958 = lshr i32 %4938, 31
  %4959 = trunc i32 %4958 to i8
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4959, i8* %4960, align 1
  %4961 = lshr i32 %4934, 31
  %4962 = xor i32 %4958, %4961
  %4963 = add i32 %4962, %4961
  %4964 = icmp eq i32 %4963, 2
  %4965 = zext i1 %4964 to i8
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4965, i8* %4966, align 1
  store %struct.Memory* %loadMem_46da33, %struct.Memory** %MEMORY
  %loadMem_46da36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 33
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4969 to i64*
  %4970 = load i64, i64* %PC.i152
  %4971 = add i64 %4970, 68
  %4972 = load i64, i64* %PC.i152
  %4973 = add i64 %4972, 6
  %4974 = load i64, i64* %PC.i152
  %4975 = add i64 %4974, 6
  store i64 %4975, i64* %PC.i152
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4977 = load i8, i8* %4976, align 1
  store i8 %4977, i8* %BRANCH_TAKEN, align 1
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4979 = icmp ne i8 %4977, 0
  %4980 = select i1 %4979, i64 %4971, i64 %4973
  store i64 %4980, i64* %4978, align 8
  store %struct.Memory* %loadMem_46da36, %struct.Memory** %MEMORY
  %loadBr_46da36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da36 = icmp eq i8 %loadBr_46da36, 1
  br i1 %cmpBr_46da36, label %block_.L_46da7a, label %block_46da3c

block_46da3c:                                     ; preds = %block_.L_46da1f
  %loadMem_46da3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i151
  %4991 = sub i64 %4990, 8
  %4992 = load i64, i64* %PC.i149
  %4993 = add i64 %4992, 4
  store i64 %4993, i64* %PC.i149
  %4994 = inttoptr i64 %4991 to i64*
  %4995 = load i64, i64* %4994
  store i64 %4995, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_46da3c, %struct.Memory** %MEMORY
  %loadMem_46da40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 5
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 15
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %RBP.i148
  %5006 = sub i64 %5005, 1620
  %5007 = load i64, i64* %PC.i146
  %5008 = add i64 %5007, 6
  store i64 %5008, i64* %PC.i146
  %5009 = inttoptr i64 %5006 to i32*
  %5010 = load i32, i32* %5009
  %5011 = zext i32 %5010 to i64
  store i64 %5011, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_46da40, %struct.Memory** %MEMORY
  %loadMem_46da46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 5
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %RCX.i145
  %5019 = load i64, i64* %PC.i144
  %5020 = add i64 %5019, 3
  store i64 %5020, i64* %PC.i144
  %5021 = trunc i64 %5018 to i32
  %5022 = add i32 1, %5021
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RCX.i145, align 8
  %5024 = icmp ult i32 %5022, %5021
  %5025 = icmp ult i32 %5022, 1
  %5026 = or i1 %5024, %5025
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5027, i8* %5028, align 1
  %5029 = and i32 %5022, 255
  %5030 = call i32 @llvm.ctpop.i32(i32 %5029)
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = xor i8 %5032, 1
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5033, i8* %5034, align 1
  %5035 = xor i64 1, %5018
  %5036 = trunc i64 %5035 to i32
  %5037 = xor i32 %5036, %5022
  %5038 = lshr i32 %5037, 4
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5040, i8* %5041, align 1
  %5042 = icmp eq i32 %5022, 0
  %5043 = zext i1 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5043, i8* %5044, align 1
  %5045 = lshr i32 %5022, 31
  %5046 = trunc i32 %5045 to i8
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5046, i8* %5047, align 1
  %5048 = lshr i32 %5021, 31
  %5049 = xor i32 %5045, %5048
  %5050 = add i32 %5049, %5045
  %5051 = icmp eq i32 %5050, 2
  %5052 = zext i1 %5051 to i8
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5052, i8* %5053, align 1
  store %struct.Memory* %loadMem_46da46, %struct.Memory** %MEMORY
  %loadMem_46da49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 5
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %ECX.i142 = bitcast %union.anon* %5059 to i32*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 7
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %5062 to i64*
  %5063 = load i32, i32* %ECX.i142
  %5064 = zext i32 %5063 to i64
  %5065 = load i64, i64* %PC.i141
  %5066 = add i64 %5065, 3
  store i64 %5066, i64* %PC.i141
  %5067 = shl i64 %5064, 32
  %5068 = ashr exact i64 %5067, 32
  store i64 %5068, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_46da49, %struct.Memory** %MEMORY
  %loadMem_46da4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 1
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 7
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %RAX.i140
  %5079 = load i64, i64* %RDX.i
  %5080 = mul i64 %5079, 4
  %5081 = add i64 %5080, %5078
  %5082 = load i64, i64* %PC.i139
  %5083 = add i64 %5082, 4
  store i64 %5083, i64* %PC.i139
  %5084 = inttoptr i64 %5081 to i32*
  %5085 = load i32, i32* %5084
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5086, align 1
  %5087 = and i32 %5085, 255
  %5088 = call i32 @llvm.ctpop.i32(i32 %5087)
  %5089 = trunc i32 %5088 to i8
  %5090 = and i8 %5089, 1
  %5091 = xor i8 %5090, 1
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5091, i8* %5092, align 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5093, align 1
  %5094 = icmp eq i32 %5085, 0
  %5095 = zext i1 %5094 to i8
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5095, i8* %5096, align 1
  %5097 = lshr i32 %5085, 31
  %5098 = trunc i32 %5097 to i8
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5098, i8* %5099, align 1
  %5100 = lshr i32 %5085, 31
  %5101 = xor i32 %5097, %5100
  %5102 = add i32 %5101, %5100
  %5103 = icmp eq i32 %5102, 2
  %5104 = zext i1 %5103 to i8
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5104, i8* %5105, align 1
  store %struct.Memory* %loadMem_46da4c, %struct.Memory** %MEMORY
  %loadMem_46da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 33
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5108 to i64*
  %5109 = load i64, i64* %PC.i138
  %5110 = add i64 %5109, 32
  %5111 = load i64, i64* %PC.i138
  %5112 = add i64 %5111, 6
  %5113 = load i64, i64* %PC.i138
  %5114 = add i64 %5113, 6
  store i64 %5114, i64* %PC.i138
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5116 = load i8, i8* %5115, align 1
  %5117 = icmp ne i8 %5116, 0
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5119 = load i8, i8* %5118, align 1
  %5120 = icmp ne i8 %5119, 0
  %5121 = xor i1 %5117, %5120
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %BRANCH_TAKEN, align 1
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5124 = select i1 %5121, i64 %5110, i64 %5112
  store i64 %5124, i64* %5123, align 8
  store %struct.Memory* %loadMem_46da50, %struct.Memory** %MEMORY
  %loadBr_46da50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da50 = icmp eq i8 %loadBr_46da50, 1
  br i1 %cmpBr_46da50, label %block_.L_46da70, label %block_46da56

block_46da56:                                     ; preds = %block_46da3c
  %loadMem_46da56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 1
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 15
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RBP.i137
  %5135 = sub i64 %5134, 1620
  %5136 = load i64, i64* %PC.i135
  %5137 = add i64 %5136, 6
  store i64 %5137, i64* %PC.i135
  %5138 = inttoptr i64 %5135 to i32*
  %5139 = load i32, i32* %5138
  %5140 = zext i32 %5139 to i64
  store i64 %5140, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_46da56, %struct.Memory** %MEMORY
  %loadMem_46da5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 1
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %5146 to i64*
  %5147 = load i64, i64* %RAX.i134
  %5148 = load i64, i64* %PC.i133
  %5149 = add i64 %5148, 3
  store i64 %5149, i64* %PC.i133
  %5150 = trunc i64 %5147 to i32
  %5151 = add i32 1, %5150
  %5152 = zext i32 %5151 to i64
  store i64 %5152, i64* %RAX.i134, align 8
  %5153 = icmp ult i32 %5151, %5150
  %5154 = icmp ult i32 %5151, 1
  %5155 = or i1 %5153, %5154
  %5156 = zext i1 %5155 to i8
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5156, i8* %5157, align 1
  %5158 = and i32 %5151, 255
  %5159 = call i32 @llvm.ctpop.i32(i32 %5158)
  %5160 = trunc i32 %5159 to i8
  %5161 = and i8 %5160, 1
  %5162 = xor i8 %5161, 1
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5162, i8* %5163, align 1
  %5164 = xor i64 1, %5147
  %5165 = trunc i64 %5164 to i32
  %5166 = xor i32 %5165, %5151
  %5167 = lshr i32 %5166, 4
  %5168 = trunc i32 %5167 to i8
  %5169 = and i8 %5168, 1
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5169, i8* %5170, align 1
  %5171 = icmp eq i32 %5151, 0
  %5172 = zext i1 %5171 to i8
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5172, i8* %5173, align 1
  %5174 = lshr i32 %5151, 31
  %5175 = trunc i32 %5174 to i8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5175, i8* %5176, align 1
  %5177 = lshr i32 %5150, 31
  %5178 = xor i32 %5174, %5177
  %5179 = add i32 %5178, %5174
  %5180 = icmp eq i32 %5179, 2
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5181, i8* %5182, align 1
  store %struct.Memory* %loadMem_46da5c, %struct.Memory** %MEMORY
  %loadMem_46da5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 33
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 1
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %5188 to i32*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 5
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %5191 to i64*
  %5192 = load i32, i32* %EAX.i131
  %5193 = zext i32 %5192 to i64
  %5194 = load i64, i64* %PC.i130
  %5195 = add i64 %5194, 3
  store i64 %5195, i64* %PC.i130
  %5196 = shl i64 %5193, 32
  %5197 = ashr exact i64 %5196, 32
  store i64 %5197, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_46da5f, %struct.Memory** %MEMORY
  %loadMem_46da62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 33
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5200 to i64*
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 5
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 15
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RBP.i129
  %5208 = load i64, i64* %RCX.i128
  %5209 = mul i64 %5208, 4
  %5210 = add i64 %5207, -1616
  %5211 = add i64 %5210, %5209
  %5212 = load i64, i64* %PC.i127
  %5213 = add i64 %5212, 8
  store i64 %5213, i64* %PC.i127
  %5214 = inttoptr i64 %5211 to i32*
  %5215 = load i32, i32* %5214
  %5216 = sub i32 %5215, 2
  %5217 = icmp ult i32 %5215, 2
  %5218 = zext i1 %5217 to i8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5218, i8* %5219, align 1
  %5220 = and i32 %5216, 255
  %5221 = call i32 @llvm.ctpop.i32(i32 %5220)
  %5222 = trunc i32 %5221 to i8
  %5223 = and i8 %5222, 1
  %5224 = xor i8 %5223, 1
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5224, i8* %5225, align 1
  %5226 = xor i32 %5215, 2
  %5227 = xor i32 %5226, %5216
  %5228 = lshr i32 %5227, 4
  %5229 = trunc i32 %5228 to i8
  %5230 = and i8 %5229, 1
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5230, i8* %5231, align 1
  %5232 = icmp eq i32 %5216, 0
  %5233 = zext i1 %5232 to i8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5233, i8* %5234, align 1
  %5235 = lshr i32 %5216, 31
  %5236 = trunc i32 %5235 to i8
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5236, i8* %5237, align 1
  %5238 = lshr i32 %5215, 31
  %5239 = xor i32 %5235, %5238
  %5240 = add i32 %5239, %5238
  %5241 = icmp eq i32 %5240, 2
  %5242 = zext i1 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5242, i8* %5243, align 1
  store %struct.Memory* %loadMem_46da62, %struct.Memory** %MEMORY
  %loadMem_46da6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 33
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5246 to i64*
  %5247 = load i64, i64* %PC.i126
  %5248 = add i64 %5247, 16
  %5249 = load i64, i64* %PC.i126
  %5250 = add i64 %5249, 6
  %5251 = load i64, i64* %PC.i126
  %5252 = add i64 %5251, 6
  store i64 %5252, i64* %PC.i126
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5254 = load i8, i8* %5253, align 1
  %5255 = icmp eq i8 %5254, 0
  %5256 = zext i1 %5255 to i8
  store i8 %5256, i8* %BRANCH_TAKEN, align 1
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5258 = select i1 %5255, i64 %5248, i64 %5250
  store i64 %5258, i64* %5257, align 8
  store %struct.Memory* %loadMem_46da6a, %struct.Memory** %MEMORY
  %loadBr_46da6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da6a = icmp eq i8 %loadBr_46da6a, 1
  br i1 %cmpBr_46da6a, label %block_.L_46da7a, label %block_.L_46da70

block_.L_46da70:                                  ; preds = %block_46da56, %block_46da3c, %block_46da05, %block_46d9eb, %block_46d9b4, %block_46d99a, %block_46d963, %block_46d949, %block_.L_46d917
  %loadMem_46da70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 33
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 15
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RBP.i125
  %5266 = sub i64 %5265, 1632
  %5267 = load i64, i64* %PC.i124
  %5268 = add i64 %5267, 10
  store i64 %5268, i64* %PC.i124
  %5269 = inttoptr i64 %5266 to i32*
  store i32 1, i32* %5269
  store %struct.Memory* %loadMem_46da70, %struct.Memory** %MEMORY
  br label %block_.L_46da7a

block_.L_46da7a:                                  ; preds = %block_.L_46da70, %block_46da56, %block_.L_46da1f
  %loadMem_46da7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 15
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RBP.i123
  %5277 = sub i64 %5276, 1628
  %5278 = load i64, i64* %PC.i122
  %5279 = add i64 %5278, 7
  store i64 %5279, i64* %PC.i122
  %5280 = inttoptr i64 %5277 to i32*
  %5281 = load i32, i32* %5280
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5282, align 1
  %5283 = and i32 %5281, 255
  %5284 = call i32 @llvm.ctpop.i32(i32 %5283)
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = xor i8 %5286, 1
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5287, i8* %5288, align 1
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5289, align 1
  %5290 = icmp eq i32 %5281, 0
  %5291 = zext i1 %5290 to i8
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5291, i8* %5292, align 1
  %5293 = lshr i32 %5281, 31
  %5294 = trunc i32 %5293 to i8
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5294, i8* %5295, align 1
  %5296 = lshr i32 %5281, 31
  %5297 = xor i32 %5293, %5296
  %5298 = add i32 %5297, %5296
  %5299 = icmp eq i32 %5298, 2
  %5300 = zext i1 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5300, i8* %5301, align 1
  store %struct.Memory* %loadMem_46da7a, %struct.Memory** %MEMORY
  %loadMem_46da81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %PC.i121
  %5306 = add i64 %5305, 49
  %5307 = load i64, i64* %PC.i121
  %5308 = add i64 %5307, 6
  %5309 = load i64, i64* %PC.i121
  %5310 = add i64 %5309, 6
  store i64 %5310, i64* %PC.i121
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5312 = load i8, i8* %5311, align 1
  store i8 %5312, i8* %BRANCH_TAKEN, align 1
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5314 = icmp ne i8 %5312, 0
  %5315 = select i1 %5314, i64 %5306, i64 %5308
  store i64 %5315, i64* %5313, align 8
  store %struct.Memory* %loadMem_46da81, %struct.Memory** %MEMORY
  %loadBr_46da81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da81 = icmp eq i8 %loadBr_46da81, 1
  br i1 %cmpBr_46da81, label %block_.L_46dab2, label %block_46da87

block_46da87:                                     ; preds = %block_.L_46da7a
  %loadMem_46da87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 33
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5318 to i64*
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 15
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %5321 to i64*
  %5322 = load i64, i64* %RBP.i120
  %5323 = sub i64 %5322, 1632
  %5324 = load i64, i64* %PC.i119
  %5325 = add i64 %5324, 7
  store i64 %5325, i64* %PC.i119
  %5326 = inttoptr i64 %5323 to i32*
  %5327 = load i32, i32* %5326
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5328, align 1
  %5329 = and i32 %5327, 255
  %5330 = call i32 @llvm.ctpop.i32(i32 %5329)
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5333, i8* %5334, align 1
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5335, align 1
  %5336 = icmp eq i32 %5327, 0
  %5337 = zext i1 %5336 to i8
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5337, i8* %5338, align 1
  %5339 = lshr i32 %5327, 31
  %5340 = trunc i32 %5339 to i8
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5340, i8* %5341, align 1
  %5342 = lshr i32 %5327, 31
  %5343 = xor i32 %5339, %5342
  %5344 = add i32 %5343, %5342
  %5345 = icmp eq i32 %5344, 2
  %5346 = zext i1 %5345 to i8
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5346, i8* %5347, align 1
  store %struct.Memory* %loadMem_46da87, %struct.Memory** %MEMORY
  %loadMem_46da8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5350 to i64*
  %5351 = load i64, i64* %PC.i118
  %5352 = add i64 %5351, 21
  %5353 = load i64, i64* %PC.i118
  %5354 = add i64 %5353, 6
  %5355 = load i64, i64* %PC.i118
  %5356 = add i64 %5355, 6
  store i64 %5356, i64* %PC.i118
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5358 = load i8, i8* %5357, align 1
  store i8 %5358, i8* %BRANCH_TAKEN, align 1
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5360 = icmp ne i8 %5358, 0
  %5361 = select i1 %5360, i64 %5352, i64 %5354
  store i64 %5361, i64* %5359, align 8
  store %struct.Memory* %loadMem_46da8e, %struct.Memory** %MEMORY
  %loadBr_46da8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da8e = icmp eq i8 %loadBr_46da8e, 1
  br i1 %cmpBr_46da8e, label %block_.L_46daa3, label %block_46da94

block_46da94:                                     ; preds = %block_46da87
  %loadMem_46da94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 15
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %RBP.i117
  %5369 = sub i64 %5368, 1636
  %5370 = load i64, i64* %PC.i116
  %5371 = add i64 %5370, 10
  store i64 %5371, i64* %PC.i116
  %5372 = inttoptr i64 %5369 to i32*
  store i32 3, i32* %5372
  store %struct.Memory* %loadMem_46da94, %struct.Memory** %MEMORY
  %loadMem_46da9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 33
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5375 to i64*
  %5376 = load i64, i64* %PC.i115
  %5377 = add i64 %5376, 15
  %5378 = load i64, i64* %PC.i115
  %5379 = add i64 %5378, 5
  store i64 %5379, i64* %PC.i115
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5377, i64* %5380, align 8
  store %struct.Memory* %loadMem_46da9e, %struct.Memory** %MEMORY
  br label %block_.L_46daad

block_.L_46daa3:                                  ; preds = %block_46da87
  %loadMem_46daa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 33
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i114
  %5388 = sub i64 %5387, 1636
  %5389 = load i64, i64* %PC.i113
  %5390 = add i64 %5389, 10
  store i64 %5390, i64* %PC.i113
  %5391 = inttoptr i64 %5388 to i32*
  store i32 1, i32* %5391
  store %struct.Memory* %loadMem_46daa3, %struct.Memory** %MEMORY
  br label %block_.L_46daad

block_.L_46daad:                                  ; preds = %block_.L_46daa3, %block_46da94
  %loadMem_46daad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %PC.i112
  %5396 = add i64 %5395, 33
  %5397 = load i64, i64* %PC.i112
  %5398 = add i64 %5397, 5
  store i64 %5398, i64* %PC.i112
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5396, i64* %5399, align 8
  store %struct.Memory* %loadMem_46daad, %struct.Memory** %MEMORY
  br label %block_.L_46dace

block_.L_46dab2:                                  ; preds = %block_.L_46da7a
  %loadMem_46dab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 15
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %RBP.i111
  %5407 = sub i64 %5406, 1632
  %5408 = load i64, i64* %PC.i110
  %5409 = add i64 %5408, 7
  store i64 %5409, i64* %PC.i110
  %5410 = inttoptr i64 %5407 to i32*
  %5411 = load i32, i32* %5410
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5412, align 1
  %5413 = and i32 %5411, 255
  %5414 = call i32 @llvm.ctpop.i32(i32 %5413)
  %5415 = trunc i32 %5414 to i8
  %5416 = and i8 %5415, 1
  %5417 = xor i8 %5416, 1
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5417, i8* %5418, align 1
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5419, align 1
  %5420 = icmp eq i32 %5411, 0
  %5421 = zext i1 %5420 to i8
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5421, i8* %5422, align 1
  %5423 = lshr i32 %5411, 31
  %5424 = trunc i32 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5424, i8* %5425, align 1
  %5426 = lshr i32 %5411, 31
  %5427 = xor i32 %5423, %5426
  %5428 = add i32 %5427, %5426
  %5429 = icmp eq i32 %5428, 2
  %5430 = zext i1 %5429 to i8
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5430, i8* %5431, align 1
  store %struct.Memory* %loadMem_46dab2, %struct.Memory** %MEMORY
  %loadMem_46dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 33
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5434 to i64*
  %5435 = load i64, i64* %PC.i109
  %5436 = add i64 %5435, 16
  %5437 = load i64, i64* %PC.i109
  %5438 = add i64 %5437, 6
  %5439 = load i64, i64* %PC.i109
  %5440 = add i64 %5439, 6
  store i64 %5440, i64* %PC.i109
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5442 = load i8, i8* %5441, align 1
  store i8 %5442, i8* %BRANCH_TAKEN, align 1
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5444 = icmp ne i8 %5442, 0
  %5445 = select i1 %5444, i64 %5436, i64 %5438
  store i64 %5445, i64* %5443, align 8
  store %struct.Memory* %loadMem_46dab9, %struct.Memory** %MEMORY
  %loadBr_46dab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dab9 = icmp eq i8 %loadBr_46dab9, 1
  br i1 %cmpBr_46dab9, label %block_.L_46dac9, label %block_46dabf

block_46dabf:                                     ; preds = %block_.L_46dab2
  %loadMem_46dabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5448 to i64*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 15
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %5451 to i64*
  %5452 = load i64, i64* %RBP.i108
  %5453 = sub i64 %5452, 1636
  %5454 = load i64, i64* %PC.i107
  %5455 = add i64 %5454, 10
  store i64 %5455, i64* %PC.i107
  %5456 = inttoptr i64 %5453 to i32*
  store i32 2, i32* %5456
  store %struct.Memory* %loadMem_46dabf, %struct.Memory** %MEMORY
  br label %block_.L_46dac9

block_.L_46dac9:                                  ; preds = %block_46dabf, %block_.L_46dab2
  %loadMem_46dac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %PC.i106
  %5461 = add i64 %5460, 5
  %5462 = load i64, i64* %PC.i106
  %5463 = add i64 %5462, 5
  store i64 %5463, i64* %PC.i106
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5461, i64* %5464, align 8
  store %struct.Memory* %loadMem_46dac9, %struct.Memory** %MEMORY
  br label %block_.L_46dace

block_.L_46dace:                                  ; preds = %block_.L_46dac9, %block_.L_46daad
  %loadMem_46dace = load %struct.Memory*, %struct.Memory** %MEMORY
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 33
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RBP.i105
  %5472 = sub i64 %5471, 1636
  %5473 = load i64, i64* %PC.i104
  %5474 = add i64 %5473, 7
  store i64 %5474, i64* %PC.i104
  %5475 = inttoptr i64 %5472 to i32*
  %5476 = load i32, i32* %5475
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5477, align 1
  %5478 = and i32 %5476, 255
  %5479 = call i32 @llvm.ctpop.i32(i32 %5478)
  %5480 = trunc i32 %5479 to i8
  %5481 = and i8 %5480, 1
  %5482 = xor i8 %5481, 1
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5482, i8* %5483, align 1
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5484, align 1
  %5485 = icmp eq i32 %5476, 0
  %5486 = zext i1 %5485 to i8
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5486, i8* %5487, align 1
  %5488 = lshr i32 %5476, 31
  %5489 = trunc i32 %5488 to i8
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5489, i8* %5490, align 1
  %5491 = lshr i32 %5476, 31
  %5492 = xor i32 %5488, %5491
  %5493 = add i32 %5492, %5491
  %5494 = icmp eq i32 %5493, 2
  %5495 = zext i1 %5494 to i8
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5495, i8* %5496, align 1
  store %struct.Memory* %loadMem_46dace, %struct.Memory** %MEMORY
  %loadMem_46dad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5499 to i64*
  %5500 = load i64, i64* %PC.i103
  %5501 = add i64 %5500, 62
  %5502 = load i64, i64* %PC.i103
  %5503 = add i64 %5502, 6
  %5504 = load i64, i64* %PC.i103
  %5505 = add i64 %5504, 6
  store i64 %5505, i64* %PC.i103
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5507 = load i8, i8* %5506, align 1
  store i8 %5507, i8* %BRANCH_TAKEN, align 1
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5509 = icmp ne i8 %5507, 0
  %5510 = select i1 %5509, i64 %5501, i64 %5503
  store i64 %5510, i64* %5508, align 8
  store %struct.Memory* %loadMem_46dad5, %struct.Memory** %MEMORY
  %loadBr_46dad5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dad5 = icmp eq i8 %loadBr_46dad5, 1
  br i1 %cmpBr_46dad5, label %block_.L_46db13, label %block_46dadb

block_46dadb:                                     ; preds = %block_.L_46dace
  %loadMem_46dadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 33
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 1
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 15
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %RBP.i102
  %5521 = sub i64 %5520, 1636
  %5522 = load i64, i64* %PC.i100
  %5523 = add i64 %5522, 6
  store i64 %5523, i64* %PC.i100
  %5524 = inttoptr i64 %5521 to i32*
  %5525 = load i32, i32* %5524
  %5526 = zext i32 %5525 to i64
  store i64 %5526, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_46dadb, %struct.Memory** %MEMORY
  %loadMem_46dae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 33
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 5
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 15
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5535 to i64*
  %5536 = load i64, i64* %RBP.i99
  %5537 = sub i64 %5536, 1620
  %5538 = load i64, i64* %PC.i97
  %5539 = add i64 %5538, 7
  store i64 %5539, i64* %PC.i97
  %5540 = inttoptr i64 %5537 to i32*
  %5541 = load i32, i32* %5540
  %5542 = sext i32 %5541 to i64
  store i64 %5542, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_46dae1, %struct.Memory** %MEMORY
  %loadMem_46dae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 1
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %5548 to i32*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 5
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 15
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %5554 to i64*
  %5555 = load i32, i32* %EAX.i94
  %5556 = zext i32 %5555 to i64
  %5557 = load i64, i64* %RBP.i96
  %5558 = load i64, i64* %RCX.i95
  %5559 = mul i64 %5558, 4
  %5560 = add i64 %5557, -1616
  %5561 = add i64 %5560, %5559
  %5562 = load i64, i64* %PC.i93
  %5563 = add i64 %5562, 7
  store i64 %5563, i64* %PC.i93
  %5564 = inttoptr i64 %5561 to i32*
  %5565 = load i32, i32* %5564
  %5566 = sub i32 %5555, %5565
  %5567 = icmp ult i32 %5555, %5565
  %5568 = zext i1 %5567 to i8
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5568, i8* %5569, align 1
  %5570 = and i32 %5566, 255
  %5571 = call i32 @llvm.ctpop.i32(i32 %5570)
  %5572 = trunc i32 %5571 to i8
  %5573 = and i8 %5572, 1
  %5574 = xor i8 %5573, 1
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5574, i8* %5575, align 1
  %5576 = xor i32 %5565, %5555
  %5577 = xor i32 %5576, %5566
  %5578 = lshr i32 %5577, 4
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5580, i8* %5581, align 1
  %5582 = icmp eq i32 %5566, 0
  %5583 = zext i1 %5582 to i8
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5583, i8* %5584, align 1
  %5585 = lshr i32 %5566, 31
  %5586 = trunc i32 %5585 to i8
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5586, i8* %5587, align 1
  %5588 = lshr i32 %5555, 31
  %5589 = lshr i32 %5565, 31
  %5590 = xor i32 %5589, %5588
  %5591 = xor i32 %5585, %5588
  %5592 = add i32 %5591, %5590
  %5593 = icmp eq i32 %5592, 2
  %5594 = zext i1 %5593 to i8
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5594, i8* %5595, align 1
  store %struct.Memory* %loadMem_46dae8, %struct.Memory** %MEMORY
  %loadMem_46daef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 33
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %PC.i92
  %5600 = add i64 %5599, 36
  %5601 = load i64, i64* %PC.i92
  %5602 = add i64 %5601, 6
  %5603 = load i64, i64* %PC.i92
  %5604 = add i64 %5603, 6
  store i64 %5604, i64* %PC.i92
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5606 = load i8, i8* %5605, align 1
  store i8 %5606, i8* %BRANCH_TAKEN, align 1
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5608 = icmp ne i8 %5606, 0
  %5609 = select i1 %5608, i64 %5600, i64 %5602
  store i64 %5609, i64* %5607, align 8
  store %struct.Memory* %loadMem_46daef, %struct.Memory** %MEMORY
  %loadBr_46daef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46daef = icmp eq i8 %loadBr_46daef, 1
  br i1 %cmpBr_46daef, label %block_.L_46db13, label %block_46daf5

block_46daf5:                                     ; preds = %block_46dadb
  %loadMem_46daf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 33
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 15
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %RBP.i91
  %5617 = sub i64 %5616, 1624
  %5618 = load i64, i64* %PC.i90
  %5619 = add i64 %5618, 10
  store i64 %5619, i64* %PC.i90
  %5620 = inttoptr i64 %5617 to i32*
  store i32 1, i32* %5620
  store %struct.Memory* %loadMem_46daf5, %struct.Memory** %MEMORY
  %loadMem_46daff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 33
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 1
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 15
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %5629 to i64*
  %5630 = load i64, i64* %RBP.i89
  %5631 = sub i64 %5630, 1636
  %5632 = load i64, i64* %PC.i87
  %5633 = add i64 %5632, 6
  store i64 %5633, i64* %PC.i87
  %5634 = inttoptr i64 %5631 to i32*
  %5635 = load i32, i32* %5634
  %5636 = zext i32 %5635 to i64
  store i64 %5636, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_46daff, %struct.Memory** %MEMORY
  %loadMem_46db05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5638 = getelementptr inbounds %struct.GPR, %struct.GPR* %5637, i32 0, i32 33
  %5639 = getelementptr inbounds %struct.Reg, %struct.Reg* %5638, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5639 to i64*
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 5
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %5642 to i64*
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 15
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %5645 to i64*
  %5646 = load i64, i64* %RBP.i86
  %5647 = sub i64 %5646, 1620
  %5648 = load i64, i64* %PC.i84
  %5649 = add i64 %5648, 7
  store i64 %5649, i64* %PC.i84
  %5650 = inttoptr i64 %5647 to i32*
  %5651 = load i32, i32* %5650
  %5652 = sext i32 %5651 to i64
  store i64 %5652, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_46db05, %struct.Memory** %MEMORY
  %loadMem_46db0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 33
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5655 to i64*
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 1
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %5658 to i32*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 5
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 15
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %5664 to i64*
  %5665 = load i64, i64* %RBP.i83
  %5666 = load i64, i64* %RCX.i82
  %5667 = mul i64 %5666, 4
  %5668 = add i64 %5665, -1616
  %5669 = add i64 %5668, %5667
  %5670 = load i32, i32* %EAX.i81
  %5671 = zext i32 %5670 to i64
  %5672 = load i64, i64* %PC.i80
  %5673 = add i64 %5672, 7
  store i64 %5673, i64* %PC.i80
  %5674 = inttoptr i64 %5669 to i32*
  store i32 %5670, i32* %5674
  store %struct.Memory* %loadMem_46db0c, %struct.Memory** %MEMORY
  br label %block_.L_46db13

block_.L_46db13:                                  ; preds = %block_46daf5, %block_46dadb, %block_.L_46dace
  %loadMem_46db13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 33
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %PC.i79
  %5679 = add i64 %5678, 5
  %5680 = load i64, i64* %PC.i79
  %5681 = add i64 %5680, 5
  store i64 %5681, i64* %PC.i79
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5679, i64* %5682, align 8
  store %struct.Memory* %loadMem_46db13, %struct.Memory** %MEMORY
  br label %block_.L_46db18

block_.L_46db18:                                  ; preds = %block_.L_46db13, %block_.L_46d793
  %loadMem_46db18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5685 to i64*
  %5686 = load i64, i64* %PC.i78
  %5687 = add i64 %5686, 5
  %5688 = load i64, i64* %PC.i78
  %5689 = add i64 %5688, 5
  store i64 %5689, i64* %PC.i78
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5687, i64* %5690, align 8
  store %struct.Memory* %loadMem_46db18, %struct.Memory** %MEMORY
  br label %block_.L_46db1d

block_.L_46db1d:                                  ; preds = %block_.L_46db18, %block_.L_46d6b2
  %loadMem_46db1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 33
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 1
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 15
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %5699 to i64*
  %5700 = load i64, i64* %RBP.i77
  %5701 = sub i64 %5700, 1620
  %5702 = load i64, i64* %PC.i75
  %5703 = add i64 %5702, 6
  store i64 %5703, i64* %PC.i75
  %5704 = inttoptr i64 %5701 to i32*
  %5705 = load i32, i32* %5704
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_46db1d, %struct.Memory** %MEMORY
  %loadMem_46db23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 33
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 1
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %5712 to i64*
  %5713 = load i64, i64* %RAX.i74
  %5714 = load i64, i64* %PC.i73
  %5715 = add i64 %5714, 3
  store i64 %5715, i64* %PC.i73
  %5716 = trunc i64 %5713 to i32
  %5717 = add i32 1, %5716
  %5718 = zext i32 %5717 to i64
  store i64 %5718, i64* %RAX.i74, align 8
  %5719 = icmp ult i32 %5717, %5716
  %5720 = icmp ult i32 %5717, 1
  %5721 = or i1 %5719, %5720
  %5722 = zext i1 %5721 to i8
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5722, i8* %5723, align 1
  %5724 = and i32 %5717, 255
  %5725 = call i32 @llvm.ctpop.i32(i32 %5724)
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  %5728 = xor i8 %5727, 1
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5728, i8* %5729, align 1
  %5730 = xor i64 1, %5713
  %5731 = trunc i64 %5730 to i32
  %5732 = xor i32 %5731, %5717
  %5733 = lshr i32 %5732, 4
  %5734 = trunc i32 %5733 to i8
  %5735 = and i8 %5734, 1
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5735, i8* %5736, align 1
  %5737 = icmp eq i32 %5717, 0
  %5738 = zext i1 %5737 to i8
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5738, i8* %5739, align 1
  %5740 = lshr i32 %5717, 31
  %5741 = trunc i32 %5740 to i8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5741, i8* %5742, align 1
  %5743 = lshr i32 %5716, 31
  %5744 = xor i32 %5740, %5743
  %5745 = add i32 %5744, %5740
  %5746 = icmp eq i32 %5745, 2
  %5747 = zext i1 %5746 to i8
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5747, i8* %5748, align 1
  store %struct.Memory* %loadMem_46db23, %struct.Memory** %MEMORY
  %loadMem_46db26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 1
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %5754 to i32*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 15
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %5757 to i64*
  %5758 = load i64, i64* %RBP.i72
  %5759 = sub i64 %5758, 1620
  %5760 = load i32, i32* %EAX.i71
  %5761 = zext i32 %5760 to i64
  %5762 = load i64, i64* %PC.i70
  %5763 = add i64 %5762, 6
  store i64 %5763, i64* %PC.i70
  %5764 = inttoptr i64 %5759 to i32*
  store i32 %5760, i32* %5764
  store %struct.Memory* %loadMem_46db26, %struct.Memory** %MEMORY
  %loadMem_46db2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %PC.i69
  %5769 = add i64 %5768, -1258
  %5770 = load i64, i64* %PC.i69
  %5771 = add i64 %5770, 5
  store i64 %5771, i64* %PC.i69
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5769, i64* %5772, align 8
  store %struct.Memory* %loadMem_46db2c, %struct.Memory** %MEMORY
  br label %block_.L_46d642

block_.L_46db31:                                  ; preds = %block_.L_46d642
  %loadMem_46db31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %PC.i68
  %5777 = add i64 %5776, -1296
  %5778 = load i64, i64* %PC.i68
  %5779 = add i64 %5778, 5
  store i64 %5779, i64* %PC.i68
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5777, i64* %5780, align 8
  store %struct.Memory* %loadMem_46db31, %struct.Memory** %MEMORY
  br label %block_.L_46d621

block_.L_46db36:                                  ; preds = %block_.L_46d621
  %loadMem_46db36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 33
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 15
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RBP.i67
  %5788 = sub i64 %5787, 1620
  %5789 = load i64, i64* %PC.i66
  %5790 = add i64 %5789, 10
  store i64 %5790, i64* %PC.i66
  %5791 = inttoptr i64 %5788 to i32*
  store i32 21, i32* %5791
  store %struct.Memory* %loadMem_46db36, %struct.Memory** %MEMORY
  br label %block_.L_46db40

block_.L_46db40:                                  ; preds = %block_.L_46dbd5, %block_.L_46db36
  %loadMem_46db40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 33
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5794 to i64*
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 15
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5797 to i64*
  %5798 = load i64, i64* %RBP.i65
  %5799 = sub i64 %5798, 1620
  %5800 = load i64, i64* %PC.i64
  %5801 = add i64 %5800, 10
  store i64 %5801, i64* %PC.i64
  %5802 = inttoptr i64 %5799 to i32*
  %5803 = load i32, i32* %5802
  %5804 = sub i32 %5803, 400
  %5805 = icmp ult i32 %5803, 400
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5806, i8* %5807, align 1
  %5808 = and i32 %5804, 255
  %5809 = call i32 @llvm.ctpop.i32(i32 %5808)
  %5810 = trunc i32 %5809 to i8
  %5811 = and i8 %5810, 1
  %5812 = xor i8 %5811, 1
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5812, i8* %5813, align 1
  %5814 = xor i32 %5803, 400
  %5815 = xor i32 %5814, %5804
  %5816 = lshr i32 %5815, 4
  %5817 = trunc i32 %5816 to i8
  %5818 = and i8 %5817, 1
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5818, i8* %5819, align 1
  %5820 = icmp eq i32 %5804, 0
  %5821 = zext i1 %5820 to i8
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5821, i8* %5822, align 1
  %5823 = lshr i32 %5804, 31
  %5824 = trunc i32 %5823 to i8
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5824, i8* %5825, align 1
  %5826 = lshr i32 %5803, 31
  %5827 = xor i32 %5823, %5826
  %5828 = add i32 %5827, %5826
  %5829 = icmp eq i32 %5828, 2
  %5830 = zext i1 %5829 to i8
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5830, i8* %5831, align 1
  store %struct.Memory* %loadMem_46db40, %struct.Memory** %MEMORY
  %loadMem_46db4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5834 to i64*
  %5835 = load i64, i64* %PC.i63
  %5836 = add i64 %5835, 159
  %5837 = load i64, i64* %PC.i63
  %5838 = add i64 %5837, 6
  %5839 = load i64, i64* %PC.i63
  %5840 = add i64 %5839, 6
  store i64 %5840, i64* %PC.i63
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5842 = load i8, i8* %5841, align 1
  %5843 = icmp ne i8 %5842, 0
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5845 = load i8, i8* %5844, align 1
  %5846 = icmp ne i8 %5845, 0
  %5847 = xor i1 %5843, %5846
  %5848 = xor i1 %5847, true
  %5849 = zext i1 %5848 to i8
  store i8 %5849, i8* %BRANCH_TAKEN, align 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5851 = select i1 %5847, i64 %5838, i64 %5836
  store i64 %5851, i64* %5850, align 8
  store %struct.Memory* %loadMem_46db4a, %struct.Memory** %MEMORY
  %loadBr_46db4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db4a = icmp eq i8 %loadBr_46db4a, 1
  br i1 %cmpBr_46db4a, label %block_.L_46dbe9, label %block_46db50

block_46db50:                                     ; preds = %block_.L_46db40
  %loadMem_46db50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 33
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5854 to i64*
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 1
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5857 to i64*
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 15
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5860 to i64*
  %5861 = load i64, i64* %RBP.i62
  %5862 = sub i64 %5861, 1620
  %5863 = load i64, i64* %PC.i60
  %5864 = add i64 %5863, 7
  store i64 %5864, i64* %PC.i60
  %5865 = inttoptr i64 %5862 to i32*
  %5866 = load i32, i32* %5865
  %5867 = sext i32 %5866 to i64
  store i64 %5867, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_46db50, %struct.Memory** %MEMORY
  %loadMem_46db57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 33
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 1
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 5
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %5876 to i64*
  %5877 = load i64, i64* %RAX.i58
  %5878 = add i64 %5877, 12099168
  %5879 = load i64, i64* %PC.i57
  %5880 = add i64 %5879, 8
  store i64 %5880, i64* %PC.i57
  %5881 = inttoptr i64 %5878 to i8*
  %5882 = load i8, i8* %5881
  %5883 = zext i8 %5882 to i64
  store i64 %5883, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_46db57, %struct.Memory** %MEMORY
  %loadMem_46db5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 33
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5886 to i64*
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 5
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5889 to i32*
  %5890 = load i32, i32* %ECX.i
  %5891 = zext i32 %5890 to i64
  %5892 = load i64, i64* %PC.i56
  %5893 = add i64 %5892, 3
  store i64 %5893, i64* %PC.i56
  %5894 = sub i32 %5890, 3
  %5895 = icmp ult i32 %5890, 3
  %5896 = zext i1 %5895 to i8
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5896, i8* %5897, align 1
  %5898 = and i32 %5894, 255
  %5899 = call i32 @llvm.ctpop.i32(i32 %5898)
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  %5902 = xor i8 %5901, 1
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5902, i8* %5903, align 1
  %5904 = xor i64 3, %5891
  %5905 = trunc i64 %5904 to i32
  %5906 = xor i32 %5905, %5894
  %5907 = lshr i32 %5906, 4
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5909, i8* %5910, align 1
  %5911 = icmp eq i32 %5894, 0
  %5912 = zext i1 %5911 to i8
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5912, i8* %5913, align 1
  %5914 = lshr i32 %5894, 31
  %5915 = trunc i32 %5914 to i8
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5915, i8* %5916, align 1
  %5917 = lshr i32 %5890, 31
  %5918 = xor i32 %5914, %5917
  %5919 = add i32 %5918, %5917
  %5920 = icmp eq i32 %5919, 2
  %5921 = zext i1 %5920 to i8
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5921, i8* %5922, align 1
  store %struct.Memory* %loadMem_46db5f, %struct.Memory** %MEMORY
  %loadMem_46db62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 33
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5925 to i64*
  %5926 = load i64, i64* %PC.i55
  %5927 = add i64 %5926, 27
  %5928 = load i64, i64* %PC.i55
  %5929 = add i64 %5928, 6
  %5930 = load i64, i64* %PC.i55
  %5931 = add i64 %5930, 6
  store i64 %5931, i64* %PC.i55
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5933 = load i8, i8* %5932, align 1
  store i8 %5933, i8* %BRANCH_TAKEN, align 1
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5935 = icmp ne i8 %5933, 0
  %5936 = select i1 %5935, i64 %5927, i64 %5929
  store i64 %5936, i64* %5934, align 8
  store %struct.Memory* %loadMem_46db62, %struct.Memory** %MEMORY
  %loadBr_46db62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db62 = icmp eq i8 %loadBr_46db62, 1
  br i1 %cmpBr_46db62, label %block_.L_46db7d, label %block_46db68

block_46db68:                                     ; preds = %block_46db50
  %loadMem_46db68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5938 = getelementptr inbounds %struct.GPR, %struct.GPR* %5937, i32 0, i32 33
  %5939 = getelementptr inbounds %struct.Reg, %struct.Reg* %5938, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5939 to i64*
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 1
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 15
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %5945 to i64*
  %5946 = load i64, i64* %RBP.i54
  %5947 = sub i64 %5946, 8
  %5948 = load i64, i64* %PC.i52
  %5949 = add i64 %5948, 4
  store i64 %5949, i64* %PC.i52
  %5950 = inttoptr i64 %5947 to i64*
  %5951 = load i64, i64* %5950
  store i64 %5951, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_46db68, %struct.Memory** %MEMORY
  %loadMem_46db6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 33
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5954 to i64*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 5
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %5957 to i64*
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 15
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5960 to i64*
  %5961 = load i64, i64* %RBP.i51
  %5962 = sub i64 %5961, 1620
  %5963 = load i64, i64* %PC.i49
  %5964 = add i64 %5963, 7
  store i64 %5964, i64* %PC.i49
  %5965 = inttoptr i64 %5962 to i32*
  %5966 = load i32, i32* %5965
  %5967 = sext i32 %5966 to i64
  store i64 %5967, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_46db6c, %struct.Memory** %MEMORY
  %loadMem_46db73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 1
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 5
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %5976 to i64*
  %5977 = load i64, i64* %RAX.i47
  %5978 = load i64, i64* %RCX.i48
  %5979 = mul i64 %5978, 4
  %5980 = add i64 %5979, %5977
  %5981 = load i64, i64* %PC.i46
  %5982 = add i64 %5981, 4
  store i64 %5982, i64* %PC.i46
  %5983 = inttoptr i64 %5980 to i32*
  %5984 = load i32, i32* %5983
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5985, align 1
  %5986 = and i32 %5984, 255
  %5987 = call i32 @llvm.ctpop.i32(i32 %5986)
  %5988 = trunc i32 %5987 to i8
  %5989 = and i8 %5988, 1
  %5990 = xor i8 %5989, 1
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5990, i8* %5991, align 1
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5992, align 1
  %5993 = icmp eq i32 %5984, 0
  %5994 = zext i1 %5993 to i8
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5994, i8* %5995, align 1
  %5996 = lshr i32 %5984, 31
  %5997 = trunc i32 %5996 to i8
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5997, i8* %5998, align 1
  %5999 = lshr i32 %5984, 31
  %6000 = xor i32 %5996, %5999
  %6001 = add i32 %6000, %5999
  %6002 = icmp eq i32 %6001, 2
  %6003 = zext i1 %6002 to i8
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6003, i8* %6004, align 1
  store %struct.Memory* %loadMem_46db73, %struct.Memory** %MEMORY
  %loadMem_46db77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 33
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %6007 to i64*
  %6008 = load i64, i64* %PC.i45
  %6009 = add i64 %6008, 11
  %6010 = load i64, i64* %PC.i45
  %6011 = add i64 %6010, 6
  %6012 = load i64, i64* %PC.i45
  %6013 = add i64 %6012, 6
  store i64 %6013, i64* %PC.i45
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6015 = load i8, i8* %6014, align 1
  store i8 %6015, i8* %BRANCH_TAKEN, align 1
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6017 = icmp ne i8 %6015, 0
  %6018 = select i1 %6017, i64 %6009, i64 %6011
  store i64 %6018, i64* %6016, align 8
  store %struct.Memory* %loadMem_46db77, %struct.Memory** %MEMORY
  %loadBr_46db77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db77 = icmp eq i8 %loadBr_46db77, 1
  br i1 %cmpBr_46db77, label %block_.L_46db82, label %block_.L_46db7d

block_.L_46db7d:                                  ; preds = %block_46db68, %block_46db50
  %loadMem_46db7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 33
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6021 to i64*
  %6022 = load i64, i64* %PC.i44
  %6023 = add i64 %6022, 88
  %6024 = load i64, i64* %PC.i44
  %6025 = add i64 %6024, 5
  store i64 %6025, i64* %PC.i44
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6023, i64* %6026, align 8
  store %struct.Memory* %loadMem_46db7d, %struct.Memory** %MEMORY
  br label %block_.L_46dbd5

block_.L_46db82:                                  ; preds = %block_46db68
  %loadMem_46db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 1
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %6032 to i64*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 15
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %6035 to i64*
  %6036 = load i64, i64* %RBP.i43
  %6037 = sub i64 %6036, 1620
  %6038 = load i64, i64* %PC.i41
  %6039 = add i64 %6038, 7
  store i64 %6039, i64* %PC.i41
  %6040 = inttoptr i64 %6037 to i32*
  %6041 = load i32, i32* %6040
  %6042 = sext i32 %6041 to i64
  store i64 %6042, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_46db82, %struct.Memory** %MEMORY
  %loadMem_46db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 33
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6045 to i64*
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 1
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 15
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6051 to i64*
  %6052 = load i64, i64* %RBP.i40
  %6053 = load i64, i64* %RAX.i39
  %6054 = mul i64 %6053, 4
  %6055 = add i64 %6052, -1616
  %6056 = add i64 %6055, %6054
  %6057 = load i64, i64* %PC.i38
  %6058 = add i64 %6057, 8
  store i64 %6058, i64* %PC.i38
  %6059 = inttoptr i64 %6056 to i32*
  %6060 = load i32, i32* %6059
  %6061 = sub i32 %6060, 1
  %6062 = icmp ult i32 %6060, 1
  %6063 = zext i1 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6063, i8* %6064, align 1
  %6065 = and i32 %6061, 255
  %6066 = call i32 @llvm.ctpop.i32(i32 %6065)
  %6067 = trunc i32 %6066 to i8
  %6068 = and i8 %6067, 1
  %6069 = xor i8 %6068, 1
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6069, i8* %6070, align 1
  %6071 = xor i32 %6060, 1
  %6072 = xor i32 %6071, %6061
  %6073 = lshr i32 %6072, 4
  %6074 = trunc i32 %6073 to i8
  %6075 = and i8 %6074, 1
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6075, i8* %6076, align 1
  %6077 = icmp eq i32 %6061, 0
  %6078 = zext i1 %6077 to i8
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6078, i8* %6079, align 1
  %6080 = lshr i32 %6061, 31
  %6081 = trunc i32 %6080 to i8
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6081, i8* %6082, align 1
  %6083 = lshr i32 %6060, 31
  %6084 = xor i32 %6080, %6083
  %6085 = add i32 %6084, %6083
  %6086 = icmp eq i32 %6085, 2
  %6087 = zext i1 %6086 to i8
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6087, i8* %6088, align 1
  store %struct.Memory* %loadMem_46db89, %struct.Memory** %MEMORY
  %loadMem_46db91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 33
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6091 to i64*
  %6092 = load i64, i64* %PC.i37
  %6093 = add i64 %6092, 24
  %6094 = load i64, i64* %PC.i37
  %6095 = add i64 %6094, 6
  %6096 = load i64, i64* %PC.i37
  %6097 = add i64 %6096, 6
  store i64 %6097, i64* %PC.i37
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6099 = load i8, i8* %6098, align 1
  %6100 = icmp eq i8 %6099, 0
  %6101 = zext i1 %6100 to i8
  store i8 %6101, i8* %BRANCH_TAKEN, align 1
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6103 = select i1 %6100, i64 %6093, i64 %6095
  store i64 %6103, i64* %6102, align 8
  store %struct.Memory* %loadMem_46db91, %struct.Memory** %MEMORY
  %loadBr_46db91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db91 = icmp eq i8 %loadBr_46db91, 1
  br i1 %cmpBr_46db91, label %block_.L_46dba9, label %block_46db97

block_46db97:                                     ; preds = %block_.L_46db82
  %loadMem_46db97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 1
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 15
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %6112 to i64*
  %6113 = load i64, i64* %RBP.i36
  %6114 = sub i64 %6113, 8
  %6115 = load i64, i64* %PC.i34
  %6116 = add i64 %6115, 4
  store i64 %6116, i64* %PC.i34
  %6117 = inttoptr i64 %6114 to i64*
  %6118 = load i64, i64* %6117
  store i64 %6118, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_46db97, %struct.Memory** %MEMORY
  %loadMem_46db9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6121 to i64*
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 5
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %6124 to i64*
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 15
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %6127 to i64*
  %6128 = load i64, i64* %RBP.i33
  %6129 = sub i64 %6128, 1620
  %6130 = load i64, i64* %PC.i31
  %6131 = add i64 %6130, 7
  store i64 %6131, i64* %PC.i31
  %6132 = inttoptr i64 %6129 to i32*
  %6133 = load i32, i32* %6132
  %6134 = sext i32 %6133 to i64
  store i64 %6134, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_46db9b, %struct.Memory** %MEMORY
  %loadMem_46dba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 33
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6137 to i64*
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6139 = getelementptr inbounds %struct.GPR, %struct.GPR* %6138, i32 0, i32 1
  %6140 = getelementptr inbounds %struct.Reg, %struct.Reg* %6139, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %6140 to i64*
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 5
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %6143 to i64*
  %6144 = load i64, i64* %RAX.i29
  %6145 = load i64, i64* %RCX.i30
  %6146 = mul i64 %6145, 4
  %6147 = add i64 %6146, %6144
  %6148 = load i64, i64* %PC.i28
  %6149 = add i64 %6148, 7
  store i64 %6149, i64* %PC.i28
  %6150 = inttoptr i64 %6147 to i32*
  store i32 1, i32* %6150
  store %struct.Memory* %loadMem_46dba2, %struct.Memory** %MEMORY
  br label %block_.L_46dba9

block_.L_46dba9:                                  ; preds = %block_46db97, %block_.L_46db82
  %loadMem_46dba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 1
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %6156 to i64*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 15
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %6159 to i64*
  %6160 = load i64, i64* %RBP.i27
  %6161 = sub i64 %6160, 1620
  %6162 = load i64, i64* %PC.i25
  %6163 = add i64 %6162, 7
  store i64 %6163, i64* %PC.i25
  %6164 = inttoptr i64 %6161 to i32*
  %6165 = load i32, i32* %6164
  %6166 = sext i32 %6165 to i64
  store i64 %6166, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_46dba9, %struct.Memory** %MEMORY
  %loadMem_46dbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 33
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 1
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6172 to i64*
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 15
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6175 to i64*
  %6176 = load i64, i64* %RBP.i24
  %6177 = load i64, i64* %RAX.i23
  %6178 = mul i64 %6177, 4
  %6179 = add i64 %6176, -1616
  %6180 = add i64 %6179, %6178
  %6181 = load i64, i64* %PC.i22
  %6182 = add i64 %6181, 8
  store i64 %6182, i64* %PC.i22
  %6183 = inttoptr i64 %6180 to i32*
  %6184 = load i32, i32* %6183
  %6185 = sub i32 %6184, 2
  %6186 = icmp ult i32 %6184, 2
  %6187 = zext i1 %6186 to i8
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6187, i8* %6188, align 1
  %6189 = and i32 %6185, 255
  %6190 = call i32 @llvm.ctpop.i32(i32 %6189)
  %6191 = trunc i32 %6190 to i8
  %6192 = and i8 %6191, 1
  %6193 = xor i8 %6192, 1
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6193, i8* %6194, align 1
  %6195 = xor i32 %6184, 2
  %6196 = xor i32 %6195, %6185
  %6197 = lshr i32 %6196, 4
  %6198 = trunc i32 %6197 to i8
  %6199 = and i8 %6198, 1
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6199, i8* %6200, align 1
  %6201 = icmp eq i32 %6185, 0
  %6202 = zext i1 %6201 to i8
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6202, i8* %6203, align 1
  %6204 = lshr i32 %6185, 31
  %6205 = trunc i32 %6204 to i8
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6205, i8* %6206, align 1
  %6207 = lshr i32 %6184, 31
  %6208 = xor i32 %6204, %6207
  %6209 = add i32 %6208, %6207
  %6210 = icmp eq i32 %6209, 2
  %6211 = zext i1 %6210 to i8
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6211, i8* %6212, align 1
  store %struct.Memory* %loadMem_46dbb0, %struct.Memory** %MEMORY
  %loadMem_46dbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 33
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %PC.i21
  %6217 = add i64 %6216, 24
  %6218 = load i64, i64* %PC.i21
  %6219 = add i64 %6218, 6
  %6220 = load i64, i64* %PC.i21
  %6221 = add i64 %6220, 6
  store i64 %6221, i64* %PC.i21
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6223 = load i8, i8* %6222, align 1
  %6224 = icmp eq i8 %6223, 0
  %6225 = zext i1 %6224 to i8
  store i8 %6225, i8* %BRANCH_TAKEN, align 1
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6227 = select i1 %6224, i64 %6217, i64 %6219
  store i64 %6227, i64* %6226, align 8
  store %struct.Memory* %loadMem_46dbb8, %struct.Memory** %MEMORY
  %loadBr_46dbb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dbb8 = icmp eq i8 %loadBr_46dbb8, 1
  br i1 %cmpBr_46dbb8, label %block_.L_46dbd0, label %block_46dbbe

block_46dbbe:                                     ; preds = %block_.L_46dba9
  %loadMem_46dbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 33
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6230 to i64*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 1
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %6233 to i64*
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 15
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %6236 to i64*
  %6237 = load i64, i64* %RBP.i20
  %6238 = sub i64 %6237, 8
  %6239 = load i64, i64* %PC.i18
  %6240 = add i64 %6239, 4
  store i64 %6240, i64* %PC.i18
  %6241 = inttoptr i64 %6238 to i64*
  %6242 = load i64, i64* %6241
  store i64 %6242, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_46dbbe, %struct.Memory** %MEMORY
  %loadMem_46dbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 33
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6245 to i64*
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 5
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %6248 to i64*
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 15
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6251 to i64*
  %6252 = load i64, i64* %RBP.i17
  %6253 = sub i64 %6252, 1620
  %6254 = load i64, i64* %PC.i15
  %6255 = add i64 %6254, 7
  store i64 %6255, i64* %PC.i15
  %6256 = inttoptr i64 %6253 to i32*
  %6257 = load i32, i32* %6256
  %6258 = sext i32 %6257 to i64
  store i64 %6258, i64* %RCX.i16, align 8
  store %struct.Memory* %loadMem_46dbc2, %struct.Memory** %MEMORY
  %loadMem_46dbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 33
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6261 to i64*
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 1
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 5
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6267 to i64*
  %6268 = load i64, i64* %RAX.i14
  %6269 = load i64, i64* %RCX.i
  %6270 = mul i64 %6269, 4
  %6271 = add i64 %6270, %6268
  %6272 = load i64, i64* %PC.i13
  %6273 = add i64 %6272, 7
  store i64 %6273, i64* %PC.i13
  %6274 = inttoptr i64 %6271 to i32*
  store i32 -1, i32* %6274
  store %struct.Memory* %loadMem_46dbc9, %struct.Memory** %MEMORY
  br label %block_.L_46dbd0

block_.L_46dbd0:                                  ; preds = %block_46dbbe, %block_.L_46dba9
  %loadMem_46dbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 33
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6277 to i64*
  %6278 = load i64, i64* %PC.i12
  %6279 = add i64 %6278, 5
  %6280 = load i64, i64* %PC.i12
  %6281 = add i64 %6280, 5
  store i64 %6281, i64* %PC.i12
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6279, i64* %6282, align 8
  store %struct.Memory* %loadMem_46dbd0, %struct.Memory** %MEMORY
  br label %block_.L_46dbd5

block_.L_46dbd5:                                  ; preds = %block_.L_46dbd0, %block_.L_46db7d
  %loadMem_46dbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 33
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6285 to i64*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 1
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6288 to i64*
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 15
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6291 to i64*
  %6292 = load i64, i64* %RBP.i11
  %6293 = sub i64 %6292, 1620
  %6294 = load i64, i64* %PC.i9
  %6295 = add i64 %6294, 6
  store i64 %6295, i64* %PC.i9
  %6296 = inttoptr i64 %6293 to i32*
  %6297 = load i32, i32* %6296
  %6298 = zext i32 %6297 to i64
  store i64 %6298, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_46dbd5, %struct.Memory** %MEMORY
  %loadMem_46dbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 1
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6304 to i64*
  %6305 = load i64, i64* %RAX.i
  %6306 = load i64, i64* %PC.i8
  %6307 = add i64 %6306, 3
  store i64 %6307, i64* %PC.i8
  %6308 = trunc i64 %6305 to i32
  %6309 = add i32 1, %6308
  %6310 = zext i32 %6309 to i64
  store i64 %6310, i64* %RAX.i, align 8
  %6311 = icmp ult i32 %6309, %6308
  %6312 = icmp ult i32 %6309, 1
  %6313 = or i1 %6311, %6312
  %6314 = zext i1 %6313 to i8
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6314, i8* %6315, align 1
  %6316 = and i32 %6309, 255
  %6317 = call i32 @llvm.ctpop.i32(i32 %6316)
  %6318 = trunc i32 %6317 to i8
  %6319 = and i8 %6318, 1
  %6320 = xor i8 %6319, 1
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6320, i8* %6321, align 1
  %6322 = xor i64 1, %6305
  %6323 = trunc i64 %6322 to i32
  %6324 = xor i32 %6323, %6309
  %6325 = lshr i32 %6324, 4
  %6326 = trunc i32 %6325 to i8
  %6327 = and i8 %6326, 1
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6327, i8* %6328, align 1
  %6329 = icmp eq i32 %6309, 0
  %6330 = zext i1 %6329 to i8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6330, i8* %6331, align 1
  %6332 = lshr i32 %6309, 31
  %6333 = trunc i32 %6332 to i8
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6333, i8* %6334, align 1
  %6335 = lshr i32 %6308, 31
  %6336 = xor i32 %6332, %6335
  %6337 = add i32 %6336, %6332
  %6338 = icmp eq i32 %6337, 2
  %6339 = zext i1 %6338 to i8
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6339, i8* %6340, align 1
  store %struct.Memory* %loadMem_46dbdb, %struct.Memory** %MEMORY
  %loadMem_46dbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 33
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6343 to i64*
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 1
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6346 to i32*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 15
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6349 to i64*
  %6350 = load i64, i64* %RBP.i7
  %6351 = sub i64 %6350, 1620
  %6352 = load i32, i32* %EAX.i
  %6353 = zext i32 %6352 to i64
  %6354 = load i64, i64* %PC.i6
  %6355 = add i64 %6354, 6
  store i64 %6355, i64* %PC.i6
  %6356 = inttoptr i64 %6351 to i32*
  store i32 %6352, i32* %6356
  store %struct.Memory* %loadMem_46dbde, %struct.Memory** %MEMORY
  %loadMem_46dbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 33
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %PC.i5
  %6361 = add i64 %6360, -164
  %6362 = load i64, i64* %PC.i5
  %6363 = add i64 %6362, 5
  store i64 %6363, i64* %PC.i5
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6361, i64* %6364, align 8
  store %struct.Memory* %loadMem_46dbe4, %struct.Memory** %MEMORY
  br label %block_.L_46db40

block_.L_46dbe9:                                  ; preds = %block_.L_46db40
  %loadMem_46dbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 33
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 13
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %RSP.i
  %6372 = load i64, i64* %PC.i4
  %6373 = add i64 %6372, 7
  store i64 %6373, i64* %PC.i4
  %6374 = add i64 1648, %6371
  store i64 %6374, i64* %RSP.i, align 8
  %6375 = icmp ult i64 %6374, %6371
  %6376 = icmp ult i64 %6374, 1648
  %6377 = or i1 %6375, %6376
  %6378 = zext i1 %6377 to i8
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6378, i8* %6379, align 1
  %6380 = trunc i64 %6374 to i32
  %6381 = and i32 %6380, 255
  %6382 = call i32 @llvm.ctpop.i32(i32 %6381)
  %6383 = trunc i32 %6382 to i8
  %6384 = and i8 %6383, 1
  %6385 = xor i8 %6384, 1
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6385, i8* %6386, align 1
  %6387 = xor i64 1648, %6371
  %6388 = xor i64 %6387, %6374
  %6389 = lshr i64 %6388, 4
  %6390 = trunc i64 %6389 to i8
  %6391 = and i8 %6390, 1
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6391, i8* %6392, align 1
  %6393 = icmp eq i64 %6374, 0
  %6394 = zext i1 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6394, i8* %6395, align 1
  %6396 = lshr i64 %6374, 63
  %6397 = trunc i64 %6396 to i8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6397, i8* %6398, align 1
  %6399 = lshr i64 %6371, 63
  %6400 = xor i64 %6396, %6399
  %6401 = add i64 %6400, %6396
  %6402 = icmp eq i64 %6401, 2
  %6403 = zext i1 %6402 to i8
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6403, i8* %6404, align 1
  store %struct.Memory* %loadMem_46dbe9, %struct.Memory** %MEMORY
  %loadMem_46dbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 33
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 15
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6410 to i64*
  %6411 = load i64, i64* %PC.i2
  %6412 = add i64 %6411, 1
  store i64 %6412, i64* %PC.i2
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6414 = load i64, i64* %6413, align 8
  %6415 = add i64 %6414, 8
  %6416 = inttoptr i64 %6414 to i64*
  %6417 = load i64, i64* %6416
  store i64 %6417, i64* %RBP.i3, align 8
  store i64 %6415, i64* %6413, align 8
  store %struct.Memory* %loadMem_46dbf0, %struct.Memory** %MEMORY
  %loadMem_46dbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 33
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6420 to i64*
  %6421 = load i64, i64* %PC.i1
  %6422 = add i64 %6421, 1
  store i64 %6422, i64* %PC.i1
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6425 = load i64, i64* %6424, align 8
  %6426 = inttoptr i64 %6425 to i64*
  %6427 = load i64, i64* %6426
  store i64 %6427, i64* %6423, align 8
  %6428 = add i64 %6425, 8
  store i64 %6428, i64* %6424, align 8
  store %struct.Memory* %loadMem_46dbf1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_46dbf1
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

define %struct.Memory* @routine_subq__0x670___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1648
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1648
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
  %23 = xor i64 1648, %9
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x640___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1624
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

define %struct.Memory* @routine_je_.L_46db36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_46db31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46d6b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46d6b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 3
  %22 = icmp ult i32 %20, 3
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
  %31 = xor i32 %20, 3
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

define %struct.Memory* @routine_jne_.L_46d6b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46db1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46d6ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 3
  %22 = icmp ult i32 %20, 3
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
  %31 = xor i32 %20, 3
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

define %struct.Memory* @routine_je_.L_46d793(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46d725(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_46d75c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46d7b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46d7b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 3, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46db18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %20, 1
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
  %31 = xor i32 %20, 1
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

define %struct.Memory* @routine_je_.L_46d90d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46d81a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_46d90d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %20, 1
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
  %31 = xor i32 %20, 1
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

define %struct.Memory* @routine_je_.L_46d86b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_46d8bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_46d917(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46d917(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 2
  %22 = icmp ult i32 %20, 2
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
  %31 = xor i32 %20, 2
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

define %struct.Memory* @routine_je_.L_46da70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46d97d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_46da70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 2
  %22 = icmp ult i32 %20, 2
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
  %31 = xor i32 %20, 2
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

define %struct.Memory* @routine_je_.L_46d9ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46da1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46da7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46da7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1628
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

define %struct.Memory* @routine_je_.L_46dab2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1632
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

define %struct.Memory* @routine_je_.L_46daa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46daad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46dace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46dac9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
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

define %struct.Memory* @routine_je_.L_46db13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x650__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -1616
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
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

define %struct.Memory* @routine_movl__eax__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46d642(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46d621(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_46dbe9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46db7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46db82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46dbd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46dba9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46dbd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46db40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x670___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1648, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1648
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
  %25 = xor i64 1648, %9
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
