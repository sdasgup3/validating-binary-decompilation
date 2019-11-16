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
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661d4_type = type <{ [4 x i8] }>
%G_0x886a70_type = type <{ [8 x i8] }>
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
@G_0x85f154 = global %G_0x85f154_type zeroinitializer
@G_0x8661d4 = global %G_0x8661d4_type zeroinitializer
@G_0x886a70 = global %G_0x886a70_type zeroinitializer

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
define %struct.Memory* @LearnStoreTT(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_420c50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_420c50, %struct.Memory** %MEMORY
  %loadMem_420c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i168
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i168
  store i64 %26, i64* %RBP.i169, align 8
  store %struct.Memory* %loadMem_420c51, %struct.Memory** %MEMORY
  %loadMem_420c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i191 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i191
  %36 = load i64, i64* %PC.i190
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i190
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_420c54, %struct.Memory** %MEMORY
  %loadMem_420c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %47 to i32*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %RBP.i189
  %52 = sub i64 %51, 12
  %53 = load i32, i32* %EDI.i
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %PC.i188
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC.i188
  %57 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %57
  store %struct.Memory* %loadMem_420c55, %struct.Memory** %MEMORY
  %loadMem_420c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 33
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %60 to i64*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %63 to i32*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 15
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %66 to i64*
  %67 = load i64, i64* %RBP.i187
  %68 = sub i64 %67, 16
  %69 = load i32, i32* %ESI.i
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC.i186
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC.i186
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  store %struct.Memory* %loadMem_420c58, %struct.Memory** %MEMORY
  %loadMem_420c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 33
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %76 to i64*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %EDX.i184 = bitcast %union.anon* %79 to i32*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 15
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %82 to i64*
  %83 = load i64, i64* %RBP.i185
  %84 = sub i64 %83, 20
  %85 = load i32, i32* %EDX.i184
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC.i183
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC.i183
  %89 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %89
  store %struct.Memory* %loadMem_420c5b, %struct.Memory** %MEMORY
  %loadMem_420c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %ECX.i181 = bitcast %union.anon* %95 to i32*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i182
  %100 = sub i64 %99, 24
  %101 = load i32, i32* %ECX.i181
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC.i180
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC.i180
  %105 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %105
  store %struct.Memory* %loadMem_420c5e, %struct.Memory** %MEMORY
  %loadMem_420c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 17
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %111 to i32*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i179
  %116 = sub i64 %115, 28
  %117 = load i32, i32* %R8D.i
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC.i178
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i178
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  store %struct.Memory* %loadMem_420c61, %struct.Memory** %MEMORY
  %loadMem_420c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 19
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %127 to i32*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i177
  %132 = sub i64 %131, 32
  %133 = load i32, i32* %R9D.i
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %PC.i176
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC.i176
  %137 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %137
  store %struct.Memory* %loadMem_420c65, %struct.Memory** %MEMORY
  %loadMem_420c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i175
  %148 = sub i64 %147, 16
  %149 = load i64, i64* %PC.i173
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC.i173
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_420c69, %struct.Memory** %MEMORY
  %loadMem_420c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %EDX.i171 = bitcast %union.anon* %159 to i32*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RDX.i172
  %164 = load i32, i32* %EDX.i171
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i170
  %167 = add i64 %166, 2
  store i64 %167, i64* %PC.i170
  %168 = xor i64 %165, %163
  %169 = trunc i64 %168 to i32
  %170 = and i64 %168, 4294967295
  store i64 %170, i64* %RDX.i172, align 8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %171, align 1
  %172 = and i32 %169, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %176, i8* %177, align 1
  %178 = icmp eq i32 %169, 0
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %179, i8* %180, align 1
  %181 = lshr i32 %169, 31
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %182, i8* %183, align 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %184, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %185, align 1
  store %struct.Memory* %loadMem_420c6c, %struct.Memory** %MEMORY
  %loadMem_420c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %PC.i167
  %190 = add i64 %189, 7
  store i64 %190, i64* %PC.i167
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %192 = bitcast %union.anon* %191 to i32*
  %193 = load i32, i32* %192, align 8
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %196 = bitcast %union.anon* %195 to i32*
  %197 = load i32, i32* %196, align 8
  %198 = zext i32 %197 to i64
  %199 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*)
  %200 = zext i32 %199 to i64
  %201 = shl i64 %198, 32
  %202 = or i64 %201, %194
  %203 = udiv i64 %202, %200
  %204 = and i64 %203, 4294967295
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %210, label %206

; <label>:206:                                    ; preds = %entry
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %208, %struct.Memory* %loadMem_420c6e)
  br label %routine_divl_0x8661d4.exit

; <label>:210:                                    ; preds = %entry
  %211 = urem i64 %202, %200
  %212 = getelementptr inbounds %union.anon, %union.anon* %191, i64 0, i32 0
  store i64 %203, i64* %212, align 8
  %213 = getelementptr inbounds %union.anon, %union.anon* %195, i64 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %214, align 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %215, align 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %216, align 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %217, align 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %218, align 1
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %219, align 1
  br label %routine_divl_0x8661d4.exit

