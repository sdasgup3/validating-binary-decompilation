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
%G_0x726840_type = type <{ [8 x i8] }>
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
@G_0x726840 = global %G_0x726840_type zeroinitializer

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
define %struct.Memory* @SATD(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_45f180 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_45f180, %struct.Memory** %MEMORY
  %loadMem_45f181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i791 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i791
  %27 = load i64, i64* %PC.i790
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i790
  store i64 %26, i64* %RBP.i792, align 8
  store %struct.Memory* %loadMem_45f181, %struct.Memory** %MEMORY
  %loadMem_45f184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i789 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i789
  %36 = load i64, i64* %PC.i788
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i788
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i789, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_45f184, %struct.Memory** %MEMORY
  %loadMem_45f188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i787
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i
  %79 = load i64, i64* %PC.i786
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i786
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_45f188, %struct.Memory** %MEMORY
  %loadMem_45f18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i784 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i785
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i784
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i783
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i783
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_45f18c, %struct.Memory** %MEMORY
  %loadMem_45f18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RBP.i782
  %105 = sub i64 %104, 20
  %106 = load i64, i64* %PC.i781
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC.i781
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  store %struct.Memory* %loadMem_45f18f, %struct.Memory** %MEMORY
  %loadMem_45f196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i780
  %116 = sub i64 %115, 12
  %117 = load i64, i64* %PC.i779
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i779
  %119 = inttoptr i64 %116 to i32*
  %120 = load i32, i32* %119
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %121, align 1
  %122 = and i32 %120, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %126, i8* %127, align 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %128, align 1
  %129 = icmp eq i32 %120, 0
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %130, i8* %131, align 1
  %132 = lshr i32 %120, 31
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %133, i8* %134, align 1
  %135 = lshr i32 %120, 31
  %136 = xor i32 %132, %135
  %137 = add i32 %136, %135
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %139, i8* %140, align 1
  store %struct.Memory* %loadMem_45f196, %struct.Memory** %MEMORY
  %loadMem_45f19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %PC.i778
  %145 = add i64 %144, 969
  %146 = load i64, i64* %PC.i778
  %147 = add i64 %146, 6
  %148 = load i64, i64* %PC.i778
  %149 = add i64 %148, 6
  store i64 %149, i64* %PC.i778
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %151 = load i8, i8* %150, align 1
  store i8 %151, i8* %BRANCH_TAKEN, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %153 = icmp ne i8 %151, 0
  %154 = select i1 %153, i64 %145, i64 %147
  store i64 %154, i64* %152, align 8
  store %struct.Memory* %loadMem_45f19a, %struct.Memory** %MEMORY
  %loadBr_45f19a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f19a = icmp eq i8 %loadBr_45f19a, 1
  br i1 %cmpBr_45f19a, label %block_.L_45f563, label %block_45f1a0

block_45f1a0:                                     ; preds = %entry
  %loadMem_45f1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i777
  %165 = sub i64 %164, 8
  %166 = load i64, i64* %PC.i775
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC.i775
  %168 = inttoptr i64 %165 to i64*
  %169 = load i64, i64* %168
  store i64 %169, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_45f1a0, %struct.Memory** %MEMORY
  %loadMem_45f1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RAX.i773
  %180 = load i64, i64* %PC.i772
  %181 = add i64 %180, 2
  store i64 %181, i64* %PC.i772
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX.i774, align 8
  store %struct.Memory* %loadMem_45f1a4, %struct.Memory** %MEMORY
  %loadMem_45f1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i771
  %195 = sub i64 %194, 8
  %196 = load i64, i64* %PC.i769
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC.i769
  %198 = inttoptr i64 %195 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %RAX.i770, align 8
  store %struct.Memory* %loadMem_45f1a6, %struct.Memory** %MEMORY
  %loadMem_45f1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RCX.i768
  %210 = load i64, i64* %RAX.i767
  %211 = add i64 %210, 48
  %212 = load i64, i64* %PC.i766
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC.i766
  %214 = trunc i64 %209 to i32
  %215 = inttoptr i64 %211 to i32*
  %216 = load i32, i32* %215
  %217 = add i32 %216, %214
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RCX.i768, align 8
  %219 = icmp ult i32 %217, %214
  %220 = icmp ult i32 %217, %216
  %221 = or i1 %219, %220
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %222, i8* %223, align 1
  %224 = and i32 %217, 255
  %225 = call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %228, i8* %229, align 1
  %230 = xor i32 %216, %214
  %231 = xor i32 %230, %217
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1
  %236 = icmp eq i32 %217, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1
  %239 = lshr i32 %217, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1
  %242 = lshr i32 %214, 31
  %243 = lshr i32 %216, 31
  %244 = xor i32 %239, %242
  %245 = xor i32 %239, %243
  %246 = add i32 %244, %245
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %248, i8* %249, align 1
  store %struct.Memory* %loadMem_45f1aa, %struct.Memory** %MEMORY
  %loadMem_45f1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %ECX.i764 = bitcast %union.anon* %255 to i32*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i765
  %260 = sub i64 %259, 96
  %261 = load i32, i32* %ECX.i764
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC.i763
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC.i763
  %265 = inttoptr i64 %260 to i32*
  store i32 %261, i32* %265
  store %struct.Memory* %loadMem_45f1ad, %struct.Memory** %MEMORY
  %loadMem_45f1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i762
  %276 = sub i64 %275, 8
  %277 = load i64, i64* %PC.i760
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC.i760
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RAX.i761, align 8
  store %struct.Memory* %loadMem_45f1b0, %struct.Memory** %MEMORY
  %loadMem_45f1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RAX.i758
  %291 = add i64 %290, 16
  %292 = load i64, i64* %PC.i757
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i757
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RCX.i759, align 8
  store %struct.Memory* %loadMem_45f1b4, %struct.Memory** %MEMORY
  %loadMem_45f1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i756
  %307 = sub i64 %306, 8
  %308 = load i64, i64* %PC.i754
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i754
  %310 = inttoptr i64 %307 to i64*
  %311 = load i64, i64* %310
  store i64 %311, i64* %RAX.i755, align 8
  store %struct.Memory* %loadMem_45f1b7, %struct.Memory** %MEMORY
  %loadMem_45f1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RCX.i753
  %322 = load i64, i64* %RAX.i752
  %323 = add i64 %322, 32
  %324 = load i64, i64* %PC.i751
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC.i751
  %326 = trunc i64 %321 to i32
  %327 = inttoptr i64 %323 to i32*
  %328 = load i32, i32* %327
  %329 = add i32 %328, %326
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i753, align 8
  %331 = icmp ult i32 %329, %326
  %332 = icmp ult i32 %329, %328
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %334, i8* %335, align 1
  %336 = and i32 %329, 255
  %337 = call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %340, i8* %341, align 1
  %342 = xor i32 %328, %326
  %343 = xor i32 %342, %329
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %346, i8* %347, align 1
  %348 = icmp eq i32 %329, 0
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %349, i8* %350, align 1
  %351 = lshr i32 %329, 31
  %352 = trunc i32 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %352, i8* %353, align 1
  %354 = lshr i32 %326, 31
  %355 = lshr i32 %328, 31
  %356 = xor i32 %351, %354
  %357 = xor i32 %351, %355
  %358 = add i32 %356, %357
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %360, i8* %361, align 1
  store %struct.Memory* %loadMem_45f1bb, %struct.Memory** %MEMORY
  %loadMem_45f1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %ECX.i749 = bitcast %union.anon* %367 to i32*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 15
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RBP.i750
  %372 = sub i64 %371, 80
  %373 = load i32, i32* %ECX.i749
  %374 = zext i32 %373 to i64
  %375 = load i64, i64* %PC.i748
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC.i748
  %377 = inttoptr i64 %372 to i32*
  store i32 %373, i32* %377
  store %struct.Memory* %loadMem_45f1be, %struct.Memory** %MEMORY
  %loadMem_45f1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i747
  %388 = sub i64 %387, 8
  %389 = load i64, i64* %PC.i745
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC.i745
  %391 = inttoptr i64 %388 to i64*
  %392 = load i64, i64* %391
  store i64 %392, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_45f1c1, %struct.Memory** %MEMORY
  %loadMem_45f1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RAX.i743
  %403 = add i64 %402, 16
  %404 = load i64, i64* %PC.i742
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i742
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i744, align 8
  store %struct.Memory* %loadMem_45f1c5, %struct.Memory** %MEMORY
  %loadMem_45f1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i741
  %419 = sub i64 %418, 8
  %420 = load i64, i64* %PC.i739
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC.i739
  %422 = inttoptr i64 %419 to i64*
  %423 = load i64, i64* %422
  store i64 %423, i64* %RAX.i740, align 8
  store %struct.Memory* %loadMem_45f1c8, %struct.Memory** %MEMORY
  %loadMem_45f1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RCX.i738
  %434 = load i64, i64* %RAX.i737
  %435 = add i64 %434, 32
  %436 = load i64, i64* %PC.i736
  %437 = add i64 %436, 3
  store i64 %437, i64* %PC.i736
  %438 = trunc i64 %433 to i32
  %439 = inttoptr i64 %435 to i32*
  %440 = load i32, i32* %439
  %441 = sub i32 %438, %440
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RCX.i738, align 8
  %443 = icmp ult i32 %438, %440
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %444, i8* %445, align 1
  %446 = and i32 %441, 255
  %447 = call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %450, i8* %451, align 1
  %452 = xor i32 %440, %438
  %453 = xor i32 %452, %441
  %454 = lshr i32 %453, 4
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %456, i8* %457, align 1
  %458 = icmp eq i32 %441, 0
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %459, i8* %460, align 1
  %461 = lshr i32 %441, 31
  %462 = trunc i32 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %462, i8* %463, align 1
  %464 = lshr i32 %438, 31
  %465 = lshr i32 %440, 31
  %466 = xor i32 %465, %464
  %467 = xor i32 %461, %464
  %468 = add i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %470, i8* %471, align 1
  store %struct.Memory* %loadMem_45f1cc, %struct.Memory** %MEMORY
  %loadMem_45f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %ECX.i734 = bitcast %union.anon* %477 to i32*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 15
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RBP.i735
  %482 = sub i64 %481, 64
  %483 = load i32, i32* %ECX.i734
  %484 = zext i32 %483 to i64
  %485 = load i64, i64* %PC.i733
  %486 = add i64 %485, 3
  store i64 %486, i64* %PC.i733
  %487 = inttoptr i64 %482 to i32*
  store i32 %483, i32* %487
  store %struct.Memory* %loadMem_45f1cf, %struct.Memory** %MEMORY
  %loadMem_45f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 15
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RBP.i732
  %498 = sub i64 %497, 8
  %499 = load i64, i64* %PC.i730
  %500 = add i64 %499, 4
  store i64 %500, i64* %PC.i730
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501
  store i64 %502, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_45f1d2, %struct.Memory** %MEMORY
  %loadMem_45f1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RAX.i728
  %513 = load i64, i64* %PC.i727
  %514 = add i64 %513, 2
  store i64 %514, i64* %PC.i727
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RCX.i729, align 8
  store %struct.Memory* %loadMem_45f1d6, %struct.Memory** %MEMORY
  %loadMem_45f1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 15
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RBP.i726
  %528 = sub i64 %527, 8
  %529 = load i64, i64* %PC.i724
  %530 = add i64 %529, 4
  store i64 %530, i64* %PC.i724
  %531 = inttoptr i64 %528 to i64*
  %532 = load i64, i64* %531
  store i64 %532, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_45f1d8, %struct.Memory** %MEMORY
  %loadMem_45f1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RCX.i723
  %543 = load i64, i64* %RAX.i722
  %544 = add i64 %543, 48
  %545 = load i64, i64* %PC.i721
  %546 = add i64 %545, 3
  store i64 %546, i64* %PC.i721
  %547 = trunc i64 %542 to i32
  %548 = inttoptr i64 %544 to i32*
  %549 = load i32, i32* %548
  %550 = sub i32 %547, %549
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RCX.i723, align 8
  %552 = icmp ult i32 %547, %549
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %553, i8* %554, align 1
  %555 = and i32 %550, 255
  %556 = call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %559, i8* %560, align 1
  %561 = xor i32 %549, %547
  %562 = xor i32 %561, %550
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %565, i8* %566, align 1
  %567 = icmp eq i32 %550, 0
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %568, i8* %569, align 1
  %570 = lshr i32 %550, 31
  %571 = trunc i32 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %571, i8* %572, align 1
  %573 = lshr i32 %547, 31
  %574 = lshr i32 %549, 31
  %575 = xor i32 %574, %573
  %576 = xor i32 %570, %573
  %577 = add i32 %576, %575
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %579, i8* %580, align 1
  store %struct.Memory* %loadMem_45f1dc, %struct.Memory** %MEMORY
  %loadMem_45f1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %ECX.i719 = bitcast %union.anon* %586 to i32*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i720
  %591 = sub i64 %590, 48
  %592 = load i32, i32* %ECX.i719
  %593 = zext i32 %592 to i64
  %594 = load i64, i64* %PC.i718
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i718
  %596 = inttoptr i64 %591 to i32*
  store i32 %592, i32* %596
  store %struct.Memory* %loadMem_45f1df, %struct.Memory** %MEMORY
  %loadMem_45f1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i717
  %607 = sub i64 %606, 8
  %608 = load i64, i64* %PC.i715
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC.i715
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RAX.i716, align 8
  store %struct.Memory* %loadMem_45f1e2, %struct.Memory** %MEMORY
  %loadMem_45f1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 5
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RAX.i713
  %622 = add i64 %621, 4
  %623 = load i64, i64* %PC.i712
  %624 = add i64 %623, 3
  store i64 %624, i64* %PC.i712
  %625 = inttoptr i64 %622 to i32*
  %626 = load i32, i32* %625
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RCX.i714, align 8
  store %struct.Memory* %loadMem_45f1e6, %struct.Memory** %MEMORY
  %loadMem_45f1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 15
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RBP.i711
  %638 = sub i64 %637, 8
  %639 = load i64, i64* %PC.i709
  %640 = add i64 %639, 4
  store i64 %640, i64* %PC.i709
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RAX.i710, align 8
  store %struct.Memory* %loadMem_45f1e9, %struct.Memory** %MEMORY
  %loadMem_45f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RCX.i708
  %653 = load i64, i64* %RAX.i707
  %654 = add i64 %653, 52
  %655 = load i64, i64* %PC.i706
  %656 = add i64 %655, 3
  store i64 %656, i64* %PC.i706
  %657 = trunc i64 %652 to i32
  %658 = inttoptr i64 %654 to i32*
  %659 = load i32, i32* %658
  %660 = add i32 %659, %657
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RCX.i708, align 8
  %662 = icmp ult i32 %660, %657
  %663 = icmp ult i32 %660, %659
  %664 = or i1 %662, %663
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %665, i8* %666, align 1
  %667 = and i32 %660, 255
  %668 = call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %671, i8* %672, align 1
  %673 = xor i32 %659, %657
  %674 = xor i32 %673, %660
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %677, i8* %678, align 1
  %679 = icmp eq i32 %660, 0
  %680 = zext i1 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %680, i8* %681, align 1
  %682 = lshr i32 %660, 31
  %683 = trunc i32 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %683, i8* %684, align 1
  %685 = lshr i32 %657, 31
  %686 = lshr i32 %659, 31
  %687 = xor i32 %682, %685
  %688 = xor i32 %682, %686
  %689 = add i32 %687, %688
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %691, i8* %692, align 1
  store %struct.Memory* %loadMem_45f1ed, %struct.Memory** %MEMORY
  %loadMem_45f1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 5
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %ECX.i704 = bitcast %union.anon* %698 to i32*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 15
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %RBP.i705
  %703 = sub i64 %702, 92
  %704 = load i32, i32* %ECX.i704
  %705 = zext i32 %704 to i64
  %706 = load i64, i64* %PC.i703
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i703
  %708 = inttoptr i64 %703 to i32*
  store i32 %704, i32* %708
  store %struct.Memory* %loadMem_45f1f0, %struct.Memory** %MEMORY
  %loadMem_45f1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i702
  %719 = sub i64 %718, 8
  %720 = load i64, i64* %PC.i700
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i700
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RAX.i701, align 8
  store %struct.Memory* %loadMem_45f1f3, %struct.Memory** %MEMORY
  %loadMem_45f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 5
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RAX.i698
  %734 = add i64 %733, 20
  %735 = load i64, i64* %PC.i697
  %736 = add i64 %735, 3
  store i64 %736, i64* %PC.i697
  %737 = inttoptr i64 %734 to i32*
  %738 = load i32, i32* %737
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_45f1f7, %struct.Memory** %MEMORY
  %loadMem_45f1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i696
  %750 = sub i64 %749, 8
  %751 = load i64, i64* %PC.i694
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC.i694
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753
  store i64 %754, i64* %RAX.i695, align 8
  store %struct.Memory* %loadMem_45f1fa, %struct.Memory** %MEMORY
  %loadMem_45f1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 1
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 5
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %763 to i64*
  %764 = load i64, i64* %RCX.i693
  %765 = load i64, i64* %RAX.i692
  %766 = add i64 %765, 36
  %767 = load i64, i64* %PC.i691
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i691
  %769 = trunc i64 %764 to i32
  %770 = inttoptr i64 %766 to i32*
  %771 = load i32, i32* %770
  %772 = add i32 %771, %769
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RCX.i693, align 8
  %774 = icmp ult i32 %772, %769
  %775 = icmp ult i32 %772, %771
  %776 = or i1 %774, %775
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %777, i8* %778, align 1
  %779 = and i32 %772, 255
  %780 = call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %783, i8* %784, align 1
  %785 = xor i32 %771, %769
  %786 = xor i32 %785, %772
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %789, i8* %790, align 1
  %791 = icmp eq i32 %772, 0
  %792 = zext i1 %791 to i8
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %792, i8* %793, align 1
  %794 = lshr i32 %772, 31
  %795 = trunc i32 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %795, i8* %796, align 1
  %797 = lshr i32 %769, 31
  %798 = lshr i32 %771, 31
  %799 = xor i32 %794, %797
  %800 = xor i32 %794, %798
  %801 = add i32 %799, %800
  %802 = icmp eq i32 %801, 2
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %803, i8* %804, align 1
  store %struct.Memory* %loadMem_45f1fe, %struct.Memory** %MEMORY
  %loadMem_45f201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 5
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %ECX.i689 = bitcast %union.anon* %810 to i32*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 15
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RBP.i690
  %815 = sub i64 %814, 76
  %816 = load i32, i32* %ECX.i689
  %817 = zext i32 %816 to i64
  %818 = load i64, i64* %PC.i688
  %819 = add i64 %818, 3
  store i64 %819, i64* %PC.i688
  %820 = inttoptr i64 %815 to i32*
  store i32 %816, i32* %820
  store %struct.Memory* %loadMem_45f201, %struct.Memory** %MEMORY
  %loadMem_45f204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 1
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 15
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RBP.i687
  %831 = sub i64 %830, 8
  %832 = load i64, i64* %PC.i685
  %833 = add i64 %832, 4
  store i64 %833, i64* %PC.i685
  %834 = inttoptr i64 %831 to i64*
  %835 = load i64, i64* %834
  store i64 %835, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_45f204, %struct.Memory** %MEMORY
  %loadMem_45f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 5
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RAX.i683
  %846 = add i64 %845, 20
  %847 = load i64, i64* %PC.i682
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC.i682
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RCX.i684, align 8
  store %struct.Memory* %loadMem_45f208, %struct.Memory** %MEMORY
  %loadMem_45f20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 15
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RBP.i681
  %862 = sub i64 %861, 8
  %863 = load i64, i64* %PC.i679
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC.i679
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RAX.i680, align 8
  store %struct.Memory* %loadMem_45f20b, %struct.Memory** %MEMORY
  %loadMem_45f20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 1
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i678 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RCX.i678
  %877 = load i64, i64* %RAX.i677
  %878 = add i64 %877, 36
  %879 = load i64, i64* %PC.i676
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC.i676
  %881 = trunc i64 %876 to i32
  %882 = inttoptr i64 %878 to i32*
  %883 = load i32, i32* %882
  %884 = sub i32 %881, %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RCX.i678, align 8
  %886 = icmp ult i32 %881, %883
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %887, i8* %888, align 1
  %889 = and i32 %884, 255
  %890 = call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %893, i8* %894, align 1
  %895 = xor i32 %883, %881
  %896 = xor i32 %895, %884
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %899, i8* %900, align 1
  %901 = icmp eq i32 %884, 0
  %902 = zext i1 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %902, i8* %903, align 1
  %904 = lshr i32 %884, 31
  %905 = trunc i32 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %905, i8* %906, align 1
  %907 = lshr i32 %881, 31
  %908 = lshr i32 %883, 31
  %909 = xor i32 %908, %907
  %910 = xor i32 %904, %907
  %911 = add i32 %910, %909
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %913, i8* %914, align 1
  store %struct.Memory* %loadMem_45f20f, %struct.Memory** %MEMORY
  %loadMem_45f212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 5
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %ECX.i674 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i675
  %925 = sub i64 %924, 60
  %926 = load i32, i32* %ECX.i674
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i673
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i673
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_45f212, %struct.Memory** %MEMORY
  %loadMem_45f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i672
  %941 = sub i64 %940, 8
  %942 = load i64, i64* %PC.i670
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC.i670
  %944 = inttoptr i64 %941 to i64*
  %945 = load i64, i64* %944
  store i64 %945, i64* %RAX.i671, align 8
  store %struct.Memory* %loadMem_45f215, %struct.Memory** %MEMORY
  %loadMem_45f219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %RAX.i668
  %956 = add i64 %955, 4
  %957 = load i64, i64* %PC.i667
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i667
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_45f219, %struct.Memory** %MEMORY
  %loadMem_45f21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i666
  %972 = sub i64 %971, 8
  %973 = load i64, i64* %PC.i664
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC.i664
  %975 = inttoptr i64 %972 to i64*
  %976 = load i64, i64* %975
  store i64 %976, i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_45f21c, %struct.Memory** %MEMORY
  %loadMem_45f220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 5
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %985 to i64*
  %986 = load i64, i64* %RCX.i663
  %987 = load i64, i64* %RAX.i662
  %988 = add i64 %987, 52
  %989 = load i64, i64* %PC.i661
  %990 = add i64 %989, 3
  store i64 %990, i64* %PC.i661
  %991 = trunc i64 %986 to i32
  %992 = inttoptr i64 %988 to i32*
  %993 = load i32, i32* %992
  %994 = sub i32 %991, %993
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RCX.i663, align 8
  %996 = icmp ult i32 %991, %993
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %997, i8* %998, align 1
  %999 = and i32 %994, 255
  %1000 = call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1003, i8* %1004, align 1
  %1005 = xor i32 %993, %991
  %1006 = xor i32 %1005, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1009, i8* %1010, align 1
  %1011 = icmp eq i32 %994, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1
  %1014 = lshr i32 %994, 31
  %1015 = trunc i32 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1
  %1017 = lshr i32 %991, 31
  %1018 = lshr i32 %993, 31
  %1019 = xor i32 %1018, %1017
  %1020 = xor i32 %1014, %1017
  %1021 = add i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1023, i8* %1024, align 1
  store %struct.Memory* %loadMem_45f220, %struct.Memory** %MEMORY
  %loadMem_45f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 5
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %ECX.i659 = bitcast %union.anon* %1030 to i32*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i660
  %1035 = sub i64 %1034, 44
  %1036 = load i32, i32* %ECX.i659
  %1037 = zext i32 %1036 to i64
  %1038 = load i64, i64* %PC.i658
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC.i658
  %1040 = inttoptr i64 %1035 to i32*
  store i32 %1036, i32* %1040
  store %struct.Memory* %loadMem_45f223, %struct.Memory** %MEMORY
  %loadMem_45f226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 1
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RBP.i657
  %1051 = sub i64 %1050, 8
  %1052 = load i64, i64* %PC.i655
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %PC.i655
  %1054 = inttoptr i64 %1051 to i64*
  %1055 = load i64, i64* %1054
  store i64 %1055, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_45f226, %struct.Memory** %MEMORY
  %loadMem_45f22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 5
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RAX.i653
  %1066 = add i64 %1065, 8
  %1067 = load i64, i64* %PC.i652
  %1068 = add i64 %1067, 3
  store i64 %1068, i64* %PC.i652
  %1069 = inttoptr i64 %1066 to i32*
  %1070 = load i32, i32* %1069
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_45f22a, %struct.Memory** %MEMORY
  %loadMem_45f22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RBP.i651
  %1082 = sub i64 %1081, 8
  %1083 = load i64, i64* %PC.i649
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC.i649
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085
  store i64 %1086, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_45f22d, %struct.Memory** %MEMORY
  %loadMem_45f231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 5
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RCX.i648
  %1097 = load i64, i64* %RAX.i647
  %1098 = add i64 %1097, 56
  %1099 = load i64, i64* %PC.i646
  %1100 = add i64 %1099, 3
  store i64 %1100, i64* %PC.i646
  %1101 = trunc i64 %1096 to i32
  %1102 = inttoptr i64 %1098 to i32*
  %1103 = load i32, i32* %1102
  %1104 = add i32 %1103, %1101
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i648, align 8
  %1106 = icmp ult i32 %1104, %1101
  %1107 = icmp ult i32 %1104, %1103
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1109, i8* %1110, align 1
  %1111 = and i32 %1104, 255
  %1112 = call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1115, i8* %1116, align 1
  %1117 = xor i32 %1103, %1101
  %1118 = xor i32 %1117, %1104
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1121, i8* %1122, align 1
  %1123 = icmp eq i32 %1104, 0
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1124, i8* %1125, align 1
  %1126 = lshr i32 %1104, 31
  %1127 = trunc i32 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1127, i8* %1128, align 1
  %1129 = lshr i32 %1101, 31
  %1130 = lshr i32 %1103, 31
  %1131 = xor i32 %1126, %1129
  %1132 = xor i32 %1126, %1130
  %1133 = add i32 %1131, %1132
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1135, i8* %1136, align 1
  store %struct.Memory* %loadMem_45f231, %struct.Memory** %MEMORY
  %loadMem_45f234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 5
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %ECX.i644 = bitcast %union.anon* %1142 to i32*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i645
  %1147 = sub i64 %1146, 88
  %1148 = load i32, i32* %ECX.i644
  %1149 = zext i32 %1148 to i64
  %1150 = load i64, i64* %PC.i643
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i643
  %1152 = inttoptr i64 %1147 to i32*
  store i32 %1148, i32* %1152
  store %struct.Memory* %loadMem_45f234, %struct.Memory** %MEMORY
  %loadMem_45f237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i642
  %1163 = sub i64 %1162, 8
  %1164 = load i64, i64* %PC.i640
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC.i640
  %1166 = inttoptr i64 %1163 to i64*
  %1167 = load i64, i64* %1166
  store i64 %1167, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_45f237, %struct.Memory** %MEMORY
  %loadMem_45f23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 5
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %1176 to i64*
  %1177 = load i64, i64* %RAX.i638
  %1178 = add i64 %1177, 24
  %1179 = load i64, i64* %PC.i637
  %1180 = add i64 %1179, 3
  store i64 %1180, i64* %PC.i637
  %1181 = inttoptr i64 %1178 to i32*
  %1182 = load i32, i32* %1181
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RCX.i639, align 8
  store %struct.Memory* %loadMem_45f23b, %struct.Memory** %MEMORY
  %loadMem_45f23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 1
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 15
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %RBP.i636
  %1194 = sub i64 %1193, 8
  %1195 = load i64, i64* %PC.i634
  %1196 = add i64 %1195, 4
  store i64 %1196, i64* %PC.i634
  %1197 = inttoptr i64 %1194 to i64*
  %1198 = load i64, i64* %1197
  store i64 %1198, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_45f23e, %struct.Memory** %MEMORY
  %loadMem_45f242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 5
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %RCX.i633
  %1209 = load i64, i64* %RAX.i632
  %1210 = add i64 %1209, 40
  %1211 = load i64, i64* %PC.i631
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i631
  %1213 = trunc i64 %1208 to i32
  %1214 = inttoptr i64 %1210 to i32*
  %1215 = load i32, i32* %1214
  %1216 = add i32 %1215, %1213
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i633, align 8
  %1218 = icmp ult i32 %1216, %1213
  %1219 = icmp ult i32 %1216, %1215
  %1220 = or i1 %1218, %1219
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1221, i8* %1222, align 1
  %1223 = and i32 %1216, 255
  %1224 = call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1227, i8* %1228, align 1
  %1229 = xor i32 %1215, %1213
  %1230 = xor i32 %1229, %1216
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1233, i8* %1234, align 1
  %1235 = icmp eq i32 %1216, 0
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1216, 31
  %1239 = trunc i32 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1239, i8* %1240, align 1
  %1241 = lshr i32 %1213, 31
  %1242 = lshr i32 %1215, 31
  %1243 = xor i32 %1238, %1241
  %1244 = xor i32 %1238, %1242
  %1245 = add i32 %1243, %1244
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1247, i8* %1248, align 1
  store %struct.Memory* %loadMem_45f242, %struct.Memory** %MEMORY
  %loadMem_45f245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 5
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %ECX.i629 = bitcast %union.anon* %1254 to i32*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 15
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RBP.i630
  %1259 = sub i64 %1258, 72
  %1260 = load i32, i32* %ECX.i629
  %1261 = zext i32 %1260 to i64
  %1262 = load i64, i64* %PC.i628
  %1263 = add i64 %1262, 3
  store i64 %1263, i64* %PC.i628
  %1264 = inttoptr i64 %1259 to i32*
  store i32 %1260, i32* %1264
  store %struct.Memory* %loadMem_45f245, %struct.Memory** %MEMORY
  %loadMem_45f248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i627
  %1275 = sub i64 %1274, 8
  %1276 = load i64, i64* %PC.i625
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i625
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278
  store i64 %1279, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_45f248, %struct.Memory** %MEMORY
  %loadMem_45f24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 5
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %RAX.i623
  %1290 = add i64 %1289, 24
  %1291 = load i64, i64* %PC.i622
  %1292 = add i64 %1291, 3
  store i64 %1292, i64* %PC.i622
  %1293 = inttoptr i64 %1290 to i32*
  %1294 = load i32, i32* %1293
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RCX.i624, align 8
  store %struct.Memory* %loadMem_45f24c, %struct.Memory** %MEMORY
  %loadMem_45f24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 1
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i621
  %1306 = sub i64 %1305, 8
  %1307 = load i64, i64* %PC.i619
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i619
  %1309 = inttoptr i64 %1306 to i64*
  %1310 = load i64, i64* %1309
  store i64 %1310, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_45f24f, %struct.Memory** %MEMORY
  %loadMem_45f253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 1
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 5
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RCX.i618
  %1321 = load i64, i64* %RAX.i617
  %1322 = add i64 %1321, 40
  %1323 = load i64, i64* %PC.i616
  %1324 = add i64 %1323, 3
  store i64 %1324, i64* %PC.i616
  %1325 = trunc i64 %1320 to i32
  %1326 = inttoptr i64 %1322 to i32*
  %1327 = load i32, i32* %1326
  %1328 = sub i32 %1325, %1327
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RCX.i618, align 8
  %1330 = icmp ult i32 %1325, %1327
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1
  %1333 = and i32 %1328, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1
  %1339 = xor i32 %1327, %1325
  %1340 = xor i32 %1339, %1328
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1343, i8* %1344, align 1
  %1345 = icmp eq i32 %1328, 0
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1346, i8* %1347, align 1
  %1348 = lshr i32 %1328, 31
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1349, i8* %1350, align 1
  %1351 = lshr i32 %1325, 31
  %1352 = lshr i32 %1327, 31
  %1353 = xor i32 %1352, %1351
  %1354 = xor i32 %1348, %1351
  %1355 = add i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1357, i8* %1358, align 1
  store %struct.Memory* %loadMem_45f253, %struct.Memory** %MEMORY
  %loadMem_45f256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 5
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %ECX.i614 = bitcast %union.anon* %1364 to i32*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i615
  %1369 = sub i64 %1368, 56
  %1370 = load i32, i32* %ECX.i614
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %PC.i613
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC.i613
  %1374 = inttoptr i64 %1369 to i32*
  store i32 %1370, i32* %1374
  store %struct.Memory* %loadMem_45f256, %struct.Memory** %MEMORY
  %loadMem_45f259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 1
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 15
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %1383 to i64*
  %1384 = load i64, i64* %RBP.i612
  %1385 = sub i64 %1384, 8
  %1386 = load i64, i64* %PC.i610
  %1387 = add i64 %1386, 4
  store i64 %1387, i64* %PC.i610
  %1388 = inttoptr i64 %1385 to i64*
  %1389 = load i64, i64* %1388
  store i64 %1389, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_45f259, %struct.Memory** %MEMORY
  %loadMem_45f25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 1
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 5
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RAX.i608
  %1400 = add i64 %1399, 8
  %1401 = load i64, i64* %PC.i607
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC.i607
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_45f25d, %struct.Memory** %MEMORY
  %loadMem_45f260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 15
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RBP.i606
  %1416 = sub i64 %1415, 8
  %1417 = load i64, i64* %PC.i604
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %PC.i604
  %1419 = inttoptr i64 %1416 to i64*
  %1420 = load i64, i64* %1419
  store i64 %1420, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_45f260, %struct.Memory** %MEMORY
  %loadMem_45f264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 5
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %RCX.i603
  %1431 = load i64, i64* %RAX.i602
  %1432 = add i64 %1431, 56
  %1433 = load i64, i64* %PC.i601
  %1434 = add i64 %1433, 3
  store i64 %1434, i64* %PC.i601
  %1435 = trunc i64 %1430 to i32
  %1436 = inttoptr i64 %1432 to i32*
  %1437 = load i32, i32* %1436
  %1438 = sub i32 %1435, %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i603, align 8
  %1440 = icmp ult i32 %1435, %1437
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1441, i8* %1442, align 1
  %1443 = and i32 %1438, 255
  %1444 = call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1447, i8* %1448, align 1
  %1449 = xor i32 %1437, %1435
  %1450 = xor i32 %1449, %1438
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1453, i8* %1454, align 1
  %1455 = icmp eq i32 %1438, 0
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1456, i8* %1457, align 1
  %1458 = lshr i32 %1438, 31
  %1459 = trunc i32 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i32 %1435, 31
  %1462 = lshr i32 %1437, 31
  %1463 = xor i32 %1462, %1461
  %1464 = xor i32 %1458, %1461
  %1465 = add i32 %1464, %1463
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1467, i8* %1468, align 1
  store %struct.Memory* %loadMem_45f264, %struct.Memory** %MEMORY
  %loadMem_45f267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 5
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %ECX.i599 = bitcast %union.anon* %1474 to i32*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 15
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %RBP.i600
  %1479 = sub i64 %1478, 40
  %1480 = load i32, i32* %ECX.i599
  %1481 = zext i32 %1480 to i64
  %1482 = load i64, i64* %PC.i598
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC.i598
  %1484 = inttoptr i64 %1479 to i32*
  store i32 %1480, i32* %1484
  store %struct.Memory* %loadMem_45f267, %struct.Memory** %MEMORY
  %loadMem_45f26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 1
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 15
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %RBP.i597
  %1495 = sub i64 %1494, 8
  %1496 = load i64, i64* %PC.i595
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC.i595
  %1498 = inttoptr i64 %1495 to i64*
  %1499 = load i64, i64* %1498
  store i64 %1499, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_45f26a, %struct.Memory** %MEMORY
  %loadMem_45f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 1
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 5
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RAX.i593
  %1510 = add i64 %1509, 12
  %1511 = load i64, i64* %PC.i592
  %1512 = add i64 %1511, 3
  store i64 %1512, i64* %PC.i592
  %1513 = inttoptr i64 %1510 to i32*
  %1514 = load i32, i32* %1513
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_45f26e, %struct.Memory** %MEMORY
  %loadMem_45f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 1
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 15
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RBP.i591
  %1526 = sub i64 %1525, 8
  %1527 = load i64, i64* %PC.i589
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC.i589
  %1529 = inttoptr i64 %1526 to i64*
  %1530 = load i64, i64* %1529
  store i64 %1530, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_45f271, %struct.Memory** %MEMORY
  %loadMem_45f275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 1
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 5
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %RCX.i588
  %1541 = load i64, i64* %RAX.i587
  %1542 = add i64 %1541, 60
  %1543 = load i64, i64* %PC.i586
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC.i586
  %1545 = trunc i64 %1540 to i32
  %1546 = inttoptr i64 %1542 to i32*
  %1547 = load i32, i32* %1546
  %1548 = add i32 %1547, %1545
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i588, align 8
  %1550 = icmp ult i32 %1548, %1545
  %1551 = icmp ult i32 %1548, %1547
  %1552 = or i1 %1550, %1551
  %1553 = zext i1 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1553, i8* %1554, align 1
  %1555 = and i32 %1548, 255
  %1556 = call i32 @llvm.ctpop.i32(i32 %1555)
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1559, i8* %1560, align 1
  %1561 = xor i32 %1547, %1545
  %1562 = xor i32 %1561, %1548
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1565, i8* %1566, align 1
  %1567 = icmp eq i32 %1548, 0
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1568, i8* %1569, align 1
  %1570 = lshr i32 %1548, 31
  %1571 = trunc i32 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1571, i8* %1572, align 1
  %1573 = lshr i32 %1545, 31
  %1574 = lshr i32 %1547, 31
  %1575 = xor i32 %1570, %1573
  %1576 = xor i32 %1570, %1574
  %1577 = add i32 %1575, %1576
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1579, i8* %1580, align 1
  store %struct.Memory* %loadMem_45f275, %struct.Memory** %MEMORY
  %loadMem_45f278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 5
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %ECX.i584 = bitcast %union.anon* %1586 to i32*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 15
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %1589 to i64*
  %1590 = load i64, i64* %RBP.i585
  %1591 = sub i64 %1590, 84
  %1592 = load i32, i32* %ECX.i584
  %1593 = zext i32 %1592 to i64
  %1594 = load i64, i64* %PC.i583
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i583
  %1596 = inttoptr i64 %1591 to i32*
  store i32 %1592, i32* %1596
  store %struct.Memory* %loadMem_45f278, %struct.Memory** %MEMORY
  %loadMem_45f27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RBP.i582
  %1607 = sub i64 %1606, 8
  %1608 = load i64, i64* %PC.i580
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %PC.i580
  %1610 = inttoptr i64 %1607 to i64*
  %1611 = load i64, i64* %1610
  store i64 %1611, i64* %RAX.i581, align 8
  store %struct.Memory* %loadMem_45f27b, %struct.Memory** %MEMORY
  %loadMem_45f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 5
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RAX.i578
  %1622 = add i64 %1621, 28
  %1623 = load i64, i64* %PC.i577
  %1624 = add i64 %1623, 3
  store i64 %1624, i64* %PC.i577
  %1625 = inttoptr i64 %1622 to i32*
  %1626 = load i32, i32* %1625
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RCX.i579, align 8
  store %struct.Memory* %loadMem_45f27f, %struct.Memory** %MEMORY
  %loadMem_45f282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 1
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 15
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %RBP.i576
  %1638 = sub i64 %1637, 8
  %1639 = load i64, i64* %PC.i574
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC.i574
  %1641 = inttoptr i64 %1638 to i64*
  %1642 = load i64, i64* %1641
  store i64 %1642, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_45f282, %struct.Memory** %MEMORY
  %loadMem_45f286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 5
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %1651 to i64*
  %1652 = load i64, i64* %RCX.i573
  %1653 = load i64, i64* %RAX.i572
  %1654 = add i64 %1653, 44
  %1655 = load i64, i64* %PC.i571
  %1656 = add i64 %1655, 3
  store i64 %1656, i64* %PC.i571
  %1657 = trunc i64 %1652 to i32
  %1658 = inttoptr i64 %1654 to i32*
  %1659 = load i32, i32* %1658
  %1660 = add i32 %1659, %1657
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RCX.i573, align 8
  %1662 = icmp ult i32 %1660, %1657
  %1663 = icmp ult i32 %1660, %1659
  %1664 = or i1 %1662, %1663
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1665, i8* %1666, align 1
  %1667 = and i32 %1660, 255
  %1668 = call i32 @llvm.ctpop.i32(i32 %1667)
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1671, i8* %1672, align 1
  %1673 = xor i32 %1659, %1657
  %1674 = xor i32 %1673, %1660
  %1675 = lshr i32 %1674, 4
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1677, i8* %1678, align 1
  %1679 = icmp eq i32 %1660, 0
  %1680 = zext i1 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1680, i8* %1681, align 1
  %1682 = lshr i32 %1660, 31
  %1683 = trunc i32 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1683, i8* %1684, align 1
  %1685 = lshr i32 %1657, 31
  %1686 = lshr i32 %1659, 31
  %1687 = xor i32 %1682, %1685
  %1688 = xor i32 %1682, %1686
  %1689 = add i32 %1687, %1688
  %1690 = icmp eq i32 %1689, 2
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1691, i8* %1692, align 1
  store %struct.Memory* %loadMem_45f286, %struct.Memory** %MEMORY
  %loadMem_45f289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 5
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %ECX.i569 = bitcast %union.anon* %1698 to i32*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 15
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RBP.i570
  %1703 = sub i64 %1702, 68
  %1704 = load i32, i32* %ECX.i569
  %1705 = zext i32 %1704 to i64
  %1706 = load i64, i64* %PC.i568
  %1707 = add i64 %1706, 3
  store i64 %1707, i64* %PC.i568
  %1708 = inttoptr i64 %1703 to i32*
  store i32 %1704, i32* %1708
  store %struct.Memory* %loadMem_45f289, %struct.Memory** %MEMORY
  %loadMem_45f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 1
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 15
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RBP.i567
  %1719 = sub i64 %1718, 8
  %1720 = load i64, i64* %PC.i565
  %1721 = add i64 %1720, 4
  store i64 %1721, i64* %PC.i565
  %1722 = inttoptr i64 %1719 to i64*
  %1723 = load i64, i64* %1722
  store i64 %1723, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_45f28c, %struct.Memory** %MEMORY
  %loadMem_45f290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 1
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 5
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RAX.i563
  %1734 = add i64 %1733, 28
  %1735 = load i64, i64* %PC.i562
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %PC.i562
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RCX.i564, align 8
  store %struct.Memory* %loadMem_45f290, %struct.Memory** %MEMORY
  %loadMem_45f293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RBP.i561
  %1750 = sub i64 %1749, 8
  %1751 = load i64, i64* %PC.i559
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC.i559
  %1753 = inttoptr i64 %1750 to i64*
  %1754 = load i64, i64* %1753
  store i64 %1754, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_45f293, %struct.Memory** %MEMORY
  %loadMem_45f297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 1
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 5
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RCX.i558
  %1765 = load i64, i64* %RAX.i557
  %1766 = add i64 %1765, 44
  %1767 = load i64, i64* %PC.i556
  %1768 = add i64 %1767, 3
  store i64 %1768, i64* %PC.i556
  %1769 = trunc i64 %1764 to i32
  %1770 = inttoptr i64 %1766 to i32*
  %1771 = load i32, i32* %1770
  %1772 = sub i32 %1769, %1771
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RCX.i558, align 8
  %1774 = icmp ult i32 %1769, %1771
  %1775 = zext i1 %1774 to i8
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1775, i8* %1776, align 1
  %1777 = and i32 %1772, 255
  %1778 = call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1781, i8* %1782, align 1
  %1783 = xor i32 %1771, %1769
  %1784 = xor i32 %1783, %1772
  %1785 = lshr i32 %1784, 4
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1787, i8* %1788, align 1
  %1789 = icmp eq i32 %1772, 0
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1790, i8* %1791, align 1
  %1792 = lshr i32 %1772, 31
  %1793 = trunc i32 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1793, i8* %1794, align 1
  %1795 = lshr i32 %1769, 31
  %1796 = lshr i32 %1771, 31
  %1797 = xor i32 %1796, %1795
  %1798 = xor i32 %1792, %1795
  %1799 = add i32 %1798, %1797
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1801, i8* %1802, align 1
  store %struct.Memory* %loadMem_45f297, %struct.Memory** %MEMORY
  %loadMem_45f29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 5
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %ECX.i554 = bitcast %union.anon* %1808 to i32*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %RBP.i555
  %1813 = sub i64 %1812, 52
  %1814 = load i32, i32* %ECX.i554
  %1815 = zext i32 %1814 to i64
  %1816 = load i64, i64* %PC.i553
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %PC.i553
  %1818 = inttoptr i64 %1813 to i32*
  store i32 %1814, i32* %1818
  store %struct.Memory* %loadMem_45f29a, %struct.Memory** %MEMORY
  %loadMem_45f29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 1
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %RBP.i552
  %1829 = sub i64 %1828, 8
  %1830 = load i64, i64* %PC.i550
  %1831 = add i64 %1830, 4
  store i64 %1831, i64* %PC.i550
  %1832 = inttoptr i64 %1829 to i64*
  %1833 = load i64, i64* %1832
  store i64 %1833, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_45f29d, %struct.Memory** %MEMORY
  %loadMem_45f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 1
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 5
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %RAX.i548
  %1844 = add i64 %1843, 12
  %1845 = load i64, i64* %PC.i547
  %1846 = add i64 %1845, 3
  store i64 %1846, i64* %PC.i547
  %1847 = inttoptr i64 %1844 to i32*
  %1848 = load i32, i32* %1847
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RCX.i549, align 8
  store %struct.Memory* %loadMem_45f2a1, %struct.Memory** %MEMORY
  %loadMem_45f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 1
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i546
  %1860 = sub i64 %1859, 8
  %1861 = load i64, i64* %PC.i544
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC.i544
  %1863 = inttoptr i64 %1860 to i64*
  %1864 = load i64, i64* %1863
  store i64 %1864, i64* %RAX.i545, align 8
  store %struct.Memory* %loadMem_45f2a4, %struct.Memory** %MEMORY
  %loadMem_45f2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 1
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 5
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RCX.i543
  %1875 = load i64, i64* %RAX.i542
  %1876 = add i64 %1875, 60
  %1877 = load i64, i64* %PC.i541
  %1878 = add i64 %1877, 3
  store i64 %1878, i64* %PC.i541
  %1879 = trunc i64 %1874 to i32
  %1880 = inttoptr i64 %1876 to i32*
  %1881 = load i32, i32* %1880
  %1882 = sub i32 %1879, %1881
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i543, align 8
  %1884 = icmp ult i32 %1879, %1881
  %1885 = zext i1 %1884 to i8
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1885, i8* %1886, align 1
  %1887 = and i32 %1882, 255
  %1888 = call i32 @llvm.ctpop.i32(i32 %1887)
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1891, i8* %1892, align 1
  %1893 = xor i32 %1881, %1879
  %1894 = xor i32 %1893, %1882
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1897, i8* %1898, align 1
  %1899 = icmp eq i32 %1882, 0
  %1900 = zext i1 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1882, 31
  %1903 = trunc i32 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i32 %1879, 31
  %1906 = lshr i32 %1881, 31
  %1907 = xor i32 %1906, %1905
  %1908 = xor i32 %1902, %1905
  %1909 = add i32 %1908, %1907
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1911, i8* %1912, align 1
  store %struct.Memory* %loadMem_45f2a8, %struct.Memory** %MEMORY
  %loadMem_45f2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 5
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %ECX.i539 = bitcast %union.anon* %1918 to i32*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i540
  %1923 = sub i64 %1922, 36
  %1924 = load i32, i32* %ECX.i539
  %1925 = zext i32 %1924 to i64
  %1926 = load i64, i64* %PC.i538
  %1927 = add i64 %1926, 3
  store i64 %1927, i64* %PC.i538
  %1928 = inttoptr i64 %1923 to i32*
  store i32 %1924, i32* %1928
  store %struct.Memory* %loadMem_45f2ab, %struct.Memory** %MEMORY
  %loadMem_45f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i537
  %1939 = sub i64 %1938, 96
  %1940 = load i64, i64* %PC.i535
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %PC.i535
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_45f2ae, %struct.Memory** %MEMORY
  %loadMem_45f2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 5
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RCX.i533
  %1955 = load i64, i64* %RBP.i534
  %1956 = sub i64 %1955, 80
  %1957 = load i64, i64* %PC.i532
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %PC.i532
  %1959 = trunc i64 %1954 to i32
  %1960 = inttoptr i64 %1956 to i32*
  %1961 = load i32, i32* %1960
  %1962 = add i32 %1961, %1959
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RCX.i533, align 8
  %1964 = icmp ult i32 %1962, %1959
  %1965 = icmp ult i32 %1962, %1961
  %1966 = or i1 %1964, %1965
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1
  %1969 = and i32 %1962, 255
  %1970 = call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1973, i8* %1974, align 1
  %1975 = xor i32 %1961, %1959
  %1976 = xor i32 %1975, %1962
  %1977 = lshr i32 %1976, 4
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1979, i8* %1980, align 1
  %1981 = icmp eq i32 %1962, 0
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1982, i8* %1983, align 1
  %1984 = lshr i32 %1962, 31
  %1985 = trunc i32 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1985, i8* %1986, align 1
  %1987 = lshr i32 %1959, 31
  %1988 = lshr i32 %1961, 31
  %1989 = xor i32 %1984, %1987
  %1990 = xor i32 %1984, %1988
  %1991 = add i32 %1989, %1990
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1993, i8* %1994, align 1
  store %struct.Memory* %loadMem_45f2b1, %struct.Memory** %MEMORY
  %loadMem_45f2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 5
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %ECX.i530 = bitcast %union.anon* %2000 to i32*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RBP.i531
  %2005 = sub i64 %2004, 176
  %2006 = load i32, i32* %ECX.i530
  %2007 = zext i32 %2006 to i64
  %2008 = load i64, i64* %PC.i529
  %2009 = add i64 %2008, 6
  store i64 %2009, i64* %PC.i529
  %2010 = inttoptr i64 %2005 to i32*
  store i32 %2006, i32* %2010
  store %struct.Memory* %loadMem_45f2b4, %struct.Memory** %MEMORY
  %loadMem_45f2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 5
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RBP.i528
  %2021 = sub i64 %2020, 96
  %2022 = load i64, i64* %PC.i526
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %PC.i526
  %2024 = inttoptr i64 %2021 to i32*
  %2025 = load i32, i32* %2024
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_45f2ba, %struct.Memory** %MEMORY
  %loadMem_45f2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 5
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 15
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %RCX.i524
  %2037 = load i64, i64* %RBP.i525
  %2038 = sub i64 %2037, 80
  %2039 = load i64, i64* %PC.i523
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC.i523
  %2041 = trunc i64 %2036 to i32
  %2042 = inttoptr i64 %2038 to i32*
  %2043 = load i32, i32* %2042
  %2044 = sub i32 %2041, %2043
  %2045 = zext i32 %2044 to i64
  store i64 %2045, i64* %RCX.i524, align 8
  %2046 = icmp ult i32 %2041, %2043
  %2047 = zext i1 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2047, i8* %2048, align 1
  %2049 = and i32 %2044, 255
  %2050 = call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2053, i8* %2054, align 1
  %2055 = xor i32 %2043, %2041
  %2056 = xor i32 %2055, %2044
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2059, i8* %2060, align 1
  %2061 = icmp eq i32 %2044, 0
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i32 %2044, 31
  %2065 = trunc i32 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2065, i8* %2066, align 1
  %2067 = lshr i32 %2041, 31
  %2068 = lshr i32 %2043, 31
  %2069 = xor i32 %2068, %2067
  %2070 = xor i32 %2064, %2067
  %2071 = add i32 %2070, %2069
  %2072 = icmp eq i32 %2071, 2
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2073, i8* %2074, align 1
  store %struct.Memory* %loadMem_45f2bd, %struct.Memory** %MEMORY
  %loadMem_45f2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 5
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %ECX.i521 = bitcast %union.anon* %2080 to i32*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i522
  %2085 = sub i64 %2084, 144
  %2086 = load i32, i32* %ECX.i521
  %2087 = zext i32 %2086 to i64
  %2088 = load i64, i64* %PC.i520
  %2089 = add i64 %2088, 6
  store i64 %2089, i64* %PC.i520
  %2090 = inttoptr i64 %2085 to i32*
  store i32 %2086, i32* %2090
  store %struct.Memory* %loadMem_45f2c0, %struct.Memory** %MEMORY
  %loadMem_45f2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 5
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i519
  %2101 = sub i64 %2100, 64
  %2102 = load i64, i64* %PC.i517
  %2103 = add i64 %2102, 3
  store i64 %2103, i64* %PC.i517
  %2104 = inttoptr i64 %2101 to i32*
  %2105 = load i32, i32* %2104
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RCX.i518, align 8
  store %struct.Memory* %loadMem_45f2c6, %struct.Memory** %MEMORY
  %loadMem_45f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 5
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RCX.i515
  %2117 = load i64, i64* %RBP.i516
  %2118 = sub i64 %2117, 48
  %2119 = load i64, i64* %PC.i514
  %2120 = add i64 %2119, 3
  store i64 %2120, i64* %PC.i514
  %2121 = trunc i64 %2116 to i32
  %2122 = inttoptr i64 %2118 to i32*
  %2123 = load i32, i32* %2122
  %2124 = add i32 %2123, %2121
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i515, align 8
  %2126 = icmp ult i32 %2124, %2121
  %2127 = icmp ult i32 %2124, %2123
  %2128 = or i1 %2126, %2127
  %2129 = zext i1 %2128 to i8
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2129, i8* %2130, align 1
  %2131 = and i32 %2124, 255
  %2132 = call i32 @llvm.ctpop.i32(i32 %2131)
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2135, i8* %2136, align 1
  %2137 = xor i32 %2123, %2121
  %2138 = xor i32 %2137, %2124
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2141, i8* %2142, align 1
  %2143 = icmp eq i32 %2124, 0
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2144, i8* %2145, align 1
  %2146 = lshr i32 %2124, 31
  %2147 = trunc i32 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2147, i8* %2148, align 1
  %2149 = lshr i32 %2121, 31
  %2150 = lshr i32 %2123, 31
  %2151 = xor i32 %2146, %2149
  %2152 = xor i32 %2146, %2150
  %2153 = add i32 %2151, %2152
  %2154 = icmp eq i32 %2153, 2
  %2155 = zext i1 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2155, i8* %2156, align 1
  store %struct.Memory* %loadMem_45f2c9, %struct.Memory** %MEMORY
  %loadMem_45f2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 5
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %ECX.i512 = bitcast %union.anon* %2162 to i32*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 15
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %RBP.i513
  %2167 = sub i64 %2166, 160
  %2168 = load i32, i32* %ECX.i512
  %2169 = zext i32 %2168 to i64
  %2170 = load i64, i64* %PC.i511
  %2171 = add i64 %2170, 6
  store i64 %2171, i64* %PC.i511
  %2172 = inttoptr i64 %2167 to i32*
  store i32 %2168, i32* %2172
  store %struct.Memory* %loadMem_45f2cc, %struct.Memory** %MEMORY
  %loadMem_45f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 5
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RBP.i510
  %2183 = sub i64 %2182, 48
  %2184 = load i64, i64* %PC.i508
  %2185 = add i64 %2184, 3
  store i64 %2185, i64* %PC.i508
  %2186 = inttoptr i64 %2183 to i32*
  %2187 = load i32, i32* %2186
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_45f2d2, %struct.Memory** %MEMORY
  %loadMem_45f2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 5
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RCX.i506
  %2199 = load i64, i64* %RBP.i507
  %2200 = sub i64 %2199, 64
  %2201 = load i64, i64* %PC.i505
  %2202 = add i64 %2201, 3
  store i64 %2202, i64* %PC.i505
  %2203 = trunc i64 %2198 to i32
  %2204 = inttoptr i64 %2200 to i32*
  %2205 = load i32, i32* %2204
  %2206 = sub i32 %2203, %2205
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RCX.i506, align 8
  %2208 = icmp ult i32 %2203, %2205
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2209, i8* %2210, align 1
  %2211 = and i32 %2206, 255
  %2212 = call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2215, i8* %2216, align 1
  %2217 = xor i32 %2205, %2203
  %2218 = xor i32 %2217, %2206
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2221, i8* %2222, align 1
  %2223 = icmp eq i32 %2206, 0
  %2224 = zext i1 %2223 to i8
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2224, i8* %2225, align 1
  %2226 = lshr i32 %2206, 31
  %2227 = trunc i32 %2226 to i8
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2227, i8* %2228, align 1
  %2229 = lshr i32 %2203, 31
  %2230 = lshr i32 %2205, 31
  %2231 = xor i32 %2230, %2229
  %2232 = xor i32 %2226, %2229
  %2233 = add i32 %2232, %2231
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2235, i8* %2236, align 1
  store %struct.Memory* %loadMem_45f2d5, %struct.Memory** %MEMORY
  %loadMem_45f2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 5
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %ECX.i503 = bitcast %union.anon* %2242 to i32*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 15
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RBP.i504
  %2247 = sub i64 %2246, 128
  %2248 = load i32, i32* %ECX.i503
  %2249 = zext i32 %2248 to i64
  %2250 = load i64, i64* %PC.i502
  %2251 = add i64 %2250, 3
  store i64 %2251, i64* %PC.i502
  %2252 = inttoptr i64 %2247 to i32*
  store i32 %2248, i32* %2252
  store %struct.Memory* %loadMem_45f2d8, %struct.Memory** %MEMORY
  %loadMem_45f2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 5
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RCX.i500 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i501
  %2263 = sub i64 %2262, 92
  %2264 = load i64, i64* %PC.i499
  %2265 = add i64 %2264, 3
  store i64 %2265, i64* %PC.i499
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RCX.i500, align 8
  store %struct.Memory* %loadMem_45f2db, %struct.Memory** %MEMORY
  %loadMem_45f2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 5
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 15
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %RCX.i497
  %2279 = load i64, i64* %RBP.i498
  %2280 = sub i64 %2279, 76
  %2281 = load i64, i64* %PC.i496
  %2282 = add i64 %2281, 3
  store i64 %2282, i64* %PC.i496
  %2283 = trunc i64 %2278 to i32
  %2284 = inttoptr i64 %2280 to i32*
  %2285 = load i32, i32* %2284
  %2286 = add i32 %2285, %2283
  %2287 = zext i32 %2286 to i64
  store i64 %2287, i64* %RCX.i497, align 8
  %2288 = icmp ult i32 %2286, %2283
  %2289 = icmp ult i32 %2286, %2285
  %2290 = or i1 %2288, %2289
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2291, i8* %2292, align 1
  %2293 = and i32 %2286, 255
  %2294 = call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2297, i8* %2298, align 1
  %2299 = xor i32 %2285, %2283
  %2300 = xor i32 %2299, %2286
  %2301 = lshr i32 %2300, 4
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2303, i8* %2304, align 1
  %2305 = icmp eq i32 %2286, 0
  %2306 = zext i1 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2306, i8* %2307, align 1
  %2308 = lshr i32 %2286, 31
  %2309 = trunc i32 %2308 to i8
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2309, i8* %2310, align 1
  %2311 = lshr i32 %2283, 31
  %2312 = lshr i32 %2285, 31
  %2313 = xor i32 %2308, %2311
  %2314 = xor i32 %2308, %2312
  %2315 = add i32 %2313, %2314
  %2316 = icmp eq i32 %2315, 2
  %2317 = zext i1 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2317, i8* %2318, align 1
  store %struct.Memory* %loadMem_45f2de, %struct.Memory** %MEMORY
  %loadMem_45f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 5
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %ECX.i494 = bitcast %union.anon* %2324 to i32*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 15
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %RBP.i495
  %2329 = sub i64 %2328, 172
  %2330 = load i32, i32* %ECX.i494
  %2331 = zext i32 %2330 to i64
  %2332 = load i64, i64* %PC.i493
  %2333 = add i64 %2332, 6
  store i64 %2333, i64* %PC.i493
  %2334 = inttoptr i64 %2329 to i32*
  store i32 %2330, i32* %2334
  store %struct.Memory* %loadMem_45f2e1, %struct.Memory** %MEMORY
  %loadMem_45f2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 15
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %RBP.i492
  %2345 = sub i64 %2344, 92
  %2346 = load i64, i64* %PC.i490
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC.i490
  %2348 = inttoptr i64 %2345 to i32*
  %2349 = load i32, i32* %2348
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RCX.i491, align 8
  store %struct.Memory* %loadMem_45f2e7, %struct.Memory** %MEMORY
  %loadMem_45f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 5
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 15
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RCX.i488
  %2361 = load i64, i64* %RBP.i489
  %2362 = sub i64 %2361, 76
  %2363 = load i64, i64* %PC.i487
  %2364 = add i64 %2363, 3
  store i64 %2364, i64* %PC.i487
  %2365 = trunc i64 %2360 to i32
  %2366 = inttoptr i64 %2362 to i32*
  %2367 = load i32, i32* %2366
  %2368 = sub i32 %2365, %2367
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RCX.i488, align 8
  %2370 = icmp ult i32 %2365, %2367
  %2371 = zext i1 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2371, i8* %2372, align 1
  %2373 = and i32 %2368, 255
  %2374 = call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2377, i8* %2378, align 1
  %2379 = xor i32 %2367, %2365
  %2380 = xor i32 %2379, %2368
  %2381 = lshr i32 %2380, 4
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2383, i8* %2384, align 1
  %2385 = icmp eq i32 %2368, 0
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2386, i8* %2387, align 1
  %2388 = lshr i32 %2368, 31
  %2389 = trunc i32 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2389, i8* %2390, align 1
  %2391 = lshr i32 %2365, 31
  %2392 = lshr i32 %2367, 31
  %2393 = xor i32 %2392, %2391
  %2394 = xor i32 %2388, %2391
  %2395 = add i32 %2394, %2393
  %2396 = icmp eq i32 %2395, 2
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2397, i8* %2398, align 1
  store %struct.Memory* %loadMem_45f2ea, %struct.Memory** %MEMORY
  %loadMem_45f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 33
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 5
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %ECX.i485 = bitcast %union.anon* %2404 to i32*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 15
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %RBP.i486
  %2409 = sub i64 %2408, 140
  %2410 = load i32, i32* %ECX.i485
  %2411 = zext i32 %2410 to i64
  %2412 = load i64, i64* %PC.i484
  %2413 = add i64 %2412, 6
  store i64 %2413, i64* %PC.i484
  %2414 = inttoptr i64 %2409 to i32*
  store i32 %2410, i32* %2414
  store %struct.Memory* %loadMem_45f2ed, %struct.Memory** %MEMORY
  %loadMem_45f2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 5
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 15
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RBP.i483
  %2425 = sub i64 %2424, 60
  %2426 = load i64, i64* %PC.i481
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %PC.i481
  %2428 = inttoptr i64 %2425 to i32*
  %2429 = load i32, i32* %2428
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_45f2f3, %struct.Memory** %MEMORY
  %loadMem_45f2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 5
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RCX.i479
  %2441 = load i64, i64* %RBP.i480
  %2442 = sub i64 %2441, 44
  %2443 = load i64, i64* %PC.i478
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i478
  %2445 = trunc i64 %2440 to i32
  %2446 = inttoptr i64 %2442 to i32*
  %2447 = load i32, i32* %2446
  %2448 = add i32 %2447, %2445
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i479, align 8
  %2450 = icmp ult i32 %2448, %2445
  %2451 = icmp ult i32 %2448, %2447
  %2452 = or i1 %2450, %2451
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2453, i8* %2454, align 1
  %2455 = and i32 %2448, 255
  %2456 = call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2459, i8* %2460, align 1
  %2461 = xor i32 %2447, %2445
  %2462 = xor i32 %2461, %2448
  %2463 = lshr i32 %2462, 4
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2465, i8* %2466, align 1
  %2467 = icmp eq i32 %2448, 0
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i32 %2448, 31
  %2471 = trunc i32 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2471, i8* %2472, align 1
  %2473 = lshr i32 %2445, 31
  %2474 = lshr i32 %2447, 31
  %2475 = xor i32 %2470, %2473
  %2476 = xor i32 %2470, %2474
  %2477 = add i32 %2475, %2476
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2479, i8* %2480, align 1
  store %struct.Memory* %loadMem_45f2f6, %struct.Memory** %MEMORY
  %loadMem_45f2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 5
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %ECX.i476 = bitcast %union.anon* %2486 to i32*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RBP.i477
  %2491 = sub i64 %2490, 156
  %2492 = load i32, i32* %ECX.i476
  %2493 = zext i32 %2492 to i64
  %2494 = load i64, i64* %PC.i475
  %2495 = add i64 %2494, 6
  store i64 %2495, i64* %PC.i475
  %2496 = inttoptr i64 %2491 to i32*
  store i32 %2492, i32* %2496
  store %struct.Memory* %loadMem_45f2f9, %struct.Memory** %MEMORY
  %loadMem_45f2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 5
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 15
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RBP.i474
  %2507 = sub i64 %2506, 44
  %2508 = load i64, i64* %PC.i472
  %2509 = add i64 %2508, 3
  store i64 %2509, i64* %PC.i472
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_45f2ff, %struct.Memory** %MEMORY
  %loadMem_45f302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RCX.i470
  %2523 = load i64, i64* %RBP.i471
  %2524 = sub i64 %2523, 60
  %2525 = load i64, i64* %PC.i469
  %2526 = add i64 %2525, 3
  store i64 %2526, i64* %PC.i469
  %2527 = trunc i64 %2522 to i32
  %2528 = inttoptr i64 %2524 to i32*
  %2529 = load i32, i32* %2528
  %2530 = sub i32 %2527, %2529
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RCX.i470, align 8
  %2532 = icmp ult i32 %2527, %2529
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2533, i8* %2534, align 1
  %2535 = and i32 %2530, 255
  %2536 = call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2539, i8* %2540, align 1
  %2541 = xor i32 %2529, %2527
  %2542 = xor i32 %2541, %2530
  %2543 = lshr i32 %2542, 4
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2545, i8* %2546, align 1
  %2547 = icmp eq i32 %2530, 0
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2548, i8* %2549, align 1
  %2550 = lshr i32 %2530, 31
  %2551 = trunc i32 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2551, i8* %2552, align 1
  %2553 = lshr i32 %2527, 31
  %2554 = lshr i32 %2529, 31
  %2555 = xor i32 %2554, %2553
  %2556 = xor i32 %2550, %2553
  %2557 = add i32 %2556, %2555
  %2558 = icmp eq i32 %2557, 2
  %2559 = zext i1 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2559, i8* %2560, align 1
  store %struct.Memory* %loadMem_45f302, %struct.Memory** %MEMORY
  %loadMem_45f305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 5
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %ECX.i467 = bitcast %union.anon* %2566 to i32*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RBP.i468
  %2571 = sub i64 %2570, 124
  %2572 = load i32, i32* %ECX.i467
  %2573 = zext i32 %2572 to i64
  %2574 = load i64, i64* %PC.i466
  %2575 = add i64 %2574, 3
  store i64 %2575, i64* %PC.i466
  %2576 = inttoptr i64 %2571 to i32*
  store i32 %2572, i32* %2576
  store %struct.Memory* %loadMem_45f305, %struct.Memory** %MEMORY
  %loadMem_45f308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 5
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RBP.i465
  %2587 = sub i64 %2586, 88
  %2588 = load i64, i64* %PC.i463
  %2589 = add i64 %2588, 3
  store i64 %2589, i64* %PC.i463
  %2590 = inttoptr i64 %2587 to i32*
  %2591 = load i32, i32* %2590
  %2592 = zext i32 %2591 to i64
  store i64 %2592, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_45f308, %struct.Memory** %MEMORY
  %loadMem_45f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 5
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 15
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %RCX.i461
  %2603 = load i64, i64* %RBP.i462
  %2604 = sub i64 %2603, 72
  %2605 = load i64, i64* %PC.i460
  %2606 = add i64 %2605, 3
  store i64 %2606, i64* %PC.i460
  %2607 = trunc i64 %2602 to i32
  %2608 = inttoptr i64 %2604 to i32*
  %2609 = load i32, i32* %2608
  %2610 = add i32 %2609, %2607
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RCX.i461, align 8
  %2612 = icmp ult i32 %2610, %2607
  %2613 = icmp ult i32 %2610, %2609
  %2614 = or i1 %2612, %2613
  %2615 = zext i1 %2614 to i8
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2615, i8* %2616, align 1
  %2617 = and i32 %2610, 255
  %2618 = call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2621, i8* %2622, align 1
  %2623 = xor i32 %2609, %2607
  %2624 = xor i32 %2623, %2610
  %2625 = lshr i32 %2624, 4
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2627, i8* %2628, align 1
  %2629 = icmp eq i32 %2610, 0
  %2630 = zext i1 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i32 %2610, 31
  %2633 = trunc i32 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2633, i8* %2634, align 1
  %2635 = lshr i32 %2607, 31
  %2636 = lshr i32 %2609, 31
  %2637 = xor i32 %2632, %2635
  %2638 = xor i32 %2632, %2636
  %2639 = add i32 %2637, %2638
  %2640 = icmp eq i32 %2639, 2
  %2641 = zext i1 %2640 to i8
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2641, i8* %2642, align 1
  store %struct.Memory* %loadMem_45f30b, %struct.Memory** %MEMORY
  %loadMem_45f30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 5
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %ECX.i458 = bitcast %union.anon* %2648 to i32*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 15
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %RBP.i459
  %2653 = sub i64 %2652, 168
  %2654 = load i32, i32* %ECX.i458
  %2655 = zext i32 %2654 to i64
  %2656 = load i64, i64* %PC.i457
  %2657 = add i64 %2656, 6
  store i64 %2657, i64* %PC.i457
  %2658 = inttoptr i64 %2653 to i32*
  store i32 %2654, i32* %2658
  store %struct.Memory* %loadMem_45f30e, %struct.Memory** %MEMORY
  %loadMem_45f314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 5
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i456
  %2669 = sub i64 %2668, 88
  %2670 = load i64, i64* %PC.i454
  %2671 = add i64 %2670, 3
  store i64 %2671, i64* %PC.i454
  %2672 = inttoptr i64 %2669 to i32*
  %2673 = load i32, i32* %2672
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_45f314, %struct.Memory** %MEMORY
  %loadMem_45f317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 5
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RCX.i452
  %2685 = load i64, i64* %RBP.i453
  %2686 = sub i64 %2685, 72
  %2687 = load i64, i64* %PC.i451
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i451
  %2689 = trunc i64 %2684 to i32
  %2690 = inttoptr i64 %2686 to i32*
  %2691 = load i32, i32* %2690
  %2692 = sub i32 %2689, %2691
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RCX.i452, align 8
  %2694 = icmp ult i32 %2689, %2691
  %2695 = zext i1 %2694 to i8
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2695, i8* %2696, align 1
  %2697 = and i32 %2692, 255
  %2698 = call i32 @llvm.ctpop.i32(i32 %2697)
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2701, i8* %2702, align 1
  %2703 = xor i32 %2691, %2689
  %2704 = xor i32 %2703, %2692
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2707, i8* %2708, align 1
  %2709 = icmp eq i32 %2692, 0
  %2710 = zext i1 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2710, i8* %2711, align 1
  %2712 = lshr i32 %2692, 31
  %2713 = trunc i32 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2713, i8* %2714, align 1
  %2715 = lshr i32 %2689, 31
  %2716 = lshr i32 %2691, 31
  %2717 = xor i32 %2716, %2715
  %2718 = xor i32 %2712, %2715
  %2719 = add i32 %2718, %2717
  %2720 = icmp eq i32 %2719, 2
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2721, i8* %2722, align 1
  store %struct.Memory* %loadMem_45f317, %struct.Memory** %MEMORY
  %loadMem_45f31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 5
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %ECX.i449 = bitcast %union.anon* %2728 to i32*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 15
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %2731 to i64*
  %2732 = load i64, i64* %RBP.i450
  %2733 = sub i64 %2732, 136
  %2734 = load i32, i32* %ECX.i449
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %PC.i448
  %2737 = add i64 %2736, 6
  store i64 %2737, i64* %PC.i448
  %2738 = inttoptr i64 %2733 to i32*
  store i32 %2734, i32* %2738
  store %struct.Memory* %loadMem_45f31a, %struct.Memory** %MEMORY
  %loadMem_45f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 5
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 15
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RBP.i447
  %2749 = sub i64 %2748, 56
  %2750 = load i64, i64* %PC.i445
  %2751 = add i64 %2750, 3
  store i64 %2751, i64* %PC.i445
  %2752 = inttoptr i64 %2749 to i32*
  %2753 = load i32, i32* %2752
  %2754 = zext i32 %2753 to i64
  store i64 %2754, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_45f320, %struct.Memory** %MEMORY
  %loadMem_45f323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 5
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 15
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RCX.i443
  %2765 = load i64, i64* %RBP.i444
  %2766 = sub i64 %2765, 40
  %2767 = load i64, i64* %PC.i442
  %2768 = add i64 %2767, 3
  store i64 %2768, i64* %PC.i442
  %2769 = trunc i64 %2764 to i32
  %2770 = inttoptr i64 %2766 to i32*
  %2771 = load i32, i32* %2770
  %2772 = add i32 %2771, %2769
  %2773 = zext i32 %2772 to i64
  store i64 %2773, i64* %RCX.i443, align 8
  %2774 = icmp ult i32 %2772, %2769
  %2775 = icmp ult i32 %2772, %2771
  %2776 = or i1 %2774, %2775
  %2777 = zext i1 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2777, i8* %2778, align 1
  %2779 = and i32 %2772, 255
  %2780 = call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2783, i8* %2784, align 1
  %2785 = xor i32 %2771, %2769
  %2786 = xor i32 %2785, %2772
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2789, i8* %2790, align 1
  %2791 = icmp eq i32 %2772, 0
  %2792 = zext i1 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i32 %2772, 31
  %2795 = trunc i32 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i32 %2769, 31
  %2798 = lshr i32 %2771, 31
  %2799 = xor i32 %2794, %2797
  %2800 = xor i32 %2794, %2798
  %2801 = add i32 %2799, %2800
  %2802 = icmp eq i32 %2801, 2
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2803, i8* %2804, align 1
  store %struct.Memory* %loadMem_45f323, %struct.Memory** %MEMORY
  %loadMem_45f326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 5
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %ECX.i440 = bitcast %union.anon* %2810 to i32*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RBP.i441
  %2815 = sub i64 %2814, 152
  %2816 = load i32, i32* %ECX.i440
  %2817 = zext i32 %2816 to i64
  %2818 = load i64, i64* %PC.i439
  %2819 = add i64 %2818, 6
  store i64 %2819, i64* %PC.i439
  %2820 = inttoptr i64 %2815 to i32*
  store i32 %2816, i32* %2820
  store %struct.Memory* %loadMem_45f326, %struct.Memory** %MEMORY
  %loadMem_45f32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i438
  %2831 = sub i64 %2830, 40
  %2832 = load i64, i64* %PC.i436
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i436
  %2834 = inttoptr i64 %2831 to i32*
  %2835 = load i32, i32* %2834
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_45f32c, %struct.Memory** %MEMORY
  %loadMem_45f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 5
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %RCX.i434
  %2847 = load i64, i64* %RBP.i435
  %2848 = sub i64 %2847, 56
  %2849 = load i64, i64* %PC.i433
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i433
  %2851 = trunc i64 %2846 to i32
  %2852 = inttoptr i64 %2848 to i32*
  %2853 = load i32, i32* %2852
  %2854 = sub i32 %2851, %2853
  %2855 = zext i32 %2854 to i64
  store i64 %2855, i64* %RCX.i434, align 8
  %2856 = icmp ult i32 %2851, %2853
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2857, i8* %2858, align 1
  %2859 = and i32 %2854, 255
  %2860 = call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2863, i8* %2864, align 1
  %2865 = xor i32 %2853, %2851
  %2866 = xor i32 %2865, %2854
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2869, i8* %2870, align 1
  %2871 = icmp eq i32 %2854, 0
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2872, i8* %2873, align 1
  %2874 = lshr i32 %2854, 31
  %2875 = trunc i32 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2875, i8* %2876, align 1
  %2877 = lshr i32 %2851, 31
  %2878 = lshr i32 %2853, 31
  %2879 = xor i32 %2878, %2877
  %2880 = xor i32 %2874, %2877
  %2881 = add i32 %2880, %2879
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2883, i8* %2884, align 1
  store %struct.Memory* %loadMem_45f32f, %struct.Memory** %MEMORY
  %loadMem_45f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 5
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %ECX.i431 = bitcast %union.anon* %2890 to i32*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 15
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %RBP.i432
  %2895 = sub i64 %2894, 120
  %2896 = load i32, i32* %ECX.i431
  %2897 = zext i32 %2896 to i64
  %2898 = load i64, i64* %PC.i430
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC.i430
  %2900 = inttoptr i64 %2895 to i32*
  store i32 %2896, i32* %2900
  store %struct.Memory* %loadMem_45f332, %struct.Memory** %MEMORY
  %loadMem_45f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 5
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RBP.i429
  %2911 = sub i64 %2910, 84
  %2912 = load i64, i64* %PC.i427
  %2913 = add i64 %2912, 3
  store i64 %2913, i64* %PC.i427
  %2914 = inttoptr i64 %2911 to i32*
  %2915 = load i32, i32* %2914
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_45f335, %struct.Memory** %MEMORY
  %loadMem_45f338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 5
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 15
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RCX.i425
  %2927 = load i64, i64* %RBP.i426
  %2928 = sub i64 %2927, 68
  %2929 = load i64, i64* %PC.i424
  %2930 = add i64 %2929, 3
  store i64 %2930, i64* %PC.i424
  %2931 = trunc i64 %2926 to i32
  %2932 = inttoptr i64 %2928 to i32*
  %2933 = load i32, i32* %2932
  %2934 = add i32 %2933, %2931
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RCX.i425, align 8
  %2936 = icmp ult i32 %2934, %2931
  %2937 = icmp ult i32 %2934, %2933
  %2938 = or i1 %2936, %2937
  %2939 = zext i1 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2939, i8* %2940, align 1
  %2941 = and i32 %2934, 255
  %2942 = call i32 @llvm.ctpop.i32(i32 %2941)
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = xor i8 %2944, 1
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2945, i8* %2946, align 1
  %2947 = xor i32 %2933, %2931
  %2948 = xor i32 %2947, %2934
  %2949 = lshr i32 %2948, 4
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2951, i8* %2952, align 1
  %2953 = icmp eq i32 %2934, 0
  %2954 = zext i1 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2954, i8* %2955, align 1
  %2956 = lshr i32 %2934, 31
  %2957 = trunc i32 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2957, i8* %2958, align 1
  %2959 = lshr i32 %2931, 31
  %2960 = lshr i32 %2933, 31
  %2961 = xor i32 %2956, %2959
  %2962 = xor i32 %2956, %2960
  %2963 = add i32 %2961, %2962
  %2964 = icmp eq i32 %2963, 2
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2965, i8* %2966, align 1
  store %struct.Memory* %loadMem_45f338, %struct.Memory** %MEMORY
  %loadMem_45f33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 5
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %ECX.i422 = bitcast %union.anon* %2972 to i32*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %RBP.i423
  %2977 = sub i64 %2976, 164
  %2978 = load i32, i32* %ECX.i422
  %2979 = zext i32 %2978 to i64
  %2980 = load i64, i64* %PC.i421
  %2981 = add i64 %2980, 6
  store i64 %2981, i64* %PC.i421
  %2982 = inttoptr i64 %2977 to i32*
  store i32 %2978, i32* %2982
  store %struct.Memory* %loadMem_45f33b, %struct.Memory** %MEMORY
  %loadMem_45f341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i420
  %2993 = sub i64 %2992, 84
  %2994 = load i64, i64* %PC.i418
  %2995 = add i64 %2994, 3
  store i64 %2995, i64* %PC.i418
  %2996 = inttoptr i64 %2993 to i32*
  %2997 = load i32, i32* %2996
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RCX.i419, align 8
  store %struct.Memory* %loadMem_45f341, %struct.Memory** %MEMORY
  %loadMem_45f344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 5
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RCX.i416
  %3009 = load i64, i64* %RBP.i417
  %3010 = sub i64 %3009, 68
  %3011 = load i64, i64* %PC.i415
  %3012 = add i64 %3011, 3
  store i64 %3012, i64* %PC.i415
  %3013 = trunc i64 %3008 to i32
  %3014 = inttoptr i64 %3010 to i32*
  %3015 = load i32, i32* %3014
  %3016 = sub i32 %3013, %3015
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RCX.i416, align 8
  %3018 = icmp ult i32 %3013, %3015
  %3019 = zext i1 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3019, i8* %3020, align 1
  %3021 = and i32 %3016, 255
  %3022 = call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3025, i8* %3026, align 1
  %3027 = xor i32 %3015, %3013
  %3028 = xor i32 %3027, %3016
  %3029 = lshr i32 %3028, 4
  %3030 = trunc i32 %3029 to i8
  %3031 = and i8 %3030, 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3031, i8* %3032, align 1
  %3033 = icmp eq i32 %3016, 0
  %3034 = zext i1 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3034, i8* %3035, align 1
  %3036 = lshr i32 %3016, 31
  %3037 = trunc i32 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3037, i8* %3038, align 1
  %3039 = lshr i32 %3013, 31
  %3040 = lshr i32 %3015, 31
  %3041 = xor i32 %3040, %3039
  %3042 = xor i32 %3036, %3039
  %3043 = add i32 %3042, %3041
  %3044 = icmp eq i32 %3043, 2
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3045, i8* %3046, align 1
  store %struct.Memory* %loadMem_45f344, %struct.Memory** %MEMORY
  %loadMem_45f347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 5
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %ECX.i413 = bitcast %union.anon* %3052 to i32*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RBP.i414
  %3057 = sub i64 %3056, 132
  %3058 = load i32, i32* %ECX.i413
  %3059 = zext i32 %3058 to i64
  %3060 = load i64, i64* %PC.i412
  %3061 = add i64 %3060, 6
  store i64 %3061, i64* %PC.i412
  %3062 = inttoptr i64 %3057 to i32*
  store i32 %3058, i32* %3062
  store %struct.Memory* %loadMem_45f347, %struct.Memory** %MEMORY
  %loadMem_45f34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 5
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 15
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3071 to i64*
  %3072 = load i64, i64* %RBP.i411
  %3073 = sub i64 %3072, 52
  %3074 = load i64, i64* %PC.i409
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i409
  %3076 = inttoptr i64 %3073 to i32*
  %3077 = load i32, i32* %3076
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_45f34d, %struct.Memory** %MEMORY
  %loadMem_45f350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 5
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 15
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RCX.i407
  %3089 = load i64, i64* %RBP.i408
  %3090 = sub i64 %3089, 36
  %3091 = load i64, i64* %PC.i406
  %3092 = add i64 %3091, 3
  store i64 %3092, i64* %PC.i406
  %3093 = trunc i64 %3088 to i32
  %3094 = inttoptr i64 %3090 to i32*
  %3095 = load i32, i32* %3094
  %3096 = add i32 %3095, %3093
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RCX.i407, align 8
  %3098 = icmp ult i32 %3096, %3093
  %3099 = icmp ult i32 %3096, %3095
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3101, i8* %3102, align 1
  %3103 = and i32 %3096, 255
  %3104 = call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3107, i8* %3108, align 1
  %3109 = xor i32 %3095, %3093
  %3110 = xor i32 %3109, %3096
  %3111 = lshr i32 %3110, 4
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3113, i8* %3114, align 1
  %3115 = icmp eq i32 %3096, 0
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3116, i8* %3117, align 1
  %3118 = lshr i32 %3096, 31
  %3119 = trunc i32 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3119, i8* %3120, align 1
  %3121 = lshr i32 %3093, 31
  %3122 = lshr i32 %3095, 31
  %3123 = xor i32 %3118, %3121
  %3124 = xor i32 %3118, %3122
  %3125 = add i32 %3123, %3124
  %3126 = icmp eq i32 %3125, 2
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3127, i8* %3128, align 1
  store %struct.Memory* %loadMem_45f350, %struct.Memory** %MEMORY
  %loadMem_45f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 5
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %ECX.i404 = bitcast %union.anon* %3134 to i32*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 15
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RBP.i405
  %3139 = sub i64 %3138, 148
  %3140 = load i32, i32* %ECX.i404
  %3141 = zext i32 %3140 to i64
  %3142 = load i64, i64* %PC.i403
  %3143 = add i64 %3142, 6
  store i64 %3143, i64* %PC.i403
  %3144 = inttoptr i64 %3139 to i32*
  store i32 %3140, i32* %3144
  store %struct.Memory* %loadMem_45f353, %struct.Memory** %MEMORY
  %loadMem_45f359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 5
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 15
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RBP.i402
  %3155 = sub i64 %3154, 36
  %3156 = load i64, i64* %PC.i400
  %3157 = add i64 %3156, 3
  store i64 %3157, i64* %PC.i400
  %3158 = inttoptr i64 %3155 to i32*
  %3159 = load i32, i32* %3158
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_45f359, %struct.Memory** %MEMORY
  %loadMem_45f35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 5
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 15
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RCX.i398
  %3171 = load i64, i64* %RBP.i399
  %3172 = sub i64 %3171, 52
  %3173 = load i64, i64* %PC.i397
  %3174 = add i64 %3173, 3
  store i64 %3174, i64* %PC.i397
  %3175 = trunc i64 %3170 to i32
  %3176 = inttoptr i64 %3172 to i32*
  %3177 = load i32, i32* %3176
  %3178 = sub i32 %3175, %3177
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RCX.i398, align 8
  %3180 = icmp ult i32 %3175, %3177
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3181, i8* %3182, align 1
  %3183 = and i32 %3178, 255
  %3184 = call i32 @llvm.ctpop.i32(i32 %3183)
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  %3187 = xor i8 %3186, 1
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3187, i8* %3188, align 1
  %3189 = xor i32 %3177, %3175
  %3190 = xor i32 %3189, %3178
  %3191 = lshr i32 %3190, 4
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3193, i8* %3194, align 1
  %3195 = icmp eq i32 %3178, 0
  %3196 = zext i1 %3195 to i8
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3196, i8* %3197, align 1
  %3198 = lshr i32 %3178, 31
  %3199 = trunc i32 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3199, i8* %3200, align 1
  %3201 = lshr i32 %3175, 31
  %3202 = lshr i32 %3177, 31
  %3203 = xor i32 %3202, %3201
  %3204 = xor i32 %3198, %3201
  %3205 = add i32 %3204, %3203
  %3206 = icmp eq i32 %3205, 2
  %3207 = zext i1 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3207, i8* %3208, align 1
  store %struct.Memory* %loadMem_45f35c, %struct.Memory** %MEMORY
  %loadMem_45f35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 5
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %ECX.i395 = bitcast %union.anon* %3214 to i32*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 15
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %RBP.i396
  %3219 = sub i64 %3218, 116
  %3220 = load i32, i32* %ECX.i395
  %3221 = zext i32 %3220 to i64
  %3222 = load i64, i64* %PC.i394
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i394
  %3224 = inttoptr i64 %3219 to i32*
  store i32 %3220, i32* %3224
  store %struct.Memory* %loadMem_45f35f, %struct.Memory** %MEMORY
  %loadMem_45f362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 5
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 15
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %RBP.i393
  %3235 = sub i64 %3234, 176
  %3236 = load i64, i64* %PC.i391
  %3237 = add i64 %3236, 6
  store i64 %3237, i64* %PC.i391
  %3238 = inttoptr i64 %3235 to i32*
  %3239 = load i32, i32* %3238
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_45f362, %struct.Memory** %MEMORY
  %loadMem_45f368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 5
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 15
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RCX.i389
  %3251 = load i64, i64* %RBP.i390
  %3252 = sub i64 %3251, 164
  %3253 = load i64, i64* %PC.i388
  %3254 = add i64 %3253, 6
  store i64 %3254, i64* %PC.i388
  %3255 = trunc i64 %3250 to i32
  %3256 = inttoptr i64 %3252 to i32*
  %3257 = load i32, i32* %3256
  %3258 = add i32 %3257, %3255
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RCX.i389, align 8
  %3260 = icmp ult i32 %3258, %3255
  %3261 = icmp ult i32 %3258, %3257
  %3262 = or i1 %3260, %3261
  %3263 = zext i1 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3263, i8* %3264, align 1
  %3265 = and i32 %3258, 255
  %3266 = call i32 @llvm.ctpop.i32(i32 %3265)
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  %3269 = xor i8 %3268, 1
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3269, i8* %3270, align 1
  %3271 = xor i32 %3257, %3255
  %3272 = xor i32 %3271, %3258
  %3273 = lshr i32 %3272, 4
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3275, i8* %3276, align 1
  %3277 = icmp eq i32 %3258, 0
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3278, i8* %3279, align 1
  %3280 = lshr i32 %3258, 31
  %3281 = trunc i32 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3281, i8* %3282, align 1
  %3283 = lshr i32 %3255, 31
  %3284 = lshr i32 %3257, 31
  %3285 = xor i32 %3280, %3283
  %3286 = xor i32 %3280, %3284
  %3287 = add i32 %3285, %3286
  %3288 = icmp eq i32 %3287, 2
  %3289 = zext i1 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3289, i8* %3290, align 1
  store %struct.Memory* %loadMem_45f368, %struct.Memory** %MEMORY
  %loadMem_45f36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 5
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %ECX.i386 = bitcast %union.anon* %3296 to i32*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 15
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RBP.i387
  %3301 = sub i64 %3300, 96
  %3302 = load i32, i32* %ECX.i386
  %3303 = zext i32 %3302 to i64
  %3304 = load i64, i64* %PC.i385
  %3305 = add i64 %3304, 3
  store i64 %3305, i64* %PC.i385
  %3306 = inttoptr i64 %3301 to i32*
  store i32 %3302, i32* %3306
  store %struct.Memory* %loadMem_45f36e, %struct.Memory** %MEMORY
  %loadMem_45f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 5
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 15
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RBP.i384
  %3317 = sub i64 %3316, 172
  %3318 = load i64, i64* %PC.i382
  %3319 = add i64 %3318, 6
  store i64 %3319, i64* %PC.i382
  %3320 = inttoptr i64 %3317 to i32*
  %3321 = load i32, i32* %3320
  %3322 = zext i32 %3321 to i64
  store i64 %3322, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_45f371, %struct.Memory** %MEMORY
  %loadMem_45f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 5
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RCX.i380
  %3333 = load i64, i64* %RBP.i381
  %3334 = sub i64 %3333, 168
  %3335 = load i64, i64* %PC.i379
  %3336 = add i64 %3335, 6
  store i64 %3336, i64* %PC.i379
  %3337 = trunc i64 %3332 to i32
  %3338 = inttoptr i64 %3334 to i32*
  %3339 = load i32, i32* %3338
  %3340 = add i32 %3339, %3337
  %3341 = zext i32 %3340 to i64
  store i64 %3341, i64* %RCX.i380, align 8
  %3342 = icmp ult i32 %3340, %3337
  %3343 = icmp ult i32 %3340, %3339
  %3344 = or i1 %3342, %3343
  %3345 = zext i1 %3344 to i8
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3345, i8* %3346, align 1
  %3347 = and i32 %3340, 255
  %3348 = call i32 @llvm.ctpop.i32(i32 %3347)
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = xor i8 %3350, 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3351, i8* %3352, align 1
  %3353 = xor i32 %3339, %3337
  %3354 = xor i32 %3353, %3340
  %3355 = lshr i32 %3354, 4
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3357, i8* %3358, align 1
  %3359 = icmp eq i32 %3340, 0
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3340, 31
  %3363 = trunc i32 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3363, i8* %3364, align 1
  %3365 = lshr i32 %3337, 31
  %3366 = lshr i32 %3339, 31
  %3367 = xor i32 %3362, %3365
  %3368 = xor i32 %3362, %3366
  %3369 = add i32 %3367, %3368
  %3370 = icmp eq i32 %3369, 2
  %3371 = zext i1 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3371, i8* %3372, align 1
  store %struct.Memory* %loadMem_45f377, %struct.Memory** %MEMORY
  %loadMem_45f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 5
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %ECX.i377 = bitcast %union.anon* %3378 to i32*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i378
  %3383 = sub i64 %3382, 92
  %3384 = load i32, i32* %ECX.i377
  %3385 = zext i32 %3384 to i64
  %3386 = load i64, i64* %PC.i376
  %3387 = add i64 %3386, 3
  store i64 %3387, i64* %PC.i376
  %3388 = inttoptr i64 %3383 to i32*
  store i32 %3384, i32* %3388
  store %struct.Memory* %loadMem_45f37d, %struct.Memory** %MEMORY
  %loadMem_45f380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i375
  %3399 = sub i64 %3398, 172
  %3400 = load i64, i64* %PC.i373
  %3401 = add i64 %3400, 6
  store i64 %3401, i64* %PC.i373
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402
  %3404 = zext i32 %3403 to i64
  store i64 %3404, i64* %RCX.i374, align 8
  store %struct.Memory* %loadMem_45f380, %struct.Memory** %MEMORY
  %loadMem_45f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 5
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RCX.i371
  %3415 = load i64, i64* %RBP.i372
  %3416 = sub i64 %3415, 168
  %3417 = load i64, i64* %PC.i370
  %3418 = add i64 %3417, 6
  store i64 %3418, i64* %PC.i370
  %3419 = trunc i64 %3414 to i32
  %3420 = inttoptr i64 %3416 to i32*
  %3421 = load i32, i32* %3420
  %3422 = sub i32 %3419, %3421
  %3423 = zext i32 %3422 to i64
  store i64 %3423, i64* %RCX.i371, align 8
  %3424 = icmp ult i32 %3419, %3421
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3425, i8* %3426, align 1
  %3427 = and i32 %3422, 255
  %3428 = call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3431, i8* %3432, align 1
  %3433 = xor i32 %3421, %3419
  %3434 = xor i32 %3433, %3422
  %3435 = lshr i32 %3434, 4
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3437, i8* %3438, align 1
  %3439 = icmp eq i32 %3422, 0
  %3440 = zext i1 %3439 to i8
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3440, i8* %3441, align 1
  %3442 = lshr i32 %3422, 31
  %3443 = trunc i32 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3443, i8* %3444, align 1
  %3445 = lshr i32 %3419, 31
  %3446 = lshr i32 %3421, 31
  %3447 = xor i32 %3446, %3445
  %3448 = xor i32 %3442, %3445
  %3449 = add i32 %3448, %3447
  %3450 = icmp eq i32 %3449, 2
  %3451 = zext i1 %3450 to i8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3451, i8* %3452, align 1
  store %struct.Memory* %loadMem_45f386, %struct.Memory** %MEMORY
  %loadMem_45f38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 5
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %3458 to i32*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RBP.i369
  %3463 = sub i64 %3462, 88
  %3464 = load i32, i32* %ECX.i368
  %3465 = zext i32 %3464 to i64
  %3466 = load i64, i64* %PC.i367
  %3467 = add i64 %3466, 3
  store i64 %3467, i64* %PC.i367
  %3468 = inttoptr i64 %3463 to i32*
  store i32 %3464, i32* %3468
  store %struct.Memory* %loadMem_45f38c, %struct.Memory** %MEMORY
  %loadMem_45f38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 5
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 15
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %RBP.i366
  %3479 = sub i64 %3478, 176
  %3480 = load i64, i64* %PC.i364
  %3481 = add i64 %3480, 6
  store i64 %3481, i64* %PC.i364
  %3482 = inttoptr i64 %3479 to i32*
  %3483 = load i32, i32* %3482
  %3484 = zext i32 %3483 to i64
  store i64 %3484, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_45f38f, %struct.Memory** %MEMORY
  %loadMem_45f395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 5
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 15
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RCX.i362
  %3495 = load i64, i64* %RBP.i363
  %3496 = sub i64 %3495, 164
  %3497 = load i64, i64* %PC.i361
  %3498 = add i64 %3497, 6
  store i64 %3498, i64* %PC.i361
  %3499 = trunc i64 %3494 to i32
  %3500 = inttoptr i64 %3496 to i32*
  %3501 = load i32, i32* %3500
  %3502 = sub i32 %3499, %3501
  %3503 = zext i32 %3502 to i64
  store i64 %3503, i64* %RCX.i362, align 8
  %3504 = icmp ult i32 %3499, %3501
  %3505 = zext i1 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3505, i8* %3506, align 1
  %3507 = and i32 %3502, 255
  %3508 = call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3511, i8* %3512, align 1
  %3513 = xor i32 %3501, %3499
  %3514 = xor i32 %3513, %3502
  %3515 = lshr i32 %3514, 4
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3517, i8* %3518, align 1
  %3519 = icmp eq i32 %3502, 0
  %3520 = zext i1 %3519 to i8
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3520, i8* %3521, align 1
  %3522 = lshr i32 %3502, 31
  %3523 = trunc i32 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3523, i8* %3524, align 1
  %3525 = lshr i32 %3499, 31
  %3526 = lshr i32 %3501, 31
  %3527 = xor i32 %3526, %3525
  %3528 = xor i32 %3522, %3525
  %3529 = add i32 %3528, %3527
  %3530 = icmp eq i32 %3529, 2
  %3531 = zext i1 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3531, i8* %3532, align 1
  store %struct.Memory* %loadMem_45f395, %struct.Memory** %MEMORY
  %loadMem_45f39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %ECX.i359 = bitcast %union.anon* %3538 to i32*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 15
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3541 to i64*
  %3542 = load i64, i64* %RBP.i360
  %3543 = sub i64 %3542, 84
  %3544 = load i32, i32* %ECX.i359
  %3545 = zext i32 %3544 to i64
  %3546 = load i64, i64* %PC.i358
  %3547 = add i64 %3546, 3
  store i64 %3547, i64* %PC.i358
  %3548 = inttoptr i64 %3543 to i32*
  store i32 %3544, i32* %3548
  store %struct.Memory* %loadMem_45f39b, %struct.Memory** %MEMORY
  %loadMem_45f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 5
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 15
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %3557 to i64*
  %3558 = load i64, i64* %RBP.i357
  %3559 = sub i64 %3558, 160
  %3560 = load i64, i64* %PC.i355
  %3561 = add i64 %3560, 6
  store i64 %3561, i64* %PC.i355
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i356, align 8
  store %struct.Memory* %loadMem_45f39e, %struct.Memory** %MEMORY
  %loadMem_45f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 5
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RCX.i353
  %3575 = load i64, i64* %RBP.i354
  %3576 = sub i64 %3575, 148
  %3577 = load i64, i64* %PC.i352
  %3578 = add i64 %3577, 6
  store i64 %3578, i64* %PC.i352
  %3579 = trunc i64 %3574 to i32
  %3580 = inttoptr i64 %3576 to i32*
  %3581 = load i32, i32* %3580
  %3582 = add i32 %3581, %3579
  %3583 = zext i32 %3582 to i64
  store i64 %3583, i64* %RCX.i353, align 8
  %3584 = icmp ult i32 %3582, %3579
  %3585 = icmp ult i32 %3582, %3581
  %3586 = or i1 %3584, %3585
  %3587 = zext i1 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3587, i8* %3588, align 1
  %3589 = and i32 %3582, 255
  %3590 = call i32 @llvm.ctpop.i32(i32 %3589)
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = xor i8 %3592, 1
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3593, i8* %3594, align 1
  %3595 = xor i32 %3581, %3579
  %3596 = xor i32 %3595, %3582
  %3597 = lshr i32 %3596, 4
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3599, i8* %3600, align 1
  %3601 = icmp eq i32 %3582, 0
  %3602 = zext i1 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3602, i8* %3603, align 1
  %3604 = lshr i32 %3582, 31
  %3605 = trunc i32 %3604 to i8
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3605, i8* %3606, align 1
  %3607 = lshr i32 %3579, 31
  %3608 = lshr i32 %3581, 31
  %3609 = xor i32 %3604, %3607
  %3610 = xor i32 %3604, %3608
  %3611 = add i32 %3609, %3610
  %3612 = icmp eq i32 %3611, 2
  %3613 = zext i1 %3612 to i8
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3613, i8* %3614, align 1
  store %struct.Memory* %loadMem_45f3a4, %struct.Memory** %MEMORY
  %loadMem_45f3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 5
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %3620 to i32*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 15
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RBP.i351
  %3625 = sub i64 %3624, 80
  %3626 = load i32, i32* %ECX.i350
  %3627 = zext i32 %3626 to i64
  %3628 = load i64, i64* %PC.i349
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %PC.i349
  %3630 = inttoptr i64 %3625 to i32*
  store i32 %3626, i32* %3630
  store %struct.Memory* %loadMem_45f3aa, %struct.Memory** %MEMORY
  %loadMem_45f3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 5
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RBP.i348
  %3641 = sub i64 %3640, 156
  %3642 = load i64, i64* %PC.i346
  %3643 = add i64 %3642, 6
  store i64 %3643, i64* %PC.i346
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = zext i32 %3645 to i64
  store i64 %3646, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_45f3ad, %struct.Memory** %MEMORY
  %loadMem_45f3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 5
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RCX.i344
  %3657 = load i64, i64* %RBP.i345
  %3658 = sub i64 %3657, 152
  %3659 = load i64, i64* %PC.i343
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i343
  %3661 = trunc i64 %3656 to i32
  %3662 = inttoptr i64 %3658 to i32*
  %3663 = load i32, i32* %3662
  %3664 = add i32 %3663, %3661
  %3665 = zext i32 %3664 to i64
  store i64 %3665, i64* %RCX.i344, align 8
  %3666 = icmp ult i32 %3664, %3661
  %3667 = icmp ult i32 %3664, %3663
  %3668 = or i1 %3666, %3667
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3669, i8* %3670, align 1
  %3671 = and i32 %3664, 255
  %3672 = call i32 @llvm.ctpop.i32(i32 %3671)
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = xor i8 %3674, 1
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3675, i8* %3676, align 1
  %3677 = xor i32 %3663, %3661
  %3678 = xor i32 %3677, %3664
  %3679 = lshr i32 %3678, 4
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3681, i8* %3682, align 1
  %3683 = icmp eq i32 %3664, 0
  %3684 = zext i1 %3683 to i8
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3684, i8* %3685, align 1
  %3686 = lshr i32 %3664, 31
  %3687 = trunc i32 %3686 to i8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3687, i8* %3688, align 1
  %3689 = lshr i32 %3661, 31
  %3690 = lshr i32 %3663, 31
  %3691 = xor i32 %3686, %3689
  %3692 = xor i32 %3686, %3690
  %3693 = add i32 %3691, %3692
  %3694 = icmp eq i32 %3693, 2
  %3695 = zext i1 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3695, i8* %3696, align 1
  store %struct.Memory* %loadMem_45f3b3, %struct.Memory** %MEMORY
  %loadMem_45f3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 5
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %ECX.i341 = bitcast %union.anon* %3702 to i32*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i342
  %3707 = sub i64 %3706, 76
  %3708 = load i32, i32* %ECX.i341
  %3709 = zext i32 %3708 to i64
  %3710 = load i64, i64* %PC.i340
  %3711 = add i64 %3710, 3
  store i64 %3711, i64* %PC.i340
  %3712 = inttoptr i64 %3707 to i32*
  store i32 %3708, i32* %3712
  store %struct.Memory* %loadMem_45f3b9, %struct.Memory** %MEMORY
  %loadMem_45f3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 5
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i339
  %3723 = sub i64 %3722, 156
  %3724 = load i64, i64* %PC.i337
  %3725 = add i64 %3724, 6
  store i64 %3725, i64* %PC.i337
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RCX.i338, align 8
  store %struct.Memory* %loadMem_45f3bc, %struct.Memory** %MEMORY
  %loadMem_45f3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 5
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 15
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RCX.i335
  %3739 = load i64, i64* %RBP.i336
  %3740 = sub i64 %3739, 152
  %3741 = load i64, i64* %PC.i334
  %3742 = add i64 %3741, 6
  store i64 %3742, i64* %PC.i334
  %3743 = trunc i64 %3738 to i32
  %3744 = inttoptr i64 %3740 to i32*
  %3745 = load i32, i32* %3744
  %3746 = sub i32 %3743, %3745
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RCX.i335, align 8
  %3748 = icmp ult i32 %3743, %3745
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3749, i8* %3750, align 1
  %3751 = and i32 %3746, 255
  %3752 = call i32 @llvm.ctpop.i32(i32 %3751)
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  %3755 = xor i8 %3754, 1
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3755, i8* %3756, align 1
  %3757 = xor i32 %3745, %3743
  %3758 = xor i32 %3757, %3746
  %3759 = lshr i32 %3758, 4
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3761, i8* %3762, align 1
  %3763 = icmp eq i32 %3746, 0
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3764, i8* %3765, align 1
  %3766 = lshr i32 %3746, 31
  %3767 = trunc i32 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3767, i8* %3768, align 1
  %3769 = lshr i32 %3743, 31
  %3770 = lshr i32 %3745, 31
  %3771 = xor i32 %3770, %3769
  %3772 = xor i32 %3766, %3769
  %3773 = add i32 %3772, %3771
  %3774 = icmp eq i32 %3773, 2
  %3775 = zext i1 %3774 to i8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3775, i8* %3776, align 1
  store %struct.Memory* %loadMem_45f3c2, %struct.Memory** %MEMORY
  %loadMem_45f3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 33
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 5
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %ECX.i332 = bitcast %union.anon* %3782 to i32*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 15
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %RBP.i333
  %3787 = sub i64 %3786, 72
  %3788 = load i32, i32* %ECX.i332
  %3789 = zext i32 %3788 to i64
  %3790 = load i64, i64* %PC.i331
  %3791 = add i64 %3790, 3
  store i64 %3791, i64* %PC.i331
  %3792 = inttoptr i64 %3787 to i32*
  store i32 %3788, i32* %3792
  store %struct.Memory* %loadMem_45f3c8, %struct.Memory** %MEMORY
  %loadMem_45f3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 5
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 15
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %3801 to i64*
  %3802 = load i64, i64* %RBP.i330
  %3803 = sub i64 %3802, 160
  %3804 = load i64, i64* %PC.i328
  %3805 = add i64 %3804, 6
  store i64 %3805, i64* %PC.i328
  %3806 = inttoptr i64 %3803 to i32*
  %3807 = load i32, i32* %3806
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_45f3cb, %struct.Memory** %MEMORY
  %loadMem_45f3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 5
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 15
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %RCX.i326
  %3819 = load i64, i64* %RBP.i327
  %3820 = sub i64 %3819, 148
  %3821 = load i64, i64* %PC.i325
  %3822 = add i64 %3821, 6
  store i64 %3822, i64* %PC.i325
  %3823 = trunc i64 %3818 to i32
  %3824 = inttoptr i64 %3820 to i32*
  %3825 = load i32, i32* %3824
  %3826 = sub i32 %3823, %3825
  %3827 = zext i32 %3826 to i64
  store i64 %3827, i64* %RCX.i326, align 8
  %3828 = icmp ult i32 %3823, %3825
  %3829 = zext i1 %3828 to i8
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3829, i8* %3830, align 1
  %3831 = and i32 %3826, 255
  %3832 = call i32 @llvm.ctpop.i32(i32 %3831)
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  %3835 = xor i8 %3834, 1
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3835, i8* %3836, align 1
  %3837 = xor i32 %3825, %3823
  %3838 = xor i32 %3837, %3826
  %3839 = lshr i32 %3838, 4
  %3840 = trunc i32 %3839 to i8
  %3841 = and i8 %3840, 1
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3841, i8* %3842, align 1
  %3843 = icmp eq i32 %3826, 0
  %3844 = zext i1 %3843 to i8
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3844, i8* %3845, align 1
  %3846 = lshr i32 %3826, 31
  %3847 = trunc i32 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3847, i8* %3848, align 1
  %3849 = lshr i32 %3823, 31
  %3850 = lshr i32 %3825, 31
  %3851 = xor i32 %3850, %3849
  %3852 = xor i32 %3846, %3849
  %3853 = add i32 %3852, %3851
  %3854 = icmp eq i32 %3853, 2
  %3855 = zext i1 %3854 to i8
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3855, i8* %3856, align 1
  store %struct.Memory* %loadMem_45f3d1, %struct.Memory** %MEMORY
  %loadMem_45f3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 33
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3859 to i64*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 5
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %3862 to i32*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 15
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RBP.i324
  %3867 = sub i64 %3866, 68
  %3868 = load i32, i32* %ECX.i323
  %3869 = zext i32 %3868 to i64
  %3870 = load i64, i64* %PC.i322
  %3871 = add i64 %3870, 3
  store i64 %3871, i64* %PC.i322
  %3872 = inttoptr i64 %3867 to i32*
  store i32 %3868, i32* %3872
  store %struct.Memory* %loadMem_45f3d7, %struct.Memory** %MEMORY
  %loadMem_45f3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 33
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3875 to i64*
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 5
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 15
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %3881 to i64*
  %3882 = load i64, i64* %RBP.i321
  %3883 = sub i64 %3882, 144
  %3884 = load i64, i64* %PC.i319
  %3885 = add i64 %3884, 6
  store i64 %3885, i64* %PC.i319
  %3886 = inttoptr i64 %3883 to i32*
  %3887 = load i32, i32* %3886
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_45f3da, %struct.Memory** %MEMORY
  %loadMem_45f3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 5
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RCX.i317
  %3899 = load i64, i64* %RBP.i318
  %3900 = sub i64 %3899, 132
  %3901 = load i64, i64* %PC.i316
  %3902 = add i64 %3901, 6
  store i64 %3902, i64* %PC.i316
  %3903 = trunc i64 %3898 to i32
  %3904 = inttoptr i64 %3900 to i32*
  %3905 = load i32, i32* %3904
  %3906 = add i32 %3905, %3903
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RCX.i317, align 8
  %3908 = icmp ult i32 %3906, %3903
  %3909 = icmp ult i32 %3906, %3905
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
  %3919 = xor i32 %3905, %3903
  %3920 = xor i32 %3919, %3906
  %3921 = lshr i32 %3920, 4
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3923, i8* %3924, align 1
  %3925 = icmp eq i32 %3906, 0
  %3926 = zext i1 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3926, i8* %3927, align 1
  %3928 = lshr i32 %3906, 31
  %3929 = trunc i32 %3928 to i8
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3929, i8* %3930, align 1
  %3931 = lshr i32 %3903, 31
  %3932 = lshr i32 %3905, 31
  %3933 = xor i32 %3928, %3931
  %3934 = xor i32 %3928, %3932
  %3935 = add i32 %3933, %3934
  %3936 = icmp eq i32 %3935, 2
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3937, i8* %3938, align 1
  store %struct.Memory* %loadMem_45f3e0, %struct.Memory** %MEMORY
  %loadMem_45f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 5
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %ECX.i314 = bitcast %union.anon* %3944 to i32*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RBP.i315
  %3949 = sub i64 %3948, 64
  %3950 = load i32, i32* %ECX.i314
  %3951 = zext i32 %3950 to i64
  %3952 = load i64, i64* %PC.i313
  %3953 = add i64 %3952, 3
  store i64 %3953, i64* %PC.i313
  %3954 = inttoptr i64 %3949 to i32*
  store i32 %3950, i32* %3954
  store %struct.Memory* %loadMem_45f3e6, %struct.Memory** %MEMORY
  %loadMem_45f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 5
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 15
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RBP.i312
  %3965 = sub i64 %3964, 140
  %3966 = load i64, i64* %PC.i310
  %3967 = add i64 %3966, 6
  store i64 %3967, i64* %PC.i310
  %3968 = inttoptr i64 %3965 to i32*
  %3969 = load i32, i32* %3968
  %3970 = zext i32 %3969 to i64
  store i64 %3970, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_45f3e9, %struct.Memory** %MEMORY
  %loadMem_45f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 33
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 5
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 15
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %3979 to i64*
  %3980 = load i64, i64* %RCX.i308
  %3981 = load i64, i64* %RBP.i309
  %3982 = sub i64 %3981, 136
  %3983 = load i64, i64* %PC.i307
  %3984 = add i64 %3983, 6
  store i64 %3984, i64* %PC.i307
  %3985 = trunc i64 %3980 to i32
  %3986 = inttoptr i64 %3982 to i32*
  %3987 = load i32, i32* %3986
  %3988 = add i32 %3987, %3985
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RCX.i308, align 8
  %3990 = icmp ult i32 %3988, %3985
  %3991 = icmp ult i32 %3988, %3987
  %3992 = or i1 %3990, %3991
  %3993 = zext i1 %3992 to i8
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3993, i8* %3994, align 1
  %3995 = and i32 %3988, 255
  %3996 = call i32 @llvm.ctpop.i32(i32 %3995)
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = xor i8 %3998, 1
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3999, i8* %4000, align 1
  %4001 = xor i32 %3987, %3985
  %4002 = xor i32 %4001, %3988
  %4003 = lshr i32 %4002, 4
  %4004 = trunc i32 %4003 to i8
  %4005 = and i8 %4004, 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4005, i8* %4006, align 1
  %4007 = icmp eq i32 %3988, 0
  %4008 = zext i1 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4008, i8* %4009, align 1
  %4010 = lshr i32 %3988, 31
  %4011 = trunc i32 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4011, i8* %4012, align 1
  %4013 = lshr i32 %3985, 31
  %4014 = lshr i32 %3987, 31
  %4015 = xor i32 %4010, %4013
  %4016 = xor i32 %4010, %4014
  %4017 = add i32 %4015, %4016
  %4018 = icmp eq i32 %4017, 2
  %4019 = zext i1 %4018 to i8
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4019, i8* %4020, align 1
  store %struct.Memory* %loadMem_45f3ef, %struct.Memory** %MEMORY
  %loadMem_45f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 5
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %ECX.i305 = bitcast %union.anon* %4026 to i32*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 15
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4029 to i64*
  %4030 = load i64, i64* %RBP.i306
  %4031 = sub i64 %4030, 60
  %4032 = load i32, i32* %ECX.i305
  %4033 = zext i32 %4032 to i64
  %4034 = load i64, i64* %PC.i304
  %4035 = add i64 %4034, 3
  store i64 %4035, i64* %PC.i304
  %4036 = inttoptr i64 %4031 to i32*
  store i32 %4032, i32* %4036
  store %struct.Memory* %loadMem_45f3f5, %struct.Memory** %MEMORY
  %loadMem_45f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 33
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4039 to i64*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 5
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 15
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %4045 to i64*
  %4046 = load i64, i64* %RBP.i303
  %4047 = sub i64 %4046, 140
  %4048 = load i64, i64* %PC.i301
  %4049 = add i64 %4048, 6
  store i64 %4049, i64* %PC.i301
  %4050 = inttoptr i64 %4047 to i32*
  %4051 = load i32, i32* %4050
  %4052 = zext i32 %4051 to i64
  store i64 %4052, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_45f3f8, %struct.Memory** %MEMORY
  %loadMem_45f3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 5
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 15
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %RCX.i299
  %4063 = load i64, i64* %RBP.i300
  %4064 = sub i64 %4063, 136
  %4065 = load i64, i64* %PC.i298
  %4066 = add i64 %4065, 6
  store i64 %4066, i64* %PC.i298
  %4067 = trunc i64 %4062 to i32
  %4068 = inttoptr i64 %4064 to i32*
  %4069 = load i32, i32* %4068
  %4070 = sub i32 %4067, %4069
  %4071 = zext i32 %4070 to i64
  store i64 %4071, i64* %RCX.i299, align 8
  %4072 = icmp ult i32 %4067, %4069
  %4073 = zext i1 %4072 to i8
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4073, i8* %4074, align 1
  %4075 = and i32 %4070, 255
  %4076 = call i32 @llvm.ctpop.i32(i32 %4075)
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4079, i8* %4080, align 1
  %4081 = xor i32 %4069, %4067
  %4082 = xor i32 %4081, %4070
  %4083 = lshr i32 %4082, 4
  %4084 = trunc i32 %4083 to i8
  %4085 = and i8 %4084, 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4085, i8* %4086, align 1
  %4087 = icmp eq i32 %4070, 0
  %4088 = zext i1 %4087 to i8
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4088, i8* %4089, align 1
  %4090 = lshr i32 %4070, 31
  %4091 = trunc i32 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4091, i8* %4092, align 1
  %4093 = lshr i32 %4067, 31
  %4094 = lshr i32 %4069, 31
  %4095 = xor i32 %4094, %4093
  %4096 = xor i32 %4090, %4093
  %4097 = add i32 %4096, %4095
  %4098 = icmp eq i32 %4097, 2
  %4099 = zext i1 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4099, i8* %4100, align 1
  store %struct.Memory* %loadMem_45f3fe, %struct.Memory** %MEMORY
  %loadMem_45f404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 5
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %ECX.i296 = bitcast %union.anon* %4106 to i32*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 15
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RBP.i297
  %4111 = sub i64 %4110, 56
  %4112 = load i32, i32* %ECX.i296
  %4113 = zext i32 %4112 to i64
  %4114 = load i64, i64* %PC.i295
  %4115 = add i64 %4114, 3
  store i64 %4115, i64* %PC.i295
  %4116 = inttoptr i64 %4111 to i32*
  store i32 %4112, i32* %4116
  store %struct.Memory* %loadMem_45f404, %struct.Memory** %MEMORY
  %loadMem_45f407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 5
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i294
  %4127 = sub i64 %4126, 144
  %4128 = load i64, i64* %PC.i292
  %4129 = add i64 %4128, 6
  store i64 %4129, i64* %PC.i292
  %4130 = inttoptr i64 %4127 to i32*
  %4131 = load i32, i32* %4130
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_45f407, %struct.Memory** %MEMORY
  %loadMem_45f40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 5
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RCX.i290
  %4143 = load i64, i64* %RBP.i291
  %4144 = sub i64 %4143, 132
  %4145 = load i64, i64* %PC.i289
  %4146 = add i64 %4145, 6
  store i64 %4146, i64* %PC.i289
  %4147 = trunc i64 %4142 to i32
  %4148 = inttoptr i64 %4144 to i32*
  %4149 = load i32, i32* %4148
  %4150 = sub i32 %4147, %4149
  %4151 = zext i32 %4150 to i64
  store i64 %4151, i64* %RCX.i290, align 8
  %4152 = icmp ult i32 %4147, %4149
  %4153 = zext i1 %4152 to i8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4153, i8* %4154, align 1
  %4155 = and i32 %4150, 255
  %4156 = call i32 @llvm.ctpop.i32(i32 %4155)
  %4157 = trunc i32 %4156 to i8
  %4158 = and i8 %4157, 1
  %4159 = xor i8 %4158, 1
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4159, i8* %4160, align 1
  %4161 = xor i32 %4149, %4147
  %4162 = xor i32 %4161, %4150
  %4163 = lshr i32 %4162, 4
  %4164 = trunc i32 %4163 to i8
  %4165 = and i8 %4164, 1
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4165, i8* %4166, align 1
  %4167 = icmp eq i32 %4150, 0
  %4168 = zext i1 %4167 to i8
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4168, i8* %4169, align 1
  %4170 = lshr i32 %4150, 31
  %4171 = trunc i32 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4171, i8* %4172, align 1
  %4173 = lshr i32 %4147, 31
  %4174 = lshr i32 %4149, 31
  %4175 = xor i32 %4174, %4173
  %4176 = xor i32 %4170, %4173
  %4177 = add i32 %4176, %4175
  %4178 = icmp eq i32 %4177, 2
  %4179 = zext i1 %4178 to i8
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4179, i8* %4180, align 1
  store %struct.Memory* %loadMem_45f40d, %struct.Memory** %MEMORY
  %loadMem_45f413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 5
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %ECX.i287 = bitcast %union.anon* %4186 to i32*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 15
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %4189 to i64*
  %4190 = load i64, i64* %RBP.i288
  %4191 = sub i64 %4190, 52
  %4192 = load i32, i32* %ECX.i287
  %4193 = zext i32 %4192 to i64
  %4194 = load i64, i64* %PC.i286
  %4195 = add i64 %4194, 3
  store i64 %4195, i64* %PC.i286
  %4196 = inttoptr i64 %4191 to i32*
  store i32 %4192, i32* %4196
  store %struct.Memory* %loadMem_45f413, %struct.Memory** %MEMORY
  %loadMem_45f416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 33
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 5
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 15
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %4205 to i64*
  %4206 = load i64, i64* %RBP.i285
  %4207 = sub i64 %4206, 128
  %4208 = load i64, i64* %PC.i283
  %4209 = add i64 %4208, 3
  store i64 %4209, i64* %PC.i283
  %4210 = inttoptr i64 %4207 to i32*
  %4211 = load i32, i32* %4210
  %4212 = zext i32 %4211 to i64
  store i64 %4212, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_45f416, %struct.Memory** %MEMORY
  %loadMem_45f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 5
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 15
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %RCX.i281
  %4223 = load i64, i64* %RBP.i282
  %4224 = sub i64 %4223, 116
  %4225 = load i64, i64* %PC.i280
  %4226 = add i64 %4225, 3
  store i64 %4226, i64* %PC.i280
  %4227 = trunc i64 %4222 to i32
  %4228 = inttoptr i64 %4224 to i32*
  %4229 = load i32, i32* %4228
  %4230 = add i32 %4229, %4227
  %4231 = zext i32 %4230 to i64
  store i64 %4231, i64* %RCX.i281, align 8
  %4232 = icmp ult i32 %4230, %4227
  %4233 = icmp ult i32 %4230, %4229
  %4234 = or i1 %4232, %4233
  %4235 = zext i1 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4235, i8* %4236, align 1
  %4237 = and i32 %4230, 255
  %4238 = call i32 @llvm.ctpop.i32(i32 %4237)
  %4239 = trunc i32 %4238 to i8
  %4240 = and i8 %4239, 1
  %4241 = xor i8 %4240, 1
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4241, i8* %4242, align 1
  %4243 = xor i32 %4229, %4227
  %4244 = xor i32 %4243, %4230
  %4245 = lshr i32 %4244, 4
  %4246 = trunc i32 %4245 to i8
  %4247 = and i8 %4246, 1
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4247, i8* %4248, align 1
  %4249 = icmp eq i32 %4230, 0
  %4250 = zext i1 %4249 to i8
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4250, i8* %4251, align 1
  %4252 = lshr i32 %4230, 31
  %4253 = trunc i32 %4252 to i8
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4253, i8* %4254, align 1
  %4255 = lshr i32 %4227, 31
  %4256 = lshr i32 %4229, 31
  %4257 = xor i32 %4252, %4255
  %4258 = xor i32 %4252, %4256
  %4259 = add i32 %4257, %4258
  %4260 = icmp eq i32 %4259, 2
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4261, i8* %4262, align 1
  store %struct.Memory* %loadMem_45f419, %struct.Memory** %MEMORY
  %loadMem_45f41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 5
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %ECX.i278 = bitcast %union.anon* %4268 to i32*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 15
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RBP.i279
  %4273 = sub i64 %4272, 48
  %4274 = load i32, i32* %ECX.i278
  %4275 = zext i32 %4274 to i64
  %4276 = load i64, i64* %PC.i277
  %4277 = add i64 %4276, 3
  store i64 %4277, i64* %PC.i277
  %4278 = inttoptr i64 %4273 to i32*
  store i32 %4274, i32* %4278
  store %struct.Memory* %loadMem_45f41c, %struct.Memory** %MEMORY
  %loadMem_45f41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 5
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 15
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RBP.i276
  %4289 = sub i64 %4288, 124
  %4290 = load i64, i64* %PC.i274
  %4291 = add i64 %4290, 3
  store i64 %4291, i64* %PC.i274
  %4292 = inttoptr i64 %4289 to i32*
  %4293 = load i32, i32* %4292
  %4294 = zext i32 %4293 to i64
  store i64 %4294, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_45f41f, %struct.Memory** %MEMORY
  %loadMem_45f422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 5
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 15
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RCX.i272
  %4305 = load i64, i64* %RBP.i273
  %4306 = sub i64 %4305, 120
  %4307 = load i64, i64* %PC.i271
  %4308 = add i64 %4307, 3
  store i64 %4308, i64* %PC.i271
  %4309 = trunc i64 %4304 to i32
  %4310 = inttoptr i64 %4306 to i32*
  %4311 = load i32, i32* %4310
  %4312 = add i32 %4311, %4309
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RCX.i272, align 8
  %4314 = icmp ult i32 %4312, %4309
  %4315 = icmp ult i32 %4312, %4311
  %4316 = or i1 %4314, %4315
  %4317 = zext i1 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4317, i8* %4318, align 1
  %4319 = and i32 %4312, 255
  %4320 = call i32 @llvm.ctpop.i32(i32 %4319)
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = xor i8 %4322, 1
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4323, i8* %4324, align 1
  %4325 = xor i32 %4311, %4309
  %4326 = xor i32 %4325, %4312
  %4327 = lshr i32 %4326, 4
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4329, i8* %4330, align 1
  %4331 = icmp eq i32 %4312, 0
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4332, i8* %4333, align 1
  %4334 = lshr i32 %4312, 31
  %4335 = trunc i32 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4335, i8* %4336, align 1
  %4337 = lshr i32 %4309, 31
  %4338 = lshr i32 %4311, 31
  %4339 = xor i32 %4334, %4337
  %4340 = xor i32 %4334, %4338
  %4341 = add i32 %4339, %4340
  %4342 = icmp eq i32 %4341, 2
  %4343 = zext i1 %4342 to i8
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4343, i8* %4344, align 1
  store %struct.Memory* %loadMem_45f422, %struct.Memory** %MEMORY
  %loadMem_45f425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 5
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %ECX.i269 = bitcast %union.anon* %4350 to i32*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 15
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RBP.i270
  %4355 = sub i64 %4354, 44
  %4356 = load i32, i32* %ECX.i269
  %4357 = zext i32 %4356 to i64
  %4358 = load i64, i64* %PC.i268
  %4359 = add i64 %4358, 3
  store i64 %4359, i64* %PC.i268
  %4360 = inttoptr i64 %4355 to i32*
  store i32 %4356, i32* %4360
  store %struct.Memory* %loadMem_45f425, %struct.Memory** %MEMORY
  %loadMem_45f428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 5
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 15
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %RBP.i267
  %4371 = sub i64 %4370, 124
  %4372 = load i64, i64* %PC.i265
  %4373 = add i64 %4372, 3
  store i64 %4373, i64* %PC.i265
  %4374 = inttoptr i64 %4371 to i32*
  %4375 = load i32, i32* %4374
  %4376 = zext i32 %4375 to i64
  store i64 %4376, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_45f428, %struct.Memory** %MEMORY
  %loadMem_45f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 33
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4379 to i64*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 5
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 15
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %4385 to i64*
  %4386 = load i64, i64* %RCX.i263
  %4387 = load i64, i64* %RBP.i264
  %4388 = sub i64 %4387, 120
  %4389 = load i64, i64* %PC.i262
  %4390 = add i64 %4389, 3
  store i64 %4390, i64* %PC.i262
  %4391 = trunc i64 %4386 to i32
  %4392 = inttoptr i64 %4388 to i32*
  %4393 = load i32, i32* %4392
  %4394 = sub i32 %4391, %4393
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RCX.i263, align 8
  %4396 = icmp ult i32 %4391, %4393
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4397, i8* %4398, align 1
  %4399 = and i32 %4394, 255
  %4400 = call i32 @llvm.ctpop.i32(i32 %4399)
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  %4403 = xor i8 %4402, 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4403, i8* %4404, align 1
  %4405 = xor i32 %4393, %4391
  %4406 = xor i32 %4405, %4394
  %4407 = lshr i32 %4406, 4
  %4408 = trunc i32 %4407 to i8
  %4409 = and i8 %4408, 1
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4409, i8* %4410, align 1
  %4411 = icmp eq i32 %4394, 0
  %4412 = zext i1 %4411 to i8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4412, i8* %4413, align 1
  %4414 = lshr i32 %4394, 31
  %4415 = trunc i32 %4414 to i8
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4415, i8* %4416, align 1
  %4417 = lshr i32 %4391, 31
  %4418 = lshr i32 %4393, 31
  %4419 = xor i32 %4418, %4417
  %4420 = xor i32 %4414, %4417
  %4421 = add i32 %4420, %4419
  %4422 = icmp eq i32 %4421, 2
  %4423 = zext i1 %4422 to i8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4423, i8* %4424, align 1
  store %struct.Memory* %loadMem_45f42b, %struct.Memory** %MEMORY
  %loadMem_45f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 5
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %ECX.i260 = bitcast %union.anon* %4430 to i32*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 15
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %RBP.i261
  %4435 = sub i64 %4434, 40
  %4436 = load i32, i32* %ECX.i260
  %4437 = zext i32 %4436 to i64
  %4438 = load i64, i64* %PC.i259
  %4439 = add i64 %4438, 3
  store i64 %4439, i64* %PC.i259
  %4440 = inttoptr i64 %4435 to i32*
  store i32 %4436, i32* %4440
  store %struct.Memory* %loadMem_45f42e, %struct.Memory** %MEMORY
  %loadMem_45f431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 5
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 15
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %RBP.i258
  %4451 = sub i64 %4450, 128
  %4452 = load i64, i64* %PC.i256
  %4453 = add i64 %4452, 3
  store i64 %4453, i64* %PC.i256
  %4454 = inttoptr i64 %4451 to i32*
  %4455 = load i32, i32* %4454
  %4456 = zext i32 %4455 to i64
  store i64 %4456, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_45f431, %struct.Memory** %MEMORY
  %loadMem_45f434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 5
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RCX.i254
  %4467 = load i64, i64* %RBP.i255
  %4468 = sub i64 %4467, 116
  %4469 = load i64, i64* %PC.i253
  %4470 = add i64 %4469, 3
  store i64 %4470, i64* %PC.i253
  %4471 = trunc i64 %4466 to i32
  %4472 = inttoptr i64 %4468 to i32*
  %4473 = load i32, i32* %4472
  %4474 = sub i32 %4471, %4473
  %4475 = zext i32 %4474 to i64
  store i64 %4475, i64* %RCX.i254, align 8
  %4476 = icmp ult i32 %4471, %4473
  %4477 = zext i1 %4476 to i8
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4477, i8* %4478, align 1
  %4479 = and i32 %4474, 255
  %4480 = call i32 @llvm.ctpop.i32(i32 %4479)
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  %4483 = xor i8 %4482, 1
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4483, i8* %4484, align 1
  %4485 = xor i32 %4473, %4471
  %4486 = xor i32 %4485, %4474
  %4487 = lshr i32 %4486, 4
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4489, i8* %4490, align 1
  %4491 = icmp eq i32 %4474, 0
  %4492 = zext i1 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4492, i8* %4493, align 1
  %4494 = lshr i32 %4474, 31
  %4495 = trunc i32 %4494 to i8
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4495, i8* %4496, align 1
  %4497 = lshr i32 %4471, 31
  %4498 = lshr i32 %4473, 31
  %4499 = xor i32 %4498, %4497
  %4500 = xor i32 %4494, %4497
  %4501 = add i32 %4500, %4499
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4503, i8* %4504, align 1
  store %struct.Memory* %loadMem_45f434, %struct.Memory** %MEMORY
  %loadMem_45f437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 5
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %4510 to i32*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 15
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RBP.i252
  %4515 = sub i64 %4514, 36
  %4516 = load i32, i32* %ECX.i251
  %4517 = zext i32 %4516 to i64
  %4518 = load i64, i64* %PC.i250
  %4519 = add i64 %4518, 3
  store i64 %4519, i64* %PC.i250
  %4520 = inttoptr i64 %4515 to i32*
  store i32 %4516, i32* %4520
  store %struct.Memory* %loadMem_45f437, %struct.Memory** %MEMORY
  %loadMem_45f43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 15
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RBP.i249
  %4531 = sub i64 %4530, 96
  %4532 = load i64, i64* %PC.i247
  %4533 = add i64 %4532, 3
  store i64 %4533, i64* %PC.i247
  %4534 = inttoptr i64 %4531 to i32*
  %4535 = load i32, i32* %4534
  %4536 = zext i32 %4535 to i64
  store i64 %4536, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_45f43a, %struct.Memory** %MEMORY
  %loadMem_45f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 5
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 15
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4545 to i64*
  %4546 = load i64, i64* %RCX.i245
  %4547 = load i64, i64* %RBP.i246
  %4548 = sub i64 %4547, 92
  %4549 = load i64, i64* %PC.i244
  %4550 = add i64 %4549, 3
  store i64 %4550, i64* %PC.i244
  %4551 = trunc i64 %4546 to i32
  %4552 = inttoptr i64 %4548 to i32*
  %4553 = load i32, i32* %4552
  %4554 = add i32 %4553, %4551
  %4555 = zext i32 %4554 to i64
  store i64 %4555, i64* %RCX.i245, align 8
  %4556 = icmp ult i32 %4554, %4551
  %4557 = icmp ult i32 %4554, %4553
  %4558 = or i1 %4556, %4557
  %4559 = zext i1 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4559, i8* %4560, align 1
  %4561 = and i32 %4554, 255
  %4562 = call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4565, i8* %4566, align 1
  %4567 = xor i32 %4553, %4551
  %4568 = xor i32 %4567, %4554
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4571, i8* %4572, align 1
  %4573 = icmp eq i32 %4554, 0
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i32 %4554, 31
  %4577 = trunc i32 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4551, 31
  %4580 = lshr i32 %4553, 31
  %4581 = xor i32 %4576, %4579
  %4582 = xor i32 %4576, %4580
  %4583 = add i32 %4581, %4582
  %4584 = icmp eq i32 %4583, 2
  %4585 = zext i1 %4584 to i8
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4585, i8* %4586, align 1
  store %struct.Memory* %loadMem_45f43d, %struct.Memory** %MEMORY
  %loadMem_45f440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 33
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 5
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %ECX.i242 = bitcast %union.anon* %4592 to i32*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 15
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RBP.i243
  %4597 = sub i64 %4596, 176
  %4598 = load i32, i32* %ECX.i242
  %4599 = zext i32 %4598 to i64
  %4600 = load i64, i64* %PC.i241
  %4601 = add i64 %4600, 6
  store i64 %4601, i64* %PC.i241
  %4602 = inttoptr i64 %4597 to i32*
  store i32 %4598, i32* %4602
  store %struct.Memory* %loadMem_45f440, %struct.Memory** %MEMORY
  %loadMem_45f446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 5
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 15
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4611 to i64*
  %4612 = load i64, i64* %RBP.i240
  %4613 = sub i64 %4612, 96
  %4614 = load i64, i64* %PC.i238
  %4615 = add i64 %4614, 3
  store i64 %4615, i64* %PC.i238
  %4616 = inttoptr i64 %4613 to i32*
  %4617 = load i32, i32* %4616
  %4618 = zext i32 %4617 to i64
  store i64 %4618, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_45f446, %struct.Memory** %MEMORY
  %loadMem_45f449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 5
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 15
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4627 to i64*
  %4628 = load i64, i64* %RCX.i236
  %4629 = load i64, i64* %RBP.i237
  %4630 = sub i64 %4629, 92
  %4631 = load i64, i64* %PC.i235
  %4632 = add i64 %4631, 3
  store i64 %4632, i64* %PC.i235
  %4633 = trunc i64 %4628 to i32
  %4634 = inttoptr i64 %4630 to i32*
  %4635 = load i32, i32* %4634
  %4636 = sub i32 %4633, %4635
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RCX.i236, align 8
  %4638 = icmp ult i32 %4633, %4635
  %4639 = zext i1 %4638 to i8
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4639, i8* %4640, align 1
  %4641 = and i32 %4636, 255
  %4642 = call i32 @llvm.ctpop.i32(i32 %4641)
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  %4645 = xor i8 %4644, 1
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4645, i8* %4646, align 1
  %4647 = xor i32 %4635, %4633
  %4648 = xor i32 %4647, %4636
  %4649 = lshr i32 %4648, 4
  %4650 = trunc i32 %4649 to i8
  %4651 = and i8 %4650, 1
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4651, i8* %4652, align 1
  %4653 = icmp eq i32 %4636, 0
  %4654 = zext i1 %4653 to i8
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4654, i8* %4655, align 1
  %4656 = lshr i32 %4636, 31
  %4657 = trunc i32 %4656 to i8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4657, i8* %4658, align 1
  %4659 = lshr i32 %4633, 31
  %4660 = lshr i32 %4635, 31
  %4661 = xor i32 %4660, %4659
  %4662 = xor i32 %4656, %4659
  %4663 = add i32 %4662, %4661
  %4664 = icmp eq i32 %4663, 2
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4665, i8* %4666, align 1
  store %struct.Memory* %loadMem_45f449, %struct.Memory** %MEMORY
  %loadMem_45f44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 5
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %ECX.i233 = bitcast %union.anon* %4672 to i32*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 15
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %4675 to i64*
  %4676 = load i64, i64* %RBP.i234
  %4677 = sub i64 %4676, 172
  %4678 = load i32, i32* %ECX.i233
  %4679 = zext i32 %4678 to i64
  %4680 = load i64, i64* %PC.i232
  %4681 = add i64 %4680, 6
  store i64 %4681, i64* %PC.i232
  %4682 = inttoptr i64 %4677 to i32*
  store i32 %4678, i32* %4682
  store %struct.Memory* %loadMem_45f44c, %struct.Memory** %MEMORY
  %loadMem_45f452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 33
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 5
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 15
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RBP.i231
  %4693 = sub i64 %4692, 88
  %4694 = load i64, i64* %PC.i229
  %4695 = add i64 %4694, 3
  store i64 %4695, i64* %PC.i229
  %4696 = inttoptr i64 %4693 to i32*
  %4697 = load i32, i32* %4696
  %4698 = zext i32 %4697 to i64
  store i64 %4698, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_45f452, %struct.Memory** %MEMORY
  %loadMem_45f455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 5
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 15
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %4707 to i64*
  %4708 = load i64, i64* %RCX.i227
  %4709 = load i64, i64* %RBP.i228
  %4710 = sub i64 %4709, 84
  %4711 = load i64, i64* %PC.i226
  %4712 = add i64 %4711, 3
  store i64 %4712, i64* %PC.i226
  %4713 = trunc i64 %4708 to i32
  %4714 = inttoptr i64 %4710 to i32*
  %4715 = load i32, i32* %4714
  %4716 = add i32 %4715, %4713
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RCX.i227, align 8
  %4718 = icmp ult i32 %4716, %4713
  %4719 = icmp ult i32 %4716, %4715
  %4720 = or i1 %4718, %4719
  %4721 = zext i1 %4720 to i8
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4721, i8* %4722, align 1
  %4723 = and i32 %4716, 255
  %4724 = call i32 @llvm.ctpop.i32(i32 %4723)
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  %4727 = xor i8 %4726, 1
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4727, i8* %4728, align 1
  %4729 = xor i32 %4715, %4713
  %4730 = xor i32 %4729, %4716
  %4731 = lshr i32 %4730, 4
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4733, i8* %4734, align 1
  %4735 = icmp eq i32 %4716, 0
  %4736 = zext i1 %4735 to i8
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4736, i8* %4737, align 1
  %4738 = lshr i32 %4716, 31
  %4739 = trunc i32 %4738 to i8
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4739, i8* %4740, align 1
  %4741 = lshr i32 %4713, 31
  %4742 = lshr i32 %4715, 31
  %4743 = xor i32 %4738, %4741
  %4744 = xor i32 %4738, %4742
  %4745 = add i32 %4743, %4744
  %4746 = icmp eq i32 %4745, 2
  %4747 = zext i1 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4747, i8* %4748, align 1
  store %struct.Memory* %loadMem_45f455, %struct.Memory** %MEMORY
  %loadMem_45f458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 33
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 5
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %ECX.i224 = bitcast %union.anon* %4754 to i32*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 15
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4757 to i64*
  %4758 = load i64, i64* %RBP.i225
  %4759 = sub i64 %4758, 168
  %4760 = load i32, i32* %ECX.i224
  %4761 = zext i32 %4760 to i64
  %4762 = load i64, i64* %PC.i223
  %4763 = add i64 %4762, 6
  store i64 %4763, i64* %PC.i223
  %4764 = inttoptr i64 %4759 to i32*
  store i32 %4760, i32* %4764
  store %struct.Memory* %loadMem_45f458, %struct.Memory** %MEMORY
  %loadMem_45f45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 33
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4767 to i64*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 5
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 15
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %4773 to i64*
  %4774 = load i64, i64* %RBP.i222
  %4775 = sub i64 %4774, 84
  %4776 = load i64, i64* %PC.i220
  %4777 = add i64 %4776, 3
  store i64 %4777, i64* %PC.i220
  %4778 = inttoptr i64 %4775 to i32*
  %4779 = load i32, i32* %4778
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_45f45e, %struct.Memory** %MEMORY
  %loadMem_45f461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 33
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 5
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %4786 to i64*
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 15
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %4789 to i64*
  %4790 = load i64, i64* %RCX.i218
  %4791 = load i64, i64* %RBP.i219
  %4792 = sub i64 %4791, 88
  %4793 = load i64, i64* %PC.i217
  %4794 = add i64 %4793, 3
  store i64 %4794, i64* %PC.i217
  %4795 = trunc i64 %4790 to i32
  %4796 = inttoptr i64 %4792 to i32*
  %4797 = load i32, i32* %4796
  %4798 = sub i32 %4795, %4797
  %4799 = zext i32 %4798 to i64
  store i64 %4799, i64* %RCX.i218, align 8
  %4800 = icmp ult i32 %4795, %4797
  %4801 = zext i1 %4800 to i8
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4801, i8* %4802, align 1
  %4803 = and i32 %4798, 255
  %4804 = call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4807, i8* %4808, align 1
  %4809 = xor i32 %4797, %4795
  %4810 = xor i32 %4809, %4798
  %4811 = lshr i32 %4810, 4
  %4812 = trunc i32 %4811 to i8
  %4813 = and i8 %4812, 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4813, i8* %4814, align 1
  %4815 = icmp eq i32 %4798, 0
  %4816 = zext i1 %4815 to i8
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4816, i8* %4817, align 1
  %4818 = lshr i32 %4798, 31
  %4819 = trunc i32 %4818 to i8
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4819, i8* %4820, align 1
  %4821 = lshr i32 %4795, 31
  %4822 = lshr i32 %4797, 31
  %4823 = xor i32 %4822, %4821
  %4824 = xor i32 %4818, %4821
  %4825 = add i32 %4824, %4823
  %4826 = icmp eq i32 %4825, 2
  %4827 = zext i1 %4826 to i8
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4827, i8* %4828, align 1
  store %struct.Memory* %loadMem_45f461, %struct.Memory** %MEMORY
  %loadMem_45f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 5
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %ECX.i215 = bitcast %union.anon* %4834 to i32*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 15
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %4837 to i64*
  %4838 = load i64, i64* %RBP.i216
  %4839 = sub i64 %4838, 164
  %4840 = load i32, i32* %ECX.i215
  %4841 = zext i32 %4840 to i64
  %4842 = load i64, i64* %PC.i214
  %4843 = add i64 %4842, 6
  store i64 %4843, i64* %PC.i214
  %4844 = inttoptr i64 %4839 to i32*
  store i32 %4840, i32* %4844
  store %struct.Memory* %loadMem_45f464, %struct.Memory** %MEMORY
  %loadMem_45f46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 5
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 15
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RBP.i213
  %4855 = sub i64 %4854, 80
  %4856 = load i64, i64* %PC.i211
  %4857 = add i64 %4856, 3
  store i64 %4857, i64* %PC.i211
  %4858 = inttoptr i64 %4855 to i32*
  %4859 = load i32, i32* %4858
  %4860 = zext i32 %4859 to i64
  store i64 %4860, i64* %RCX.i212, align 8
  store %struct.Memory* %loadMem_45f46a, %struct.Memory** %MEMORY
  %loadMem_45f46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 5
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 15
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4869 to i64*
  %4870 = load i64, i64* %RCX.i209
  %4871 = load i64, i64* %RBP.i210
  %4872 = sub i64 %4871, 76
  %4873 = load i64, i64* %PC.i208
  %4874 = add i64 %4873, 3
  store i64 %4874, i64* %PC.i208
  %4875 = trunc i64 %4870 to i32
  %4876 = inttoptr i64 %4872 to i32*
  %4877 = load i32, i32* %4876
  %4878 = add i32 %4877, %4875
  %4879 = zext i32 %4878 to i64
  store i64 %4879, i64* %RCX.i209, align 8
  %4880 = icmp ult i32 %4878, %4875
  %4881 = icmp ult i32 %4878, %4877
  %4882 = or i1 %4880, %4881
  %4883 = zext i1 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4883, i8* %4884, align 1
  %4885 = and i32 %4878, 255
  %4886 = call i32 @llvm.ctpop.i32(i32 %4885)
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  %4889 = xor i8 %4888, 1
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4889, i8* %4890, align 1
  %4891 = xor i32 %4877, %4875
  %4892 = xor i32 %4891, %4878
  %4893 = lshr i32 %4892, 4
  %4894 = trunc i32 %4893 to i8
  %4895 = and i8 %4894, 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4895, i8* %4896, align 1
  %4897 = icmp eq i32 %4878, 0
  %4898 = zext i1 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4898, i8* %4899, align 1
  %4900 = lshr i32 %4878, 31
  %4901 = trunc i32 %4900 to i8
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4901, i8* %4902, align 1
  %4903 = lshr i32 %4875, 31
  %4904 = lshr i32 %4877, 31
  %4905 = xor i32 %4900, %4903
  %4906 = xor i32 %4900, %4904
  %4907 = add i32 %4905, %4906
  %4908 = icmp eq i32 %4907, 2
  %4909 = zext i1 %4908 to i8
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4909, i8* %4910, align 1
  store %struct.Memory* %loadMem_45f46d, %struct.Memory** %MEMORY
  %loadMem_45f470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 5
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %ECX.i206 = bitcast %union.anon* %4916 to i32*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 15
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RBP.i207
  %4921 = sub i64 %4920, 160
  %4922 = load i32, i32* %ECX.i206
  %4923 = zext i32 %4922 to i64
  %4924 = load i64, i64* %PC.i205
  %4925 = add i64 %4924, 6
  store i64 %4925, i64* %PC.i205
  %4926 = inttoptr i64 %4921 to i32*
  store i32 %4922, i32* %4926
  store %struct.Memory* %loadMem_45f470, %struct.Memory** %MEMORY
  %loadMem_45f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 5
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 15
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %4935 to i64*
  %4936 = load i64, i64* %RBP.i204
  %4937 = sub i64 %4936, 80
  %4938 = load i64, i64* %PC.i202
  %4939 = add i64 %4938, 3
  store i64 %4939, i64* %PC.i202
  %4940 = inttoptr i64 %4937 to i32*
  %4941 = load i32, i32* %4940
  %4942 = zext i32 %4941 to i64
  store i64 %4942, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_45f476, %struct.Memory** %MEMORY
  %loadMem_45f479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 33
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4945 to i64*
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 5
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 15
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %RCX.i200
  %4953 = load i64, i64* %RBP.i201
  %4954 = sub i64 %4953, 76
  %4955 = load i64, i64* %PC.i199
  %4956 = add i64 %4955, 3
  store i64 %4956, i64* %PC.i199
  %4957 = trunc i64 %4952 to i32
  %4958 = inttoptr i64 %4954 to i32*
  %4959 = load i32, i32* %4958
  %4960 = sub i32 %4957, %4959
  %4961 = zext i32 %4960 to i64
  store i64 %4961, i64* %RCX.i200, align 8
  %4962 = icmp ult i32 %4957, %4959
  %4963 = zext i1 %4962 to i8
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4963, i8* %4964, align 1
  %4965 = and i32 %4960, 255
  %4966 = call i32 @llvm.ctpop.i32(i32 %4965)
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = xor i8 %4968, 1
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4969, i8* %4970, align 1
  %4971 = xor i32 %4959, %4957
  %4972 = xor i32 %4971, %4960
  %4973 = lshr i32 %4972, 4
  %4974 = trunc i32 %4973 to i8
  %4975 = and i8 %4974, 1
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4975, i8* %4976, align 1
  %4977 = icmp eq i32 %4960, 0
  %4978 = zext i1 %4977 to i8
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4978, i8* %4979, align 1
  %4980 = lshr i32 %4960, 31
  %4981 = trunc i32 %4980 to i8
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4981, i8* %4982, align 1
  %4983 = lshr i32 %4957, 31
  %4984 = lshr i32 %4959, 31
  %4985 = xor i32 %4984, %4983
  %4986 = xor i32 %4980, %4983
  %4987 = add i32 %4986, %4985
  %4988 = icmp eq i32 %4987, 2
  %4989 = zext i1 %4988 to i8
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4989, i8* %4990, align 1
  store %struct.Memory* %loadMem_45f479, %struct.Memory** %MEMORY
  %loadMem_45f47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 5
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %ECX.i197 = bitcast %union.anon* %4996 to i32*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RBP.i198
  %5001 = sub i64 %5000, 156
  %5002 = load i32, i32* %ECX.i197
  %5003 = zext i32 %5002 to i64
  %5004 = load i64, i64* %PC.i196
  %5005 = add i64 %5004, 6
  store i64 %5005, i64* %PC.i196
  %5006 = inttoptr i64 %5001 to i32*
  store i32 %5002, i32* %5006
  store %struct.Memory* %loadMem_45f47c, %struct.Memory** %MEMORY
  %loadMem_45f482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 5
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 15
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RBP.i195
  %5017 = sub i64 %5016, 72
  %5018 = load i64, i64* %PC.i193
  %5019 = add i64 %5018, 3
  store i64 %5019, i64* %PC.i193
  %5020 = inttoptr i64 %5017 to i32*
  %5021 = load i32, i32* %5020
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_45f482, %struct.Memory** %MEMORY
  %loadMem_45f485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 5
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 15
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %RCX.i191
  %5033 = load i64, i64* %RBP.i192
  %5034 = sub i64 %5033, 68
  %5035 = load i64, i64* %PC.i190
  %5036 = add i64 %5035, 3
  store i64 %5036, i64* %PC.i190
  %5037 = trunc i64 %5032 to i32
  %5038 = inttoptr i64 %5034 to i32*
  %5039 = load i32, i32* %5038
  %5040 = add i32 %5039, %5037
  %5041 = zext i32 %5040 to i64
  store i64 %5041, i64* %RCX.i191, align 8
  %5042 = icmp ult i32 %5040, %5037
  %5043 = icmp ult i32 %5040, %5039
  %5044 = or i1 %5042, %5043
  %5045 = zext i1 %5044 to i8
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5045, i8* %5046, align 1
  %5047 = and i32 %5040, 255
  %5048 = call i32 @llvm.ctpop.i32(i32 %5047)
  %5049 = trunc i32 %5048 to i8
  %5050 = and i8 %5049, 1
  %5051 = xor i8 %5050, 1
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5051, i8* %5052, align 1
  %5053 = xor i32 %5039, %5037
  %5054 = xor i32 %5053, %5040
  %5055 = lshr i32 %5054, 4
  %5056 = trunc i32 %5055 to i8
  %5057 = and i8 %5056, 1
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5057, i8* %5058, align 1
  %5059 = icmp eq i32 %5040, 0
  %5060 = zext i1 %5059 to i8
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5060, i8* %5061, align 1
  %5062 = lshr i32 %5040, 31
  %5063 = trunc i32 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5063, i8* %5064, align 1
  %5065 = lshr i32 %5037, 31
  %5066 = lshr i32 %5039, 31
  %5067 = xor i32 %5062, %5065
  %5068 = xor i32 %5062, %5066
  %5069 = add i32 %5067, %5068
  %5070 = icmp eq i32 %5069, 2
  %5071 = zext i1 %5070 to i8
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5071, i8* %5072, align 1
  store %struct.Memory* %loadMem_45f485, %struct.Memory** %MEMORY
  %loadMem_45f488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 5
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %ECX.i188 = bitcast %union.anon* %5078 to i32*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 15
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %RBP.i189
  %5083 = sub i64 %5082, 152
  %5084 = load i32, i32* %ECX.i188
  %5085 = zext i32 %5084 to i64
  %5086 = load i64, i64* %PC.i187
  %5087 = add i64 %5086, 6
  store i64 %5087, i64* %PC.i187
  %5088 = inttoptr i64 %5083 to i32*
  store i32 %5084, i32* %5088
  store %struct.Memory* %loadMem_45f488, %struct.Memory** %MEMORY
  %loadMem_45f48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 5
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 15
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %5097 to i64*
  %5098 = load i64, i64* %RBP.i186
  %5099 = sub i64 %5098, 68
  %5100 = load i64, i64* %PC.i184
  %5101 = add i64 %5100, 3
  store i64 %5101, i64* %PC.i184
  %5102 = inttoptr i64 %5099 to i32*
  %5103 = load i32, i32* %5102
  %5104 = zext i32 %5103 to i64
  store i64 %5104, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_45f48e, %struct.Memory** %MEMORY
  %loadMem_45f491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 5
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %5110 to i64*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 15
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %5113 to i64*
  %5114 = load i64, i64* %RCX.i182
  %5115 = load i64, i64* %RBP.i183
  %5116 = sub i64 %5115, 72
  %5117 = load i64, i64* %PC.i181
  %5118 = add i64 %5117, 3
  store i64 %5118, i64* %PC.i181
  %5119 = trunc i64 %5114 to i32
  %5120 = inttoptr i64 %5116 to i32*
  %5121 = load i32, i32* %5120
  %5122 = sub i32 %5119, %5121
  %5123 = zext i32 %5122 to i64
  store i64 %5123, i64* %RCX.i182, align 8
  %5124 = icmp ult i32 %5119, %5121
  %5125 = zext i1 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5125, i8* %5126, align 1
  %5127 = and i32 %5122, 255
  %5128 = call i32 @llvm.ctpop.i32(i32 %5127)
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5131, i8* %5132, align 1
  %5133 = xor i32 %5121, %5119
  %5134 = xor i32 %5133, %5122
  %5135 = lshr i32 %5134, 4
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5137, i8* %5138, align 1
  %5139 = icmp eq i32 %5122, 0
  %5140 = zext i1 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5140, i8* %5141, align 1
  %5142 = lshr i32 %5122, 31
  %5143 = trunc i32 %5142 to i8
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5143, i8* %5144, align 1
  %5145 = lshr i32 %5119, 31
  %5146 = lshr i32 %5121, 31
  %5147 = xor i32 %5146, %5145
  %5148 = xor i32 %5142, %5145
  %5149 = add i32 %5148, %5147
  %5150 = icmp eq i32 %5149, 2
  %5151 = zext i1 %5150 to i8
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5151, i8* %5152, align 1
  store %struct.Memory* %loadMem_45f491, %struct.Memory** %MEMORY
  %loadMem_45f494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 5
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %ECX.i179 = bitcast %union.anon* %5158 to i32*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 15
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5161 to i64*
  %5162 = load i64, i64* %RBP.i180
  %5163 = sub i64 %5162, 148
  %5164 = load i32, i32* %ECX.i179
  %5165 = zext i32 %5164 to i64
  %5166 = load i64, i64* %PC.i178
  %5167 = add i64 %5166, 6
  store i64 %5167, i64* %PC.i178
  %5168 = inttoptr i64 %5163 to i32*
  store i32 %5164, i32* %5168
  store %struct.Memory* %loadMem_45f494, %struct.Memory** %MEMORY
  %loadMem_45f49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 5
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 15
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %5177 to i64*
  %5178 = load i64, i64* %RBP.i177
  %5179 = sub i64 %5178, 64
  %5180 = load i64, i64* %PC.i175
  %5181 = add i64 %5180, 3
  store i64 %5181, i64* %PC.i175
  %5182 = inttoptr i64 %5179 to i32*
  %5183 = load i32, i32* %5182
  %5184 = zext i32 %5183 to i64
  store i64 %5184, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_45f49a, %struct.Memory** %MEMORY
  %loadMem_45f49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 5
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 15
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RCX.i173
  %5195 = load i64, i64* %RBP.i174
  %5196 = sub i64 %5195, 60
  %5197 = load i64, i64* %PC.i172
  %5198 = add i64 %5197, 3
  store i64 %5198, i64* %PC.i172
  %5199 = trunc i64 %5194 to i32
  %5200 = inttoptr i64 %5196 to i32*
  %5201 = load i32, i32* %5200
  %5202 = add i32 %5201, %5199
  %5203 = zext i32 %5202 to i64
  store i64 %5203, i64* %RCX.i173, align 8
  %5204 = icmp ult i32 %5202, %5199
  %5205 = icmp ult i32 %5202, %5201
  %5206 = or i1 %5204, %5205
  %5207 = zext i1 %5206 to i8
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5207, i8* %5208, align 1
  %5209 = and i32 %5202, 255
  %5210 = call i32 @llvm.ctpop.i32(i32 %5209)
  %5211 = trunc i32 %5210 to i8
  %5212 = and i8 %5211, 1
  %5213 = xor i8 %5212, 1
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5213, i8* %5214, align 1
  %5215 = xor i32 %5201, %5199
  %5216 = xor i32 %5215, %5202
  %5217 = lshr i32 %5216, 4
  %5218 = trunc i32 %5217 to i8
  %5219 = and i8 %5218, 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5219, i8* %5220, align 1
  %5221 = icmp eq i32 %5202, 0
  %5222 = zext i1 %5221 to i8
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5222, i8* %5223, align 1
  %5224 = lshr i32 %5202, 31
  %5225 = trunc i32 %5224 to i8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5225, i8* %5226, align 1
  %5227 = lshr i32 %5199, 31
  %5228 = lshr i32 %5201, 31
  %5229 = xor i32 %5224, %5227
  %5230 = xor i32 %5224, %5228
  %5231 = add i32 %5229, %5230
  %5232 = icmp eq i32 %5231, 2
  %5233 = zext i1 %5232 to i8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5233, i8* %5234, align 1
  store %struct.Memory* %loadMem_45f49d, %struct.Memory** %MEMORY
  %loadMem_45f4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 5
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %ECX.i170 = bitcast %union.anon* %5240 to i32*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 15
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %RBP.i171
  %5245 = sub i64 %5244, 144
  %5246 = load i32, i32* %ECX.i170
  %5247 = zext i32 %5246 to i64
  %5248 = load i64, i64* %PC.i169
  %5249 = add i64 %5248, 6
  store i64 %5249, i64* %PC.i169
  %5250 = inttoptr i64 %5245 to i32*
  store i32 %5246, i32* %5250
  store %struct.Memory* %loadMem_45f4a0, %struct.Memory** %MEMORY
  %loadMem_45f4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 33
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5253 to i64*
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 5
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 15
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %5259 to i64*
  %5260 = load i64, i64* %RBP.i168
  %5261 = sub i64 %5260, 64
  %5262 = load i64, i64* %PC.i166
  %5263 = add i64 %5262, 3
  store i64 %5263, i64* %PC.i166
  %5264 = inttoptr i64 %5261 to i32*
  %5265 = load i32, i32* %5264
  %5266 = zext i32 %5265 to i64
  store i64 %5266, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_45f4a6, %struct.Memory** %MEMORY
  %loadMem_45f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 5
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 15
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RCX.i164
  %5277 = load i64, i64* %RBP.i165
  %5278 = sub i64 %5277, 60
  %5279 = load i64, i64* %PC.i163
  %5280 = add i64 %5279, 3
  store i64 %5280, i64* %PC.i163
  %5281 = trunc i64 %5276 to i32
  %5282 = inttoptr i64 %5278 to i32*
  %5283 = load i32, i32* %5282
  %5284 = sub i32 %5281, %5283
  %5285 = zext i32 %5284 to i64
  store i64 %5285, i64* %RCX.i164, align 8
  %5286 = icmp ult i32 %5281, %5283
  %5287 = zext i1 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5287, i8* %5288, align 1
  %5289 = and i32 %5284, 255
  %5290 = call i32 @llvm.ctpop.i32(i32 %5289)
  %5291 = trunc i32 %5290 to i8
  %5292 = and i8 %5291, 1
  %5293 = xor i8 %5292, 1
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5293, i8* %5294, align 1
  %5295 = xor i32 %5283, %5281
  %5296 = xor i32 %5295, %5284
  %5297 = lshr i32 %5296, 4
  %5298 = trunc i32 %5297 to i8
  %5299 = and i8 %5298, 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5299, i8* %5300, align 1
  %5301 = icmp eq i32 %5284, 0
  %5302 = zext i1 %5301 to i8
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5302, i8* %5303, align 1
  %5304 = lshr i32 %5284, 31
  %5305 = trunc i32 %5304 to i8
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5305, i8* %5306, align 1
  %5307 = lshr i32 %5281, 31
  %5308 = lshr i32 %5283, 31
  %5309 = xor i32 %5308, %5307
  %5310 = xor i32 %5304, %5307
  %5311 = add i32 %5310, %5309
  %5312 = icmp eq i32 %5311, 2
  %5313 = zext i1 %5312 to i8
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5313, i8* %5314, align 1
  store %struct.Memory* %loadMem_45f4a9, %struct.Memory** %MEMORY
  %loadMem_45f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 5
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %ECX.i161 = bitcast %union.anon* %5320 to i32*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 15
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %5323 to i64*
  %5324 = load i64, i64* %RBP.i162
  %5325 = sub i64 %5324, 140
  %5326 = load i32, i32* %ECX.i161
  %5327 = zext i32 %5326 to i64
  %5328 = load i64, i64* %PC.i160
  %5329 = add i64 %5328, 6
  store i64 %5329, i64* %PC.i160
  %5330 = inttoptr i64 %5325 to i32*
  store i32 %5326, i32* %5330
  store %struct.Memory* %loadMem_45f4ac, %struct.Memory** %MEMORY
  %loadMem_45f4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 33
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 5
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %5336 to i64*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 15
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %5339 to i64*
  %5340 = load i64, i64* %RBP.i159
  %5341 = sub i64 %5340, 56
  %5342 = load i64, i64* %PC.i157
  %5343 = add i64 %5342, 3
  store i64 %5343, i64* %PC.i157
  %5344 = inttoptr i64 %5341 to i32*
  %5345 = load i32, i32* %5344
  %5346 = zext i32 %5345 to i64
  store i64 %5346, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_45f4b2, %struct.Memory** %MEMORY
  %loadMem_45f4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 33
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 5
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 15
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %5355 to i64*
  %5356 = load i64, i64* %RCX.i155
  %5357 = load i64, i64* %RBP.i156
  %5358 = sub i64 %5357, 52
  %5359 = load i64, i64* %PC.i154
  %5360 = add i64 %5359, 3
  store i64 %5360, i64* %PC.i154
  %5361 = trunc i64 %5356 to i32
  %5362 = inttoptr i64 %5358 to i32*
  %5363 = load i32, i32* %5362
  %5364 = add i32 %5363, %5361
  %5365 = zext i32 %5364 to i64
  store i64 %5365, i64* %RCX.i155, align 8
  %5366 = icmp ult i32 %5364, %5361
  %5367 = icmp ult i32 %5364, %5363
  %5368 = or i1 %5366, %5367
  %5369 = zext i1 %5368 to i8
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5369, i8* %5370, align 1
  %5371 = and i32 %5364, 255
  %5372 = call i32 @llvm.ctpop.i32(i32 %5371)
  %5373 = trunc i32 %5372 to i8
  %5374 = and i8 %5373, 1
  %5375 = xor i8 %5374, 1
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5375, i8* %5376, align 1
  %5377 = xor i32 %5363, %5361
  %5378 = xor i32 %5377, %5364
  %5379 = lshr i32 %5378, 4
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5381, i8* %5382, align 1
  %5383 = icmp eq i32 %5364, 0
  %5384 = zext i1 %5383 to i8
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5384, i8* %5385, align 1
  %5386 = lshr i32 %5364, 31
  %5387 = trunc i32 %5386 to i8
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5387, i8* %5388, align 1
  %5389 = lshr i32 %5361, 31
  %5390 = lshr i32 %5363, 31
  %5391 = xor i32 %5386, %5389
  %5392 = xor i32 %5386, %5390
  %5393 = add i32 %5391, %5392
  %5394 = icmp eq i32 %5393, 2
  %5395 = zext i1 %5394 to i8
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5395, i8* %5396, align 1
  store %struct.Memory* %loadMem_45f4b5, %struct.Memory** %MEMORY
  %loadMem_45f4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 33
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 5
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %ECX.i152 = bitcast %union.anon* %5402 to i32*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 15
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %RBP.i153
  %5407 = sub i64 %5406, 136
  %5408 = load i32, i32* %ECX.i152
  %5409 = zext i32 %5408 to i64
  %5410 = load i64, i64* %PC.i151
  %5411 = add i64 %5410, 6
  store i64 %5411, i64* %PC.i151
  %5412 = inttoptr i64 %5407 to i32*
  store i32 %5408, i32* %5412
  store %struct.Memory* %loadMem_45f4b8, %struct.Memory** %MEMORY
  %loadMem_45f4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 33
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5415 to i64*
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5417 = getelementptr inbounds %struct.GPR, %struct.GPR* %5416, i32 0, i32 5
  %5418 = getelementptr inbounds %struct.Reg, %struct.Reg* %5417, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %5418 to i64*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 15
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5421 to i64*
  %5422 = load i64, i64* %RBP.i150
  %5423 = sub i64 %5422, 52
  %5424 = load i64, i64* %PC.i148
  %5425 = add i64 %5424, 3
  store i64 %5425, i64* %PC.i148
  %5426 = inttoptr i64 %5423 to i32*
  %5427 = load i32, i32* %5426
  %5428 = zext i32 %5427 to i64
  store i64 %5428, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_45f4be, %struct.Memory** %MEMORY
  %loadMem_45f4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 5
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 15
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %RCX.i146
  %5439 = load i64, i64* %RBP.i147
  %5440 = sub i64 %5439, 56
  %5441 = load i64, i64* %PC.i145
  %5442 = add i64 %5441, 3
  store i64 %5442, i64* %PC.i145
  %5443 = trunc i64 %5438 to i32
  %5444 = inttoptr i64 %5440 to i32*
  %5445 = load i32, i32* %5444
  %5446 = sub i32 %5443, %5445
  %5447 = zext i32 %5446 to i64
  store i64 %5447, i64* %RCX.i146, align 8
  %5448 = icmp ult i32 %5443, %5445
  %5449 = zext i1 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5449, i8* %5450, align 1
  %5451 = and i32 %5446, 255
  %5452 = call i32 @llvm.ctpop.i32(i32 %5451)
  %5453 = trunc i32 %5452 to i8
  %5454 = and i8 %5453, 1
  %5455 = xor i8 %5454, 1
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5455, i8* %5456, align 1
  %5457 = xor i32 %5445, %5443
  %5458 = xor i32 %5457, %5446
  %5459 = lshr i32 %5458, 4
  %5460 = trunc i32 %5459 to i8
  %5461 = and i8 %5460, 1
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5461, i8* %5462, align 1
  %5463 = icmp eq i32 %5446, 0
  %5464 = zext i1 %5463 to i8
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5464, i8* %5465, align 1
  %5466 = lshr i32 %5446, 31
  %5467 = trunc i32 %5466 to i8
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5467, i8* %5468, align 1
  %5469 = lshr i32 %5443, 31
  %5470 = lshr i32 %5445, 31
  %5471 = xor i32 %5470, %5469
  %5472 = xor i32 %5466, %5469
  %5473 = add i32 %5472, %5471
  %5474 = icmp eq i32 %5473, 2
  %5475 = zext i1 %5474 to i8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5475, i8* %5476, align 1
  store %struct.Memory* %loadMem_45f4c1, %struct.Memory** %MEMORY
  %loadMem_45f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 5
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %ECX.i143 = bitcast %union.anon* %5482 to i32*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RBP.i144
  %5487 = sub i64 %5486, 132
  %5488 = load i32, i32* %ECX.i143
  %5489 = zext i32 %5488 to i64
  %5490 = load i64, i64* %PC.i142
  %5491 = add i64 %5490, 6
  store i64 %5491, i64* %PC.i142
  %5492 = inttoptr i64 %5487 to i32*
  store i32 %5488, i32* %5492
  store %struct.Memory* %loadMem_45f4c4, %struct.Memory** %MEMORY
  %loadMem_45f4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 5
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 15
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %RBP.i141
  %5503 = sub i64 %5502, 48
  %5504 = load i64, i64* %PC.i139
  %5505 = add i64 %5504, 3
  store i64 %5505, i64* %PC.i139
  %5506 = inttoptr i64 %5503 to i32*
  %5507 = load i32, i32* %5506
  %5508 = zext i32 %5507 to i64
  store i64 %5508, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_45f4ca, %struct.Memory** %MEMORY
  %loadMem_45f4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 5
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 15
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RCX.i137
  %5519 = load i64, i64* %RBP.i138
  %5520 = sub i64 %5519, 44
  %5521 = load i64, i64* %PC.i136
  %5522 = add i64 %5521, 3
  store i64 %5522, i64* %PC.i136
  %5523 = trunc i64 %5518 to i32
  %5524 = inttoptr i64 %5520 to i32*
  %5525 = load i32, i32* %5524
  %5526 = add i32 %5525, %5523
  %5527 = zext i32 %5526 to i64
  store i64 %5527, i64* %RCX.i137, align 8
  %5528 = icmp ult i32 %5526, %5523
  %5529 = icmp ult i32 %5526, %5525
  %5530 = or i1 %5528, %5529
  %5531 = zext i1 %5530 to i8
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5531, i8* %5532, align 1
  %5533 = and i32 %5526, 255
  %5534 = call i32 @llvm.ctpop.i32(i32 %5533)
  %5535 = trunc i32 %5534 to i8
  %5536 = and i8 %5535, 1
  %5537 = xor i8 %5536, 1
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5537, i8* %5538, align 1
  %5539 = xor i32 %5525, %5523
  %5540 = xor i32 %5539, %5526
  %5541 = lshr i32 %5540, 4
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5543, i8* %5544, align 1
  %5545 = icmp eq i32 %5526, 0
  %5546 = zext i1 %5545 to i8
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5546, i8* %5547, align 1
  %5548 = lshr i32 %5526, 31
  %5549 = trunc i32 %5548 to i8
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5549, i8* %5550, align 1
  %5551 = lshr i32 %5523, 31
  %5552 = lshr i32 %5525, 31
  %5553 = xor i32 %5548, %5551
  %5554 = xor i32 %5548, %5552
  %5555 = add i32 %5553, %5554
  %5556 = icmp eq i32 %5555, 2
  %5557 = zext i1 %5556 to i8
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5557, i8* %5558, align 1
  store %struct.Memory* %loadMem_45f4cd, %struct.Memory** %MEMORY
  %loadMem_45f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 33
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 5
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %ECX.i134 = bitcast %union.anon* %5564 to i32*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 15
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %5567 to i64*
  %5568 = load i64, i64* %RBP.i135
  %5569 = sub i64 %5568, 128
  %5570 = load i32, i32* %ECX.i134
  %5571 = zext i32 %5570 to i64
  %5572 = load i64, i64* %PC.i133
  %5573 = add i64 %5572, 3
  store i64 %5573, i64* %PC.i133
  %5574 = inttoptr i64 %5569 to i32*
  store i32 %5570, i32* %5574
  store %struct.Memory* %loadMem_45f4d0, %struct.Memory** %MEMORY
  %loadMem_45f4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 33
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 5
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 15
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %RBP.i132
  %5585 = sub i64 %5584, 48
  %5586 = load i64, i64* %PC.i130
  %5587 = add i64 %5586, 3
  store i64 %5587, i64* %PC.i130
  %5588 = inttoptr i64 %5585 to i32*
  %5589 = load i32, i32* %5588
  %5590 = zext i32 %5589 to i64
  store i64 %5590, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_45f4d3, %struct.Memory** %MEMORY
  %loadMem_45f4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 5
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 15
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %RCX.i128
  %5601 = load i64, i64* %RBP.i129
  %5602 = sub i64 %5601, 44
  %5603 = load i64, i64* %PC.i127
  %5604 = add i64 %5603, 3
  store i64 %5604, i64* %PC.i127
  %5605 = trunc i64 %5600 to i32
  %5606 = inttoptr i64 %5602 to i32*
  %5607 = load i32, i32* %5606
  %5608 = sub i32 %5605, %5607
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RCX.i128, align 8
  %5610 = icmp ult i32 %5605, %5607
  %5611 = zext i1 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5611, i8* %5612, align 1
  %5613 = and i32 %5608, 255
  %5614 = call i32 @llvm.ctpop.i32(i32 %5613)
  %5615 = trunc i32 %5614 to i8
  %5616 = and i8 %5615, 1
  %5617 = xor i8 %5616, 1
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5617, i8* %5618, align 1
  %5619 = xor i32 %5607, %5605
  %5620 = xor i32 %5619, %5608
  %5621 = lshr i32 %5620, 4
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5623, i8* %5624, align 1
  %5625 = icmp eq i32 %5608, 0
  %5626 = zext i1 %5625 to i8
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5626, i8* %5627, align 1
  %5628 = lshr i32 %5608, 31
  %5629 = trunc i32 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5629, i8* %5630, align 1
  %5631 = lshr i32 %5605, 31
  %5632 = lshr i32 %5607, 31
  %5633 = xor i32 %5632, %5631
  %5634 = xor i32 %5628, %5631
  %5635 = add i32 %5634, %5633
  %5636 = icmp eq i32 %5635, 2
  %5637 = zext i1 %5636 to i8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5637, i8* %5638, align 1
  store %struct.Memory* %loadMem_45f4d6, %struct.Memory** %MEMORY
  %loadMem_45f4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 5
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %ECX.i125 = bitcast %union.anon* %5644 to i32*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 15
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RBP.i126
  %5649 = sub i64 %5648, 124
  %5650 = load i32, i32* %ECX.i125
  %5651 = zext i32 %5650 to i64
  %5652 = load i64, i64* %PC.i124
  %5653 = add i64 %5652, 3
  store i64 %5653, i64* %PC.i124
  %5654 = inttoptr i64 %5649 to i32*
  store i32 %5650, i32* %5654
  store %struct.Memory* %loadMem_45f4d9, %struct.Memory** %MEMORY
  %loadMem_45f4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 5
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 15
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %5663 to i64*
  %5664 = load i64, i64* %RBP.i123
  %5665 = sub i64 %5664, 40
  %5666 = load i64, i64* %PC.i121
  %5667 = add i64 %5666, 3
  store i64 %5667, i64* %PC.i121
  %5668 = inttoptr i64 %5665 to i32*
  %5669 = load i32, i32* %5668
  %5670 = zext i32 %5669 to i64
  store i64 %5670, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_45f4dc, %struct.Memory** %MEMORY
  %loadMem_45f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 5
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 15
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RCX.i119
  %5681 = load i64, i64* %RBP.i120
  %5682 = sub i64 %5681, 36
  %5683 = load i64, i64* %PC.i118
  %5684 = add i64 %5683, 3
  store i64 %5684, i64* %PC.i118
  %5685 = trunc i64 %5680 to i32
  %5686 = inttoptr i64 %5682 to i32*
  %5687 = load i32, i32* %5686
  %5688 = add i32 %5687, %5685
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %RCX.i119, align 8
  %5690 = icmp ult i32 %5688, %5685
  %5691 = icmp ult i32 %5688, %5687
  %5692 = or i1 %5690, %5691
  %5693 = zext i1 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5693, i8* %5694, align 1
  %5695 = and i32 %5688, 255
  %5696 = call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5699, i8* %5700, align 1
  %5701 = xor i32 %5687, %5685
  %5702 = xor i32 %5701, %5688
  %5703 = lshr i32 %5702, 4
  %5704 = trunc i32 %5703 to i8
  %5705 = and i8 %5704, 1
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5705, i8* %5706, align 1
  %5707 = icmp eq i32 %5688, 0
  %5708 = zext i1 %5707 to i8
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5708, i8* %5709, align 1
  %5710 = lshr i32 %5688, 31
  %5711 = trunc i32 %5710 to i8
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5711, i8* %5712, align 1
  %5713 = lshr i32 %5685, 31
  %5714 = lshr i32 %5687, 31
  %5715 = xor i32 %5710, %5713
  %5716 = xor i32 %5710, %5714
  %5717 = add i32 %5715, %5716
  %5718 = icmp eq i32 %5717, 2
  %5719 = zext i1 %5718 to i8
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5719, i8* %5720, align 1
  store %struct.Memory* %loadMem_45f4df, %struct.Memory** %MEMORY
  %loadMem_45f4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5723 to i64*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 5
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %ECX.i116 = bitcast %union.anon* %5726 to i32*
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 15
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5729 to i64*
  %5730 = load i64, i64* %RBP.i117
  %5731 = sub i64 %5730, 120
  %5732 = load i32, i32* %ECX.i116
  %5733 = zext i32 %5732 to i64
  %5734 = load i64, i64* %PC.i115
  %5735 = add i64 %5734, 3
  store i64 %5735, i64* %PC.i115
  %5736 = inttoptr i64 %5731 to i32*
  store i32 %5732, i32* %5736
  store %struct.Memory* %loadMem_45f4e2, %struct.Memory** %MEMORY
  %loadMem_45f4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 5
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 15
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %5745 to i64*
  %5746 = load i64, i64* %RBP.i114
  %5747 = sub i64 %5746, 36
  %5748 = load i64, i64* %PC.i112
  %5749 = add i64 %5748, 3
  store i64 %5749, i64* %PC.i112
  %5750 = inttoptr i64 %5747 to i32*
  %5751 = load i32, i32* %5750
  %5752 = zext i32 %5751 to i64
  store i64 %5752, i64* %RCX.i113, align 8
  store %struct.Memory* %loadMem_45f4e5, %struct.Memory** %MEMORY
  %loadMem_45f4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 33
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5755 to i64*
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 5
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 15
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5761 to i64*
  %5762 = load i64, i64* %RCX.i110
  %5763 = load i64, i64* %RBP.i111
  %5764 = sub i64 %5763, 40
  %5765 = load i64, i64* %PC.i109
  %5766 = add i64 %5765, 3
  store i64 %5766, i64* %PC.i109
  %5767 = trunc i64 %5762 to i32
  %5768 = inttoptr i64 %5764 to i32*
  %5769 = load i32, i32* %5768
  %5770 = sub i32 %5767, %5769
  %5771 = zext i32 %5770 to i64
  store i64 %5771, i64* %RCX.i110, align 8
  %5772 = icmp ult i32 %5767, %5769
  %5773 = zext i1 %5772 to i8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5773, i8* %5774, align 1
  %5775 = and i32 %5770, 255
  %5776 = call i32 @llvm.ctpop.i32(i32 %5775)
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5779, i8* %5780, align 1
  %5781 = xor i32 %5769, %5767
  %5782 = xor i32 %5781, %5770
  %5783 = lshr i32 %5782, 4
  %5784 = trunc i32 %5783 to i8
  %5785 = and i8 %5784, 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5785, i8* %5786, align 1
  %5787 = icmp eq i32 %5770, 0
  %5788 = zext i1 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5788, i8* %5789, align 1
  %5790 = lshr i32 %5770, 31
  %5791 = trunc i32 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5791, i8* %5792, align 1
  %5793 = lshr i32 %5767, 31
  %5794 = lshr i32 %5769, 31
  %5795 = xor i32 %5794, %5793
  %5796 = xor i32 %5790, %5793
  %5797 = add i32 %5796, %5795
  %5798 = icmp eq i32 %5797, 2
  %5799 = zext i1 %5798 to i8
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5799, i8* %5800, align 1
  store %struct.Memory* %loadMem_45f4e8, %struct.Memory** %MEMORY
  %loadMem_45f4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 5
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %ECX.i107 = bitcast %union.anon* %5806 to i32*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 15
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %RBP.i108
  %5811 = sub i64 %5810, 116
  %5812 = load i32, i32* %ECX.i107
  %5813 = zext i32 %5812 to i64
  %5814 = load i64, i64* %PC.i106
  %5815 = add i64 %5814, 3
  store i64 %5815, i64* %PC.i106
  %5816 = inttoptr i64 %5811 to i32*
  store i32 %5812, i32* %5816
  store %struct.Memory* %loadMem_45f4eb, %struct.Memory** %MEMORY
  %loadMem_45f4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 15
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %RBP.i105
  %5824 = sub i64 %5823, 16
  %5825 = load i64, i64* %PC.i104
  %5826 = add i64 %5825, 7
  store i64 %5826, i64* %PC.i104
  %5827 = inttoptr i64 %5824 to i32*
  store i32 0, i32* %5827
  store %struct.Memory* %loadMem_45f4ee, %struct.Memory** %MEMORY
  %loadMem_45f4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 5
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 15
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %5836 to i64*
  %5837 = load i64, i64* %RBP.i103
  %5838 = sub i64 %5837, 176
  %5839 = load i64, i64* %PC.i101
  %5840 = add i64 %5839, 6
  store i64 %5840, i64* %PC.i101
  %5841 = inttoptr i64 %5838 to i32*
  %5842 = load i32, i32* %5841
  %5843 = zext i32 %5842 to i64
  store i64 %5843, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_45f4f5, %struct.Memory** %MEMORY
  %loadMem_45f4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5845 = getelementptr inbounds %struct.GPR, %struct.GPR* %5844, i32 0, i32 33
  %5846 = getelementptr inbounds %struct.Reg, %struct.Reg* %5845, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5846 to i64*
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 5
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5849 to i32*
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 15
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %5852 to i64*
  %5853 = load i64, i64* %RBP.i100
  %5854 = sub i64 %5853, 100
  %5855 = load i32, i32* %ECX.i
  %5856 = zext i32 %5855 to i64
  %5857 = load i64, i64* %PC.i99
  %5858 = add i64 %5857, 3
  store i64 %5858, i64* %PC.i99
  %5859 = inttoptr i64 %5854 to i32*
  store i32 %5855, i32* %5859
  store %struct.Memory* %loadMem_45f4fb, %struct.Memory** %MEMORY
  br label %block_.L_45f4fe

block_.L_45f4fe:                                  ; preds = %block_.L_45f52b, %block_45f1a0
  %loadMem_45f4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 33
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5862 to i64*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 15
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %5865 to i64*
  %5866 = load i64, i64* %RBP.i98
  %5867 = sub i64 %5866, 16
  %5868 = load i64, i64* %PC.i97
  %5869 = add i64 %5868, 4
  store i64 %5869, i64* %PC.i97
  %5870 = inttoptr i64 %5867 to i32*
  %5871 = load i32, i32* %5870
  %5872 = sub i32 %5871, 16
  %5873 = icmp ult i32 %5871, 16
  %5874 = zext i1 %5873 to i8
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5874, i8* %5875, align 1
  %5876 = and i32 %5872, 255
  %5877 = call i32 @llvm.ctpop.i32(i32 %5876)
  %5878 = trunc i32 %5877 to i8
  %5879 = and i8 %5878, 1
  %5880 = xor i8 %5879, 1
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5880, i8* %5881, align 1
  %5882 = xor i32 %5871, 16
  %5883 = xor i32 %5882, %5872
  %5884 = lshr i32 %5883, 4
  %5885 = trunc i32 %5884 to i8
  %5886 = and i8 %5885, 1
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5886, i8* %5887, align 1
  %5888 = icmp eq i32 %5872, 0
  %5889 = zext i1 %5888 to i8
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5889, i8* %5890, align 1
  %5891 = lshr i32 %5872, 31
  %5892 = trunc i32 %5891 to i8
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5892, i8* %5893, align 1
  %5894 = lshr i32 %5871, 31
  %5895 = xor i32 %5891, %5894
  %5896 = add i32 %5895, %5894
  %5897 = icmp eq i32 %5896, 2
  %5898 = zext i1 %5897 to i8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5898, i8* %5899, align 1
  store %struct.Memory* %loadMem_45f4fe, %struct.Memory** %MEMORY
  %loadMem_45f502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 33
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5902 to i64*
  %5903 = load i64, i64* %PC.i96
  %5904 = add i64 %5903, 80
  %5905 = load i64, i64* %PC.i96
  %5906 = add i64 %5905, 6
  %5907 = load i64, i64* %PC.i96
  %5908 = add i64 %5907, 6
  store i64 %5908, i64* %PC.i96
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5910 = load i8, i8* %5909, align 1
  %5911 = icmp ne i8 %5910, 0
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5913 = load i8, i8* %5912, align 1
  %5914 = icmp ne i8 %5913, 0
  %5915 = xor i1 %5911, %5914
  %5916 = xor i1 %5915, true
  %5917 = zext i1 %5916 to i8
  store i8 %5917, i8* %BRANCH_TAKEN, align 1
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5919 = select i1 %5915, i64 %5906, i64 %5904
  store i64 %5919, i64* %5918, align 8
  store %struct.Memory* %loadMem_45f502, %struct.Memory** %MEMORY
  %loadBr_45f502 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f502 = icmp eq i8 %loadBr_45f502, 1
  br i1 %cmpBr_45f502, label %block_.L_45f552, label %block_45f508

block_45f508:                                     ; preds = %block_.L_45f4fe
  %loadMem_45f508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 33
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5922 to i64*
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 15
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5925 to i64*
  %5926 = load i64, i64* %RBP.i95
  %5927 = sub i64 %5926, 100
  %5928 = load i64, i64* %PC.i94
  %5929 = add i64 %5928, 4
  store i64 %5929, i64* %PC.i94
  %5930 = inttoptr i64 %5927 to i32*
  %5931 = load i32, i32* %5930
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5932, align 1
  %5933 = and i32 %5931, 255
  %5934 = call i32 @llvm.ctpop.i32(i32 %5933)
  %5935 = trunc i32 %5934 to i8
  %5936 = and i8 %5935, 1
  %5937 = xor i8 %5936, 1
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5937, i8* %5938, align 1
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5939, align 1
  %5940 = icmp eq i32 %5931, 0
  %5941 = zext i1 %5940 to i8
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5941, i8* %5942, align 1
  %5943 = lshr i32 %5931, 31
  %5944 = trunc i32 %5943 to i8
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5944, i8* %5945, align 1
  %5946 = lshr i32 %5931, 31
  %5947 = xor i32 %5943, %5946
  %5948 = add i32 %5947, %5946
  %5949 = icmp eq i32 %5948, 2
  %5950 = zext i1 %5949 to i8
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5950, i8* %5951, align 1
  store %struct.Memory* %loadMem_45f508, %struct.Memory** %MEMORY
  %loadMem_45f50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 33
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5954 to i64*
  %5955 = load i64, i64* %PC.i93
  %5956 = add i64 %5955, 22
  %5957 = load i64, i64* %PC.i93
  %5958 = add i64 %5957, 6
  %5959 = load i64, i64* %PC.i93
  %5960 = add i64 %5959, 6
  store i64 %5960, i64* %PC.i93
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5962 = load i8, i8* %5961, align 1
  %5963 = icmp ne i8 %5962, 0
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5965 = load i8, i8* %5964, align 1
  %5966 = icmp ne i8 %5965, 0
  %5967 = xor i1 %5963, %5966
  %5968 = xor i1 %5967, true
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %BRANCH_TAKEN, align 1
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5971 = select i1 %5967, i64 %5958, i64 %5956
  store i64 %5971, i64* %5970, align 8
  store %struct.Memory* %loadMem_45f50c, %struct.Memory** %MEMORY
  %loadBr_45f50c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f50c = icmp eq i8 %loadBr_45f50c, 1
  br i1 %cmpBr_45f50c, label %block_.L_45f522, label %block_45f512

block_45f512:                                     ; preds = %block_45f508
  %loadMem_45f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 1
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %5977 to i32*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 1
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5980 to i64*
  %5981 = load i64, i64* %RAX.i92
  %5982 = load i32, i32* %EAX.i91
  %5983 = zext i32 %5982 to i64
  %5984 = load i64, i64* %PC.i90
  %5985 = add i64 %5984, 2
  store i64 %5985, i64* %PC.i90
  %5986 = xor i64 %5983, %5981
  %5987 = trunc i64 %5986 to i32
  %5988 = and i64 %5986, 4294967295
  store i64 %5988, i64* %RAX.i92, align 8
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5989, align 1
  %5990 = and i32 %5987, 255
  %5991 = call i32 @llvm.ctpop.i32(i32 %5990)
  %5992 = trunc i32 %5991 to i8
  %5993 = and i8 %5992, 1
  %5994 = xor i8 %5993, 1
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5994, i8* %5995, align 1
  %5996 = icmp eq i32 %5987, 0
  %5997 = zext i1 %5996 to i8
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5997, i8* %5998, align 1
  %5999 = lshr i32 %5987, 31
  %6000 = trunc i32 %5999 to i8
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6000, i8* %6001, align 1
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6002, align 1
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6003, align 1
  store %struct.Memory* %loadMem_45f512, %struct.Memory** %MEMORY
  %loadMem_45f514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 33
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6006 to i64*
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 1
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %6009 to i64*
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 15
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %6012 to i64*
  %6013 = load i64, i64* %RAX.i88
  %6014 = load i64, i64* %RBP.i89
  %6015 = sub i64 %6014, 100
  %6016 = load i64, i64* %PC.i87
  %6017 = add i64 %6016, 3
  store i64 %6017, i64* %PC.i87
  %6018 = trunc i64 %6013 to i32
  %6019 = inttoptr i64 %6015 to i32*
  %6020 = load i32, i32* %6019
  %6021 = sub i32 %6018, %6020
  %6022 = zext i32 %6021 to i64
  store i64 %6022, i64* %RAX.i88, align 8
  %6023 = icmp ult i32 %6018, %6020
  %6024 = zext i1 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6024, i8* %6025, align 1
  %6026 = and i32 %6021, 255
  %6027 = call i32 @llvm.ctpop.i32(i32 %6026)
  %6028 = trunc i32 %6027 to i8
  %6029 = and i8 %6028, 1
  %6030 = xor i8 %6029, 1
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6030, i8* %6031, align 1
  %6032 = xor i32 %6020, %6018
  %6033 = xor i32 %6032, %6021
  %6034 = lshr i32 %6033, 4
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6036, i8* %6037, align 1
  %6038 = icmp eq i32 %6021, 0
  %6039 = zext i1 %6038 to i8
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6039, i8* %6040, align 1
  %6041 = lshr i32 %6021, 31
  %6042 = trunc i32 %6041 to i8
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6042, i8* %6043, align 1
  %6044 = lshr i32 %6018, 31
  %6045 = lshr i32 %6020, 31
  %6046 = xor i32 %6045, %6044
  %6047 = xor i32 %6041, %6044
  %6048 = add i32 %6047, %6046
  %6049 = icmp eq i32 %6048, 2
  %6050 = zext i1 %6049 to i8
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6050, i8* %6051, align 1
  store %struct.Memory* %loadMem_45f514, %struct.Memory** %MEMORY
  %loadMem_45f517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 33
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6054 to i64*
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 1
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %6057 to i32*
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 15
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6060 to i64*
  %6061 = load i64, i64* %RBP.i86
  %6062 = sub i64 %6061, 180
  %6063 = load i32, i32* %EAX.i85
  %6064 = zext i32 %6063 to i64
  %6065 = load i64, i64* %PC.i84
  %6066 = add i64 %6065, 6
  store i64 %6066, i64* %PC.i84
  %6067 = inttoptr i64 %6062 to i32*
  store i32 %6063, i32* %6067
  store %struct.Memory* %loadMem_45f517, %struct.Memory** %MEMORY
  %loadMem_45f51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 33
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6070 to i64*
  %6071 = load i64, i64* %PC.i83
  %6072 = add i64 %6071, 14
  %6073 = load i64, i64* %PC.i83
  %6074 = add i64 %6073, 5
  store i64 %6074, i64* %PC.i83
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6072, i64* %6075, align 8
  store %struct.Memory* %loadMem_45f51d, %struct.Memory** %MEMORY
  br label %block_.L_45f52b

block_.L_45f522:                                  ; preds = %block_45f508
  %loadMem_45f522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 33
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6078 to i64*
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 1
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %6081 to i64*
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 15
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %6084 to i64*
  %6085 = load i64, i64* %RBP.i82
  %6086 = sub i64 %6085, 100
  %6087 = load i64, i64* %PC.i80
  %6088 = add i64 %6087, 3
  store i64 %6088, i64* %PC.i80
  %6089 = inttoptr i64 %6086 to i32*
  %6090 = load i32, i32* %6089
  %6091 = zext i32 %6090 to i64
  store i64 %6091, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_45f522, %struct.Memory** %MEMORY
  %loadMem_45f525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6094 to i64*
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 1
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %EAX.i78 = bitcast %union.anon* %6097 to i32*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 15
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %6100 to i64*
  %6101 = load i64, i64* %RBP.i79
  %6102 = sub i64 %6101, 180
  %6103 = load i32, i32* %EAX.i78
  %6104 = zext i32 %6103 to i64
  %6105 = load i64, i64* %PC.i77
  %6106 = add i64 %6105, 6
  store i64 %6106, i64* %PC.i77
  %6107 = inttoptr i64 %6102 to i32*
  store i32 %6103, i32* %6107
  store %struct.Memory* %loadMem_45f525, %struct.Memory** %MEMORY
  br label %block_.L_45f52b

block_.L_45f52b:                                  ; preds = %block_.L_45f522, %block_45f512
  %loadMem_45f52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 33
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6110 to i64*
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6112 = getelementptr inbounds %struct.GPR, %struct.GPR* %6111, i32 0, i32 1
  %6113 = getelementptr inbounds %struct.Reg, %struct.Reg* %6112, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %6113 to i64*
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 15
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %6116 to i64*
  %6117 = load i64, i64* %RBP.i76
  %6118 = sub i64 %6117, 180
  %6119 = load i64, i64* %PC.i74
  %6120 = add i64 %6119, 6
  store i64 %6120, i64* %PC.i74
  %6121 = inttoptr i64 %6118 to i32*
  %6122 = load i32, i32* %6121
  %6123 = zext i32 %6122 to i64
  store i64 %6123, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_45f52b, %struct.Memory** %MEMORY
  %loadMem_45f531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 1
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %6129 to i64*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 15
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %6132 to i64*
  %6133 = load i64, i64* %RAX.i72
  %6134 = load i64, i64* %RBP.i73
  %6135 = sub i64 %6134, 20
  %6136 = load i64, i64* %PC.i71
  %6137 = add i64 %6136, 3
  store i64 %6137, i64* %PC.i71
  %6138 = trunc i64 %6133 to i32
  %6139 = inttoptr i64 %6135 to i32*
  %6140 = load i32, i32* %6139
  %6141 = add i32 %6140, %6138
  %6142 = zext i32 %6141 to i64
  store i64 %6142, i64* %RAX.i72, align 8
  %6143 = icmp ult i32 %6141, %6138
  %6144 = icmp ult i32 %6141, %6140
  %6145 = or i1 %6143, %6144
  %6146 = zext i1 %6145 to i8
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6146, i8* %6147, align 1
  %6148 = and i32 %6141, 255
  %6149 = call i32 @llvm.ctpop.i32(i32 %6148)
  %6150 = trunc i32 %6149 to i8
  %6151 = and i8 %6150, 1
  %6152 = xor i8 %6151, 1
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6152, i8* %6153, align 1
  %6154 = xor i32 %6140, %6138
  %6155 = xor i32 %6154, %6141
  %6156 = lshr i32 %6155, 4
  %6157 = trunc i32 %6156 to i8
  %6158 = and i8 %6157, 1
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6158, i8* %6159, align 1
  %6160 = icmp eq i32 %6141, 0
  %6161 = zext i1 %6160 to i8
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6161, i8* %6162, align 1
  %6163 = lshr i32 %6141, 31
  %6164 = trunc i32 %6163 to i8
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6164, i8* %6165, align 1
  %6166 = lshr i32 %6138, 31
  %6167 = lshr i32 %6140, 31
  %6168 = xor i32 %6163, %6166
  %6169 = xor i32 %6163, %6167
  %6170 = add i32 %6168, %6169
  %6171 = icmp eq i32 %6170, 2
  %6172 = zext i1 %6171 to i8
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6172, i8* %6173, align 1
  store %struct.Memory* %loadMem_45f531, %struct.Memory** %MEMORY
  %loadMem_45f534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 33
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6176 to i64*
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 1
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %EAX.i69 = bitcast %union.anon* %6179 to i32*
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 15
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %6182 to i64*
  %6183 = load i64, i64* %RBP.i70
  %6184 = sub i64 %6183, 20
  %6185 = load i32, i32* %EAX.i69
  %6186 = zext i32 %6185 to i64
  %6187 = load i64, i64* %PC.i68
  %6188 = add i64 %6187, 3
  store i64 %6188, i64* %PC.i68
  %6189 = inttoptr i64 %6184 to i32*
  store i32 %6185, i32* %6189
  store %struct.Memory* %loadMem_45f534, %struct.Memory** %MEMORY
  %loadMem_45f537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 33
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6192 to i64*
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 1
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %6195 to i64*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 15
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %6198 to i64*
  %6199 = load i64, i64* %RBP.i67
  %6200 = sub i64 %6199, 16
  %6201 = load i64, i64* %PC.i65
  %6202 = add i64 %6201, 3
  store i64 %6202, i64* %PC.i65
  %6203 = inttoptr i64 %6200 to i32*
  %6204 = load i32, i32* %6203
  %6205 = zext i32 %6204 to i64
  store i64 %6205, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_45f537, %struct.Memory** %MEMORY
  %loadMem_45f53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 1
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %RAX.i64
  %6213 = load i64, i64* %PC.i63
  %6214 = add i64 %6213, 3
  store i64 %6214, i64* %PC.i63
  %6215 = trunc i64 %6212 to i32
  %6216 = add i32 1, %6215
  %6217 = zext i32 %6216 to i64
  store i64 %6217, i64* %RAX.i64, align 8
  %6218 = icmp ult i32 %6216, %6215
  %6219 = icmp ult i32 %6216, 1
  %6220 = or i1 %6218, %6219
  %6221 = zext i1 %6220 to i8
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6221, i8* %6222, align 1
  %6223 = and i32 %6216, 255
  %6224 = call i32 @llvm.ctpop.i32(i32 %6223)
  %6225 = trunc i32 %6224 to i8
  %6226 = and i8 %6225, 1
  %6227 = xor i8 %6226, 1
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6227, i8* %6228, align 1
  %6229 = xor i64 1, %6212
  %6230 = trunc i64 %6229 to i32
  %6231 = xor i32 %6230, %6216
  %6232 = lshr i32 %6231, 4
  %6233 = trunc i32 %6232 to i8
  %6234 = and i8 %6233, 1
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6234, i8* %6235, align 1
  %6236 = icmp eq i32 %6216, 0
  %6237 = zext i1 %6236 to i8
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6237, i8* %6238, align 1
  %6239 = lshr i32 %6216, 31
  %6240 = trunc i32 %6239 to i8
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6240, i8* %6241, align 1
  %6242 = lshr i32 %6215, 31
  %6243 = xor i32 %6239, %6242
  %6244 = add i32 %6243, %6239
  %6245 = icmp eq i32 %6244, 2
  %6246 = zext i1 %6245 to i8
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6246, i8* %6247, align 1
  store %struct.Memory* %loadMem_45f53a, %struct.Memory** %MEMORY
  %loadMem_45f53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 33
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 1
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %6253 to i32*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 15
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %RBP.i62
  %6258 = sub i64 %6257, 16
  %6259 = load i32, i32* %EAX.i61
  %6260 = zext i32 %6259 to i64
  %6261 = load i64, i64* %PC.i60
  %6262 = add i64 %6261, 3
  store i64 %6262, i64* %PC.i60
  %6263 = inttoptr i64 %6258 to i32*
  store i32 %6259, i32* %6263
  store %struct.Memory* %loadMem_45f53d, %struct.Memory** %MEMORY
  %loadMem_45f540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 33
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 1
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %6269 to i32*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 5
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %6272 to i64*
  %6273 = load i32, i32* %EAX.i58
  %6274 = zext i32 %6273 to i64
  %6275 = load i64, i64* %PC.i57
  %6276 = add i64 %6275, 3
  store i64 %6276, i64* %PC.i57
  %6277 = shl i64 %6274, 32
  %6278 = ashr exact i64 %6277, 32
  store i64 %6278, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_45f540, %struct.Memory** %MEMORY
  %loadMem_45f543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 33
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 1
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %6284 to i64*
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 5
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 15
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %6290 to i64*
  %6291 = load i64, i64* %RBP.i56
  %6292 = load i64, i64* %RCX.i55
  %6293 = mul i64 %6292, 4
  %6294 = add i64 %6291, -176
  %6295 = add i64 %6294, %6293
  %6296 = load i64, i64* %PC.i53
  %6297 = add i64 %6296, 7
  store i64 %6297, i64* %PC.i53
  %6298 = inttoptr i64 %6295 to i32*
  %6299 = load i32, i32* %6298
  %6300 = zext i32 %6299 to i64
  store i64 %6300, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_45f543, %struct.Memory** %MEMORY
  %loadMem_45f54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 33
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6303 to i64*
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 1
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %6306 to i32*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 15
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %6309 to i64*
  %6310 = load i64, i64* %RBP.i52
  %6311 = sub i64 %6310, 100
  %6312 = load i32, i32* %EAX.i51
  %6313 = zext i32 %6312 to i64
  %6314 = load i64, i64* %PC.i50
  %6315 = add i64 %6314, 3
  store i64 %6315, i64* %PC.i50
  %6316 = inttoptr i64 %6311 to i32*
  store i32 %6312, i32* %6316
  store %struct.Memory* %loadMem_45f54a, %struct.Memory** %MEMORY
  %loadMem_45f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 33
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6319 to i64*
  %6320 = load i64, i64* %PC.i49
  %6321 = add i64 %6320, -79
  %6322 = load i64, i64* %PC.i49
  %6323 = add i64 %6322, 5
  store i64 %6323, i64* %PC.i49
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6321, i64* %6324, align 8
  store %struct.Memory* %loadMem_45f54d, %struct.Memory** %MEMORY
  br label %block_.L_45f4fe

block_.L_45f552:                                  ; preds = %block_.L_45f4fe
  %loadMem_45f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 33
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 1
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 15
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %6333 to i64*
  %6334 = load i64, i64* %RBP.i48
  %6335 = sub i64 %6334, 20
  %6336 = load i64, i64* %PC.i46
  %6337 = add i64 %6336, 3
  store i64 %6337, i64* %PC.i46
  %6338 = inttoptr i64 %6335 to i32*
  %6339 = load i32, i32* %6338
  %6340 = zext i32 %6339 to i64
  store i64 %6340, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_45f552, %struct.Memory** %MEMORY
  %loadMem_45f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 33
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6343 to i64*
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 1
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %6346 to i64*
  %6347 = load i64, i64* %RAX.i45
  %6348 = load i64, i64* %PC.i44
  %6349 = add i64 %6348, 3
  store i64 %6349, i64* %PC.i44
  %6350 = trunc i64 %6347 to i32
  %6351 = add i32 1, %6350
  %6352 = zext i32 %6351 to i64
  store i64 %6352, i64* %RAX.i45, align 8
  %6353 = icmp ult i32 %6351, %6350
  %6354 = icmp ult i32 %6351, 1
  %6355 = or i1 %6353, %6354
  %6356 = zext i1 %6355 to i8
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6356, i8* %6357, align 1
  %6358 = and i32 %6351, 255
  %6359 = call i32 @llvm.ctpop.i32(i32 %6358)
  %6360 = trunc i32 %6359 to i8
  %6361 = and i8 %6360, 1
  %6362 = xor i8 %6361, 1
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6362, i8* %6363, align 1
  %6364 = xor i64 1, %6347
  %6365 = trunc i64 %6364 to i32
  %6366 = xor i32 %6365, %6351
  %6367 = lshr i32 %6366, 4
  %6368 = trunc i32 %6367 to i8
  %6369 = and i8 %6368, 1
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6369, i8* %6370, align 1
  %6371 = icmp eq i32 %6351, 0
  %6372 = zext i1 %6371 to i8
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6372, i8* %6373, align 1
  %6374 = lshr i32 %6351, 31
  %6375 = trunc i32 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6375, i8* %6376, align 1
  %6377 = lshr i32 %6350, 31
  %6378 = xor i32 %6374, %6377
  %6379 = add i32 %6378, %6374
  %6380 = icmp eq i32 %6379, 2
  %6381 = zext i1 %6380 to i8
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6381, i8* %6382, align 1
  store %struct.Memory* %loadMem_45f555, %struct.Memory** %MEMORY
  %loadMem_45f558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 1
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %6388 to i64*
  %6389 = load i64, i64* %RAX.i43
  %6390 = load i64, i64* %PC.i42
  %6391 = add i64 %6390, 2
  store i64 %6391, i64* %PC.i42
  %6392 = shl i64 %6389, 32
  %6393 = ashr i64 %6392, 33
  %6394 = trunc i64 %6389 to i8
  %6395 = and i8 %6394, 1
  %6396 = trunc i64 %6393 to i32
  %6397 = and i64 %6393, 4294967295
  store i64 %6397, i64* %RAX.i43, align 8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6395, i8* %6398, align 1
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6400 = and i32 %6396, 255
  %6401 = call i32 @llvm.ctpop.i32(i32 %6400)
  %6402 = trunc i32 %6401 to i8
  %6403 = and i8 %6402, 1
  %6404 = xor i8 %6403, 1
  store i8 %6404, i8* %6399, align 1
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6405, align 1
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6407 = icmp eq i32 %6396, 0
  %6408 = zext i1 %6407 to i8
  store i8 %6408, i8* %6406, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6410 = lshr i32 %6396, 31
  %6411 = trunc i32 %6410 to i8
  store i8 %6411, i8* %6409, align 1
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6412, align 1
  store %struct.Memory* %loadMem_45f558, %struct.Memory** %MEMORY
  %loadMem_45f55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 33
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %6415 to i64*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 1
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %6418 to i32*
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 15
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %6421 to i64*
  %6422 = load i64, i64* %RBP.i41
  %6423 = sub i64 %6422, 20
  %6424 = load i32, i32* %EAX.i40
  %6425 = zext i32 %6424 to i64
  %6426 = load i64, i64* %PC.i39
  %6427 = add i64 %6426, 3
  store i64 %6427, i64* %PC.i39
  %6428 = inttoptr i64 %6423 to i32*
  store i32 %6424, i32* %6428
  store %struct.Memory* %loadMem_45f55b, %struct.Memory** %MEMORY
  %loadMem_45f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 33
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6431 to i64*
  %6432 = load i64, i64* %PC.i38
  %6433 = add i64 %6432, 70
  %6434 = load i64, i64* %PC.i38
  %6435 = add i64 %6434, 5
  store i64 %6435, i64* %PC.i38
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6433, i64* %6436, align 8
  store %struct.Memory* %loadMem_45f55e, %struct.Memory** %MEMORY
  br label %block_.L_45f5a4

block_.L_45f563:                                  ; preds = %entry
  %loadMem_45f563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 15
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %RBP.i37
  %6444 = sub i64 %6443, 16
  %6445 = load i64, i64* %PC.i36
  %6446 = add i64 %6445, 7
  store i64 %6446, i64* %PC.i36
  %6447 = inttoptr i64 %6444 to i32*
  store i32 0, i32* %6447
  store %struct.Memory* %loadMem_45f563, %struct.Memory** %MEMORY
  br label %block_.L_45f56a

block_.L_45f56a:                                  ; preds = %block_45f574, %block_.L_45f563
  %loadMem_45f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 15
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %6453 to i64*
  %6454 = load i64, i64* %RBP.i35
  %6455 = sub i64 %6454, 16
  %6456 = load i64, i64* %PC.i34
  %6457 = add i64 %6456, 4
  store i64 %6457, i64* %PC.i34
  %6458 = inttoptr i64 %6455 to i32*
  %6459 = load i32, i32* %6458
  %6460 = sub i32 %6459, 16
  %6461 = icmp ult i32 %6459, 16
  %6462 = zext i1 %6461 to i8
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6462, i8* %6463, align 1
  %6464 = and i32 %6460, 255
  %6465 = call i32 @llvm.ctpop.i32(i32 %6464)
  %6466 = trunc i32 %6465 to i8
  %6467 = and i8 %6466, 1
  %6468 = xor i8 %6467, 1
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6468, i8* %6469, align 1
  %6470 = xor i32 %6459, 16
  %6471 = xor i32 %6470, %6460
  %6472 = lshr i32 %6471, 4
  %6473 = trunc i32 %6472 to i8
  %6474 = and i8 %6473, 1
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6474, i8* %6475, align 1
  %6476 = icmp eq i32 %6460, 0
  %6477 = zext i1 %6476 to i8
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6477, i8* %6478, align 1
  %6479 = lshr i32 %6460, 31
  %6480 = trunc i32 %6479 to i8
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6480, i8* %6481, align 1
  %6482 = lshr i32 %6459, 31
  %6483 = xor i32 %6479, %6482
  %6484 = add i32 %6483, %6482
  %6485 = icmp eq i32 %6484, 2
  %6486 = zext i1 %6485 to i8
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6486, i8* %6487, align 1
  store %struct.Memory* %loadMem_45f56a, %struct.Memory** %MEMORY
  %loadMem_45f56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 33
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %6490 to i64*
  %6491 = load i64, i64* %PC.i33
  %6492 = add i64 %6491, 49
  %6493 = load i64, i64* %PC.i33
  %6494 = add i64 %6493, 6
  %6495 = load i64, i64* %PC.i33
  %6496 = add i64 %6495, 6
  store i64 %6496, i64* %PC.i33
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6498 = load i8, i8* %6497, align 1
  %6499 = icmp ne i8 %6498, 0
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6501 = load i8, i8* %6500, align 1
  %6502 = icmp ne i8 %6501, 0
  %6503 = xor i1 %6499, %6502
  %6504 = xor i1 %6503, true
  %6505 = zext i1 %6504 to i8
  store i8 %6505, i8* %BRANCH_TAKEN, align 1
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6507 = select i1 %6503, i64 %6494, i64 %6492
  store i64 %6507, i64* %6506, align 8
  store %struct.Memory* %loadMem_45f56e, %struct.Memory** %MEMORY
  %loadBr_45f56e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f56e = icmp eq i8 %loadBr_45f56e, 1
  br i1 %cmpBr_45f56e, label %block_.L_45f59f, label %block_45f574

block_45f574:                                     ; preds = %block_.L_45f56a
  %loadMem_45f574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 33
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 1
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %6513 to i64*
  %6514 = load i64, i64* %PC.i31
  %6515 = add i64 %6514, 8
  store i64 %6515, i64* %PC.i31
  %6516 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %6516, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_45f574, %struct.Memory** %MEMORY
  %loadMem_45f57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 33
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6519 to i64*
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 5
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %6522 to i64*
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 15
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %6525 to i64*
  %6526 = load i64, i64* %RBP.i30
  %6527 = sub i64 %6526, 8
  %6528 = load i64, i64* %PC.i28
  %6529 = add i64 %6528, 4
  store i64 %6529, i64* %PC.i28
  %6530 = inttoptr i64 %6527 to i64*
  %6531 = load i64, i64* %6530
  store i64 %6531, i64* %RCX.i29, align 8
  store %struct.Memory* %loadMem_45f57c, %struct.Memory** %MEMORY
  %loadMem_45f580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 33
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 7
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %RDX.i26 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 15
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %RBP.i27
  %6542 = sub i64 %6541, 16
  %6543 = load i64, i64* %PC.i25
  %6544 = add i64 %6543, 4
  store i64 %6544, i64* %PC.i25
  %6545 = inttoptr i64 %6542 to i32*
  %6546 = load i32, i32* %6545
  %6547 = sext i32 %6546 to i64
  store i64 %6547, i64* %RDX.i26, align 8
  store %struct.Memory* %loadMem_45f580, %struct.Memory** %MEMORY
  %loadMem_45f584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 33
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %6550 to i64*
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 5
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %6553 to i64*
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 7
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6556 to i64*
  %6557 = load i64, i64* %RCX.i24
  %6558 = load i64, i64* %RDX.i
  %6559 = mul i64 %6558, 4
  %6560 = add i64 %6559, %6557
  %6561 = load i64, i64* %PC.i23
  %6562 = add i64 %6561, 4
  store i64 %6562, i64* %PC.i23
  %6563 = inttoptr i64 %6560 to i32*
  %6564 = load i32, i32* %6563
  %6565 = sext i32 %6564 to i64
  store i64 %6565, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_45f584, %struct.Memory** %MEMORY
  %loadMem_45f588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 1
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 5
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 9
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RSI.i22 = bitcast %union.anon* %6577 to i64*
  %6578 = load i64, i64* %RAX.i21
  %6579 = load i64, i64* %RCX.i
  %6580 = mul i64 %6579, 4
  %6581 = add i64 %6580, %6578
  %6582 = load i64, i64* %PC.i20
  %6583 = add i64 %6582, 3
  store i64 %6583, i64* %PC.i20
  %6584 = inttoptr i64 %6581 to i32*
  %6585 = load i32, i32* %6584
  %6586 = zext i32 %6585 to i64
  store i64 %6586, i64* %RSI.i22, align 8
  store %struct.Memory* %loadMem_45f588, %struct.Memory** %MEMORY
  %loadMem_45f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 33
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6589 to i64*
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 9
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 15
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %6595 to i64*
  %6596 = load i64, i64* %RSI.i
  %6597 = load i64, i64* %RBP.i19
  %6598 = sub i64 %6597, 20
  %6599 = load i64, i64* %PC.i18
  %6600 = add i64 %6599, 3
  store i64 %6600, i64* %PC.i18
  %6601 = trunc i64 %6596 to i32
  %6602 = inttoptr i64 %6598 to i32*
  %6603 = load i32, i32* %6602
  %6604 = add i32 %6603, %6601
  %6605 = zext i32 %6604 to i64
  store i64 %6605, i64* %RSI.i, align 8
  %6606 = icmp ult i32 %6604, %6601
  %6607 = icmp ult i32 %6604, %6603
  %6608 = or i1 %6606, %6607
  %6609 = zext i1 %6608 to i8
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6609, i8* %6610, align 1
  %6611 = and i32 %6604, 255
  %6612 = call i32 @llvm.ctpop.i32(i32 %6611)
  %6613 = trunc i32 %6612 to i8
  %6614 = and i8 %6613, 1
  %6615 = xor i8 %6614, 1
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6615, i8* %6616, align 1
  %6617 = xor i32 %6603, %6601
  %6618 = xor i32 %6617, %6604
  %6619 = lshr i32 %6618, 4
  %6620 = trunc i32 %6619 to i8
  %6621 = and i8 %6620, 1
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6621, i8* %6622, align 1
  %6623 = icmp eq i32 %6604, 0
  %6624 = zext i1 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6624, i8* %6625, align 1
  %6626 = lshr i32 %6604, 31
  %6627 = trunc i32 %6626 to i8
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6627, i8* %6628, align 1
  %6629 = lshr i32 %6601, 31
  %6630 = lshr i32 %6603, 31
  %6631 = xor i32 %6626, %6629
  %6632 = xor i32 %6626, %6630
  %6633 = add i32 %6631, %6632
  %6634 = icmp eq i32 %6633, 2
  %6635 = zext i1 %6634 to i8
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6635, i8* %6636, align 1
  store %struct.Memory* %loadMem_45f58b, %struct.Memory** %MEMORY
  %loadMem_45f58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 9
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6642 to i32*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 15
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %RBP.i17
  %6647 = sub i64 %6646, 20
  %6648 = load i32, i32* %ESI.i
  %6649 = zext i32 %6648 to i64
  %6650 = load i64, i64* %PC.i16
  %6651 = add i64 %6650, 3
  store i64 %6651, i64* %PC.i16
  %6652 = inttoptr i64 %6647 to i32*
  store i32 %6648, i32* %6652
  store %struct.Memory* %loadMem_45f58e, %struct.Memory** %MEMORY
  %loadMem_45f591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 1
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %6658 to i64*
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 15
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %6661 to i64*
  %6662 = load i64, i64* %RBP.i15
  %6663 = sub i64 %6662, 16
  %6664 = load i64, i64* %PC.i13
  %6665 = add i64 %6664, 3
  store i64 %6665, i64* %PC.i13
  %6666 = inttoptr i64 %6663 to i32*
  %6667 = load i32, i32* %6666
  %6668 = zext i32 %6667 to i64
  store i64 %6668, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_45f591, %struct.Memory** %MEMORY
  %loadMem_45f594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 33
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6671 to i64*
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 1
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %6674 to i64*
  %6675 = load i64, i64* %RAX.i12
  %6676 = load i64, i64* %PC.i11
  %6677 = add i64 %6676, 3
  store i64 %6677, i64* %PC.i11
  %6678 = trunc i64 %6675 to i32
  %6679 = add i32 1, %6678
  %6680 = zext i32 %6679 to i64
  store i64 %6680, i64* %RAX.i12, align 8
  %6681 = icmp ult i32 %6679, %6678
  %6682 = icmp ult i32 %6679, 1
  %6683 = or i1 %6681, %6682
  %6684 = zext i1 %6683 to i8
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6684, i8* %6685, align 1
  %6686 = and i32 %6679, 255
  %6687 = call i32 @llvm.ctpop.i32(i32 %6686)
  %6688 = trunc i32 %6687 to i8
  %6689 = and i8 %6688, 1
  %6690 = xor i8 %6689, 1
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6690, i8* %6691, align 1
  %6692 = xor i64 1, %6675
  %6693 = trunc i64 %6692 to i32
  %6694 = xor i32 %6693, %6679
  %6695 = lshr i32 %6694, 4
  %6696 = trunc i32 %6695 to i8
  %6697 = and i8 %6696, 1
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6697, i8* %6698, align 1
  %6699 = icmp eq i32 %6679, 0
  %6700 = zext i1 %6699 to i8
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6700, i8* %6701, align 1
  %6702 = lshr i32 %6679, 31
  %6703 = trunc i32 %6702 to i8
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6703, i8* %6704, align 1
  %6705 = lshr i32 %6678, 31
  %6706 = xor i32 %6702, %6705
  %6707 = add i32 %6706, %6702
  %6708 = icmp eq i32 %6707, 2
  %6709 = zext i1 %6708 to i8
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6709, i8* %6710, align 1
  store %struct.Memory* %loadMem_45f594, %struct.Memory** %MEMORY
  %loadMem_45f597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 33
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 1
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6716 to i32*
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6718 = getelementptr inbounds %struct.GPR, %struct.GPR* %6717, i32 0, i32 15
  %6719 = getelementptr inbounds %struct.Reg, %struct.Reg* %6718, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %6719 to i64*
  %6720 = load i64, i64* %RBP.i10
  %6721 = sub i64 %6720, 16
  %6722 = load i32, i32* %EAX.i
  %6723 = zext i32 %6722 to i64
  %6724 = load i64, i64* %PC.i9
  %6725 = add i64 %6724, 3
  store i64 %6725, i64* %PC.i9
  %6726 = inttoptr i64 %6721 to i32*
  store i32 %6722, i32* %6726
  store %struct.Memory* %loadMem_45f597, %struct.Memory** %MEMORY
  %loadMem_45f59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 33
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6729 to i64*
  %6730 = load i64, i64* %PC.i8
  %6731 = add i64 %6730, -48
  %6732 = load i64, i64* %PC.i8
  %6733 = add i64 %6732, 5
  store i64 %6733, i64* %PC.i8
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6731, i64* %6734, align 8
  store %struct.Memory* %loadMem_45f59a, %struct.Memory** %MEMORY
  br label %block_.L_45f56a

block_.L_45f59f:                                  ; preds = %block_.L_45f56a
  %loadMem_45f59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 33
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6737 to i64*
  %6738 = load i64, i64* %PC.i7
  %6739 = add i64 %6738, 5
  %6740 = load i64, i64* %PC.i7
  %6741 = add i64 %6740, 5
  store i64 %6741, i64* %PC.i7
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6739, i64* %6742, align 8
  store %struct.Memory* %loadMem_45f59f, %struct.Memory** %MEMORY
  br label %block_.L_45f5a4

block_.L_45f5a4:                                  ; preds = %block_.L_45f59f, %block_.L_45f552
  %loadMem_45f5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 33
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6745 to i64*
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6747 = getelementptr inbounds %struct.GPR, %struct.GPR* %6746, i32 0, i32 1
  %6748 = getelementptr inbounds %struct.Reg, %struct.Reg* %6747, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6748 to i64*
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6750 = getelementptr inbounds %struct.GPR, %struct.GPR* %6749, i32 0, i32 15
  %6751 = getelementptr inbounds %struct.Reg, %struct.Reg* %6750, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6751 to i64*
  %6752 = load i64, i64* %RBP.i6
  %6753 = sub i64 %6752, 20
  %6754 = load i64, i64* %PC.i5
  %6755 = add i64 %6754, 3
  store i64 %6755, i64* %PC.i5
  %6756 = inttoptr i64 %6753 to i32*
  %6757 = load i32, i32* %6756
  %6758 = zext i32 %6757 to i64
  store i64 %6758, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_45f5a4, %struct.Memory** %MEMORY
  %loadMem_45f5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 33
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6761 to i64*
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 13
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6764 to i64*
  %6765 = load i64, i64* %RSP.i
  %6766 = load i64, i64* %PC.i4
  %6767 = add i64 %6766, 4
  store i64 %6767, i64* %PC.i4
  %6768 = add i64 64, %6765
  store i64 %6768, i64* %RSP.i, align 8
  %6769 = icmp ult i64 %6768, %6765
  %6770 = icmp ult i64 %6768, 64
  %6771 = or i1 %6769, %6770
  %6772 = zext i1 %6771 to i8
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6772, i8* %6773, align 1
  %6774 = trunc i64 %6768 to i32
  %6775 = and i32 %6774, 255
  %6776 = call i32 @llvm.ctpop.i32(i32 %6775)
  %6777 = trunc i32 %6776 to i8
  %6778 = and i8 %6777, 1
  %6779 = xor i8 %6778, 1
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6779, i8* %6780, align 1
  %6781 = xor i64 64, %6765
  %6782 = xor i64 %6781, %6768
  %6783 = lshr i64 %6782, 4
  %6784 = trunc i64 %6783 to i8
  %6785 = and i8 %6784, 1
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6785, i8* %6786, align 1
  %6787 = icmp eq i64 %6768, 0
  %6788 = zext i1 %6787 to i8
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6788, i8* %6789, align 1
  %6790 = lshr i64 %6768, 63
  %6791 = trunc i64 %6790 to i8
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6791, i8* %6792, align 1
  %6793 = lshr i64 %6765, 63
  %6794 = xor i64 %6790, %6793
  %6795 = add i64 %6794, %6790
  %6796 = icmp eq i64 %6795, 2
  %6797 = zext i1 %6796 to i8
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6797, i8* %6798, align 1
  store %struct.Memory* %loadMem_45f5a7, %struct.Memory** %MEMORY
  %loadMem_45f5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 33
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6801 to i64*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 15
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %PC.i2
  %6806 = add i64 %6805, 1
  store i64 %6806, i64* %PC.i2
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6808 = load i64, i64* %6807, align 8
  %6809 = add i64 %6808, 8
  %6810 = inttoptr i64 %6808 to i64*
  %6811 = load i64, i64* %6810
  store i64 %6811, i64* %RBP.i3, align 8
  store i64 %6809, i64* %6807, align 8
  store %struct.Memory* %loadMem_45f5ab, %struct.Memory** %MEMORY
  %loadMem_45f5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 33
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %PC.i1
  %6816 = add i64 %6815, 1
  store i64 %6816, i64* %PC.i1
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6819 = load i64, i64* %6818, align 8
  %6820 = inttoptr i64 %6819 to i64*
  %6821 = load i64, i64* %6820
  store i64 %6821, i64* %6817, align 8
  %6822 = add i64 %6819, 8
  store i64 %6822, i64* %6818, align 8
  store %struct.Memory* %loadMem_45f5ac, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_45f5ac
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_45f563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x30__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 48
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

define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addl_0x20__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 32
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

define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x20__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 32
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

define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x30__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 48
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

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x34__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 52
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

define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x24__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 36
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

define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x24__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 36
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl_0x34__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 52
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addl_0x38__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 56
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

define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x28__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 40
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

define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x28__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 40
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

define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x38__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 56
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addl_0x3c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 60
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

define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x2c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x2c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x3c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 60
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_movl__ecx__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_movl__ecx__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xa4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 164
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xa8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0xa8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0xa4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 164
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x94__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0x9c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x98__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0x98__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0x94__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x84__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 132
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x88__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0x88__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl_MINUS0x84__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 132
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x74__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 116
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

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x78__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
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

define %struct.Memory* @routine_subl_MINUS0x78__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
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

define %struct.Memory* @routine_subl_MINUS0x74__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 116
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

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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

define %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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

define %struct.Memory* @routine_addl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
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

define %struct.Memory* @routine_subl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 16
  %16 = icmp ult i32 %14, 16
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
  %25 = xor i32 %14, 16
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

define %struct.Memory* @routine_jge_.L_45f552(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
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

define %struct.Memory* @routine_jge_.L_45f522(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 100
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

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45f52b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_MINUS0xb0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -176
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45f4fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45f5a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_45f59f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x726840___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
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
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45f56a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
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