routine_divl_0x8661d4.exit:                       ; preds = %206, %210
  %220 = phi %struct.Memory* [ %209, %206 ], [ %loadMem_420c6e, %210 ]
  store %struct.Memory* %220, %struct.Memory** %MEMORY
  %loadMem_420c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %EDX.i165 = bitcast %union.anon* %226 to i32*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 15
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %RBP.i166
  %231 = sub i64 %230, 36
  %232 = load i32, i32* %EDX.i165
  %233 = zext i32 %232 to i64
  %234 = load i64, i64* %PC.i164
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i164
  %236 = inttoptr i64 %231 to i32*
  store i32 %232, i32* %236
  store %struct.Memory* %loadMem_420c75, %struct.Memory** %MEMORY
  %loadMem_420c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 15
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %245 to i64*
  %246 = load i64, i64* %RBP.i163
  %247 = sub i64 %246, 32
  %248 = load i64, i64* %PC.i161
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC.i161
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_420c78, %struct.Memory** %MEMORY
  %loadMem_420c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %259 = bitcast %union.anon* %258 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %259, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 21
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %263 = bitcast %union.anon* %262 to %struct.anon.2*
  %R10B.i160 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %263, i32 0, i32 0
  %264 = load i8, i8* %CL.i
  %265 = zext i8 %264 to i64
  %266 = load i64, i64* %PC.i159
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i159
  store i8 %264, i8* %R10B.i160, align 1
  store %struct.Memory* %loadMem_420c7b, %struct.Memory** %MEMORY
  %loadMem_420c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 23
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %R11.i158 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %PC.i157
  %275 = add i64 %274, 8
  store i64 %275, i64* %PC.i157
  %276 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %276, i64* %R11.i158, align 8
  store %struct.Memory* %loadMem_420c7e, %struct.Memory** %MEMORY
  %loadMem_420c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i156
  %287 = sub i64 %286, 36
  %288 = load i64, i64* %PC.i154
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC.i154
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_420c86, %struct.Memory** %MEMORY
  %loadMem_420c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %ECX.i152 = bitcast %union.anon* %298 to i32*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBX.i153 = bitcast %union.anon* %301 to i64*
  %302 = load i32, i32* %ECX.i152
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %PC.i151
  %305 = add i64 %304, 2
  store i64 %305, i64* %PC.i151
  %306 = and i64 %303, 4294967295
  store i64 %306, i64* %RBX.i153, align 8
  store %struct.Memory* %loadMem_420c89, %struct.Memory** %MEMORY
  %loadMem_420c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBX.i150 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBX.i150
  %314 = load i64, i64* %PC.i149
  %315 = add i64 %314, 4
  store i64 %315, i64* %PC.i149
  %316 = sext i64 %313 to i128
  %317 = and i128 %316, -18446744073709551616
  %318 = zext i64 %313 to i128
  %319 = or i128 %317, %318
  %320 = mul i128 20, %319
  %321 = trunc i128 %320 to i64
  store i64 %321, i64* %RBX.i150, align 8
  %322 = sext i64 %321 to i128
  %323 = icmp ne i128 %322, %320
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1
  %326 = trunc i128 %320 to i32
  %327 = and i32 %326, 255
  %328 = call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %331, i8* %332, align 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %333, align 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %334, align 1
  %335 = lshr i64 %321, 63
  %336 = trunc i64 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %336, i8* %337, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %324, i8* %338, align 1
  store %struct.Memory* %loadMem_420c8b, %struct.Memory** %MEMORY
  %loadMem_420c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RBX.i147 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 23
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %R11.i148 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %R11.i148
  %349 = load i64, i64* %RBX.i147
  %350 = load i64, i64* %PC.i146
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i146
  %352 = add i64 %349, %348
  store i64 %352, i64* %R11.i148, align 8
  %353 = icmp ult i64 %352, %348
  %354 = icmp ult i64 %352, %349
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %356, i8* %357, align 1
  %358 = trunc i64 %352 to i32
  %359 = and i32 %358, 255
  %360 = call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %363, i8* %364, align 1
  %365 = xor i64 %349, %348
  %366 = xor i64 %365, %352
  %367 = lshr i64 %366, 4
  %368 = trunc i64 %367 to i8
  %369 = and i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %369, i8* %370, align 1
  %371 = icmp eq i64 %352, 0
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %372, i8* %373, align 1
  %374 = lshr i64 %352, 63
  %375 = trunc i64 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %375, i8* %376, align 1
  %377 = lshr i64 %348, 63
  %378 = lshr i64 %349, 63
  %379 = xor i64 %374, %377
  %380 = xor i64 %374, %378
  %381 = add i64 %379, %380
  %382 = icmp eq i64 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1
  store %struct.Memory* %loadMem_420c8f, %struct.Memory** %MEMORY
  %loadMem_420c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 21
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %391 = bitcast %union.anon* %390 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %391, i32 0, i32 0
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 23
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %R11.i = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %R11.i
  %396 = load i8, i8* %R10B.i
  %397 = zext i8 %396 to i64
  %398 = load i64, i64* %PC.i145
  %399 = add i64 %398, 3
  store i64 %399, i64* %PC.i145
  %400 = inttoptr i64 %395 to i8*
  store i8 %396, i8* %400
  store %struct.Memory* %loadMem_420c92, %struct.Memory** %MEMORY
  %loadMem_420c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i144
  %405 = add i64 %404, 8
  store i64 %405, i64* %PC.i144
  %406 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %407 = sub i32 %406, 3
  %408 = icmp ult i32 %406, 3
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %409, i8* %410, align 1
  %411 = and i32 %407, 255
  %412 = call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %415, i8* %416, align 1
  %417 = xor i32 %406, 3
  %418 = xor i32 %417, %407
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %421, i8* %422, align 1
  %423 = icmp eq i32 %407, 0
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %424, i8* %425, align 1
  %426 = lshr i32 %407, 31
  %427 = trunc i32 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %427, i8* %428, align 1
  %429 = lshr i32 %406, 31
  %430 = xor i32 %426, %429
  %431 = add i32 %430, %429
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %433, i8* %434, align 1
  store %struct.Memory* %loadMem_420c95, %struct.Memory** %MEMORY
  %loadMem_420c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %PC.i143
  %439 = add i64 %438, 49
  %440 = load i64, i64* %PC.i143
  %441 = add i64 %440, 6
  %442 = load i64, i64* %PC.i143
  %443 = add i64 %442, 6
  store i64 %443, i64* %PC.i143
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %445 = load i8, i8* %444, align 1
  store i8 %445, i8* %BRANCH_TAKEN, align 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %447 = icmp ne i8 %445, 0
  %448 = select i1 %447, i64 %439, i64 %441
  store i64 %448, i64* %446, align 8
  store %struct.Memory* %loadMem_420c9d, %struct.Memory** %MEMORY
  %loadBr_420c9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c9d = icmp eq i8 %loadBr_420c9d, 1
  br i1 %cmpBr_420c9d, label %block_.L_420cce, label %block_420ca3

block_420ca3:                                     ; preds = %routine_divl_0x8661d4.exit
  %loadMem_420ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i142
  %453 = add i64 %452, 8
  store i64 %453, i64* %PC.i142
  %454 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %455 = sub i32 %454, 4
  %456 = icmp ult i32 %454, 4
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %457, i8* %458, align 1
  %459 = and i32 %455, 255
  %460 = call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %463, i8* %464, align 1
  %465 = xor i32 %454, 4
  %466 = xor i32 %465, %455
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %469, i8* %470, align 1
  %471 = icmp eq i32 %455, 0
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %472, i8* %473, align 1
  %474 = lshr i32 %455, 31
  %475 = trunc i32 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %475, i8* %476, align 1
  %477 = lshr i32 %454, 31
  %478 = xor i32 %474, %477
  %479 = add i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %481, i8* %482, align 1
  store %struct.Memory* %loadMem_420ca3, %struct.Memory** %MEMORY
  %loadMem_420cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %PC.i141
  %487 = add i64 %486, 35
  %488 = load i64, i64* %PC.i141
  %489 = add i64 %488, 6
  %490 = load i64, i64* %PC.i141
  %491 = add i64 %490, 6
  store i64 %491, i64* %PC.i141
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %493 = load i8, i8* %492, align 1
  store i8 %493, i8* %BRANCH_TAKEN, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %495 = icmp ne i8 %493, 0
  %496 = select i1 %495, i64 %487, i64 %489
  store i64 %496, i64* %494, align 8
  store %struct.Memory* %loadMem_420cab, %struct.Memory** %MEMORY
  %loadBr_420cab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420cab = icmp eq i8 %loadBr_420cab, 1
  br i1 %cmpBr_420cab, label %block_.L_420cce, label %block_420cb1

block_420cb1:                                     ; preds = %block_420ca3
  %loadMem_420cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %PC.i139
  %504 = add i64 %503, 8
  store i64 %504, i64* %PC.i139
  %505 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %505, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_420cb1, %struct.Memory** %MEMORY
  %loadMem_420cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RBP.i138
  %516 = sub i64 %515, 36
  %517 = load i64, i64* %PC.i136
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i136
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_420cb9, %struct.Memory** %MEMORY
  %loadMem_420cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 5
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %ECX.i134 = bitcast %union.anon* %527 to i32*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 7
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %530 to i64*
  %531 = load i32, i32* %ECX.i134
  %532 = zext i32 %531 to i64
  %533 = load i64, i64* %PC.i133
  %534 = add i64 %533, 2
  store i64 %534, i64* %PC.i133
  %535 = and i64 %532, 4294967295
  store i64 %535, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_420cbc, %struct.Memory** %MEMORY
  %loadMem_420cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 7
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RDX.i132
  %543 = load i64, i64* %PC.i131
  %544 = add i64 %543, 4
  store i64 %544, i64* %PC.i131
  %545 = sext i64 %542 to i128
  %546 = and i128 %545, -18446744073709551616
  %547 = zext i64 %542 to i128
  %548 = or i128 %546, %547
  %549 = mul i128 20, %548
  %550 = trunc i128 %549 to i64
  store i64 %550, i64* %RDX.i132, align 8
  %551 = sext i64 %550 to i128
  %552 = icmp ne i128 %551, %549
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %553, i8* %554, align 1
  %555 = trunc i128 %549 to i32
  %556 = and i32 %555, 255
  %557 = call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %560, i8* %561, align 1
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %562, align 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %563, align 1
  %564 = lshr i64 %550, 63
  %565 = trunc i64 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %565, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %553, i8* %567, align 1
  store %struct.Memory* %loadMem_420cbe, %struct.Memory** %MEMORY
  %loadMem_420cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 7
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RAX.i129
  %578 = load i64, i64* %RDX.i130
  %579 = load i64, i64* %PC.i128
  %580 = add i64 %579, 3
  store i64 %580, i64* %PC.i128
  %581 = add i64 %578, %577
  store i64 %581, i64* %RAX.i129, align 8
  %582 = icmp ult i64 %581, %577
  %583 = icmp ult i64 %581, %578
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %585, i8* %586, align 1
  %587 = trunc i64 %581 to i32
  %588 = and i32 %587, 255
  %589 = call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %592, i8* %593, align 1
  %594 = xor i64 %578, %577
  %595 = xor i64 %594, %581
  %596 = lshr i64 %595, 4
  %597 = trunc i64 %596 to i8
  %598 = and i8 %597, 1
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %598, i8* %599, align 1
  %600 = icmp eq i64 %581, 0
  %601 = zext i1 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %601, i8* %602, align 1
  %603 = lshr i64 %581, 63
  %604 = trunc i64 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %604, i8* %605, align 1
  %606 = lshr i64 %577, 63
  %607 = lshr i64 %578, 63
  %608 = xor i64 %603, %606
  %609 = xor i64 %603, %607
  %610 = add i64 %608, %609
  %611 = icmp eq i64 %610, 2
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %612, i8* %613, align 1
  store %struct.Memory* %loadMem_420cc2, %struct.Memory** %MEMORY
  %loadMem_420cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RAX.i127
  %621 = add i64 %620, 3
  %622 = load i64, i64* %PC.i126
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i126
  %624 = inttoptr i64 %621 to i8*
  store i8 3, i8* %624
  store %struct.Memory* %loadMem_420cc5, %struct.Memory** %MEMORY
  %loadMem_420cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %PC.i125
  %629 = add i64 %628, 29
  %630 = load i64, i64* %PC.i125
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC.i125
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %629, i64* %632, align 8
  store %struct.Memory* %loadMem_420cc9, %struct.Memory** %MEMORY
  br label %block_.L_420ce6

block_.L_420cce:                                  ; preds = %block_420ca3, %routine_divl_0x8661d4.exit
  %loadMem_420cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %PC.i123
  %640 = add i64 %639, 8
  store i64 %640, i64* %PC.i123
  %641 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %641, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_420cce, %struct.Memory** %MEMORY
  %loadMem_420cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 5
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 15
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RBP.i122
  %652 = sub i64 %651, 36
  %653 = load i64, i64* %PC.i120
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC.i120
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_420cd6, %struct.Memory** %MEMORY
  %loadMem_420cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %663 to i32*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 7
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %666 to i64*
  %667 = load i32, i32* %ECX.i
  %668 = zext i32 %667 to i64
  %669 = load i64, i64* %PC.i118
  %670 = add i64 %669, 2
  store i64 %670, i64* %PC.i118
  %671 = and i64 %668, 4294967295
  store i64 %671, i64* %RDX.i119, align 8
  store %struct.Memory* %loadMem_420cd9, %struct.Memory** %MEMORY
  %loadMem_420cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 7
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %RDX.i117
  %679 = load i64, i64* %PC.i116
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC.i116
  %681 = sext i64 %678 to i128
  %682 = and i128 %681, -18446744073709551616
  %683 = zext i64 %678 to i128
  %684 = or i128 %682, %683
  %685 = mul i128 20, %684
  %686 = trunc i128 %685 to i64
  store i64 %686, i64* %RDX.i117, align 8
  %687 = sext i64 %686 to i128
  %688 = icmp ne i128 %687, %685
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %689, i8* %690, align 1
  %691 = trunc i128 %685 to i32
  %692 = and i32 %691, 255
  %693 = call i32 @llvm.ctpop.i32(i32 %692)
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %696, i8* %697, align 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %698, align 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %699, align 1
  %700 = lshr i64 %686, 63
  %701 = trunc i64 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %701, i8* %702, align 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %689, i8* %703, align 1
  store %struct.Memory* %loadMem_420cdb, %struct.Memory** %MEMORY
  %loadMem_420cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 7
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RAX.i114
  %714 = load i64, i64* %RDX.i115
  %715 = load i64, i64* %PC.i113
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC.i113
  %717 = add i64 %714, %713
  store i64 %717, i64* %RAX.i114, align 8
  %718 = icmp ult i64 %717, %713
  %719 = icmp ult i64 %717, %714
  %720 = or i1 %718, %719
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %721, i8* %722, align 1
  %723 = trunc i64 %717 to i32
  %724 = and i32 %723, 255
  %725 = call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %728, i8* %729, align 1
  %730 = xor i64 %714, %713
  %731 = xor i64 %730, %717
  %732 = lshr i64 %731, 4
  %733 = trunc i64 %732 to i8
  %734 = and i8 %733, 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %734, i8* %735, align 1
  %736 = icmp eq i64 %717, 0
  %737 = zext i1 %736 to i8
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %737, i8* %738, align 1
  %739 = lshr i64 %717, 63
  %740 = trunc i64 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %740, i8* %741, align 1
  %742 = lshr i64 %713, 63
  %743 = lshr i64 %714, 63
  %744 = xor i64 %739, %742
  %745 = xor i64 %739, %743
  %746 = add i64 %744, %745
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %748, i8* %749, align 1
  store %struct.Memory* %loadMem_420cdf, %struct.Memory** %MEMORY
  %loadMem_420ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %RAX.i112
  %757 = add i64 %756, 3
  %758 = load i64, i64* %PC.i111
  %759 = add i64 %758, 4
  store i64 %759, i64* %PC.i111
  %760 = inttoptr i64 %757 to i8*
  store i8 1, i8* %760
  store %struct.Memory* %loadMem_420ce2, %struct.Memory** %MEMORY
  br label %block_.L_420ce6

block_.L_420ce6:                                  ; preds = %block_.L_420cce, %block_420cb1
  %loadMem_420ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 15
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %RBP.i110
  %771 = sub i64 %770, 16
  %772 = load i64, i64* %PC.i108
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC.i108
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_420ce6, %struct.Memory** %MEMORY
  %loadMem_420ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 5
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i106
  %784 = add i64 %783, 8
  store i64 %784, i64* %PC.i106
  %785 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %785, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_420ce9, %struct.Memory** %MEMORY
  %loadMem_420cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 7
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 15
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RBP.i105
  %796 = sub i64 %795, 36
  %797 = load i64, i64* %PC.i103
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC.i103
  %799 = inttoptr i64 %796 to i32*
  %800 = load i32, i32* %799
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_420cf1, %struct.Memory** %MEMORY
  %loadMem_420cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 7
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %EDX.i101 = bitcast %union.anon* %807 to i32*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 9
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RSI.i102 = bitcast %union.anon* %810 to i64*
  %811 = load i32, i32* %EDX.i101
  %812 = zext i32 %811 to i64
  %813 = load i64, i64* %PC.i100
  %814 = add i64 %813, 2
  store i64 %814, i64* %PC.i100
  %815 = and i64 %812, 4294967295
  store i64 %815, i64* %RSI.i102, align 8
  store %struct.Memory* %loadMem_420cf4, %struct.Memory** %MEMORY
  %loadMem_420cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 9
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RSI.i99
  %823 = load i64, i64* %PC.i98
  %824 = add i64 %823, 4
  store i64 %824, i64* %PC.i98
  %825 = sext i64 %822 to i128
  %826 = and i128 %825, -18446744073709551616
  %827 = zext i64 %822 to i128
  %828 = or i128 %826, %827
  %829 = mul i128 20, %828
  %830 = trunc i128 %829 to i64
  store i64 %830, i64* %RSI.i99, align 8
  %831 = sext i64 %830 to i128
  %832 = icmp ne i128 %831, %829
  %833 = zext i1 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %833, i8* %834, align 1
  %835 = trunc i128 %829 to i32
  %836 = and i32 %835, 255
  %837 = call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %840, i8* %841, align 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %842, align 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %843, align 1
  %844 = lshr i64 %830, 63
  %845 = trunc i64 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %845, i8* %846, align 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %833, i8* %847, align 1
  store %struct.Memory* %loadMem_420cf6, %struct.Memory** %MEMORY
  %loadMem_420cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 9
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RSI.i97 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RCX.i96
  %858 = load i64, i64* %RSI.i97
  %859 = load i64, i64* %PC.i95
  %860 = add i64 %859, 3
  store i64 %860, i64* %PC.i95
  %861 = add i64 %858, %857
  store i64 %861, i64* %RCX.i96, align 8
  %862 = icmp ult i64 %861, %857
  %863 = icmp ult i64 %861, %858
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %865, i8* %866, align 1
  %867 = trunc i64 %861 to i32
  %868 = and i32 %867, 255
  %869 = call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %872, i8* %873, align 1
  %874 = xor i64 %858, %857
  %875 = xor i64 %874, %861
  %876 = lshr i64 %875, 4
  %877 = trunc i64 %876 to i8
  %878 = and i8 %877, 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %878, i8* %879, align 1
  %880 = icmp eq i64 %861, 0
  %881 = zext i1 %880 to i8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %881, i8* %882, align 1
  %883 = lshr i64 %861, 63
  %884 = trunc i64 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %884, i8* %885, align 1
  %886 = lshr i64 %857, 63
  %887 = lshr i64 %858, 63
  %888 = xor i64 %883, %886
  %889 = xor i64 %883, %887
  %890 = add i64 %888, %889
  %891 = icmp eq i64 %890, 2
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %892, i8* %893, align 1
  store %struct.Memory* %loadMem_420cfa, %struct.Memory** %MEMORY
  %loadMem_420cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %899 to i32*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RCX.i94
  %904 = add i64 %903, 8
  %905 = load i32, i32* %EAX.i93
  %906 = zext i32 %905 to i64
  %907 = load i64, i64* %PC.i92
  %908 = add i64 %907, 3
  store i64 %908, i64* %PC.i92
  %909 = inttoptr i64 %904 to i32*
  store i32 %905, i32* %909
  store %struct.Memory* %loadMem_420cfd, %struct.Memory** %MEMORY
  %loadMem_420d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i91
  %920 = sub i64 %919, 20
  %921 = load i64, i64* %PC.i89
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC.i89
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_420d00, %struct.Memory** %MEMORY
  %loadMem_420d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 5
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %PC.i87
  %933 = add i64 %932, 8
  store i64 %933, i64* %PC.i87
  %934 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %934, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_420d03, %struct.Memory** %MEMORY
  %loadMem_420d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 7
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i86
  %945 = sub i64 %944, 36
  %946 = load i64, i64* %PC.i84
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i84
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_420d0b, %struct.Memory** %MEMORY
  %loadMem_420d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 7
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %EDX.i82 = bitcast %union.anon* %956 to i32*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 9
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %959 to i64*
  %960 = load i32, i32* %EDX.i82
  %961 = zext i32 %960 to i64
  %962 = load i64, i64* %PC.i81
  %963 = add i64 %962, 2
  store i64 %963, i64* %PC.i81
  %964 = and i64 %961, 4294967295
  store i64 %964, i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_420d0e, %struct.Memory** %MEMORY
  %loadMem_420d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 9
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RSI.i80 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RSI.i80
  %972 = load i64, i64* %PC.i79
  %973 = add i64 %972, 4
  store i64 %973, i64* %PC.i79
  %974 = sext i64 %971 to i128
  %975 = and i128 %974, -18446744073709551616
  %976 = zext i64 %971 to i128
  %977 = or i128 %975, %976
  %978 = mul i128 20, %977
  %979 = trunc i128 %978 to i64
  store i64 %979, i64* %RSI.i80, align 8
  %980 = sext i64 %979 to i128
  %981 = icmp ne i128 %980, %978
  %982 = zext i1 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %982, i8* %983, align 1
  %984 = trunc i128 %978 to i32
  %985 = and i32 %984, 255
  %986 = call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %989, i8* %990, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %991, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %992, align 1
  %993 = lshr i64 %979, 63
  %994 = trunc i64 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %994, i8* %995, align 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %982, i8* %996, align 1
  store %struct.Memory* %loadMem_420d10, %struct.Memory** %MEMORY
  %loadMem_420d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 5
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 9
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RSI.i78 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RCX.i77
  %1007 = load i64, i64* %RSI.i78
  %1008 = load i64, i64* %PC.i76
  %1009 = add i64 %1008, 3
  store i64 %1009, i64* %PC.i76
  %1010 = add i64 %1007, %1006
  store i64 %1010, i64* %RCX.i77, align 8
  %1011 = icmp ult i64 %1010, %1006
  %1012 = icmp ult i64 %1010, %1007
  %1013 = or i1 %1011, %1012
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1014, i8* %1015, align 1
  %1016 = trunc i64 %1010 to i32
  %1017 = and i32 %1016, 255
  %1018 = call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1021, i8* %1022, align 1
  %1023 = xor i64 %1007, %1006
  %1024 = xor i64 %1023, %1010
  %1025 = lshr i64 %1024, 4
  %1026 = trunc i64 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1027, i8* %1028, align 1
  %1029 = icmp eq i64 %1010, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1
  %1032 = lshr i64 %1010, 63
  %1033 = trunc i64 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i64 %1006, 63
  %1036 = lshr i64 %1007, 63
  %1037 = xor i64 %1032, %1035
  %1038 = xor i64 %1032, %1036
  %1039 = add i64 %1037, %1038
  %1040 = icmp eq i64 %1039, 2
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1041, i8* %1042, align 1
  store %struct.Memory* %loadMem_420d14, %struct.Memory** %MEMORY
  %loadMem_420d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 1
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %1048 to i32*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 5
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RCX.i75
  %1053 = add i64 %1052, 12
  %1054 = load i32, i32* %EAX.i74
  %1055 = zext i32 %1054 to i64
  %1056 = load i64, i64* %PC.i73
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %PC.i73
  %1058 = inttoptr i64 %1053 to i32*
  store i32 %1054, i32* %1058
  store %struct.Memory* %loadMem_420d17, %struct.Memory** %MEMORY
  %loadMem_420d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 15
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RBP.i72
  %1069 = sub i64 %1068, 28
  %1070 = load i64, i64* %PC.i70
  %1071 = add i64 %1070, 3
  store i64 %1071, i64* %PC.i70
  %1072 = inttoptr i64 %1069 to i32*
  %1073 = load i32, i32* %1072
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_420d1a, %struct.Memory** %MEMORY
  %loadMem_420d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 1
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %AX.i = bitcast %union.anon* %1080 to i16*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 11
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %DI.i69 = bitcast %union.anon* %1083 to i16*
  %1084 = load i16, i16* %AX.i
  %1085 = zext i16 %1084 to i64
  %1086 = load i64, i64* %PC.i68
  %1087 = add i64 %1086, 3
  store i64 %1087, i64* %PC.i68
  store i16 %1084, i16* %DI.i69, align 2
  store %struct.Memory* %loadMem_420d1d, %struct.Memory** %MEMORY
  %loadMem_420d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 5
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %PC.i66
  %1095 = add i64 %1094, 8
  store i64 %1095, i64* %PC.i66
  %1096 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %1096, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_420d20, %struct.Memory** %MEMORY
  %loadMem_420d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 15
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RBP.i65
  %1107 = sub i64 %1106, 36
  %1108 = load i64, i64* %PC.i63
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC.i63
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_420d28, %struct.Memory** %MEMORY
  %loadMem_420d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 1
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %1118 to i32*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 9
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %1121 to i64*
  %1122 = load i32, i32* %EAX.i61
  %1123 = zext i32 %1122 to i64
  %1124 = load i64, i64* %PC.i60
  %1125 = add i64 %1124, 2
  store i64 %1125, i64* %PC.i60
  %1126 = and i64 %1123, 4294967295
  store i64 %1126, i64* %RSI.i62, align 8
  store %struct.Memory* %loadMem_420d2b, %struct.Memory** %MEMORY
  %loadMem_420d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 9
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RSI.i59
  %1134 = load i64, i64* %PC.i58
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC.i58
  %1136 = sext i64 %1133 to i128
  %1137 = and i128 %1136, -18446744073709551616
  %1138 = zext i64 %1133 to i128
  %1139 = or i128 %1137, %1138
  %1140 = mul i128 20, %1139
  %1141 = trunc i128 %1140 to i64
  store i64 %1141, i64* %RSI.i59, align 8
  %1142 = sext i64 %1141 to i128
  %1143 = icmp ne i128 %1142, %1140
  %1144 = zext i1 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1144, i8* %1145, align 1
  %1146 = trunc i128 %1140 to i32
  %1147 = and i32 %1146, 255
  %1148 = call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1151, i8* %1152, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1153, align 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1154, align 1
  %1155 = lshr i64 %1141, 63
  %1156 = trunc i64 %1155 to i8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1156, i8* %1157, align 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1144, i8* %1158, align 1
  store %struct.Memory* %loadMem_420d2d, %struct.Memory** %MEMORY
  %loadMem_420d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 5
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 9
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RSI.i57 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RCX.i56
  %1169 = load i64, i64* %RSI.i57
  %1170 = load i64, i64* %PC.i55
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i55
  %1172 = add i64 %1169, %1168
  store i64 %1172, i64* %RCX.i56, align 8
  %1173 = icmp ult i64 %1172, %1168
  %1174 = icmp ult i64 %1172, %1169
  %1175 = or i1 %1173, %1174
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1176, i8* %1177, align 1
  %1178 = trunc i64 %1172 to i32
  %1179 = and i32 %1178, 255
  %1180 = call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1183, i8* %1184, align 1
  %1185 = xor i64 %1169, %1168
  %1186 = xor i64 %1185, %1172
  %1187 = lshr i64 %1186, 4
  %1188 = trunc i64 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1189, i8* %1190, align 1
  %1191 = icmp eq i64 %1172, 0
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1192, i8* %1193, align 1
  %1194 = lshr i64 %1172, 63
  %1195 = trunc i64 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i64 %1168, 63
  %1198 = lshr i64 %1169, 63
  %1199 = xor i64 %1194, %1197
  %1200 = xor i64 %1194, %1198
  %1201 = add i64 %1199, %1200
  %1202 = icmp eq i64 %1201, 2
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1203, i8* %1204, align 1
  store %struct.Memory* %loadMem_420d31, %struct.Memory** %MEMORY
  %loadMem_420d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 11
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %DI.i = bitcast %union.anon* %1210 to i16*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 5
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %RCX.i54
  %1215 = add i64 %1214, 4
  %1216 = load i16, i16* %DI.i
  %1217 = zext i16 %1216 to i64
  %1218 = load i64, i64* %PC.i53
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC.i53
  %1220 = inttoptr i64 %1215 to i16*
  store i16 %1216, i16* %1220
  store %struct.Memory* %loadMem_420d34, %struct.Memory** %MEMORY
  %loadMem_420d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 1
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 15
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RBP.i52
  %1231 = sub i64 %1230, 12
  %1232 = load i64, i64* %PC.i50
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC.i50
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_420d38, %struct.Memory** %MEMORY
  %loadMem_420d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 5
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %PC.i48
  %1244 = add i64 %1243, 8
  store i64 %1244, i64* %PC.i48
  %1245 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %1245, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_420d3b, %struct.Memory** %MEMORY
  %loadMem_420d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 7
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RBP.i47
  %1256 = sub i64 %1255, 36
  %1257 = load i64, i64* %PC.i46
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %PC.i46
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_420d43, %struct.Memory** %MEMORY
  %loadMem_420d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 7
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1267 to i32*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 9
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %1270 to i64*
  %1271 = load i32, i32* %EDX.i
  %1272 = zext i32 %1271 to i64
  %1273 = load i64, i64* %PC.i44
  %1274 = add i64 %1273, 2
  store i64 %1274, i64* %PC.i44
  %1275 = and i64 %1272, 4294967295
  store i64 %1275, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_420d46, %struct.Memory** %MEMORY
  %loadMem_420d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 9
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %RSI.i43
  %1283 = load i64, i64* %PC.i42
  %1284 = add i64 %1283, 4
  store i64 %1284, i64* %PC.i42
  %1285 = sext i64 %1282 to i128
  %1286 = and i128 %1285, -18446744073709551616
  %1287 = zext i64 %1282 to i128
  %1288 = or i128 %1286, %1287
  %1289 = mul i128 20, %1288
  %1290 = trunc i128 %1289 to i64
  store i64 %1290, i64* %RSI.i43, align 8
  %1291 = sext i64 %1290 to i128
  %1292 = icmp ne i128 %1291, %1289
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1293, i8* %1294, align 1
  %1295 = trunc i128 %1289 to i32
  %1296 = and i32 %1295, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1302, align 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1303, align 1
  %1304 = lshr i64 %1290, 63
  %1305 = trunc i64 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1293, i8* %1307, align 1
  store %struct.Memory* %loadMem_420d48, %struct.Memory** %MEMORY
  %loadMem_420d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 5
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 9
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RSI.i41 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RCX.i40
  %1318 = load i64, i64* %RSI.i41
  %1319 = load i64, i64* %PC.i39
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC.i39
  %1321 = add i64 %1318, %1317
  store i64 %1321, i64* %RCX.i40, align 8
  %1322 = icmp ult i64 %1321, %1317
  %1323 = icmp ult i64 %1321, %1318
  %1324 = or i1 %1322, %1323
  %1325 = zext i1 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1325, i8* %1326, align 1
  %1327 = trunc i64 %1321 to i32
  %1328 = and i32 %1327, 255
  %1329 = call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1332, i8* %1333, align 1
  %1334 = xor i64 %1318, %1317
  %1335 = xor i64 %1334, %1321
  %1336 = lshr i64 %1335, 4
  %1337 = trunc i64 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1338, i8* %1339, align 1
  %1340 = icmp eq i64 %1321, 0
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i64 %1321, 63
  %1344 = trunc i64 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1344, i8* %1345, align 1
  %1346 = lshr i64 %1317, 63
  %1347 = lshr i64 %1318, 63
  %1348 = xor i64 %1343, %1346
  %1349 = xor i64 %1343, %1347
  %1350 = add i64 %1348, %1349
  %1351 = icmp eq i64 %1350, 2
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1352, i8* %1353, align 1
  store %struct.Memory* %loadMem_420d4c, %struct.Memory** %MEMORY
  %loadMem_420d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 1
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %EAX.i37 = bitcast %union.anon* %1359 to i32*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 5
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RCX.i38
  %1364 = add i64 %1363, 16
  %1365 = load i32, i32* %EAX.i37
  %1366 = zext i32 %1365 to i64
  %1367 = load i64, i64* %PC.i36
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC.i36
  %1369 = inttoptr i64 %1364 to i32*
  store i32 %1365, i32* %1369
  store %struct.Memory* %loadMem_420d4f, %struct.Memory** %MEMORY
  %loadMem_420d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RBP.i35
  %1380 = sub i64 %1379, 24
  %1381 = load i64, i64* %PC.i33
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC.i33
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383
  %1385 = zext i32 %1384 to i64
  store i64 %1385, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_420d52, %struct.Memory** %MEMORY
  %loadMem_420d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 1
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %1392 = bitcast %union.anon* %1391 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1392, i32 0, i32 0
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 17
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %1396 = bitcast %union.anon* %1395 to %struct.anon.2*
  %R8B.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1396, i32 0, i32 0
  %1397 = load i8, i8* %AL.i
  %1398 = zext i8 %1397 to i64
  %1399 = load i64, i64* %PC.i31
  %1400 = add i64 %1399, 3
  store i64 %1400, i64* %PC.i31
  store i8 %1397, i8* %R8B.i32, align 1
  store %struct.Memory* %loadMem_420d55, %struct.Memory** %MEMORY
  %loadMem_420d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 5
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i29
  %1408 = add i64 %1407, 8
  store i64 %1408, i64* %PC.i29
  %1409 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %1409, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_420d58, %struct.Memory** %MEMORY
  %loadMem_420d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 1
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 15
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %1418 to i64*
  %1419 = load i64, i64* %RBP.i28
  %1420 = sub i64 %1419, 36
  %1421 = load i64, i64* %PC.i26
  %1422 = add i64 %1421, 3
  store i64 %1422, i64* %PC.i26
  %1423 = inttoptr i64 %1420 to i32*
  %1424 = load i32, i32* %1423
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_420d60, %struct.Memory** %MEMORY
  %loadMem_420d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %1431 to i32*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 9
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RSI.i25 = bitcast %union.anon* %1434 to i64*
  %1435 = load i32, i32* %EAX.i24
  %1436 = zext i32 %1435 to i64
  %1437 = load i64, i64* %PC.i23
  %1438 = add i64 %1437, 2
  store i64 %1438, i64* %PC.i23
  %1439 = and i64 %1436, 4294967295
  store i64 %1439, i64* %RSI.i25, align 8
  store %struct.Memory* %loadMem_420d63, %struct.Memory** %MEMORY
  %loadMem_420d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 9
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RSI.i22 = bitcast %union.anon* %1445 to i64*
  %1446 = load i64, i64* %RSI.i22
  %1447 = load i64, i64* %PC.i21
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %PC.i21
  %1449 = sext i64 %1446 to i128
  %1450 = and i128 %1449, -18446744073709551616
  %1451 = zext i64 %1446 to i128
  %1452 = or i128 %1450, %1451
  %1453 = mul i128 20, %1452
  %1454 = trunc i128 %1453 to i64
  store i64 %1454, i64* %RSI.i22, align 8
  %1455 = sext i64 %1454 to i128
  %1456 = icmp ne i128 %1455, %1453
  %1457 = zext i1 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1457, i8* %1458, align 1
  %1459 = trunc i128 %1453 to i32
  %1460 = and i32 %1459, 255
  %1461 = call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1464, i8* %1465, align 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1466, align 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1467, align 1
  %1468 = lshr i64 %1454, 63
  %1469 = trunc i64 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1469, i8* %1470, align 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1457, i8* %1471, align 1
  store %struct.Memory* %loadMem_420d65, %struct.Memory** %MEMORY
  %loadMem_420d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 5
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 9
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RSI.i20 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %RCX.i19
  %1482 = load i64, i64* %RSI.i20
  %1483 = load i64, i64* %PC.i18
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i18
  %1485 = add i64 %1482, %1481
  store i64 %1485, i64* %RCX.i19, align 8
  %1486 = icmp ult i64 %1485, %1481
  %1487 = icmp ult i64 %1485, %1482
  %1488 = or i1 %1486, %1487
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1489, i8* %1490, align 1
  %1491 = trunc i64 %1485 to i32
  %1492 = and i32 %1491, 255
  %1493 = call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1496, i8* %1497, align 1
  %1498 = xor i64 %1482, %1481
  %1499 = xor i64 %1498, %1485
  %1500 = lshr i64 %1499, 4
  %1501 = trunc i64 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1502, i8* %1503, align 1
  %1504 = icmp eq i64 %1485, 0
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1505, i8* %1506, align 1
  %1507 = lshr i64 %1485, 63
  %1508 = trunc i64 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1508, i8* %1509, align 1
  %1510 = lshr i64 %1481, 63
  %1511 = lshr i64 %1482, 63
  %1512 = xor i64 %1507, %1510
  %1513 = xor i64 %1507, %1511
  %1514 = add i64 %1512, %1513
  %1515 = icmp eq i64 %1514, 2
  %1516 = zext i1 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1516, i8* %1517, align 1
  store %struct.Memory* %loadMem_420d69, %struct.Memory** %MEMORY
  %loadMem_420d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 17
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %1524 = bitcast %union.anon* %1523 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1524, i32 0, i32 0
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 5
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RCX.i17
  %1529 = add i64 %1528, 1
  %1530 = load i8, i8* %R8B.i
  %1531 = zext i8 %1530 to i64
  %1532 = load i64, i64* %PC.i16
  %1533 = add i64 %1532, 4
  store i64 %1533, i64* %PC.i16
  %1534 = inttoptr i64 %1529 to i8*
  store i8 %1530, i8* %1534
  store %struct.Memory* %loadMem_420d6c, %struct.Memory** %MEMORY
  %loadMem_420d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 5
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %PC.i14
  %1542 = add i64 %1541, 8
  store i64 %1542, i64* %PC.i14
  %1543 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %1543, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_420d70, %struct.Memory** %MEMORY
  %loadMem_420d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 15
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RBP.i13
  %1554 = sub i64 %1553, 36
  %1555 = load i64, i64* %PC.i12
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i12
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_420d78, %struct.Memory** %MEMORY
  %loadMem_420d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1565 to i32*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 9
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RSI.i11 = bitcast %union.anon* %1568 to i64*
  %1569 = load i32, i32* %EAX.i
  %1570 = zext i32 %1569 to i64
  %1571 = load i64, i64* %PC.i10
  %1572 = add i64 %1571, 2
  store i64 %1572, i64* %PC.i10
  %1573 = and i64 %1570, 4294967295
  store i64 %1573, i64* %RSI.i11, align 8
  store %struct.Memory* %loadMem_420d7b, %struct.Memory** %MEMORY
  %loadMem_420d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 9
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RSI.i9 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RSI.i9
  %1581 = load i64, i64* %PC.i8
  %1582 = add i64 %1581, 4
  store i64 %1582, i64* %PC.i8
  %1583 = sext i64 %1580 to i128
  %1584 = and i128 %1583, -18446744073709551616
  %1585 = zext i64 %1580 to i128
  %1586 = or i128 %1584, %1585
  %1587 = mul i128 20, %1586
  %1588 = trunc i128 %1587 to i64
  store i64 %1588, i64* %RSI.i9, align 8
  %1589 = sext i64 %1588 to i128
  %1590 = icmp ne i128 %1589, %1587
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1591, i8* %1592, align 1
  %1593 = trunc i128 %1587 to i32
  %1594 = and i32 %1593, 255
  %1595 = call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1598, i8* %1599, align 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1600, align 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1601, align 1
  %1602 = lshr i64 %1588, 63
  %1603 = trunc i64 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1603, i8* %1604, align 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1591, i8* %1605, align 1
  store %struct.Memory* %loadMem_420d7d, %struct.Memory** %MEMORY
  %loadMem_420d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 5
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RCX.i7 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 9
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %RCX.i7
  %1616 = load i64, i64* %RSI.i
  %1617 = load i64, i64* %PC.i6
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %PC.i6
  %1619 = add i64 %1616, %1615
  store i64 %1619, i64* %RCX.i7, align 8
  %1620 = icmp ult i64 %1619, %1615
  %1621 = icmp ult i64 %1619, %1616
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1623, i8* %1624, align 1
  %1625 = trunc i64 %1619 to i32
  %1626 = and i32 %1625, 255
  %1627 = call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1630, i8* %1631, align 1
  %1632 = xor i64 %1616, %1615
  %1633 = xor i64 %1632, %1619
  %1634 = lshr i64 %1633, 4
  %1635 = trunc i64 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1636, i8* %1637, align 1
  %1638 = icmp eq i64 %1619, 0
  %1639 = zext i1 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1639, i8* %1640, align 1
  %1641 = lshr i64 %1619, 63
  %1642 = trunc i64 %1641 to i8
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1642, i8* %1643, align 1
  %1644 = lshr i64 %1615, 63
  %1645 = lshr i64 %1616, 63
  %1646 = xor i64 %1641, %1644
  %1647 = xor i64 %1641, %1645
  %1648 = add i64 %1646, %1647
  %1649 = icmp eq i64 %1648, 2
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1650, i8* %1651, align 1
  store %struct.Memory* %loadMem_420d81, %struct.Memory** %MEMORY
  %loadMem_420d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 5
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RCX.i
  %1659 = add i64 %1658, 2
  %1660 = load i64, i64* %PC.i5
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC.i5
  %1662 = inttoptr i64 %1659 to i8*
  store i8 0, i8* %1662
  store %struct.Memory* %loadMem_420d84, %struct.Memory** %MEMORY
  %loadMem_420d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 3
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %PC.i4
  %1670 = add i64 %1669, 1
  store i64 %1670, i64* %PC.i4
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1672 = load i64, i64* %1671, align 8
  %1673 = add i64 %1672, 8
  %1674 = inttoptr i64 %1672 to i64*
  %1675 = load i64, i64* %1674
  store i64 %1675, i64* %RBX.i, align 8
  store i64 %1673, i64* %1671, align 8
  store %struct.Memory* %loadMem_420d88, %struct.Memory** %MEMORY
  %loadMem_420d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %PC.i2
  %1683 = add i64 %1682, 1
  store i64 %1683, i64* %PC.i2
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1685 = load i64, i64* %1684, align 8
  %1686 = add i64 %1685, 8
  %1687 = inttoptr i64 %1685 to i64*
  %1688 = load i64, i64* %1687
  store i64 %1688, i64* %RBP.i3, align 8
  store i64 %1686, i64* %1684, align 8
  store %struct.Memory* %loadMem_420d89, %struct.Memory** %MEMORY
  %loadMem_420d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %PC.i1
  %1693 = add i64 %1692, 1
  store i64 %1693, i64* %PC.i1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1696 = load i64, i64* %1695, align 8
  %1697 = inttoptr i64 %1696 to i64*
  %1698 = load i64, i64* %1697
  store i64 %1698, i64* %1694, align 8
  %1699 = add i64 %1696, 8
  store i64 %1699, i64* %1695, align 8
  store %struct.Memory* %loadMem_420d8a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_420d8a
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_divl_0x8661d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*)
  %17 = zext i32 %16 to i64
  %18 = shl i64 %15, 32
  %19 = or i64 %18, %11
  %20 = udiv i64 %19, %17
  %21 = and i64 %20, 4294967295
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %block_400488
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %25, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = urem i64 %19, %17
  %29 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %20, i64* %29, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %27
  %37 = phi %struct.Memory* [ %26, %23 ], [ %2, %27 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl___r10b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R10B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x886a70___r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %11, i64* %R11, align 8
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

define %struct.Memory* @routine_movl__ecx___ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x14___rbx___rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 20, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RBX, align 8
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

define %struct.Memory* @routine_addq__rbx___r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %RBX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R11, align 8
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

define %struct.Memory* @routine_movb__r10b____r11_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 23
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R11 = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %R11
  %14 = load i8, i8* %R10B
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i8*
  store i8 %14, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 3
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_420cce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 4
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x886a70___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x14___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 20, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movb__0x3__0x3__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 3, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_420ce6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x1__0x3__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 1, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x886a70___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x14___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 20, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movw__ax___di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  store i16 %12, i16* %DI, align 2
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

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__di__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i16, i16* %DI
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i16*
  store i16 %14, i16* %18
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

define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r8b__0x1__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 1
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0__0x2__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 0, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
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
