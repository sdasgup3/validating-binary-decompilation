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
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x70fcf0 = global %G_0x70fcf0_type zeroinitializer

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

declare %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @MbAffPostProc(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_427290 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_427290, %struct.Memory** %MEMORY
  %loadMem_427291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i545 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i545
  %27 = load i64, i64* %PC.i544
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i544
  store i64 %26, i64* %RBP.i546, align 8
  store %struct.Memory* %loadMem_427291, %struct.Memory** %MEMORY
  %loadMem_427294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i562 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i562
  %36 = load i64, i64* %PC.i561
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i561
  %38 = sub i64 %35, 1104
  store i64 %38, i64* %RSP.i562, align 8
  %39 = icmp ult i64 %35, 1104
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
  %49 = xor i64 1104, %35
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
  store %struct.Memory* %loadMem_427294, %struct.Memory** %MEMORY
  %loadMem_42729b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i582
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i582
  %75 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %75, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_42729b, %struct.Memory** %MEMORY
  %loadMem_4272a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RAX.i597
  %83 = add i64 %82, 6424
  %84 = load i64, i64* %PC.i596
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i596
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_4272a3, %struct.Memory** %MEMORY
  %loadMem_4272aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i874 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RBP.i874
  %98 = sub i64 %97, 1032
  %99 = load i64, i64* %RAX.i873
  %100 = load i64, i64* %PC.i872
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC.i872
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  store %struct.Memory* %loadMem_4272aa, %struct.Memory** %MEMORY
  %loadMem_4272b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RAX.i871 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %PC.i870
  %110 = add i64 %109, 8
  store i64 %110, i64* %PC.i870
  %111 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %111, i64* %RAX.i871, align 8
  store %struct.Memory* %loadMem_4272b1, %struct.Memory** %MEMORY
  %loadMem_4272b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RAX.i869
  %119 = add i64 %118, 6464
  %120 = load i64, i64* %PC.i868
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC.i868
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_4272b9, %struct.Memory** %MEMORY
  %loadMem_4272c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RAX.i866 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i867
  %134 = sub i64 %133, 1040
  %135 = load i64, i64* %RAX.i866
  %136 = load i64, i64* %PC.i865
  %137 = add i64 %136, 7
  store i64 %137, i64* %PC.i865
  %138 = inttoptr i64 %134 to i64*
  store i64 %135, i64* %138
  store %struct.Memory* %loadMem_4272c0, %struct.Memory** %MEMORY
  %loadMem_4272c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %PC.i863
  %146 = add i64 %145, 8
  store i64 %146, i64* %PC.i863
  %147 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %147, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_4272c7, %struct.Memory** %MEMORY
  %loadMem_4272cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RAX.i862
  %155 = add i64 %154, 72700
  %156 = load i64, i64* %PC.i861
  %157 = add i64 %156, 7
  store i64 %157, i64* %PC.i861
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %160, align 1
  %161 = and i32 %159, 255
  %162 = call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %165, i8* %166, align 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %167, align 1
  %168 = icmp eq i32 %159, 0
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %169, i8* %170, align 1
  %171 = lshr i32 %159, 31
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %172, i8* %173, align 1
  %174 = lshr i32 %159, 31
  %175 = xor i32 %171, %174
  %176 = add i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %179, align 1
  store %struct.Memory* %loadMem_4272cf, %struct.Memory** %MEMORY
  %loadMem_4272d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %PC.i860
  %184 = add i64 %183, 1290
  %185 = load i64, i64* %PC.i860
  %186 = add i64 %185, 6
  %187 = load i64, i64* %PC.i860
  %188 = add i64 %187, 6
  store i64 %188, i64* %PC.i860
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %BRANCH_TAKEN, align 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %192 = icmp ne i8 %190, 0
  %193 = select i1 %192, i64 %184, i64 %186
  store i64 %193, i64* %191, align 8
  store %struct.Memory* %loadMem_4272d6, %struct.Memory** %MEMORY
  %loadBr_4272d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4272d6 = icmp eq i8 %loadBr_4272d6, 1
  br i1 %cmpBr_4272d6, label %block_.L_4277e0, label %block_4272dc

block_4272dc:                                     ; preds = %entry
  %loadMem_4272dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i859
  %201 = sub i64 %200, 1044
  %202 = load i64, i64* %PC.i858
  %203 = add i64 %202, 10
  store i64 %203, i64* %PC.i858
  %204 = inttoptr i64 %201 to i32*
  store i32 0, i32* %204
  store %struct.Memory* %loadMem_4272dc, %struct.Memory** %MEMORY
  br label %block_.L_4272e6

block_.L_4272e6:                                  ; preds = %block_.L_4277c7, %block_4272dc
  %loadMem_4272e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %RBP.i857
  %215 = sub i64 %214, 1044
  %216 = load i64, i64* %PC.i855
  %217 = add i64 %216, 6
  store i64 %217, i64* %PC.i855
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_4272e6, %struct.Memory** %MEMORY
  %loadMem_4272ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %PC.i853
  %228 = add i64 %227, 8
  store i64 %228, i64* %PC.i853
  %229 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %229, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_4272ec, %struct.Memory** %MEMORY
  %loadMem_4272f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %EAX.i851 = bitcast %union.anon* %235 to i32*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %238 to i64*
  %239 = load i32, i32* %EAX.i851
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %RCX.i852
  %242 = add i64 %241, 72484
  %243 = load i64, i64* %PC.i850
  %244 = add i64 %243, 6
  store i64 %244, i64* %PC.i850
  %245 = inttoptr i64 %242 to i32*
  %246 = load i32, i32* %245
  %247 = sub i32 %239, %246
  %248 = icmp ult i32 %239, %246
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %249, i8* %250, align 1
  %251 = and i32 %247, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %255, i8* %256, align 1
  %257 = xor i32 %246, %239
  %258 = xor i32 %257, %247
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %261, i8* %262, align 1
  %263 = icmp eq i32 %247, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1
  %266 = lshr i32 %247, 31
  %267 = trunc i32 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1
  %269 = lshr i32 %239, 31
  %270 = lshr i32 %246, 31
  %271 = xor i32 %270, %269
  %272 = xor i32 %266, %269
  %273 = add i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %275, i8* %276, align 1
  store %struct.Memory* %loadMem_4272f4, %struct.Memory** %MEMORY
  %loadMem_4272fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %PC.i849
  %281 = add i64 %280, 1249
  %282 = load i64, i64* %PC.i849
  %283 = add i64 %282, 6
  %284 = load i64, i64* %PC.i849
  %285 = add i64 %284, 6
  store i64 %285, i64* %PC.i849
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %287 = load i8, i8* %286, align 1
  %288 = icmp ne i8 %287, 0
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %290 = load i8, i8* %289, align 1
  %291 = icmp ne i8 %290, 0
  %292 = xor i1 %288, %291
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %BRANCH_TAKEN, align 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %296 = select i1 %292, i64 %283, i64 %281
  store i64 %296, i64* %295, align 8
  store %struct.Memory* %loadMem_4272fa, %struct.Memory** %MEMORY
  %loadBr_4272fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4272fa = icmp eq i8 %loadBr_4272fa, 1
  br i1 %cmpBr_4272fa, label %block_.L_4277db, label %block_427300

block_427300:                                     ; preds = %block_.L_4272e6
  %loadMem_427300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %PC.i847
  %304 = add i64 %303, 8
  store i64 %304, i64* %PC.i847
  %305 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %305, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_427300, %struct.Memory** %MEMORY
  %loadMem_427308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RAX.i846
  %313 = add i64 %312, 6472
  %314 = load i64, i64* %PC.i845
  %315 = add i64 %314, 7
  store i64 %315, i64* %PC.i845
  %316 = inttoptr i64 %313 to i64*
  %317 = load i64, i64* %316
  store i64 %317, i64* %RAX.i846, align 8
  store %struct.Memory* %loadMem_427308, %struct.Memory** %MEMORY
  %loadMem_42730f = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 15
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %RBP.i844
  %328 = sub i64 %327, 1044
  %329 = load i64, i64* %PC.i842
  %330 = add i64 %329, 7
  store i64 %330, i64* %PC.i842
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %RCX.i843, align 8
  store %struct.Memory* %loadMem_42730f, %struct.Memory** %MEMORY
  %loadMem_427316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %RAX.i840
  %344 = load i64, i64* %RCX.i841
  %345 = add i64 %344, %343
  %346 = load i64, i64* %PC.i839
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC.i839
  %348 = inttoptr i64 %345 to i8*
  %349 = load i8, i8* %348
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %350, align 1
  %351 = zext i8 %349 to i32
  %352 = call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %355, i8* %356, align 1
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %357, align 1
  %358 = icmp eq i8 %349, 0
  %359 = zext i1 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %359, i8* %360, align 1
  %361 = lshr i8 %349, 7
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %361, i8* %362, align 1
  %363 = lshr i8 %349, 7
  %364 = xor i8 %361, %363
  %365 = add i8 %364, %363
  %366 = icmp eq i8 %365, 2
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %367, i8* %368, align 1
  store %struct.Memory* %loadMem_427316, %struct.Memory** %MEMORY
  %loadMem_42731a = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %PC.i838
  %373 = add i64 %372, 1192
  %374 = load i64, i64* %PC.i838
  %375 = add i64 %374, 6
  %376 = load i64, i64* %PC.i838
  %377 = add i64 %376, 6
  store i64 %377, i64* %PC.i838
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %379 = load i8, i8* %378, align 1
  store i8 %379, i8* %BRANCH_TAKEN, align 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %381 = icmp ne i8 %379, 0
  %382 = select i1 %381, i64 %373, i64 %375
  store i64 %382, i64* %380, align 8
  store %struct.Memory* %loadMem_42731a, %struct.Memory** %MEMORY
  %loadBr_42731a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42731a = icmp eq i8 %loadBr_42731a, 1
  br i1 %cmpBr_42731a, label %block_.L_4277c2, label %block_427320

block_427320:                                     ; preds = %block_427300
  %loadMem_427320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 9
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RSI.i836 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RBP.i837
  %393 = sub i64 %392, 1056
  %394 = load i64, i64* %PC.i835
  %395 = add i64 %394, 7
  store i64 %395, i64* %PC.i835
  store i64 %393, i64* %RSI.i836, align 8
  store %struct.Memory* %loadMem_427320, %struct.Memory** %MEMORY
  %loadMem_427327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDX.i833 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 15
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %RBP.i834
  %406 = sub i64 %405, 1060
  %407 = load i64, i64* %PC.i832
  %408 = add i64 %407, 7
  store i64 %408, i64* %PC.i832
  store i64 %406, i64* %RDX.i833, align 8
  store %struct.Memory* %loadMem_427327, %struct.Memory** %MEMORY
  %loadMem_42732e = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 11
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RDI.i830 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i831
  %419 = sub i64 %418, 1044
  %420 = load i64, i64* %PC.i829
  %421 = add i64 %420, 6
  store i64 %421, i64* %PC.i829
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RDI.i830, align 8
  store %struct.Memory* %loadMem_42732e, %struct.Memory** %MEMORY
  %loadMem1_427334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %PC.i828
  %429 = add i64 %428, 143452
  %430 = load i64, i64* %PC.i828
  %431 = add i64 %430, 5
  %432 = load i64, i64* %PC.i828
  %433 = add i64 %432, 5
  store i64 %433, i64* %PC.i828
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = add i64 %435, -8
  %437 = inttoptr i64 %436 to i64*
  store i64 %431, i64* %437
  store i64 %436, i64* %434, align 8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %429, i64* %438, align 8
  store %struct.Memory* %loadMem1_427334, %struct.Memory** %MEMORY
  %loadMem2_427334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427334 = load i64, i64* %3
  %call2_427334 = call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* %0, i64 %loadPC_427334, %struct.Memory* %loadMem2_427334)
  store %struct.Memory* %call2_427334, %struct.Memory** %MEMORY
  %loadMem_427339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i827
  %446 = sub i64 %445, 1052
  %447 = load i64, i64* %PC.i826
  %448 = add i64 %447, 10
  store i64 %448, i64* %PC.i826
  %449 = inttoptr i64 %446 to i32*
  store i32 0, i32* %449
  store %struct.Memory* %loadMem_427339, %struct.Memory** %MEMORY
  br label %block_.L_427343

block_.L_427343:                                  ; preds = %block_.L_4273cd, %block_427320
  %loadMem_427343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 15
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RBP.i825
  %457 = sub i64 %456, 1052
  %458 = load i64, i64* %PC.i824
  %459 = add i64 %458, 7
  store i64 %459, i64* %PC.i824
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460
  %462 = sub i32 %461, 32
  %463 = icmp ult i32 %461, 32
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %464, i8* %465, align 1
  %466 = and i32 %462, 255
  %467 = call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %470, i8* %471, align 1
  %472 = xor i32 %461, 32
  %473 = xor i32 %472, %462
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %476, i8* %477, align 1
  %478 = icmp eq i32 %462, 0
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %479, i8* %480, align 1
  %481 = lshr i32 %462, 31
  %482 = trunc i32 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %482, i8* %483, align 1
  %484 = lshr i32 %461, 31
  %485 = xor i32 %481, %484
  %486 = add i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %488, i8* %489, align 1
  store %struct.Memory* %loadMem_427343, %struct.Memory** %MEMORY
  %loadMem_42734a = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %PC.i823
  %494 = add i64 %493, 151
  %495 = load i64, i64* %PC.i823
  %496 = add i64 %495, 6
  %497 = load i64, i64* %PC.i823
  %498 = add i64 %497, 6
  store i64 %498, i64* %PC.i823
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %500 = load i8, i8* %499, align 1
  %501 = icmp ne i8 %500, 0
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %503 = load i8, i8* %502, align 1
  %504 = icmp ne i8 %503, 0
  %505 = xor i1 %501, %504
  %506 = xor i1 %505, true
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %BRANCH_TAKEN, align 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %509 = select i1 %505, i64 %496, i64 %494
  store i64 %509, i64* %508, align 8
  store %struct.Memory* %loadMem_42734a, %struct.Memory** %MEMORY
  %loadBr_42734a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42734a = icmp eq i8 %loadBr_42734a, 1
  br i1 %cmpBr_42734a, label %block_.L_4273e1, label %block_427350

block_427350:                                     ; preds = %block_.L_427343
  %loadMem_427350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RBP.i822
  %517 = sub i64 %516, 1048
  %518 = load i64, i64* %PC.i821
  %519 = add i64 %518, 10
  store i64 %519, i64* %PC.i821
  %520 = inttoptr i64 %517 to i32*
  store i32 0, i32* %520
  store %struct.Memory* %loadMem_427350, %struct.Memory** %MEMORY
  br label %block_.L_42735a

block_.L_42735a:                                  ; preds = %block_427367, %block_427350
  %loadMem_42735a = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 15
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RBP.i820
  %528 = sub i64 %527, 1048
  %529 = load i64, i64* %PC.i819
  %530 = add i64 %529, 7
  store i64 %530, i64* %PC.i819
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = sub i32 %532, 16
  %534 = icmp ult i32 %532, 16
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %535, i8* %536, align 1
  %537 = and i32 %533, 255
  %538 = call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %541, i8* %542, align 1
  %543 = xor i32 %532, 16
  %544 = xor i32 %543, %533
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %547, i8* %548, align 1
  %549 = icmp eq i32 %533, 0
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %550, i8* %551, align 1
  %552 = lshr i32 %533, 31
  %553 = trunc i32 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %553, i8* %554, align 1
  %555 = lshr i32 %532, 31
  %556 = xor i32 %552, %555
  %557 = add i32 %556, %555
  %558 = icmp eq i32 %557, 2
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %559, i8* %560, align 1
  store %struct.Memory* %loadMem_42735a, %struct.Memory** %MEMORY
  %loadMem_427361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %PC.i818
  %565 = add i64 %564, 103
  %566 = load i64, i64* %PC.i818
  %567 = add i64 %566, 6
  %568 = load i64, i64* %PC.i818
  %569 = add i64 %568, 6
  store i64 %569, i64* %PC.i818
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %571 = load i8, i8* %570, align 1
  %572 = icmp ne i8 %571, 0
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %574 = load i8, i8* %573, align 1
  %575 = icmp ne i8 %574, 0
  %576 = xor i1 %572, %575
  %577 = xor i1 %576, true
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %BRANCH_TAKEN, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %580 = select i1 %576, i64 %567, i64 %565
  store i64 %580, i64* %579, align 8
  store %struct.Memory* %loadMem_427361, %struct.Memory** %MEMORY
  %loadBr_427361 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427361 = icmp eq i8 %loadBr_427361, 1
  br i1 %cmpBr_427361, label %block_.L_4273c8, label %block_427367

block_427367:                                     ; preds = %block_.L_42735a
  %loadMem_427367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i817
  %591 = sub i64 %590, 1024
  %592 = load i64, i64* %PC.i815
  %593 = add i64 %592, 7
  store i64 %593, i64* %PC.i815
  store i64 %591, i64* %RAX.i816, align 8
  store %struct.Memory* %loadMem_427367, %struct.Memory** %MEMORY
  %loadMem_42736e = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 5
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 15
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RBP.i814
  %604 = sub i64 %603, 1032
  %605 = load i64, i64* %PC.i812
  %606 = add i64 %605, 7
  store i64 %606, i64* %PC.i812
  %607 = inttoptr i64 %604 to i64*
  %608 = load i64, i64* %607
  store i64 %608, i64* %RCX.i813, align 8
  store %struct.Memory* %loadMem_42736e, %struct.Memory** %MEMORY
  %loadMem_427375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 7
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RDX.i810 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i811
  %619 = sub i64 %618, 1060
  %620 = load i64, i64* %PC.i809
  %621 = add i64 %620, 6
  store i64 %621, i64* %PC.i809
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i810, align 8
  store %struct.Memory* %loadMem_427375, %struct.Memory** %MEMORY
  %loadMem_42737b = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 7
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RDX.i807 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 15
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RDX.i807
  %635 = load i64, i64* %RBP.i808
  %636 = sub i64 %635, 1052
  %637 = load i64, i64* %PC.i806
  %638 = add i64 %637, 6
  store i64 %638, i64* %PC.i806
  %639 = trunc i64 %634 to i32
  %640 = inttoptr i64 %636 to i32*
  %641 = load i32, i32* %640
  %642 = add i32 %641, %639
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i807, align 8
  %644 = icmp ult i32 %642, %639
  %645 = icmp ult i32 %642, %641
  %646 = or i1 %644, %645
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %647, i8* %648, align 1
  %649 = and i32 %642, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1
  %655 = xor i32 %641, %639
  %656 = xor i32 %655, %642
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %659, i8* %660, align 1
  %661 = icmp eq i32 %642, 0
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %662, i8* %663, align 1
  %664 = lshr i32 %642, 31
  %665 = trunc i32 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1
  %667 = lshr i32 %639, 31
  %668 = lshr i32 %641, 31
  %669 = xor i32 %664, %667
  %670 = xor i32 %664, %668
  %671 = add i32 %669, %670
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %673, i8* %674, align 1
  store %struct.Memory* %loadMem_42737b, %struct.Memory** %MEMORY
  %loadMem_427381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 7
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %EDX.i804 = bitcast %union.anon* %680 to i32*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 9
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RSI.i805 = bitcast %union.anon* %683 to i64*
  %684 = load i32, i32* %EDX.i804
  %685 = zext i32 %684 to i64
  %686 = load i64, i64* %PC.i803
  %687 = add i64 %686, 3
  store i64 %687, i64* %PC.i803
  %688 = shl i64 %685, 32
  %689 = ashr exact i64 %688, 32
  store i64 %689, i64* %RSI.i805, align 8
  store %struct.Memory* %loadMem_427381, %struct.Memory** %MEMORY
  %loadMem_427384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 5
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RCX.i801 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 9
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RSI.i802 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RCX.i801
  %700 = load i64, i64* %RSI.i802
  %701 = mul i64 %700, 8
  %702 = add i64 %701, %699
  %703 = load i64, i64* %PC.i800
  %704 = add i64 %703, 4
  store i64 %704, i64* %PC.i800
  %705 = inttoptr i64 %702 to i64*
  %706 = load i64, i64* %705
  store i64 %706, i64* %RCX.i801, align 8
  store %struct.Memory* %loadMem_427384, %struct.Memory** %MEMORY
  %loadMem_427388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 7
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RDX.i798 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RBP.i799
  %717 = sub i64 %716, 1056
  %718 = load i64, i64* %PC.i797
  %719 = add i64 %718, 6
  store i64 %719, i64* %PC.i797
  %720 = inttoptr i64 %717 to i32*
  %721 = load i32, i32* %720
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RDX.i798, align 8
  store %struct.Memory* %loadMem_427388, %struct.Memory** %MEMORY
  %loadMem_42738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 7
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RDX.i795 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 15
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RDX.i795
  %733 = load i64, i64* %RBP.i796
  %734 = sub i64 %733, 1048
  %735 = load i64, i64* %PC.i794
  %736 = add i64 %735, 6
  store i64 %736, i64* %PC.i794
  %737 = trunc i64 %732 to i32
  %738 = inttoptr i64 %734 to i32*
  %739 = load i32, i32* %738
  %740 = add i32 %739, %737
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RDX.i795, align 8
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
  store %struct.Memory* %loadMem_42738e, %struct.Memory** %MEMORY
  %loadMem_427394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 7
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %EDX.i792 = bitcast %union.anon* %778 to i32*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 9
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RSI.i793 = bitcast %union.anon* %781 to i64*
  %782 = load i32, i32* %EDX.i792
  %783 = zext i32 %782 to i64
  %784 = load i64, i64* %PC.i791
  %785 = add i64 %784, 3
  store i64 %785, i64* %PC.i791
  %786 = shl i64 %783, 32
  %787 = ashr exact i64 %786, 32
  store i64 %787, i64* %RSI.i793, align 8
  store %struct.Memory* %loadMem_427394, %struct.Memory** %MEMORY
  %loadMem_427397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 11
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %DI.i788 = bitcast %union.anon* %793 to i16*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 5
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 9
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RSI.i790 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RCX.i789
  %801 = load i64, i64* %RSI.i790
  %802 = mul i64 %801, 2
  %803 = add i64 %802, %800
  %804 = load i64, i64* %PC.i787
  %805 = add i64 %804, 4
  store i64 %805, i64* %PC.i787
  %806 = inttoptr i64 %803 to i16*
  %807 = load i16, i16* %806
  store i16 %807, i16* %DI.i788, align 2
  store %struct.Memory* %loadMem_427397, %struct.Memory** %MEMORY
  %loadMem_42739b = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 5
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 15
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RBP.i786
  %818 = sub i64 %817, 1048
  %819 = load i64, i64* %PC.i784
  %820 = add i64 %819, 7
  store i64 %820, i64* %PC.i784
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821
  %823 = sext i32 %822 to i64
  store i64 %823, i64* %RCX.i785, align 8
  store %struct.Memory* %loadMem_42739b, %struct.Memory** %MEMORY
  %loadMem_4273a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 5
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RCX.i783 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RCX.i783
  %831 = load i64, i64* %PC.i782
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i782
  %833 = shl i64 %830, 5
  %834 = icmp slt i64 %833, 0
  %835 = shl i64 %833, 1
  store i64 %835, i64* %RCX.i783, align 8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %837 = zext i1 %834 to i8
  store i8 %837, i8* %836, align 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %839 = trunc i64 %835 to i32
  %840 = and i32 %839, 254
  %841 = call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %838, align 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %845, align 1
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %847 = icmp eq i64 %835, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %846, align 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %850 = lshr i64 %835, 63
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %849, align 1
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %852, align 1
  store %struct.Memory* %loadMem_4273a2, %struct.Memory** %MEMORY
  %loadMem_4273a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 1
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RAX.i780 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 5
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RCX.i781 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %RAX.i780
  %863 = load i64, i64* %RCX.i781
  %864 = load i64, i64* %PC.i779
  %865 = add i64 %864, 3
  store i64 %865, i64* %PC.i779
  %866 = add i64 %863, %862
  store i64 %866, i64* %RAX.i780, align 8
  %867 = icmp ult i64 %866, %862
  %868 = icmp ult i64 %866, %863
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %870, i8* %871, align 1
  %872 = trunc i64 %866 to i32
  %873 = and i32 %872, 255
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %877, i8* %878, align 1
  %879 = xor i64 %863, %862
  %880 = xor i64 %879, %866
  %881 = lshr i64 %880, 4
  %882 = trunc i64 %881 to i8
  %883 = and i8 %882, 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %883, i8* %884, align 1
  %885 = icmp eq i64 %866, 0
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %886, i8* %887, align 1
  %888 = lshr i64 %866, 63
  %889 = trunc i64 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %889, i8* %890, align 1
  %891 = lshr i64 %862, 63
  %892 = lshr i64 %863, 63
  %893 = xor i64 %888, %891
  %894 = xor i64 %888, %892
  %895 = add i64 %893, %894
  %896 = icmp eq i64 %895, 2
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %897, i8* %898, align 1
  store %struct.Memory* %loadMem_4273a6, %struct.Memory** %MEMORY
  %loadMem_4273a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 5
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i778
  %909 = sub i64 %908, 1052
  %910 = load i64, i64* %PC.i776
  %911 = add i64 %910, 7
  store i64 %911, i64* %PC.i776
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_4273a9, %struct.Memory** %MEMORY
  %loadMem_4273b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 11
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %DI.i773 = bitcast %union.anon* %920 to i16*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 1
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 5
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RCX.i775 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %RAX.i774
  %928 = load i64, i64* %RCX.i775
  %929 = mul i64 %928, 2
  %930 = add i64 %929, %927
  %931 = load i16, i16* %DI.i773
  %932 = zext i16 %931 to i64
  %933 = load i64, i64* %PC.i772
  %934 = add i64 %933, 4
  store i64 %934, i64* %PC.i772
  %935 = inttoptr i64 %930 to i16*
  store i16 %931, i16* %935
  store %struct.Memory* %loadMem_4273b0, %struct.Memory** %MEMORY
  %loadMem_4273b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 15
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RBP.i771
  %946 = sub i64 %945, 1048
  %947 = load i64, i64* %PC.i769
  %948 = add i64 %947, 6
  store i64 %948, i64* %PC.i769
  %949 = inttoptr i64 %946 to i32*
  %950 = load i32, i32* %949
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i770, align 8
  store %struct.Memory* %loadMem_4273b4, %struct.Memory** %MEMORY
  %loadMem_4273ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 1
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RAX.i768
  %959 = load i64, i64* %PC.i767
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC.i767
  %961 = trunc i64 %958 to i32
  %962 = add i32 1, %961
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i768, align 8
  %964 = icmp ult i32 %962, %961
  %965 = icmp ult i32 %962, 1
  %966 = or i1 %964, %965
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %967, i8* %968, align 1
  %969 = and i32 %962, 255
  %970 = call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %973, i8* %974, align 1
  %975 = xor i64 1, %958
  %976 = trunc i64 %975 to i32
  %977 = xor i32 %976, %962
  %978 = lshr i32 %977, 4
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %980, i8* %981, align 1
  %982 = icmp eq i32 %962, 0
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %983, i8* %984, align 1
  %985 = lshr i32 %962, 31
  %986 = trunc i32 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %986, i8* %987, align 1
  %988 = lshr i32 %961, 31
  %989 = xor i32 %985, %988
  %990 = add i32 %989, %985
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1
  store %struct.Memory* %loadMem_4273ba, %struct.Memory** %MEMORY
  %loadMem_4273bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %EAX.i765 = bitcast %union.anon* %999 to i32*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i766
  %1004 = sub i64 %1003, 1048
  %1005 = load i32, i32* %EAX.i765
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC.i764
  %1008 = add i64 %1007, 6
  store i64 %1008, i64* %PC.i764
  %1009 = inttoptr i64 %1004 to i32*
  store i32 %1005, i32* %1009
  store %struct.Memory* %loadMem_4273bd, %struct.Memory** %MEMORY
  %loadMem_4273c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %PC.i763
  %1014 = add i64 %1013, -105
  %1015 = load i64, i64* %PC.i763
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC.i763
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1014, i64* %1017, align 8
  store %struct.Memory* %loadMem_4273c3, %struct.Memory** %MEMORY
  br label %block_.L_42735a

block_.L_4273c8:                                  ; preds = %block_.L_42735a
  %loadMem_4273c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1020 to i64*
  %1021 = load i64, i64* %PC.i762
  %1022 = add i64 %1021, 5
  %1023 = load i64, i64* %PC.i762
  %1024 = add i64 %1023, 5
  store i64 %1024, i64* %PC.i762
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1022, i64* %1025, align 8
  store %struct.Memory* %loadMem_4273c8, %struct.Memory** %MEMORY
  br label %block_.L_4273cd

block_.L_4273cd:                                  ; preds = %block_.L_4273c8
  %loadMem_4273cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 1
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 15
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RBP.i761
  %1036 = sub i64 %1035, 1052
  %1037 = load i64, i64* %PC.i759
  %1038 = add i64 %1037, 6
  store i64 %1038, i64* %PC.i759
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_4273cd, %struct.Memory** %MEMORY
  %loadMem_4273d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %RAX.i758
  %1049 = load i64, i64* %PC.i757
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC.i757
  %1051 = trunc i64 %1048 to i32
  %1052 = add i32 1, %1051
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX.i758, align 8
  %1054 = icmp ult i32 %1052, %1051
  %1055 = icmp ult i32 %1052, 1
  %1056 = or i1 %1054, %1055
  %1057 = zext i1 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1057, i8* %1058, align 1
  %1059 = and i32 %1052, 255
  %1060 = call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1063, i8* %1064, align 1
  %1065 = xor i64 1, %1048
  %1066 = trunc i64 %1065 to i32
  %1067 = xor i32 %1066, %1052
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1070, i8* %1071, align 1
  %1072 = icmp eq i32 %1052, 0
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1073, i8* %1074, align 1
  %1075 = lshr i32 %1052, 31
  %1076 = trunc i32 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1076, i8* %1077, align 1
  %1078 = lshr i32 %1051, 31
  %1079 = xor i32 %1075, %1078
  %1080 = add i32 %1079, %1075
  %1081 = icmp eq i32 %1080, 2
  %1082 = zext i1 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1082, i8* %1083, align 1
  store %struct.Memory* %loadMem_4273d3, %struct.Memory** %MEMORY
  %loadMem_4273d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %EAX.i755 = bitcast %union.anon* %1089 to i32*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 15
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RBP.i756
  %1094 = sub i64 %1093, 1052
  %1095 = load i32, i32* %EAX.i755
  %1096 = zext i32 %1095 to i64
  %1097 = load i64, i64* %PC.i754
  %1098 = add i64 %1097, 6
  store i64 %1098, i64* %PC.i754
  %1099 = inttoptr i64 %1094 to i32*
  store i32 %1095, i32* %1099
  store %struct.Memory* %loadMem_4273d6, %struct.Memory** %MEMORY
  %loadMem_4273dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %PC.i753
  %1104 = add i64 %1103, -153
  %1105 = load i64, i64* %PC.i753
  %1106 = add i64 %1105, 5
  store i64 %1106, i64* %PC.i753
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1104, i64* %1107, align 8
  store %struct.Memory* %loadMem_4273dc, %struct.Memory** %MEMORY
  br label %block_.L_427343

block_.L_4273e1:                                  ; preds = %block_.L_427343
  %loadMem_4273e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RBP.i752
  %1115 = sub i64 %1114, 1052
  %1116 = load i64, i64* %PC.i751
  %1117 = add i64 %1116, 10
  store i64 %1117, i64* %PC.i751
  %1118 = inttoptr i64 %1115 to i32*
  store i32 0, i32* %1118
  store %struct.Memory* %loadMem_4273e1, %struct.Memory** %MEMORY
  br label %block_.L_4273eb

block_.L_4273eb:                                  ; preds = %block_.L_4274d7, %block_.L_4273e1
  %loadMem_4273eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 15
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RBP.i750
  %1126 = sub i64 %1125, 1052
  %1127 = load i64, i64* %PC.i749
  %1128 = add i64 %1127, 7
  store i64 %1128, i64* %PC.i749
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129
  %1131 = sub i32 %1130, 16
  %1132 = icmp ult i32 %1130, 16
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1133, i8* %1134, align 1
  %1135 = and i32 %1131, 255
  %1136 = call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1139, i8* %1140, align 1
  %1141 = xor i32 %1130, 16
  %1142 = xor i32 %1141, %1131
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1145, i8* %1146, align 1
  %1147 = icmp eq i32 %1131, 0
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1148, i8* %1149, align 1
  %1150 = lshr i32 %1131, 31
  %1151 = trunc i32 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1151, i8* %1152, align 1
  %1153 = lshr i32 %1130, 31
  %1154 = xor i32 %1150, %1153
  %1155 = add i32 %1154, %1153
  %1156 = icmp eq i32 %1155, 2
  %1157 = zext i1 %1156 to i8
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1157, i8* %1158, align 1
  store %struct.Memory* %loadMem_4273eb, %struct.Memory** %MEMORY
  %loadMem_4273f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %PC.i748
  %1163 = add i64 %1162, 249
  %1164 = load i64, i64* %PC.i748
  %1165 = add i64 %1164, 6
  %1166 = load i64, i64* %PC.i748
  %1167 = add i64 %1166, 6
  store i64 %1167, i64* %PC.i748
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1169 = load i8, i8* %1168, align 1
  %1170 = icmp ne i8 %1169, 0
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1172 = load i8, i8* %1171, align 1
  %1173 = icmp ne i8 %1172, 0
  %1174 = xor i1 %1170, %1173
  %1175 = xor i1 %1174, true
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %BRANCH_TAKEN, align 1
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1178 = select i1 %1174, i64 %1165, i64 %1163
  store i64 %1178, i64* %1177, align 8
  store %struct.Memory* %loadMem_4273f2, %struct.Memory** %MEMORY
  %loadBr_4273f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4273f2 = icmp eq i8 %loadBr_4273f2, 1
  br i1 %cmpBr_4273f2, label %block_.L_4274eb, label %block_4273f8

block_4273f8:                                     ; preds = %block_.L_4273eb
  %loadMem_4273f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i747
  %1186 = sub i64 %1185, 1048
  %1187 = load i64, i64* %PC.i746
  %1188 = add i64 %1187, 10
  store i64 %1188, i64* %PC.i746
  %1189 = inttoptr i64 %1186 to i32*
  store i32 0, i32* %1189
  store %struct.Memory* %loadMem_4273f8, %struct.Memory** %MEMORY
  br label %block_.L_427402

block_.L_427402:                                  ; preds = %block_42740f, %block_4273f8
  %loadMem_427402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RBP.i745
  %1197 = sub i64 %1196, 1048
  %1198 = load i64, i64* %PC.i744
  %1199 = add i64 %1198, 7
  store i64 %1199, i64* %PC.i744
  %1200 = inttoptr i64 %1197 to i32*
  %1201 = load i32, i32* %1200
  %1202 = sub i32 %1201, 16
  %1203 = icmp ult i32 %1201, 16
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1204, i8* %1205, align 1
  %1206 = and i32 %1202, 255
  %1207 = call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1210, i8* %1211, align 1
  %1212 = xor i32 %1201, 16
  %1213 = xor i32 %1212, %1202
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1216, i8* %1217, align 1
  %1218 = icmp eq i32 %1202, 0
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1219, i8* %1220, align 1
  %1221 = lshr i32 %1202, 31
  %1222 = trunc i32 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1222, i8* %1223, align 1
  %1224 = lshr i32 %1201, 31
  %1225 = xor i32 %1221, %1224
  %1226 = add i32 %1225, %1224
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1228, i8* %1229, align 1
  store %struct.Memory* %loadMem_427402, %struct.Memory** %MEMORY
  %loadMem_427409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %PC.i743
  %1234 = add i64 %1233, 201
  %1235 = load i64, i64* %PC.i743
  %1236 = add i64 %1235, 6
  %1237 = load i64, i64* %PC.i743
  %1238 = add i64 %1237, 6
  store i64 %1238, i64* %PC.i743
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1240 = load i8, i8* %1239, align 1
  %1241 = icmp ne i8 %1240, 0
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1243 = load i8, i8* %1242, align 1
  %1244 = icmp ne i8 %1243, 0
  %1245 = xor i1 %1241, %1244
  %1246 = xor i1 %1245, true
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %BRANCH_TAKEN, align 1
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1249 = select i1 %1245, i64 %1236, i64 %1234
  store i64 %1249, i64* %1248, align 8
  store %struct.Memory* %loadMem_427409, %struct.Memory** %MEMORY
  %loadBr_427409 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427409 = icmp eq i8 %loadBr_427409, 1
  br i1 %cmpBr_427409, label %block_.L_4274d2, label %block_42740f

block_42740f:                                     ; preds = %block_.L_427402
  %loadMem_42740f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 15
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RBP.i742
  %1260 = sub i64 %1259, 1024
  %1261 = load i64, i64* %PC.i740
  %1262 = add i64 %1261, 7
  store i64 %1262, i64* %PC.i740
  store i64 %1260, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_42740f, %struct.Memory** %MEMORY
  %loadMem_427416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 5
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 15
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %RBP.i739
  %1273 = sub i64 %1272, 1048
  %1274 = load i64, i64* %PC.i737
  %1275 = add i64 %1274, 7
  store i64 %1275, i64* %PC.i737
  %1276 = inttoptr i64 %1273 to i32*
  %1277 = load i32, i32* %1276
  %1278 = sext i32 %1277 to i64
  store i64 %1278, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_427416, %struct.Memory** %MEMORY
  %loadMem_42741d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 5
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %1284 to i64*
  %1285 = load i64, i64* %RCX.i736
  %1286 = load i64, i64* %PC.i735
  %1287 = add i64 %1286, 4
  store i64 %1287, i64* %PC.i735
  %1288 = shl i64 %1285, 5
  %1289 = icmp slt i64 %1288, 0
  %1290 = shl i64 %1288, 1
  store i64 %1290, i64* %RCX.i736, align 8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1292 = zext i1 %1289 to i8
  store i8 %1292, i8* %1291, align 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1294 = trunc i64 %1290 to i32
  %1295 = and i32 %1294, 254
  %1296 = call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %1293, align 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1300, align 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1302 = icmp eq i64 %1290, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %1301, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1305 = lshr i64 %1290, 63
  %1306 = trunc i64 %1305 to i8
  store i8 %1306, i8* %1304, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1307, align 1
  store %struct.Memory* %loadMem_42741d, %struct.Memory** %MEMORY
  %loadMem_427421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 7
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RDX.i734 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RAX.i733
  %1318 = load i64, i64* %PC.i732
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i732
  store i64 %1317, i64* %RDX.i734, align 8
  store %struct.Memory* %loadMem_427421, %struct.Memory** %MEMORY
  %loadMem_427424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 5
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 7
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RDX.i731 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RDX.i731
  %1330 = load i64, i64* %RCX.i730
  %1331 = load i64, i64* %PC.i729
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %PC.i729
  %1333 = add i64 %1330, %1329
  store i64 %1333, i64* %RDX.i731, align 8
  %1334 = icmp ult i64 %1333, %1329
  %1335 = icmp ult i64 %1333, %1330
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1337, i8* %1338, align 1
  %1339 = trunc i64 %1333 to i32
  %1340 = and i32 %1339, 255
  %1341 = call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1344, i8* %1345, align 1
  %1346 = xor i64 %1330, %1329
  %1347 = xor i64 %1346, %1333
  %1348 = lshr i64 %1347, 4
  %1349 = trunc i64 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1350, i8* %1351, align 1
  %1352 = icmp eq i64 %1333, 0
  %1353 = zext i1 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1353, i8* %1354, align 1
  %1355 = lshr i64 %1333, 63
  %1356 = trunc i64 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1356, i8* %1357, align 1
  %1358 = lshr i64 %1329, 63
  %1359 = lshr i64 %1330, 63
  %1360 = xor i64 %1355, %1358
  %1361 = xor i64 %1355, %1359
  %1362 = add i64 %1360, %1361
  %1363 = icmp eq i64 %1362, 2
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1364, i8* %1365, align 1
  store %struct.Memory* %loadMem_427424, %struct.Memory** %MEMORY
  %loadMem_427427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 5
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 15
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RBP.i728
  %1376 = sub i64 %1375, 1052
  %1377 = load i64, i64* %PC.i726
  %1378 = add i64 %1377, 7
  store i64 %1378, i64* %PC.i726
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379
  %1381 = sext i32 %1380 to i64
  store i64 %1381, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_427427, %struct.Memory** %MEMORY
  %loadMem_42742e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 9
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %SI.i723 = bitcast %union.anon* %1387 to i16*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 5
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 7
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RDX.i725 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RDX.i725
  %1395 = load i64, i64* %RCX.i724
  %1396 = mul i64 %1395, 2
  %1397 = add i64 %1396, %1394
  %1398 = load i64, i64* %PC.i722
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC.i722
  %1400 = inttoptr i64 %1397 to i16*
  %1401 = load i16, i16* %1400
  store i16 %1401, i16* %SI.i723, align 2
  store %struct.Memory* %loadMem_42742e, %struct.Memory** %MEMORY
  %loadMem_427432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 5
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 15
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RBP.i721
  %1412 = sub i64 %1411, 1032
  %1413 = load i64, i64* %PC.i719
  %1414 = add i64 %1413, 7
  store i64 %1414, i64* %PC.i719
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415
  store i64 %1416, i64* %RCX.i720, align 8
  store %struct.Memory* %loadMem_427432, %struct.Memory** %MEMORY
  %loadMem_427439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 11
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RDI.i717 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 15
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1425 to i64*
  %1426 = load i64, i64* %RBP.i718
  %1427 = sub i64 %1426, 1060
  %1428 = load i64, i64* %PC.i716
  %1429 = add i64 %1428, 6
  store i64 %1429, i64* %PC.i716
  %1430 = inttoptr i64 %1427 to i32*
  %1431 = load i32, i32* %1430
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RDI.i717, align 8
  store %struct.Memory* %loadMem_427439, %struct.Memory** %MEMORY
  %loadMem_42743f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 17
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %R8D.i714 = bitcast %union.anon* %1438 to i32*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1441 to i64*
  %1442 = bitcast i32* %R8D.i714 to i64*
  %1443 = load i64, i64* %RBP.i715
  %1444 = sub i64 %1443, 1052
  %1445 = load i64, i64* %PC.i713
  %1446 = add i64 %1445, 7
  store i64 %1446, i64* %PC.i713
  %1447 = inttoptr i64 %1444 to i32*
  %1448 = load i32, i32* %1447
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %1442, align 8
  store %struct.Memory* %loadMem_42743f, %struct.Memory** %MEMORY
  %loadMem_427446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 17
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %R8D.i712 = bitcast %union.anon* %1455 to i32*
  %1456 = bitcast i32* %R8D.i712 to i64*
  %1457 = load i32, i32* %R8D.i712
  %1458 = zext i32 %1457 to i64
  %1459 = load i64, i64* %PC.i711
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC.i711
  %1461 = shl i32 %1457, 1
  %1462 = icmp slt i32 %1457, 0
  %1463 = icmp slt i32 %1461, 0
  %1464 = xor i1 %1462, %1463
  %1465 = zext i32 %1461 to i64
  store i64 %1465, i64* %1456, align 8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1467 = zext i1 %1462 to i8
  store i8 %1467, i8* %1466, align 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1469 = and i32 %1461, 254
  %1470 = call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %1468, align 1
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1474, align 1
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1476 = icmp eq i32 %1461, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %1475, align 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1479 = lshr i32 %1461, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %1478, align 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1482 = zext i1 %1464 to i8
  store i8 %1482, i8* %1481, align 1
  store %struct.Memory* %loadMem_427446, %struct.Memory** %MEMORY
  %loadMem_42744a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 17
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %R8D.i709 = bitcast %union.anon* %1488 to i32*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 11
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RDI.i710 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RDI.i710
  %1493 = load i32, i32* %R8D.i709
  %1494 = zext i32 %1493 to i64
  %1495 = load i64, i64* %PC.i708
  %1496 = add i64 %1495, 3
  store i64 %1496, i64* %PC.i708
  %1497 = trunc i64 %1492 to i32
  %1498 = add i32 %1493, %1497
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RDI.i710, align 8
  %1500 = icmp ult i32 %1498, %1497
  %1501 = icmp ult i32 %1498, %1493
  %1502 = or i1 %1500, %1501
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1503, i8* %1504, align 1
  %1505 = and i32 %1498, 255
  %1506 = call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1509, i8* %1510, align 1
  %1511 = xor i64 %1494, %1492
  %1512 = trunc i64 %1511 to i32
  %1513 = xor i32 %1512, %1498
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1516, i8* %1517, align 1
  %1518 = icmp eq i32 %1498, 0
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1519, i8* %1520, align 1
  %1521 = lshr i32 %1498, 31
  %1522 = trunc i32 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1522, i8* %1523, align 1
  %1524 = lshr i32 %1497, 31
  %1525 = lshr i32 %1493, 31
  %1526 = xor i32 %1521, %1524
  %1527 = xor i32 %1521, %1525
  %1528 = add i32 %1526, %1527
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1530, i8* %1531, align 1
  store %struct.Memory* %loadMem_42744a, %struct.Memory** %MEMORY
  %loadMem_42744d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 11
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %EDI.i706 = bitcast %union.anon* %1537 to i32*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 7
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %1540 to i64*
  %1541 = load i32, i32* %EDI.i706
  %1542 = zext i32 %1541 to i64
  %1543 = load i64, i64* %PC.i705
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC.i705
  %1545 = shl i64 %1542, 32
  %1546 = ashr exact i64 %1545, 32
  store i64 %1546, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_42744d, %struct.Memory** %MEMORY
  %loadMem_427450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 5
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 7
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RDX.i704 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %RCX.i703
  %1557 = load i64, i64* %RDX.i704
  %1558 = mul i64 %1557, 8
  %1559 = add i64 %1558, %1556
  %1560 = load i64, i64* %PC.i702
  %1561 = add i64 %1560, 4
  store i64 %1561, i64* %PC.i702
  %1562 = inttoptr i64 %1559 to i64*
  %1563 = load i64, i64* %1562
  store i64 %1563, i64* %RCX.i703, align 8
  store %struct.Memory* %loadMem_427450, %struct.Memory** %MEMORY
  %loadMem_427454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 11
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RDI.i700 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i701
  %1574 = sub i64 %1573, 1056
  %1575 = load i64, i64* %PC.i699
  %1576 = add i64 %1575, 6
  store i64 %1576, i64* %PC.i699
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RDI.i700, align 8
  store %struct.Memory* %loadMem_427454, %struct.Memory** %MEMORY
  %loadMem_42745a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 11
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RDI.i697 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 15
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %RDI.i697
  %1590 = load i64, i64* %RBP.i698
  %1591 = sub i64 %1590, 1048
  %1592 = load i64, i64* %PC.i696
  %1593 = add i64 %1592, 6
  store i64 %1593, i64* %PC.i696
  %1594 = trunc i64 %1589 to i32
  %1595 = inttoptr i64 %1591 to i32*
  %1596 = load i32, i32* %1595
  %1597 = add i32 %1596, %1594
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RDI.i697, align 8
  %1599 = icmp ult i32 %1597, %1594
  %1600 = icmp ult i32 %1597, %1596
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
  %1610 = xor i32 %1596, %1594
  %1611 = xor i32 %1610, %1597
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1614, i8* %1615, align 1
  %1616 = icmp eq i32 %1597, 0
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1617, i8* %1618, align 1
  %1619 = lshr i32 %1597, 31
  %1620 = trunc i32 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1620, i8* %1621, align 1
  %1622 = lshr i32 %1594, 31
  %1623 = lshr i32 %1596, 31
  %1624 = xor i32 %1619, %1622
  %1625 = xor i32 %1619, %1623
  %1626 = add i32 %1624, %1625
  %1627 = icmp eq i32 %1626, 2
  %1628 = zext i1 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1628, i8* %1629, align 1
  store %struct.Memory* %loadMem_42745a, %struct.Memory** %MEMORY
  %loadMem_427460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 11
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %EDI.i694 = bitcast %union.anon* %1635 to i32*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 7
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %1638 to i64*
  %1639 = load i32, i32* %EDI.i694
  %1640 = zext i32 %1639 to i64
  %1641 = load i64, i64* %PC.i693
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i693
  %1643 = shl i64 %1640, 32
  %1644 = ashr exact i64 %1643, 32
  store i64 %1644, i64* %RDX.i695, align 8
  store %struct.Memory* %loadMem_427460, %struct.Memory** %MEMORY
  %loadMem_427463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 9
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %SI.i690 = bitcast %union.anon* %1650 to i16*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 5
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 7
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RCX.i691
  %1658 = load i64, i64* %RDX.i692
  %1659 = mul i64 %1658, 2
  %1660 = add i64 %1659, %1657
  %1661 = load i16, i16* %SI.i690
  %1662 = zext i16 %1661 to i64
  %1663 = load i64, i64* %PC.i689
  %1664 = add i64 %1663, 4
  store i64 %1664, i64* %PC.i689
  %1665 = inttoptr i64 %1660 to i16*
  store i16 %1661, i16* %1665
  store %struct.Memory* %loadMem_427463, %struct.Memory** %MEMORY
  %loadMem_427467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 5
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 15
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RBP.i688
  %1676 = sub i64 %1675, 1048
  %1677 = load i64, i64* %PC.i686
  %1678 = add i64 %1677, 7
  store i64 %1678, i64* %PC.i686
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_427467, %struct.Memory** %MEMORY
  %loadMem_42746e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 5
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RCX.i685
  %1689 = load i64, i64* %PC.i684
  %1690 = add i64 %1689, 4
  store i64 %1690, i64* %PC.i684
  %1691 = shl i64 %1688, 5
  %1692 = icmp slt i64 %1691, 0
  %1693 = shl i64 %1691, 1
  store i64 %1693, i64* %RCX.i685, align 8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1695 = zext i1 %1692 to i8
  store i8 %1695, i8* %1694, align 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1697 = trunc i64 %1693 to i32
  %1698 = and i32 %1697, 254
  %1699 = call i32 @llvm.ctpop.i32(i32 %1698)
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = xor i8 %1701, 1
  store i8 %1702, i8* %1696, align 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1703, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1705 = icmp eq i64 %1693, 0
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %1704, align 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1708 = lshr i64 %1693, 63
  %1709 = trunc i64 %1708 to i8
  store i8 %1709, i8* %1707, align 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1710, align 1
  store %struct.Memory* %loadMem_42746e, %struct.Memory** %MEMORY
  %loadMem_427472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 1
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 5
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %RAX.i682
  %1721 = load i64, i64* %RCX.i683
  %1722 = load i64, i64* %PC.i681
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC.i681
  %1724 = add i64 %1721, %1720
  store i64 %1724, i64* %RAX.i682, align 8
  %1725 = icmp ult i64 %1724, %1720
  %1726 = icmp ult i64 %1724, %1721
  %1727 = or i1 %1725, %1726
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1728, i8* %1729, align 1
  %1730 = trunc i64 %1724 to i32
  %1731 = and i32 %1730, 255
  %1732 = call i32 @llvm.ctpop.i32(i32 %1731)
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1735, i8* %1736, align 1
  %1737 = xor i64 %1721, %1720
  %1738 = xor i64 %1737, %1724
  %1739 = lshr i64 %1738, 4
  %1740 = trunc i64 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1741, i8* %1742, align 1
  %1743 = icmp eq i64 %1724, 0
  %1744 = zext i1 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1744, i8* %1745, align 1
  %1746 = lshr i64 %1724, 63
  %1747 = trunc i64 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1747, i8* %1748, align 1
  %1749 = lshr i64 %1720, 63
  %1750 = lshr i64 %1721, 63
  %1751 = xor i64 %1746, %1749
  %1752 = xor i64 %1746, %1750
  %1753 = add i64 %1751, %1752
  %1754 = icmp eq i64 %1753, 2
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1755, i8* %1756, align 1
  store %struct.Memory* %loadMem_427472, %struct.Memory** %MEMORY
  %loadMem_427475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 11
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RDI.i679 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 15
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RBP.i680
  %1767 = sub i64 %1766, 1052
  %1768 = load i64, i64* %PC.i678
  %1769 = add i64 %1768, 6
  store i64 %1769, i64* %PC.i678
  %1770 = inttoptr i64 %1767 to i32*
  %1771 = load i32, i32* %1770
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RDI.i679, align 8
  store %struct.Memory* %loadMem_427475, %struct.Memory** %MEMORY
  %loadMem_42747b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 11
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RDI.i677 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RDI.i677
  %1780 = load i64, i64* %PC.i676
  %1781 = add i64 %1780, 3
  store i64 %1781, i64* %PC.i676
  %1782 = trunc i64 %1779 to i32
  %1783 = add i32 16, %1782
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RDI.i677, align 8
  %1785 = icmp ult i32 %1783, %1782
  %1786 = icmp ult i32 %1783, 16
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1788, i8* %1789, align 1
  %1790 = and i32 %1783, 255
  %1791 = call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1794, i8* %1795, align 1
  %1796 = xor i64 16, %1779
  %1797 = trunc i64 %1796 to i32
  %1798 = xor i32 %1797, %1783
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1801, i8* %1802, align 1
  %1803 = icmp eq i32 %1783, 0
  %1804 = zext i1 %1803 to i8
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1804, i8* %1805, align 1
  %1806 = lshr i32 %1783, 31
  %1807 = trunc i32 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1807, i8* %1808, align 1
  %1809 = lshr i32 %1782, 31
  %1810 = xor i32 %1806, %1809
  %1811 = add i32 %1810, %1806
  %1812 = icmp eq i32 %1811, 2
  %1813 = zext i1 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1813, i8* %1814, align 1
  store %struct.Memory* %loadMem_42747b, %struct.Memory** %MEMORY
  %loadMem_42747e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 11
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %EDI.i674 = bitcast %union.anon* %1820 to i32*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 5
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %1823 to i64*
  %1824 = load i32, i32* %EDI.i674
  %1825 = zext i32 %1824 to i64
  %1826 = load i64, i64* %PC.i673
  %1827 = add i64 %1826, 3
  store i64 %1827, i64* %PC.i673
  %1828 = shl i64 %1825, 32
  %1829 = ashr exact i64 %1828, 32
  store i64 %1829, i64* %RCX.i675, align 8
  store %struct.Memory* %loadMem_42747e, %struct.Memory** %MEMORY
  %loadMem_427481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 9
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %SI.i670 = bitcast %union.anon* %1835 to i16*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 1
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 5
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RAX.i671
  %1843 = load i64, i64* %RCX.i672
  %1844 = mul i64 %1843, 2
  %1845 = add i64 %1844, %1842
  %1846 = load i64, i64* %PC.i669
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC.i669
  %1848 = inttoptr i64 %1845 to i16*
  %1849 = load i16, i16* %1848
  store i16 %1849, i16* %SI.i670, align 2
  store %struct.Memory* %loadMem_427481, %struct.Memory** %MEMORY
  %loadMem_427485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 1
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i668
  %1860 = sub i64 %1859, 1032
  %1861 = load i64, i64* %PC.i666
  %1862 = add i64 %1861, 7
  store i64 %1862, i64* %PC.i666
  %1863 = inttoptr i64 %1860 to i64*
  %1864 = load i64, i64* %1863
  store i64 %1864, i64* %RAX.i667, align 8
  store %struct.Memory* %loadMem_427485, %struct.Memory** %MEMORY
  %loadMem_42748c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 11
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RDI.i664 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RBP.i665
  %1875 = sub i64 %1874, 1060
  %1876 = load i64, i64* %PC.i663
  %1877 = add i64 %1876, 6
  store i64 %1877, i64* %PC.i663
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RDI.i664, align 8
  store %struct.Memory* %loadMem_42748c, %struct.Memory** %MEMORY
  %loadMem_427492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 17
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %R8D.i661 = bitcast %union.anon* %1886 to i32*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 15
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %1889 to i64*
  %1890 = bitcast i32* %R8D.i661 to i64*
  %1891 = load i64, i64* %RBP.i662
  %1892 = sub i64 %1891, 1052
  %1893 = load i64, i64* %PC.i660
  %1894 = add i64 %1893, 7
  store i64 %1894, i64* %PC.i660
  %1895 = inttoptr i64 %1892 to i32*
  %1896 = load i32, i32* %1895
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %1890, align 8
  store %struct.Memory* %loadMem_427492, %struct.Memory** %MEMORY
  %loadMem_427499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 17
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %R8D.i659 = bitcast %union.anon* %1903 to i32*
  %1904 = bitcast i32* %R8D.i659 to i64*
  %1905 = load i32, i32* %R8D.i659
  %1906 = zext i32 %1905 to i64
  %1907 = load i64, i64* %PC.i658
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC.i658
  %1909 = shl i32 %1905, 1
  %1910 = icmp slt i32 %1905, 0
  %1911 = icmp slt i32 %1909, 0
  %1912 = xor i1 %1910, %1911
  %1913 = zext i32 %1909 to i64
  store i64 %1913, i64* %1904, align 8
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1915 = zext i1 %1910 to i8
  store i8 %1915, i8* %1914, align 1
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1917 = and i32 %1909, 254
  %1918 = call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %1916, align 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1922, align 1
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1924 = icmp eq i32 %1909, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %1923, align 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1927 = lshr i32 %1909, 31
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, i8* %1926, align 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1930 = zext i1 %1912 to i8
  store i8 %1930, i8* %1929, align 1
  store %struct.Memory* %loadMem_427499, %struct.Memory** %MEMORY
  %loadMem_42749d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 17
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %R8D.i657 = bitcast %union.anon* %1936 to i32*
  %1937 = bitcast i32* %R8D.i657 to i64*
  %1938 = load i32, i32* %R8D.i657
  %1939 = zext i32 %1938 to i64
  %1940 = load i64, i64* %PC.i656
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i656
  %1942 = add i32 1, %1938
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %1937, align 8
  %1944 = icmp ult i32 %1942, %1938
  %1945 = icmp ult i32 %1942, 1
  %1946 = or i1 %1944, %1945
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1947, i8* %1948, align 1
  %1949 = and i32 %1942, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = xor i64 1, %1939
  %1956 = trunc i64 %1955 to i32
  %1957 = xor i32 %1956, %1942
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1960, i8* %1961, align 1
  %1962 = icmp eq i32 %1942, 0
  %1963 = zext i1 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1963, i8* %1964, align 1
  %1965 = lshr i32 %1942, 31
  %1966 = trunc i32 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i32 %1938, 31
  %1969 = xor i32 %1965, %1968
  %1970 = add i32 %1969, %1965
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_42749d, %struct.Memory** %MEMORY
  %loadMem_4274a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 17
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %R8D.i654 = bitcast %union.anon* %1979 to i32*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 11
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RDI.i655 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %RDI.i655
  %1984 = load i32, i32* %R8D.i654
  %1985 = zext i32 %1984 to i64
  %1986 = load i64, i64* %PC.i653
  %1987 = add i64 %1986, 3
  store i64 %1987, i64* %PC.i653
  %1988 = trunc i64 %1983 to i32
  %1989 = add i32 %1984, %1988
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RDI.i655, align 8
  %1991 = icmp ult i32 %1989, %1988
  %1992 = icmp ult i32 %1989, %1984
  %1993 = or i1 %1991, %1992
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1994, i8* %1995, align 1
  %1996 = and i32 %1989, 255
  %1997 = call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2000, i8* %2001, align 1
  %2002 = xor i64 %1985, %1983
  %2003 = trunc i64 %2002 to i32
  %2004 = xor i32 %2003, %1989
  %2005 = lshr i32 %2004, 4
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2007, i8* %2008, align 1
  %2009 = icmp eq i32 %1989, 0
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2010, i8* %2011, align 1
  %2012 = lshr i32 %1989, 31
  %2013 = trunc i32 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2013, i8* %2014, align 1
  %2015 = lshr i32 %1988, 31
  %2016 = lshr i32 %1984, 31
  %2017 = xor i32 %2012, %2015
  %2018 = xor i32 %2012, %2016
  %2019 = add i32 %2017, %2018
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2021, i8* %2022, align 1
  store %struct.Memory* %loadMem_4274a1, %struct.Memory** %MEMORY
  %loadMem_4274a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 11
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %EDI.i651 = bitcast %union.anon* %2028 to i32*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 5
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %2031 to i64*
  %2032 = load i32, i32* %EDI.i651
  %2033 = zext i32 %2032 to i64
  %2034 = load i64, i64* %PC.i650
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i650
  %2036 = shl i64 %2033, 32
  %2037 = ashr exact i64 %2036, 32
  store i64 %2037, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_4274a4, %struct.Memory** %MEMORY
  %loadMem_4274a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 5
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RAX.i648
  %2048 = load i64, i64* %RCX.i649
  %2049 = mul i64 %2048, 8
  %2050 = add i64 %2049, %2047
  %2051 = load i64, i64* %PC.i647
  %2052 = add i64 %2051, 4
  store i64 %2052, i64* %PC.i647
  %2053 = inttoptr i64 %2050 to i64*
  %2054 = load i64, i64* %2053
  store i64 %2054, i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_4274a7, %struct.Memory** %MEMORY
  %loadMem_4274ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 11
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RDI.i645 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 15
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RBP.i646
  %2065 = sub i64 %2064, 1056
  %2066 = load i64, i64* %PC.i644
  %2067 = add i64 %2066, 6
  store i64 %2067, i64* %PC.i644
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068
  %2070 = zext i32 %2069 to i64
  store i64 %2070, i64* %RDI.i645, align 8
  store %struct.Memory* %loadMem_4274ab, %struct.Memory** %MEMORY
  %loadMem_4274b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 11
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RDI.i642 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 15
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %RDI.i642
  %2081 = load i64, i64* %RBP.i643
  %2082 = sub i64 %2081, 1048
  %2083 = load i64, i64* %PC.i641
  %2084 = add i64 %2083, 6
  store i64 %2084, i64* %PC.i641
  %2085 = trunc i64 %2080 to i32
  %2086 = inttoptr i64 %2082 to i32*
  %2087 = load i32, i32* %2086
  %2088 = add i32 %2087, %2085
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RDI.i642, align 8
  %2090 = icmp ult i32 %2088, %2085
  %2091 = icmp ult i32 %2088, %2087
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2093, i8* %2094, align 1
  %2095 = and i32 %2088, 255
  %2096 = call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2099, i8* %2100, align 1
  %2101 = xor i32 %2087, %2085
  %2102 = xor i32 %2101, %2088
  %2103 = lshr i32 %2102, 4
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2105, i8* %2106, align 1
  %2107 = icmp eq i32 %2088, 0
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2108, i8* %2109, align 1
  %2110 = lshr i32 %2088, 31
  %2111 = trunc i32 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2111, i8* %2112, align 1
  %2113 = lshr i32 %2085, 31
  %2114 = lshr i32 %2087, 31
  %2115 = xor i32 %2110, %2113
  %2116 = xor i32 %2110, %2114
  %2117 = add i32 %2115, %2116
  %2118 = icmp eq i32 %2117, 2
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2119, i8* %2120, align 1
  store %struct.Memory* %loadMem_4274b1, %struct.Memory** %MEMORY
  %loadMem_4274b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 11
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %EDI.i639 = bitcast %union.anon* %2126 to i32*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %2129 to i64*
  %2130 = load i32, i32* %EDI.i639
  %2131 = zext i32 %2130 to i64
  %2132 = load i64, i64* %PC.i638
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %PC.i638
  %2134 = shl i64 %2131, 32
  %2135 = ashr exact i64 %2134, 32
  store i64 %2135, i64* %RCX.i640, align 8
  store %struct.Memory* %loadMem_4274b7, %struct.Memory** %MEMORY
  %loadMem_4274ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 9
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %SI.i635 = bitcast %union.anon* %2141 to i16*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 1
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 5
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %RAX.i636
  %2149 = load i64, i64* %RCX.i637
  %2150 = mul i64 %2149, 2
  %2151 = add i64 %2150, %2148
  %2152 = load i16, i16* %SI.i635
  %2153 = zext i16 %2152 to i64
  %2154 = load i64, i64* %PC.i634
  %2155 = add i64 %2154, 4
  store i64 %2155, i64* %PC.i634
  %2156 = inttoptr i64 %2151 to i16*
  store i16 %2152, i16* %2156
  store %struct.Memory* %loadMem_4274ba, %struct.Memory** %MEMORY
  %loadMem_4274be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 1
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 15
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %RBP.i633
  %2167 = sub i64 %2166, 1048
  %2168 = load i64, i64* %PC.i631
  %2169 = add i64 %2168, 6
  store i64 %2169, i64* %PC.i631
  %2170 = inttoptr i64 %2167 to i32*
  %2171 = load i32, i32* %2170
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RAX.i632, align 8
  store %struct.Memory* %loadMem_4274be, %struct.Memory** %MEMORY
  %loadMem_4274c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 1
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %RAX.i630
  %2180 = load i64, i64* %PC.i629
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i629
  %2182 = trunc i64 %2179 to i32
  %2183 = add i32 1, %2182
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RAX.i630, align 8
  %2185 = icmp ult i32 %2183, %2182
  %2186 = icmp ult i32 %2183, 1
  %2187 = or i1 %2185, %2186
  %2188 = zext i1 %2187 to i8
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2188, i8* %2189, align 1
  %2190 = and i32 %2183, 255
  %2191 = call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2194, i8* %2195, align 1
  %2196 = xor i64 1, %2179
  %2197 = trunc i64 %2196 to i32
  %2198 = xor i32 %2197, %2183
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2201, i8* %2202, align 1
  %2203 = icmp eq i32 %2183, 0
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2204, i8* %2205, align 1
  %2206 = lshr i32 %2183, 31
  %2207 = trunc i32 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2207, i8* %2208, align 1
  %2209 = lshr i32 %2182, 31
  %2210 = xor i32 %2206, %2209
  %2211 = add i32 %2210, %2206
  %2212 = icmp eq i32 %2211, 2
  %2213 = zext i1 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2213, i8* %2214, align 1
  store %struct.Memory* %loadMem_4274c4, %struct.Memory** %MEMORY
  %loadMem_4274c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 1
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %EAX.i627 = bitcast %union.anon* %2220 to i32*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 15
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RBP.i628
  %2225 = sub i64 %2224, 1048
  %2226 = load i32, i32* %EAX.i627
  %2227 = zext i32 %2226 to i64
  %2228 = load i64, i64* %PC.i626
  %2229 = add i64 %2228, 6
  store i64 %2229, i64* %PC.i626
  %2230 = inttoptr i64 %2225 to i32*
  store i32 %2226, i32* %2230
  store %struct.Memory* %loadMem_4274c7, %struct.Memory** %MEMORY
  %loadMem_4274cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %PC.i625
  %2235 = add i64 %2234, -203
  %2236 = load i64, i64* %PC.i625
  %2237 = add i64 %2236, 5
  store i64 %2237, i64* %PC.i625
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2235, i64* %2238, align 8
  store %struct.Memory* %loadMem_4274cd, %struct.Memory** %MEMORY
  br label %block_.L_427402

block_.L_4274d2:                                  ; preds = %block_.L_427402
  %loadMem_4274d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %PC.i624
  %2243 = add i64 %2242, 5
  %2244 = load i64, i64* %PC.i624
  %2245 = add i64 %2244, 5
  store i64 %2245, i64* %PC.i624
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2243, i64* %2246, align 8
  store %struct.Memory* %loadMem_4274d2, %struct.Memory** %MEMORY
  br label %block_.L_4274d7

block_.L_4274d7:                                  ; preds = %block_.L_4274d2
  %loadMem_4274d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 1
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 15
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %RBP.i623
  %2257 = sub i64 %2256, 1052
  %2258 = load i64, i64* %PC.i621
  %2259 = add i64 %2258, 6
  store i64 %2259, i64* %PC.i621
  %2260 = inttoptr i64 %2257 to i32*
  %2261 = load i32, i32* %2260
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_4274d7, %struct.Memory** %MEMORY
  %loadMem_4274dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RAX.i620
  %2270 = load i64, i64* %PC.i619
  %2271 = add i64 %2270, 3
  store i64 %2271, i64* %PC.i619
  %2272 = trunc i64 %2269 to i32
  %2273 = add i32 1, %2272
  %2274 = zext i32 %2273 to i64
  store i64 %2274, i64* %RAX.i620, align 8
  %2275 = icmp ult i32 %2273, %2272
  %2276 = icmp ult i32 %2273, 1
  %2277 = or i1 %2275, %2276
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2278, i8* %2279, align 1
  %2280 = and i32 %2273, 255
  %2281 = call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2284, i8* %2285, align 1
  %2286 = xor i64 1, %2269
  %2287 = trunc i64 %2286 to i32
  %2288 = xor i32 %2287, %2273
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2291, i8* %2292, align 1
  %2293 = icmp eq i32 %2273, 0
  %2294 = zext i1 %2293 to i8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2294, i8* %2295, align 1
  %2296 = lshr i32 %2273, 31
  %2297 = trunc i32 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2297, i8* %2298, align 1
  %2299 = lshr i32 %2272, 31
  %2300 = xor i32 %2296, %2299
  %2301 = add i32 %2300, %2296
  %2302 = icmp eq i32 %2301, 2
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2303, i8* %2304, align 1
  store %struct.Memory* %loadMem_4274dd, %struct.Memory** %MEMORY
  %loadMem_4274e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %EAX.i617 = bitcast %union.anon* %2310 to i32*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 15
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RBP.i618
  %2315 = sub i64 %2314, 1052
  %2316 = load i32, i32* %EAX.i617
  %2317 = zext i32 %2316 to i64
  %2318 = load i64, i64* %PC.i616
  %2319 = add i64 %2318, 6
  store i64 %2319, i64* %PC.i616
  %2320 = inttoptr i64 %2315 to i32*
  store i32 %2316, i32* %2320
  store %struct.Memory* %loadMem_4274e0, %struct.Memory** %MEMORY
  %loadMem_4274e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %PC.i615
  %2325 = add i64 %2324, -251
  %2326 = load i64, i64* %PC.i615
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %PC.i615
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2325, i64* %2328, align 8
  store %struct.Memory* %loadMem_4274e6, %struct.Memory** %MEMORY
  br label %block_.L_4273eb

block_.L_4274eb:                                  ; preds = %block_.L_4273eb
  %loadMem_4274eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 1
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %PC.i613
  %2336 = add i64 %2335, 5
  store i64 %2336, i64* %PC.i613
  store i64 16, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_4274eb, %struct.Memory** %MEMORY
  %loadMem_4274f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 5
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RBP.i612
  %2347 = sub i64 %2346, 1056
  %2348 = load i64, i64* %PC.i610
  %2349 = add i64 %2348, 6
  store i64 %2349, i64* %PC.i610
  %2350 = inttoptr i64 %2347 to i32*
  %2351 = load i32, i32* %2350
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RCX.i611, align 8
  store %struct.Memory* %loadMem_4274f0, %struct.Memory** %MEMORY
  %loadMem_4274f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 7
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %PC.i608
  %2360 = add i64 %2359, 8
  store i64 %2360, i64* %PC.i608
  %2361 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2361, i64* %RDX.i609, align 8
  store %struct.Memory* %loadMem_4274f6, %struct.Memory** %MEMORY
  %loadMem_4274fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 1
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %2367 to i32*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i607
  %2372 = sub i64 %2371, 1068
  %2373 = load i32, i32* %EAX.i606
  %2374 = zext i32 %2373 to i64
  %2375 = load i64, i64* %PC.i605
  %2376 = add i64 %2375, 6
  store i64 %2376, i64* %PC.i605
  %2377 = inttoptr i64 %2372 to i32*
  store i32 %2373, i32* %2377
  store %struct.Memory* %loadMem_4274fe, %struct.Memory** %MEMORY
  %loadMem_427504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 7
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RBP.i604
  %2388 = sub i64 %2387, 1080
  %2389 = load i64, i64* %RDX.i603
  %2390 = load i64, i64* %PC.i602
  %2391 = add i64 %2390, 7
  store i64 %2391, i64* %PC.i602
  %2392 = inttoptr i64 %2388 to i64*
  store i64 %2389, i64* %2392
  store %struct.Memory* %loadMem_427504, %struct.Memory** %MEMORY
  %loadMem_42750b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i601
  %2397 = add i64 %2396, 1
  store i64 %2397, i64* %PC.i601
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2400 = bitcast %union.anon* %2399 to i32*
  %2401 = load i32, i32* %2400, align 8
  %2402 = sext i32 %2401 to i64
  %2403 = lshr i64 %2402, 32
  store i64 %2403, i64* %2398, align 8
  store %struct.Memory* %loadMem_42750b, %struct.Memory** %MEMORY
  %loadMem_42750c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 9
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RSI.i599 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 15
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RBP.i600
  %2414 = sub i64 %2413, 1080
  %2415 = load i64, i64* %PC.i598
  %2416 = add i64 %2415, 7
  store i64 %2416, i64* %PC.i598
  %2417 = inttoptr i64 %2414 to i64*
  %2418 = load i64, i64* %2417
  store i64 %2418, i64* %RSI.i599, align 8
  store %struct.Memory* %loadMem_42750c, %struct.Memory** %MEMORY
  %loadMem_427513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 9
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RSI.i595 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RSI.i595
  %2426 = add i64 %2425, 72708
  %2427 = load i64, i64* %PC.i594
  %2428 = add i64 %2427, 6
  store i64 %2428, i64* %PC.i594
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2430 = bitcast %union.anon* %2429 to i32*
  %2431 = load i32, i32* %2430, align 8
  %2432 = zext i32 %2431 to i64
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2434 = bitcast %union.anon* %2433 to i32*
  %2435 = load i32, i32* %2434, align 8
  %2436 = zext i32 %2435 to i64
  %2437 = inttoptr i64 %2426 to i32*
  %2438 = load i32, i32* %2437
  %2439 = sext i32 %2438 to i64
  %2440 = shl i64 %2436, 32
  %2441 = or i64 %2440, %2432
  %2442 = sdiv i64 %2441, %2439
  %2443 = shl i64 %2442, 32
  %2444 = ashr exact i64 %2443, 32
  %2445 = icmp eq i64 %2442, %2444
  br i1 %2445, label %2450, label %2446

; <label>:2446:                                   ; preds = %block_.L_4274eb
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2448 = load i64, i64* %2447, align 8
  %2449 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2448, %struct.Memory* %loadMem_427513)
  br label %routine_idivl_0x11c04__rsi_.exit

; <label>:2450:                                   ; preds = %block_.L_4274eb
  %2451 = srem i64 %2441, %2439
  %2452 = getelementptr inbounds %union.anon, %union.anon* %2429, i64 0, i32 0
  %2453 = and i64 %2442, 4294967295
  store i64 %2453, i64* %2452, align 8
  %2454 = getelementptr inbounds %union.anon, %union.anon* %2433, i64 0, i32 0
  %2455 = and i64 %2451, 4294967295
  store i64 %2455, i64* %2454, align 8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2456, align 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2457, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2458, align 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2459, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2460, align 1
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2461, align 1
  br label %routine_idivl_0x11c04__rsi_.exit

routine_idivl_0x11c04__rsi_.exit:                 ; preds = %2446, %2450
  %2462 = phi %struct.Memory* [ %2449, %2446 ], [ %loadMem_427513, %2450 ]
  store %struct.Memory* %2462, %struct.Memory** %MEMORY
  %loadMem_427519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %2468 to i32*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i593
  %2473 = sub i64 %2472, 1084
  %2474 = load i32, i32* %EAX.i592
  %2475 = zext i32 %2474 to i64
  %2476 = load i64, i64* %PC.i591
  %2477 = add i64 %2476, 6
  store i64 %2477, i64* %PC.i591
  %2478 = inttoptr i64 %2473 to i32*
  store i32 %2474, i32* %2478
  store %struct.Memory* %loadMem_427519, %struct.Memory** %MEMORY
  %loadMem_42751f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 5
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %ECX.i589 = bitcast %union.anon* %2484 to i32*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 1
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %2487 to i64*
  %2488 = load i32, i32* %ECX.i589
  %2489 = zext i32 %2488 to i64
  %2490 = load i64, i64* %PC.i588
  %2491 = add i64 %2490, 2
  store i64 %2491, i64* %PC.i588
  %2492 = and i64 %2489, 4294967295
  store i64 %2492, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_42751f, %struct.Memory** %MEMORY
  %loadMem_427521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %PC.i587
  %2497 = add i64 %2496, 1
  store i64 %2497, i64* %PC.i587
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2500 = bitcast %union.anon* %2499 to i32*
  %2501 = load i32, i32* %2500, align 8
  %2502 = sext i32 %2501 to i64
  %2503 = lshr i64 %2502, 32
  store i64 %2503, i64* %2498, align 8
  store %struct.Memory* %loadMem_427521, %struct.Memory** %MEMORY
  %loadMem_427522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 5
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 15
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RBP.i586
  %2514 = sub i64 %2513, 1084
  %2515 = load i64, i64* %PC.i584
  %2516 = add i64 %2515, 6
  store i64 %2516, i64* %PC.i584
  %2517 = inttoptr i64 %2514 to i32*
  %2518 = load i32, i32* %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_427522, %struct.Memory** %MEMORY
  %loadMem_427528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 5
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2525 to i32*
  %2526 = load i32, i32* %ECX.i
  %2527 = zext i32 %2526 to i64
  %2528 = load i64, i64* %PC.i581
  %2529 = add i64 %2528, 2
  store i64 %2529, i64* %PC.i581
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2531 = bitcast %union.anon* %2530 to i32*
  %2532 = load i32, i32* %2531, align 8
  %2533 = zext i32 %2532 to i64
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2535 = bitcast %union.anon* %2534 to i32*
  %2536 = load i32, i32* %2535, align 8
  %2537 = zext i32 %2536 to i64
  %2538 = shl i64 %2527, 32
  %2539 = ashr exact i64 %2538, 32
  %2540 = shl i64 %2537, 32
  %2541 = or i64 %2540, %2533
  %2542 = sdiv i64 %2541, %2539
  %2543 = shl i64 %2542, 32
  %2544 = ashr exact i64 %2543, 32
  %2545 = icmp eq i64 %2542, %2544
  br i1 %2545, label %2550, label %2546

; <label>:2546:                                   ; preds = %routine_idivl_0x11c04__rsi_.exit
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2548 = load i64, i64* %2547, align 8
  %2549 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2548, %struct.Memory* %loadMem_427528)
  br label %routine_idivl__ecx.exit

; <label>:2550:                                   ; preds = %routine_idivl_0x11c04__rsi_.exit
  %2551 = srem i64 %2541, %2539
  %2552 = getelementptr inbounds %union.anon, %union.anon* %2530, i64 0, i32 0
  %2553 = and i64 %2542, 4294967295
  store i64 %2553, i64* %2552, align 8
  %2554 = getelementptr inbounds %union.anon, %union.anon* %2534, i64 0, i32 0
  %2555 = and i64 %2551, 4294967295
  store i64 %2555, i64* %2554, align 8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2556, align 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2557, align 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2558, align 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2559, align 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2560, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2561, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2546, %2550
  %2562 = phi %struct.Memory* [ %2549, %2546 ], [ %loadMem_427528, %2550 ]
  store %struct.Memory* %2562, %struct.Memory** %MEMORY
  %loadMem_42752a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 1
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %EAX.i579 = bitcast %union.anon* %2568 to i32*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 15
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %RBP.i580
  %2573 = sub i64 %2572, 1056
  %2574 = load i32, i32* %EAX.i579
  %2575 = zext i32 %2574 to i64
  %2576 = load i64, i64* %PC.i578
  %2577 = add i64 %2576, 6
  store i64 %2577, i64* %PC.i578
  %2578 = inttoptr i64 %2573 to i32*
  store i32 %2574, i32* %2578
  store %struct.Memory* %loadMem_42752a, %struct.Memory** %MEMORY
  %loadMem_427530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 1
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 15
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RBP.i577
  %2589 = sub i64 %2588, 1060
  %2590 = load i64, i64* %PC.i575
  %2591 = add i64 %2590, 6
  store i64 %2591, i64* %PC.i575
  %2592 = inttoptr i64 %2589 to i32*
  %2593 = load i32, i32* %2592
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_427530, %struct.Memory** %MEMORY
  %loadMem_427536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 11
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RDI.i574 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %PC.i573
  %2602 = add i64 %2601, 8
  store i64 %2602, i64* %PC.i573
  %2603 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2603, i64* %RDI.i574, align 8
  store %struct.Memory* %loadMem_427536, %struct.Memory** %MEMORY
  %loadMem_42753e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 17
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %R8D.i571 = bitcast %union.anon* %2609 to i32*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2612 to i64*
  %2613 = bitcast i32* %R8D.i571 to i64*
  %2614 = load i64, i64* %RBP.i572
  %2615 = sub i64 %2614, 1068
  %2616 = load i64, i64* %PC.i570
  %2617 = add i64 %2616, 7
  store i64 %2617, i64* %PC.i570
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %2613, align 8
  store %struct.Memory* %loadMem_42753e, %struct.Memory** %MEMORY
  %loadMem_427545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %EAX.i568 = bitcast %union.anon* %2626 to i32*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i569
  %2631 = sub i64 %2630, 1088
  %2632 = load i32, i32* %EAX.i568
  %2633 = zext i32 %2632 to i64
  %2634 = load i64, i64* %PC.i567
  %2635 = add i64 %2634, 6
  store i64 %2635, i64* %PC.i567
  %2636 = inttoptr i64 %2631 to i32*
  store i32 %2632, i32* %2636
  store %struct.Memory* %loadMem_427545, %struct.Memory** %MEMORY
  %loadMem_42754b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 17
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %R8D.i565 = bitcast %union.anon* %2642 to i32*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 1
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %2645 to i64*
  %2646 = load i32, i32* %R8D.i565
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %PC.i564
  %2649 = add i64 %2648, 3
  store i64 %2649, i64* %PC.i564
  %2650 = and i64 %2647, 4294967295
  store i64 %2650, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_42754b, %struct.Memory** %MEMORY
  %loadMem_42754e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %PC.i563
  %2655 = add i64 %2654, 1
  store i64 %2655, i64* %PC.i563
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2658 = bitcast %union.anon* %2657 to i32*
  %2659 = load i32, i32* %2658, align 8
  %2660 = sext i32 %2659 to i64
  %2661 = lshr i64 %2660, 32
  store i64 %2661, i64* %2656, align 8
  store %struct.Memory* %loadMem_42754e, %struct.Memory** %MEMORY
  %loadMem_42754f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 11
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RDI.i560 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RDI.i560
  %2669 = add i64 %2668, 72712
  %2670 = load i64, i64* %PC.i559
  %2671 = add i64 %2670, 6
  store i64 %2671, i64* %PC.i559
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2673 = bitcast %union.anon* %2672 to i32*
  %2674 = load i32, i32* %2673, align 8
  %2675 = zext i32 %2674 to i64
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2677 = bitcast %union.anon* %2676 to i32*
  %2678 = load i32, i32* %2677, align 8
  %2679 = zext i32 %2678 to i64
  %2680 = inttoptr i64 %2669 to i32*
  %2681 = load i32, i32* %2680
  %2682 = sext i32 %2681 to i64
  %2683 = shl i64 %2679, 32
  %2684 = or i64 %2683, %2675
  %2685 = sdiv i64 %2684, %2682
  %2686 = shl i64 %2685, 32
  %2687 = ashr exact i64 %2686, 32
  %2688 = icmp eq i64 %2685, %2687
  br i1 %2688, label %2693, label %2689

; <label>:2689:                                   ; preds = %routine_idivl__ecx.exit
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2691 = load i64, i64* %2690, align 8
  %2692 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2691, %struct.Memory* %loadMem_42754f)
  br label %routine_idivl_0x11c08__rdi_.exit

; <label>:2693:                                   ; preds = %routine_idivl__ecx.exit
  %2694 = srem i64 %2684, %2682
  %2695 = getelementptr inbounds %union.anon, %union.anon* %2672, i64 0, i32 0
  %2696 = and i64 %2685, 4294967295
  store i64 %2696, i64* %2695, align 8
  %2697 = getelementptr inbounds %union.anon, %union.anon* %2676, i64 0, i32 0
  %2698 = and i64 %2694, 4294967295
  store i64 %2698, i64* %2697, align 8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2699, align 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2700, align 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2701, align 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2702, align 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2703, align 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2704, align 1
  br label %routine_idivl_0x11c08__rdi_.exit

routine_idivl_0x11c08__rdi_.exit:                 ; preds = %2689, %2693
  %2705 = phi %struct.Memory* [ %2692, %2689 ], [ %loadMem_42754f, %2693 ]
  store %struct.Memory* %2705, %struct.Memory** %MEMORY
  %loadMem_427555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 19
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %R9D.i557 = bitcast %union.anon* %2711 to i32*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 15
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %2714 to i64*
  %2715 = bitcast i32* %R9D.i557 to i64*
  %2716 = load i64, i64* %RBP.i558
  %2717 = sub i64 %2716, 1088
  %2718 = load i64, i64* %PC.i556
  %2719 = add i64 %2718, 7
  store i64 %2719, i64* %PC.i556
  %2720 = inttoptr i64 %2717 to i32*
  %2721 = load i32, i32* %2720
  %2722 = zext i32 %2721 to i64
  store i64 %2722, i64* %2715, align 8
  store %struct.Memory* %loadMem_427555, %struct.Memory** %MEMORY
  %loadMem_42755c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 1
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %2728 to i32*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 15
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2731 to i64*
  %2732 = load i64, i64* %RBP.i555
  %2733 = sub i64 %2732, 1092
  %2734 = load i32, i32* %EAX.i554
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %PC.i553
  %2737 = add i64 %2736, 6
  store i64 %2737, i64* %PC.i553
  %2738 = inttoptr i64 %2733 to i32*
  store i32 %2734, i32* %2738
  store %struct.Memory* %loadMem_42755c, %struct.Memory** %MEMORY
  %loadMem_427562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 19
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %2744 to i32*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %2747 to i64*
  %2748 = load i32, i32* %R9D.i
  %2749 = zext i32 %2748 to i64
  %2750 = load i64, i64* %PC.i551
  %2751 = add i64 %2750, 3
  store i64 %2751, i64* %PC.i551
  %2752 = and i64 %2749, 4294967295
  store i64 %2752, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_427562, %struct.Memory** %MEMORY
  %loadMem_427565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %PC.i550
  %2757 = add i64 %2756, 1
  store i64 %2757, i64* %PC.i550
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2760 = bitcast %union.anon* %2759 to i32*
  %2761 = load i32, i32* %2760, align 8
  %2762 = sext i32 %2761 to i64
  %2763 = lshr i64 %2762, 32
  store i64 %2763, i64* %2758, align 8
  store %struct.Memory* %loadMem_427565, %struct.Memory** %MEMORY
  %loadMem_427566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 21
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %R10D.i548 = bitcast %union.anon* %2769 to i32*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2772 to i64*
  %2773 = bitcast i32* %R10D.i548 to i64*
  %2774 = load i64, i64* %RBP.i549
  %2775 = sub i64 %2774, 1092
  %2776 = load i64, i64* %PC.i547
  %2777 = add i64 %2776, 7
  store i64 %2777, i64* %PC.i547
  %2778 = inttoptr i64 %2775 to i32*
  %2779 = load i32, i32* %2778
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %2773, align 8
  store %struct.Memory* %loadMem_427566, %struct.Memory** %MEMORY
  %loadMem_42756d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 21
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %2786 to i32*
  %2787 = load i32, i32* %R10D.i
  %2788 = zext i32 %2787 to i64
  %2789 = load i64, i64* %PC.i543
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i543
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2792 = bitcast %union.anon* %2791 to i32*
  %2793 = load i32, i32* %2792, align 8
  %2794 = zext i32 %2793 to i64
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2796 = bitcast %union.anon* %2795 to i32*
  %2797 = load i32, i32* %2796, align 8
  %2798 = zext i32 %2797 to i64
  %2799 = shl i64 %2788, 32
  %2800 = ashr exact i64 %2799, 32
  %2801 = shl i64 %2798, 32
  %2802 = or i64 %2801, %2794
  %2803 = sdiv i64 %2802, %2800
  %2804 = shl i64 %2803, 32
  %2805 = ashr exact i64 %2804, 32
  %2806 = icmp eq i64 %2803, %2805
  br i1 %2806, label %2811, label %2807

; <label>:2807:                                   ; preds = %routine_idivl_0x11c08__rdi_.exit
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2809 = load i64, i64* %2808, align 8
  %2810 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2809, %struct.Memory* %loadMem_42756d)
  br label %routine_idivl__r10d.exit

; <label>:2811:                                   ; preds = %routine_idivl_0x11c08__rdi_.exit
  %2812 = srem i64 %2802, %2800
  %2813 = getelementptr inbounds %union.anon, %union.anon* %2791, i64 0, i32 0
  %2814 = and i64 %2803, 4294967295
  store i64 %2814, i64* %2813, align 8
  %2815 = getelementptr inbounds %union.anon, %union.anon* %2795, i64 0, i32 0
  %2816 = and i64 %2812, 4294967295
  store i64 %2816, i64* %2815, align 8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2817, align 1
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2818, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2819, align 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2820, align 1
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2821, align 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2822, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %2807, %2811
  %2823 = phi %struct.Memory* [ %2810, %2807 ], [ %loadMem_42756d, %2811 ]
  store %struct.Memory* %2823, %struct.Memory** %MEMORY
  %loadMem_427570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %EAX.i541 = bitcast %union.anon* %2829 to i32*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %RBP.i542
  %2834 = sub i64 %2833, 1060
  %2835 = load i32, i32* %EAX.i541
  %2836 = zext i32 %2835 to i64
  %2837 = load i64, i64* %PC.i540
  %2838 = add i64 %2837, 6
  store i64 %2838, i64* %PC.i540
  %2839 = inttoptr i64 %2834 to i32*
  store i32 %2835, i32* %2839
  store %struct.Memory* %loadMem_427570, %struct.Memory** %MEMORY
  %loadMem_427576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %RBP.i539
  %2847 = sub i64 %2846, 1064
  %2848 = load i64, i64* %PC.i538
  %2849 = add i64 %2848, 10
  store i64 %2849, i64* %PC.i538
  %2850 = inttoptr i64 %2847 to i32*
  store i32 0, i32* %2850
  store %struct.Memory* %loadMem_427576, %struct.Memory** %MEMORY
  br label %block_.L_427580

block_.L_427580:                                  ; preds = %block_.L_4277a9, %routine_idivl__r10d.exit
  %loadMem_427580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 15
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %2856 to i64*
  %2857 = load i64, i64* %RBP.i537
  %2858 = sub i64 %2857, 1064
  %2859 = load i64, i64* %PC.i536
  %2860 = add i64 %2859, 7
  store i64 %2860, i64* %PC.i536
  %2861 = inttoptr i64 %2858 to i32*
  %2862 = load i32, i32* %2861
  %2863 = sub i32 %2862, 2
  %2864 = icmp ult i32 %2862, 2
  %2865 = zext i1 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2865, i8* %2866, align 1
  %2867 = and i32 %2863, 255
  %2868 = call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2871, i8* %2872, align 1
  %2873 = xor i32 %2862, 2
  %2874 = xor i32 %2873, %2863
  %2875 = lshr i32 %2874, 4
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2877, i8* %2878, align 1
  %2879 = icmp eq i32 %2863, 0
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2880, i8* %2881, align 1
  %2882 = lshr i32 %2863, 31
  %2883 = trunc i32 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2883, i8* %2884, align 1
  %2885 = lshr i32 %2862, 31
  %2886 = xor i32 %2882, %2885
  %2887 = add i32 %2886, %2885
  %2888 = icmp eq i32 %2887, 2
  %2889 = zext i1 %2888 to i8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2889, i8* %2890, align 1
  store %struct.Memory* %loadMem_427580, %struct.Memory** %MEMORY
  %loadMem_427587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %PC.i535
  %2895 = add i64 %2894, 566
  %2896 = load i64, i64* %PC.i535
  %2897 = add i64 %2896, 6
  %2898 = load i64, i64* %PC.i535
  %2899 = add i64 %2898, 6
  store i64 %2899, i64* %PC.i535
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2901 = load i8, i8* %2900, align 1
  %2902 = icmp ne i8 %2901, 0
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2904 = load i8, i8* %2903, align 1
  %2905 = icmp ne i8 %2904, 0
  %2906 = xor i1 %2902, %2905
  %2907 = xor i1 %2906, true
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %BRANCH_TAKEN, align 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2910 = select i1 %2906, i64 %2897, i64 %2895
  store i64 %2910, i64* %2909, align 8
  store %struct.Memory* %loadMem_427587, %struct.Memory** %MEMORY
  %loadBr_427587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427587 = icmp eq i8 %loadBr_427587, 1
  br i1 %cmpBr_427587, label %block_.L_4277bd, label %block_42758d

block_42758d:                                     ; preds = %block_.L_427580
  %loadMem_42758d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i534
  %2918 = sub i64 %2917, 1052
  %2919 = load i64, i64* %PC.i533
  %2920 = add i64 %2919, 10
  store i64 %2920, i64* %PC.i533
  %2921 = inttoptr i64 %2918 to i32*
  store i32 0, i32* %2921
  store %struct.Memory* %loadMem_42758d, %struct.Memory** %MEMORY
  br label %block_.L_427597

block_.L_427597:                                  ; preds = %block_.L_42764b, %block_42758d
  %loadMem_427597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 1
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 15
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RBP.i532
  %2932 = sub i64 %2931, 1052
  %2933 = load i64, i64* %PC.i530
  %2934 = add i64 %2933, 6
  store i64 %2934, i64* %PC.i530
  %2935 = inttoptr i64 %2932 to i32*
  %2936 = load i32, i32* %2935
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_427597, %struct.Memory** %MEMORY
  %loadMem_42759d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 5
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %PC.i528
  %2945 = add i64 %2944, 8
  store i64 %2945, i64* %PC.i528
  %2946 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2946, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_42759d, %struct.Memory** %MEMORY
  %loadMem_4275a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 5
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 7
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RCX.i526
  %2957 = add i64 %2956, 72712
  %2958 = load i64, i64* %PC.i525
  %2959 = add i64 %2958, 6
  store i64 %2959, i64* %PC.i525
  %2960 = inttoptr i64 %2957 to i32*
  %2961 = load i32, i32* %2960
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RDX.i527, align 8
  store %struct.Memory* %loadMem_4275a5, %struct.Memory** %MEMORY
  %loadMem_4275ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 33
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2965 to i64*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 7
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RDX.i524
  %2970 = load i64, i64* %PC.i523
  %2971 = add i64 %2970, 2
  store i64 %2971, i64* %PC.i523
  %2972 = trunc i64 %2969 to i32
  %2973 = shl i32 %2972, 1
  %2974 = icmp slt i32 %2972, 0
  %2975 = icmp slt i32 %2973, 0
  %2976 = xor i1 %2974, %2975
  %2977 = zext i32 %2973 to i64
  store i64 %2977, i64* %RDX.i524, align 8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2979 = zext i1 %2974 to i8
  store i8 %2979, i8* %2978, align 1
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2981 = and i32 %2973, 254
  %2982 = call i32 @llvm.ctpop.i32(i32 %2981)
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  %2985 = xor i8 %2984, 1
  store i8 %2985, i8* %2980, align 1
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2986, align 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2988 = icmp eq i32 %2973, 0
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %2987, align 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2991 = lshr i32 %2973, 31
  %2992 = trunc i32 %2991 to i8
  store i8 %2992, i8* %2990, align 1
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2994 = zext i1 %2976 to i8
  store i8 %2994, i8* %2993, align 1
  store %struct.Memory* %loadMem_4275ab, %struct.Memory** %MEMORY
  %loadMem_4275ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %EAX.i521 = bitcast %union.anon* %3000 to i32*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 7
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %EDX.i522 = bitcast %union.anon* %3003 to i32*
  %3004 = load i32, i32* %EAX.i521
  %3005 = zext i32 %3004 to i64
  %3006 = load i32, i32* %EDX.i522
  %3007 = zext i32 %3006 to i64
  %3008 = load i64, i64* %PC.i520
  %3009 = add i64 %3008, 2
  store i64 %3009, i64* %PC.i520
  %3010 = sub i32 %3004, %3006
  %3011 = icmp ult i32 %3004, %3006
  %3012 = zext i1 %3011 to i8
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3012, i8* %3013, align 1
  %3014 = and i32 %3010, 255
  %3015 = call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3018, i8* %3019, align 1
  %3020 = xor i64 %3007, %3005
  %3021 = trunc i64 %3020 to i32
  %3022 = xor i32 %3021, %3010
  %3023 = lshr i32 %3022, 4
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3025, i8* %3026, align 1
  %3027 = icmp eq i32 %3010, 0
  %3028 = zext i1 %3027 to i8
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3028, i8* %3029, align 1
  %3030 = lshr i32 %3010, 31
  %3031 = trunc i32 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3031, i8* %3032, align 1
  %3033 = lshr i32 %3004, 31
  %3034 = lshr i32 %3006, 31
  %3035 = xor i32 %3034, %3033
  %3036 = xor i32 %3030, %3033
  %3037 = add i32 %3036, %3035
  %3038 = icmp eq i32 %3037, 2
  %3039 = zext i1 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3039, i8* %3040, align 1
  store %struct.Memory* %loadMem_4275ae, %struct.Memory** %MEMORY
  %loadMem_4275b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %PC.i519
  %3045 = add i64 %3044, 175
  %3046 = load i64, i64* %PC.i519
  %3047 = add i64 %3046, 6
  %3048 = load i64, i64* %PC.i519
  %3049 = add i64 %3048, 6
  store i64 %3049, i64* %PC.i519
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3051 = load i8, i8* %3050, align 1
  %3052 = icmp ne i8 %3051, 0
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3054 = load i8, i8* %3053, align 1
  %3055 = icmp ne i8 %3054, 0
  %3056 = xor i1 %3052, %3055
  %3057 = xor i1 %3056, true
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %BRANCH_TAKEN, align 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3060 = select i1 %3056, i64 %3047, i64 %3045
  store i64 %3060, i64* %3059, align 8
  store %struct.Memory* %loadMem_4275b0, %struct.Memory** %MEMORY
  %loadBr_4275b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4275b0 = icmp eq i8 %loadBr_4275b0, 1
  br i1 %cmpBr_4275b0, label %block_.L_42765f, label %block_4275b6

block_4275b6:                                     ; preds = %block_.L_427597
  %loadMem_4275b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 15
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %RBP.i518
  %3068 = sub i64 %3067, 1048
  %3069 = load i64, i64* %PC.i517
  %3070 = add i64 %3069, 10
  store i64 %3070, i64* %PC.i517
  %3071 = inttoptr i64 %3068 to i32*
  store i32 0, i32* %3071
  store %struct.Memory* %loadMem_4275b6, %struct.Memory** %MEMORY
  br label %block_.L_4275c0

block_.L_4275c0:                                  ; preds = %block_4275da, %block_4275b6
  %loadMem_4275c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %RBP.i516
  %3082 = sub i64 %3081, 1048
  %3083 = load i64, i64* %PC.i514
  %3084 = add i64 %3083, 6
  store i64 %3084, i64* %PC.i514
  %3085 = inttoptr i64 %3082 to i32*
  %3086 = load i32, i32* %3085
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_4275c0, %struct.Memory** %MEMORY
  %loadMem_4275c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 5
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %PC.i512
  %3095 = add i64 %3094, 8
  store i64 %3095, i64* %PC.i512
  %3096 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3096, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_4275c6, %struct.Memory** %MEMORY
  %loadMem_4275ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %EAX.i510 = bitcast %union.anon* %3102 to i32*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 5
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %3105 to i64*
  %3106 = load i32, i32* %EAX.i510
  %3107 = zext i32 %3106 to i64
  %3108 = load i64, i64* %RCX.i511
  %3109 = add i64 %3108, 72708
  %3110 = load i64, i64* %PC.i509
  %3111 = add i64 %3110, 6
  store i64 %3111, i64* %PC.i509
  %3112 = inttoptr i64 %3109 to i32*
  %3113 = load i32, i32* %3112
  %3114 = sub i32 %3106, %3113
  %3115 = icmp ult i32 %3106, %3113
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3116, i8* %3117, align 1
  %3118 = and i32 %3114, 255
  %3119 = call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3122, i8* %3123, align 1
  %3124 = xor i32 %3113, %3106
  %3125 = xor i32 %3124, %3114
  %3126 = lshr i32 %3125, 4
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3128, i8* %3129, align 1
  %3130 = icmp eq i32 %3114, 0
  %3131 = zext i1 %3130 to i8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3131, i8* %3132, align 1
  %3133 = lshr i32 %3114, 31
  %3134 = trunc i32 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3134, i8* %3135, align 1
  %3136 = lshr i32 %3106, 31
  %3137 = lshr i32 %3113, 31
  %3138 = xor i32 %3137, %3136
  %3139 = xor i32 %3133, %3136
  %3140 = add i32 %3139, %3138
  %3141 = icmp eq i32 %3140, 2
  %3142 = zext i1 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3142, i8* %3143, align 1
  store %struct.Memory* %loadMem_4275ce, %struct.Memory** %MEMORY
  %loadMem_4275d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %PC.i508
  %3148 = add i64 %3147, 114
  %3149 = load i64, i64* %PC.i508
  %3150 = add i64 %3149, 6
  %3151 = load i64, i64* %PC.i508
  %3152 = add i64 %3151, 6
  store i64 %3152, i64* %PC.i508
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3154 = load i8, i8* %3153, align 1
  %3155 = icmp ne i8 %3154, 0
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3157 = load i8, i8* %3156, align 1
  %3158 = icmp ne i8 %3157, 0
  %3159 = xor i1 %3155, %3158
  %3160 = xor i1 %3159, true
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %BRANCH_TAKEN, align 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3163 = select i1 %3159, i64 %3150, i64 %3148
  store i64 %3163, i64* %3162, align 8
  store %struct.Memory* %loadMem_4275d4, %struct.Memory** %MEMORY
  %loadBr_4275d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4275d4 = icmp eq i8 %loadBr_4275d4, 1
  br i1 %cmpBr_4275d4, label %block_.L_427646, label %block_4275da

block_4275da:                                     ; preds = %block_.L_4275c0
  %loadMem_4275da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 1
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 15
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RBP.i507
  %3174 = sub i64 %3173, 1024
  %3175 = load i64, i64* %PC.i505
  %3176 = add i64 %3175, 7
  store i64 %3176, i64* %PC.i505
  store i64 %3174, i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_4275da, %struct.Memory** %MEMORY
  %loadMem_4275e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i504
  %3187 = sub i64 %3186, 1040
  %3188 = load i64, i64* %PC.i502
  %3189 = add i64 %3188, 7
  store i64 %3189, i64* %PC.i502
  %3190 = inttoptr i64 %3187 to i64*
  %3191 = load i64, i64* %3190
  store i64 %3191, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_4275e1, %struct.Memory** %MEMORY
  %loadMem_4275e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 7
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 15
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RBP.i501
  %3202 = sub i64 %3201, 1064
  %3203 = load i64, i64* %PC.i499
  %3204 = add i64 %3203, 7
  store i64 %3204, i64* %PC.i499
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205
  %3207 = sext i32 %3206 to i64
  store i64 %3207, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_4275e8, %struct.Memory** %MEMORY
  %loadMem_4275ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 7
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RCX.i497
  %3218 = load i64, i64* %RDX.i498
  %3219 = mul i64 %3218, 8
  %3220 = add i64 %3219, %3217
  %3221 = load i64, i64* %PC.i496
  %3222 = add i64 %3221, 4
  store i64 %3222, i64* %PC.i496
  %3223 = inttoptr i64 %3220 to i64*
  %3224 = load i64, i64* %3223
  store i64 %3224, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_4275ef, %struct.Memory** %MEMORY
  %loadMem_4275f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 9
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RSI.i494 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 15
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %RBP.i495
  %3235 = sub i64 %3234, 1060
  %3236 = load i64, i64* %PC.i493
  %3237 = add i64 %3236, 6
  store i64 %3237, i64* %PC.i493
  %3238 = inttoptr i64 %3235 to i32*
  %3239 = load i32, i32* %3238
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RSI.i494, align 8
  store %struct.Memory* %loadMem_4275f3, %struct.Memory** %MEMORY
  %loadMem_4275f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 9
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RSI.i491 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 15
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RSI.i491
  %3251 = load i64, i64* %RBP.i492
  %3252 = sub i64 %3251, 1052
  %3253 = load i64, i64* %PC.i490
  %3254 = add i64 %3253, 6
  store i64 %3254, i64* %PC.i490
  %3255 = trunc i64 %3250 to i32
  %3256 = inttoptr i64 %3252 to i32*
  %3257 = load i32, i32* %3256
  %3258 = add i32 %3257, %3255
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RSI.i491, align 8
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
  store %struct.Memory* %loadMem_4275f9, %struct.Memory** %MEMORY
  %loadMem_4275ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 9
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %ESI.i488 = bitcast %union.anon* %3296 to i32*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 7
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %3299 to i64*
  %3300 = load i32, i32* %ESI.i488
  %3301 = zext i32 %3300 to i64
  %3302 = load i64, i64* %PC.i487
  %3303 = add i64 %3302, 3
  store i64 %3303, i64* %PC.i487
  %3304 = shl i64 %3301, 32
  %3305 = ashr exact i64 %3304, 32
  store i64 %3305, i64* %RDX.i489, align 8
  store %struct.Memory* %loadMem_4275ff, %struct.Memory** %MEMORY
  %loadMem_427602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 33
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 5
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 7
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %3314 to i64*
  %3315 = load i64, i64* %RCX.i485
  %3316 = load i64, i64* %RDX.i486
  %3317 = mul i64 %3316, 8
  %3318 = add i64 %3317, %3315
  %3319 = load i64, i64* %PC.i484
  %3320 = add i64 %3319, 4
  store i64 %3320, i64* %PC.i484
  %3321 = inttoptr i64 %3318 to i64*
  %3322 = load i64, i64* %3321
  store i64 %3322, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_427602, %struct.Memory** %MEMORY
  %loadMem_427606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 9
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RSI.i482 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i483
  %3333 = sub i64 %3332, 1056
  %3334 = load i64, i64* %PC.i481
  %3335 = add i64 %3334, 6
  store i64 %3335, i64* %PC.i481
  %3336 = inttoptr i64 %3333 to i32*
  %3337 = load i32, i32* %3336
  %3338 = zext i32 %3337 to i64
  store i64 %3338, i64* %RSI.i482, align 8
  store %struct.Memory* %loadMem_427606, %struct.Memory** %MEMORY
  %loadMem_42760c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 9
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RSI.i479 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 15
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3347 to i64*
  %3348 = load i64, i64* %RSI.i479
  %3349 = load i64, i64* %RBP.i480
  %3350 = sub i64 %3349, 1048
  %3351 = load i64, i64* %PC.i478
  %3352 = add i64 %3351, 6
  store i64 %3352, i64* %PC.i478
  %3353 = trunc i64 %3348 to i32
  %3354 = inttoptr i64 %3350 to i32*
  %3355 = load i32, i32* %3354
  %3356 = add i32 %3355, %3353
  %3357 = zext i32 %3356 to i64
  store i64 %3357, i64* %RSI.i479, align 8
  %3358 = icmp ult i32 %3356, %3353
  %3359 = icmp ult i32 %3356, %3355
  %3360 = or i1 %3358, %3359
  %3361 = zext i1 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3361, i8* %3362, align 1
  %3363 = and i32 %3356, 255
  %3364 = call i32 @llvm.ctpop.i32(i32 %3363)
  %3365 = trunc i32 %3364 to i8
  %3366 = and i8 %3365, 1
  %3367 = xor i8 %3366, 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3367, i8* %3368, align 1
  %3369 = xor i32 %3355, %3353
  %3370 = xor i32 %3369, %3356
  %3371 = lshr i32 %3370, 4
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3373, i8* %3374, align 1
  %3375 = icmp eq i32 %3356, 0
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3356, 31
  %3379 = trunc i32 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3379, i8* %3380, align 1
  %3381 = lshr i32 %3353, 31
  %3382 = lshr i32 %3355, 31
  %3383 = xor i32 %3378, %3381
  %3384 = xor i32 %3378, %3382
  %3385 = add i32 %3383, %3384
  %3386 = icmp eq i32 %3385, 2
  %3387 = zext i1 %3386 to i8
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3387, i8* %3388, align 1
  store %struct.Memory* %loadMem_42760c, %struct.Memory** %MEMORY
  %loadMem_427612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 9
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3394 to i32*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 7
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %3397 to i64*
  %3398 = load i32, i32* %ESI.i
  %3399 = zext i32 %3398 to i64
  %3400 = load i64, i64* %PC.i476
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %PC.i476
  %3402 = shl i64 %3399, 32
  %3403 = ashr exact i64 %3402, 32
  store i64 %3403, i64* %RDX.i477, align 8
  store %struct.Memory* %loadMem_427612, %struct.Memory** %MEMORY
  %loadMem_427615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 11
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %DI.i473 = bitcast %union.anon* %3409 to i16*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 5
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 7
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RDX.i475 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RCX.i474
  %3417 = load i64, i64* %RDX.i475
  %3418 = mul i64 %3417, 2
  %3419 = add i64 %3418, %3416
  %3420 = load i64, i64* %PC.i472
  %3421 = add i64 %3420, 4
  store i64 %3421, i64* %PC.i472
  %3422 = inttoptr i64 %3419 to i16*
  %3423 = load i16, i16* %3422
  store i16 %3423, i16* %DI.i473, align 2
  store %struct.Memory* %loadMem_427615, %struct.Memory** %MEMORY
  %loadMem_427619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 5
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 15
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RBP.i471
  %3434 = sub i64 %3433, 1048
  %3435 = load i64, i64* %PC.i469
  %3436 = add i64 %3435, 7
  store i64 %3436, i64* %PC.i469
  %3437 = inttoptr i64 %3434 to i32*
  %3438 = load i32, i32* %3437
  %3439 = sext i32 %3438 to i64
  store i64 %3439, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_427619, %struct.Memory** %MEMORY
  %loadMem_427620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 5
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RCX.i468
  %3447 = load i64, i64* %PC.i467
  %3448 = add i64 %3447, 4
  store i64 %3448, i64* %PC.i467
  %3449 = shl i64 %3446, 5
  %3450 = icmp slt i64 %3449, 0
  %3451 = shl i64 %3449, 1
  store i64 %3451, i64* %RCX.i468, align 8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3453 = zext i1 %3450 to i8
  store i8 %3453, i8* %3452, align 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3455 = trunc i64 %3451 to i32
  %3456 = and i32 %3455, 254
  %3457 = call i32 @llvm.ctpop.i32(i32 %3456)
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  store i8 %3460, i8* %3454, align 1
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3461, align 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3463 = icmp eq i64 %3451, 0
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %3462, align 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3466 = lshr i64 %3451, 63
  %3467 = trunc i64 %3466 to i8
  store i8 %3467, i8* %3465, align 1
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3468, align 1
  store %struct.Memory* %loadMem_427620, %struct.Memory** %MEMORY
  %loadMem_427624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 1
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 5
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %RAX.i465
  %3479 = load i64, i64* %RCX.i466
  %3480 = load i64, i64* %PC.i464
  %3481 = add i64 %3480, 3
  store i64 %3481, i64* %PC.i464
  %3482 = add i64 %3479, %3478
  store i64 %3482, i64* %RAX.i465, align 8
  %3483 = icmp ult i64 %3482, %3478
  %3484 = icmp ult i64 %3482, %3479
  %3485 = or i1 %3483, %3484
  %3486 = zext i1 %3485 to i8
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3486, i8* %3487, align 1
  %3488 = trunc i64 %3482 to i32
  %3489 = and i32 %3488, 255
  %3490 = call i32 @llvm.ctpop.i32(i32 %3489)
  %3491 = trunc i32 %3490 to i8
  %3492 = and i8 %3491, 1
  %3493 = xor i8 %3492, 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3493, i8* %3494, align 1
  %3495 = xor i64 %3479, %3478
  %3496 = xor i64 %3495, %3482
  %3497 = lshr i64 %3496, 4
  %3498 = trunc i64 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3499, i8* %3500, align 1
  %3501 = icmp eq i64 %3482, 0
  %3502 = zext i1 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3502, i8* %3503, align 1
  %3504 = lshr i64 %3482, 63
  %3505 = trunc i64 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3505, i8* %3506, align 1
  %3507 = lshr i64 %3478, 63
  %3508 = lshr i64 %3479, 63
  %3509 = xor i64 %3504, %3507
  %3510 = xor i64 %3504, %3508
  %3511 = add i64 %3509, %3510
  %3512 = icmp eq i64 %3511, 2
  %3513 = zext i1 %3512 to i8
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3513, i8* %3514, align 1
  store %struct.Memory* %loadMem_427624, %struct.Memory** %MEMORY
  %loadMem_427627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 33
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 5
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 15
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %RBP.i463
  %3525 = sub i64 %3524, 1052
  %3526 = load i64, i64* %PC.i461
  %3527 = add i64 %3526, 7
  store i64 %3527, i64* %PC.i461
  %3528 = inttoptr i64 %3525 to i32*
  %3529 = load i32, i32* %3528
  %3530 = sext i32 %3529 to i64
  store i64 %3530, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_427627, %struct.Memory** %MEMORY
  %loadMem_42762e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 11
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %DI.i458 = bitcast %union.anon* %3536 to i16*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %3542 to i64*
  %3543 = load i64, i64* %RAX.i459
  %3544 = load i64, i64* %RCX.i460
  %3545 = mul i64 %3544, 2
  %3546 = add i64 %3545, %3543
  %3547 = load i16, i16* %DI.i458
  %3548 = zext i16 %3547 to i64
  %3549 = load i64, i64* %PC.i457
  %3550 = add i64 %3549, 4
  store i64 %3550, i64* %PC.i457
  %3551 = inttoptr i64 %3546 to i16*
  store i16 %3547, i16* %3551
  store %struct.Memory* %loadMem_42762e, %struct.Memory** %MEMORY
  %loadMem_427632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 1
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 15
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RBP.i456
  %3562 = sub i64 %3561, 1048
  %3563 = load i64, i64* %PC.i454
  %3564 = add i64 %3563, 6
  store i64 %3564, i64* %PC.i454
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_427632, %struct.Memory** %MEMORY
  %loadMem_427638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 1
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RAX.i453
  %3575 = load i64, i64* %PC.i452
  %3576 = add i64 %3575, 3
  store i64 %3576, i64* %PC.i452
  %3577 = trunc i64 %3574 to i32
  %3578 = add i32 1, %3577
  %3579 = zext i32 %3578 to i64
  store i64 %3579, i64* %RAX.i453, align 8
  %3580 = icmp ult i32 %3578, %3577
  %3581 = icmp ult i32 %3578, 1
  %3582 = or i1 %3580, %3581
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3583, i8* %3584, align 1
  %3585 = and i32 %3578, 255
  %3586 = call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3589, i8* %3590, align 1
  %3591 = xor i64 1, %3574
  %3592 = trunc i64 %3591 to i32
  %3593 = xor i32 %3592, %3578
  %3594 = lshr i32 %3593, 4
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3596, i8* %3597, align 1
  %3598 = icmp eq i32 %3578, 0
  %3599 = zext i1 %3598 to i8
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3599, i8* %3600, align 1
  %3601 = lshr i32 %3578, 31
  %3602 = trunc i32 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3602, i8* %3603, align 1
  %3604 = lshr i32 %3577, 31
  %3605 = xor i32 %3601, %3604
  %3606 = add i32 %3605, %3601
  %3607 = icmp eq i32 %3606, 2
  %3608 = zext i1 %3607 to i8
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3608, i8* %3609, align 1
  store %struct.Memory* %loadMem_427638, %struct.Memory** %MEMORY
  %loadMem_42763b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 33
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 1
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %3615 to i32*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 15
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3618 to i64*
  %3619 = load i64, i64* %RBP.i451
  %3620 = sub i64 %3619, 1048
  %3621 = load i32, i32* %EAX.i450
  %3622 = zext i32 %3621 to i64
  %3623 = load i64, i64* %PC.i449
  %3624 = add i64 %3623, 6
  store i64 %3624, i64* %PC.i449
  %3625 = inttoptr i64 %3620 to i32*
  store i32 %3621, i32* %3625
  store %struct.Memory* %loadMem_42763b, %struct.Memory** %MEMORY
  %loadMem_427641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %PC.i448
  %3630 = add i64 %3629, -129
  %3631 = load i64, i64* %PC.i448
  %3632 = add i64 %3631, 5
  store i64 %3632, i64* %PC.i448
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3630, i64* %3633, align 8
  store %struct.Memory* %loadMem_427641, %struct.Memory** %MEMORY
  br label %block_.L_4275c0

block_.L_427646:                                  ; preds = %block_.L_4275c0
  %loadMem_427646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3636 to i64*
  %3637 = load i64, i64* %PC.i447
  %3638 = add i64 %3637, 5
  %3639 = load i64, i64* %PC.i447
  %3640 = add i64 %3639, 5
  store i64 %3640, i64* %PC.i447
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3638, i64* %3641, align 8
  store %struct.Memory* %loadMem_427646, %struct.Memory** %MEMORY
  br label %block_.L_42764b

block_.L_42764b:                                  ; preds = %block_.L_427646
  %loadMem_42764b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 33
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 1
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 15
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %3650 to i64*
  %3651 = load i64, i64* %RBP.i446
  %3652 = sub i64 %3651, 1052
  %3653 = load i64, i64* %PC.i444
  %3654 = add i64 %3653, 6
  store i64 %3654, i64* %PC.i444
  %3655 = inttoptr i64 %3652 to i32*
  %3656 = load i32, i32* %3655
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_42764b, %struct.Memory** %MEMORY
  %loadMem_427651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RAX.i443
  %3665 = load i64, i64* %PC.i442
  %3666 = add i64 %3665, 3
  store i64 %3666, i64* %PC.i442
  %3667 = trunc i64 %3664 to i32
  %3668 = add i32 1, %3667
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RAX.i443, align 8
  %3670 = icmp ult i32 %3668, %3667
  %3671 = icmp ult i32 %3668, 1
  %3672 = or i1 %3670, %3671
  %3673 = zext i1 %3672 to i8
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3673, i8* %3674, align 1
  %3675 = and i32 %3668, 255
  %3676 = call i32 @llvm.ctpop.i32(i32 %3675)
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3679, i8* %3680, align 1
  %3681 = xor i64 1, %3664
  %3682 = trunc i64 %3681 to i32
  %3683 = xor i32 %3682, %3668
  %3684 = lshr i32 %3683, 4
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3686, i8* %3687, align 1
  %3688 = icmp eq i32 %3668, 0
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i32 %3668, 31
  %3692 = trunc i32 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i32 %3667, 31
  %3695 = xor i32 %3691, %3694
  %3696 = add i32 %3695, %3691
  %3697 = icmp eq i32 %3696, 2
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3698, i8* %3699, align 1
  store %struct.Memory* %loadMem_427651, %struct.Memory** %MEMORY
  %loadMem_427654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 1
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %3705 to i32*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i441
  %3710 = sub i64 %3709, 1052
  %3711 = load i32, i32* %EAX.i440
  %3712 = zext i32 %3711 to i64
  %3713 = load i64, i64* %PC.i439
  %3714 = add i64 %3713, 6
  store i64 %3714, i64* %PC.i439
  %3715 = inttoptr i64 %3710 to i32*
  store i32 %3711, i32* %3715
  store %struct.Memory* %loadMem_427654, %struct.Memory** %MEMORY
  %loadMem_42765a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3718 to i64*
  %3719 = load i64, i64* %PC.i438
  %3720 = add i64 %3719, -195
  %3721 = load i64, i64* %PC.i438
  %3722 = add i64 %3721, 5
  store i64 %3722, i64* %PC.i438
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3720, i64* %3723, align 8
  store %struct.Memory* %loadMem_42765a, %struct.Memory** %MEMORY
  br label %block_.L_427597

block_.L_42765f:                                  ; preds = %block_.L_427597
  %loadMem_42765f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 15
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RBP.i437
  %3731 = sub i64 %3730, 1052
  %3732 = load i64, i64* %PC.i436
  %3733 = add i64 %3732, 10
  store i64 %3733, i64* %PC.i436
  %3734 = inttoptr i64 %3731 to i32*
  store i32 0, i32* %3734
  store %struct.Memory* %loadMem_42765f, %struct.Memory** %MEMORY
  br label %block_.L_427669

block_.L_427669:                                  ; preds = %block_.L_427790, %block_.L_42765f
  %loadMem_427669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 1
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 15
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RBP.i435
  %3745 = sub i64 %3744, 1052
  %3746 = load i64, i64* %PC.i433
  %3747 = add i64 %3746, 6
  store i64 %3747, i64* %PC.i433
  %3748 = inttoptr i64 %3745 to i32*
  %3749 = load i32, i32* %3748
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_427669, %struct.Memory** %MEMORY
  %loadMem_42766f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 5
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %PC.i431
  %3758 = add i64 %3757, 8
  store i64 %3758, i64* %PC.i431
  %3759 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3759, i64* %RCX.i432, align 8
  store %struct.Memory* %loadMem_42766f, %struct.Memory** %MEMORY
  %loadMem_427677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 1
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %3765 to i32*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 5
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %3768 to i64*
  %3769 = load i32, i32* %EAX.i429
  %3770 = zext i32 %3769 to i64
  %3771 = load i64, i64* %RCX.i430
  %3772 = add i64 %3771, 72712
  %3773 = load i64, i64* %PC.i428
  %3774 = add i64 %3773, 6
  store i64 %3774, i64* %PC.i428
  %3775 = inttoptr i64 %3772 to i32*
  %3776 = load i32, i32* %3775
  %3777 = sub i32 %3769, %3776
  %3778 = icmp ult i32 %3769, %3776
  %3779 = zext i1 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3779, i8* %3780, align 1
  %3781 = and i32 %3777, 255
  %3782 = call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3785, i8* %3786, align 1
  %3787 = xor i32 %3776, %3769
  %3788 = xor i32 %3787, %3777
  %3789 = lshr i32 %3788, 4
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3791, i8* %3792, align 1
  %3793 = icmp eq i32 %3777, 0
  %3794 = zext i1 %3793 to i8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3794, i8* %3795, align 1
  %3796 = lshr i32 %3777, 31
  %3797 = trunc i32 %3796 to i8
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3797, i8* %3798, align 1
  %3799 = lshr i32 %3769, 31
  %3800 = lshr i32 %3776, 31
  %3801 = xor i32 %3800, %3799
  %3802 = xor i32 %3796, %3799
  %3803 = add i32 %3802, %3801
  %3804 = icmp eq i32 %3803, 2
  %3805 = zext i1 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3805, i8* %3806, align 1
  store %struct.Memory* %loadMem_427677, %struct.Memory** %MEMORY
  %loadMem_42767d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 33
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3809 to i64*
  %3810 = load i64, i64* %PC.i427
  %3811 = add i64 %3810, 295
  %3812 = load i64, i64* %PC.i427
  %3813 = add i64 %3812, 6
  %3814 = load i64, i64* %PC.i427
  %3815 = add i64 %3814, 6
  store i64 %3815, i64* %PC.i427
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3817 = load i8, i8* %3816, align 1
  %3818 = icmp ne i8 %3817, 0
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3820 = load i8, i8* %3819, align 1
  %3821 = icmp ne i8 %3820, 0
  %3822 = xor i1 %3818, %3821
  %3823 = xor i1 %3822, true
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %BRANCH_TAKEN, align 1
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3826 = select i1 %3822, i64 %3813, i64 %3811
  store i64 %3826, i64* %3825, align 8
  store %struct.Memory* %loadMem_42767d, %struct.Memory** %MEMORY
  %loadBr_42767d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42767d = icmp eq i8 %loadBr_42767d, 1
  br i1 %cmpBr_42767d, label %block_.L_4277a4, label %block_427683

block_427683:                                     ; preds = %block_.L_427669
  %loadMem_427683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 15
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %RBP.i426
  %3834 = sub i64 %3833, 1048
  %3835 = load i64, i64* %PC.i425
  %3836 = add i64 %3835, 10
  store i64 %3836, i64* %PC.i425
  %3837 = inttoptr i64 %3834 to i32*
  store i32 0, i32* %3837
  store %struct.Memory* %loadMem_427683, %struct.Memory** %MEMORY
  br label %block_.L_42768d

block_.L_42768d:                                  ; preds = %block_4276a7, %block_427683
  %loadMem_42768d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 1
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 15
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RBP.i424
  %3848 = sub i64 %3847, 1048
  %3849 = load i64, i64* %PC.i422
  %3850 = add i64 %3849, 6
  store i64 %3850, i64* %PC.i422
  %3851 = inttoptr i64 %3848 to i32*
  %3852 = load i32, i32* %3851
  %3853 = zext i32 %3852 to i64
  store i64 %3853, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_42768d, %struct.Memory** %MEMORY
  %loadMem_427693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 5
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %PC.i420
  %3861 = add i64 %3860, 8
  store i64 %3861, i64* %PC.i420
  %3862 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3862, i64* %RCX.i421, align 8
  store %struct.Memory* %loadMem_427693, %struct.Memory** %MEMORY
  %loadMem_42769b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 1
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %3868 to i32*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 5
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %3871 to i64*
  %3872 = load i32, i32* %EAX.i418
  %3873 = zext i32 %3872 to i64
  %3874 = load i64, i64* %RCX.i419
  %3875 = add i64 %3874, 72708
  %3876 = load i64, i64* %PC.i417
  %3877 = add i64 %3876, 6
  store i64 %3877, i64* %PC.i417
  %3878 = inttoptr i64 %3875 to i32*
  %3879 = load i32, i32* %3878
  %3880 = sub i32 %3872, %3879
  %3881 = icmp ult i32 %3872, %3879
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3882, i8* %3883, align 1
  %3884 = and i32 %3880, 255
  %3885 = call i32 @llvm.ctpop.i32(i32 %3884)
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  %3888 = xor i8 %3887, 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3888, i8* %3889, align 1
  %3890 = xor i32 %3879, %3872
  %3891 = xor i32 %3890, %3880
  %3892 = lshr i32 %3891, 4
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3894, i8* %3895, align 1
  %3896 = icmp eq i32 %3880, 0
  %3897 = zext i1 %3896 to i8
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3897, i8* %3898, align 1
  %3899 = lshr i32 %3880, 31
  %3900 = trunc i32 %3899 to i8
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3900, i8* %3901, align 1
  %3902 = lshr i32 %3872, 31
  %3903 = lshr i32 %3879, 31
  %3904 = xor i32 %3903, %3902
  %3905 = xor i32 %3899, %3902
  %3906 = add i32 %3905, %3904
  %3907 = icmp eq i32 %3906, 2
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3908, i8* %3909, align 1
  store %struct.Memory* %loadMem_42769b, %struct.Memory** %MEMORY
  %loadMem_4276a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %PC.i416
  %3914 = add i64 %3913, 234
  %3915 = load i64, i64* %PC.i416
  %3916 = add i64 %3915, 6
  %3917 = load i64, i64* %PC.i416
  %3918 = add i64 %3917, 6
  store i64 %3918, i64* %PC.i416
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3920 = load i8, i8* %3919, align 1
  %3921 = icmp ne i8 %3920, 0
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3923 = load i8, i8* %3922, align 1
  %3924 = icmp ne i8 %3923, 0
  %3925 = xor i1 %3921, %3924
  %3926 = xor i1 %3925, true
  %3927 = zext i1 %3926 to i8
  store i8 %3927, i8* %BRANCH_TAKEN, align 1
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3929 = select i1 %3925, i64 %3916, i64 %3914
  store i64 %3929, i64* %3928, align 8
  store %struct.Memory* %loadMem_4276a1, %struct.Memory** %MEMORY
  %loadBr_4276a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4276a1 = icmp eq i8 %loadBr_4276a1, 1
  br i1 %cmpBr_4276a1, label %block_.L_42778b, label %block_4276a7

block_4276a7:                                     ; preds = %block_.L_42768d
  %loadMem_4276a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 33
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 1
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 15
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3938 to i64*
  %3939 = load i64, i64* %RBP.i415
  %3940 = sub i64 %3939, 1024
  %3941 = load i64, i64* %PC.i413
  %3942 = add i64 %3941, 7
  store i64 %3942, i64* %PC.i413
  store i64 %3940, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_4276a7, %struct.Memory** %MEMORY
  %loadMem_4276ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 33
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 5
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 15
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3951 to i64*
  %3952 = load i64, i64* %RBP.i412
  %3953 = sub i64 %3952, 1048
  %3954 = load i64, i64* %PC.i410
  %3955 = add i64 %3954, 7
  store i64 %3955, i64* %PC.i410
  %3956 = inttoptr i64 %3953 to i32*
  %3957 = load i32, i32* %3956
  %3958 = sext i32 %3957 to i64
  store i64 %3958, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_4276ae, %struct.Memory** %MEMORY
  %loadMem_4276b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 5
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RCX.i409
  %3966 = load i64, i64* %PC.i408
  %3967 = add i64 %3966, 4
  store i64 %3967, i64* %PC.i408
  %3968 = shl i64 %3965, 5
  %3969 = icmp slt i64 %3968, 0
  %3970 = shl i64 %3968, 1
  store i64 %3970, i64* %RCX.i409, align 8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3972 = zext i1 %3969 to i8
  store i8 %3972, i8* %3971, align 1
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3974 = trunc i64 %3970 to i32
  %3975 = and i32 %3974, 254
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  store i8 %3979, i8* %3973, align 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3980, align 1
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3982 = icmp eq i64 %3970, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %3981, align 1
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3985 = lshr i64 %3970, 63
  %3986 = trunc i64 %3985 to i8
  store i8 %3986, i8* %3984, align 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3987, align 1
  store %struct.Memory* %loadMem_4276b5, %struct.Memory** %MEMORY
  %loadMem_4276b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 33
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 1
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 7
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %RAX.i406
  %3998 = load i64, i64* %PC.i405
  %3999 = add i64 %3998, 3
  store i64 %3999, i64* %PC.i405
  store i64 %3997, i64* %RDX.i407, align 8
  store %struct.Memory* %loadMem_4276b9, %struct.Memory** %MEMORY
  %loadMem_4276bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 33
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 5
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4005 to i64*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 7
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %4008 to i64*
  %4009 = load i64, i64* %RDX.i404
  %4010 = load i64, i64* %RCX.i403
  %4011 = load i64, i64* %PC.i402
  %4012 = add i64 %4011, 3
  store i64 %4012, i64* %PC.i402
  %4013 = add i64 %4010, %4009
  store i64 %4013, i64* %RDX.i404, align 8
  %4014 = icmp ult i64 %4013, %4009
  %4015 = icmp ult i64 %4013, %4010
  %4016 = or i1 %4014, %4015
  %4017 = zext i1 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4017, i8* %4018, align 1
  %4019 = trunc i64 %4013 to i32
  %4020 = and i32 %4019, 255
  %4021 = call i32 @llvm.ctpop.i32(i32 %4020)
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  %4024 = xor i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4024, i8* %4025, align 1
  %4026 = xor i64 %4010, %4009
  %4027 = xor i64 %4026, %4013
  %4028 = lshr i64 %4027, 4
  %4029 = trunc i64 %4028 to i8
  %4030 = and i8 %4029, 1
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4030, i8* %4031, align 1
  %4032 = icmp eq i64 %4013, 0
  %4033 = zext i1 %4032 to i8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4033, i8* %4034, align 1
  %4035 = lshr i64 %4013, 63
  %4036 = trunc i64 %4035 to i8
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4036, i8* %4037, align 1
  %4038 = lshr i64 %4009, 63
  %4039 = lshr i64 %4010, 63
  %4040 = xor i64 %4035, %4038
  %4041 = xor i64 %4035, %4039
  %4042 = add i64 %4040, %4041
  %4043 = icmp eq i64 %4042, 2
  %4044 = zext i1 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4044, i8* %4045, align 1
  store %struct.Memory* %loadMem_4276bc, %struct.Memory** %MEMORY
  %loadMem_4276bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 5
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 15
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %4054 to i64*
  %4055 = load i64, i64* %RBP.i401
  %4056 = sub i64 %4055, 1052
  %4057 = load i64, i64* %PC.i399
  %4058 = add i64 %4057, 7
  store i64 %4058, i64* %PC.i399
  %4059 = inttoptr i64 %4056 to i32*
  %4060 = load i32, i32* %4059
  %4061 = sext i32 %4060 to i64
  store i64 %4061, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_4276bf, %struct.Memory** %MEMORY
  %loadMem_4276c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 33
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4064 to i64*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 9
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %SI.i396 = bitcast %union.anon* %4067 to i16*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 5
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 7
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RDX.i398
  %4075 = load i64, i64* %RCX.i397
  %4076 = mul i64 %4075, 2
  %4077 = add i64 %4076, %4074
  %4078 = load i64, i64* %PC.i395
  %4079 = add i64 %4078, 4
  store i64 %4079, i64* %PC.i395
  %4080 = inttoptr i64 %4077 to i16*
  %4081 = load i16, i16* %4080
  store i16 %4081, i16* %SI.i396, align 2
  store %struct.Memory* %loadMem_4276c6, %struct.Memory** %MEMORY
  %loadMem_4276ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 5
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %4087 to i64*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 15
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %4090 to i64*
  %4091 = load i64, i64* %RBP.i394
  %4092 = sub i64 %4091, 1040
  %4093 = load i64, i64* %PC.i392
  %4094 = add i64 %4093, 7
  store i64 %4094, i64* %PC.i392
  %4095 = inttoptr i64 %4092 to i64*
  %4096 = load i64, i64* %4095
  store i64 %4096, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_4276ca, %struct.Memory** %MEMORY
  %loadMem_4276d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 7
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 15
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %RBP.i391
  %4107 = sub i64 %4106, 1064
  %4108 = load i64, i64* %PC.i389
  %4109 = add i64 %4108, 7
  store i64 %4109, i64* %PC.i389
  %4110 = inttoptr i64 %4107 to i32*
  %4111 = load i32, i32* %4110
  %4112 = sext i32 %4111 to i64
  store i64 %4112, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_4276d1, %struct.Memory** %MEMORY
  %loadMem_4276d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 5
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 7
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RDX.i388 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RCX.i387
  %4123 = load i64, i64* %RDX.i388
  %4124 = mul i64 %4123, 8
  %4125 = add i64 %4124, %4122
  %4126 = load i64, i64* %PC.i386
  %4127 = add i64 %4126, 4
  store i64 %4127, i64* %PC.i386
  %4128 = inttoptr i64 %4125 to i64*
  %4129 = load i64, i64* %4128
  store i64 %4129, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_4276d8, %struct.Memory** %MEMORY
  %loadMem_4276dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 11
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %RDI.i384 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 15
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %RBP.i385
  %4140 = sub i64 %4139, 1060
  %4141 = load i64, i64* %PC.i383
  %4142 = add i64 %4141, 6
  store i64 %4142, i64* %PC.i383
  %4143 = inttoptr i64 %4140 to i32*
  %4144 = load i32, i32* %4143
  %4145 = zext i32 %4144 to i64
  store i64 %4145, i64* %RDI.i384, align 8
  store %struct.Memory* %loadMem_4276dc, %struct.Memory** %MEMORY
  %loadMem_4276e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 33
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 17
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %R8D.i381 = bitcast %union.anon* %4151 to i32*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 15
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %4154 to i64*
  %4155 = bitcast i32* %R8D.i381 to i64*
  %4156 = load i64, i64* %RBP.i382
  %4157 = sub i64 %4156, 1052
  %4158 = load i64, i64* %PC.i380
  %4159 = add i64 %4158, 7
  store i64 %4159, i64* %PC.i380
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %4155, align 8
  store %struct.Memory* %loadMem_4276e2, %struct.Memory** %MEMORY
  %loadMem_4276e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 17
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %R8D.i379 = bitcast %union.anon* %4168 to i32*
  %4169 = bitcast i32* %R8D.i379 to i64*
  %4170 = load i32, i32* %R8D.i379
  %4171 = zext i32 %4170 to i64
  %4172 = load i64, i64* %PC.i378
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i378
  %4174 = shl i32 %4170, 1
  %4175 = icmp slt i32 %4170, 0
  %4176 = icmp slt i32 %4174, 0
  %4177 = xor i1 %4175, %4176
  %4178 = zext i32 %4174 to i64
  store i64 %4178, i64* %4169, align 8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4180 = zext i1 %4175 to i8
  store i8 %4180, i8* %4179, align 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4182 = and i32 %4174, 254
  %4183 = call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  store i8 %4186, i8* %4181, align 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4187, align 1
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4189 = icmp eq i32 %4174, 0
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %4188, align 1
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4192 = lshr i32 %4174, 31
  %4193 = trunc i32 %4192 to i8
  store i8 %4193, i8* %4191, align 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4195 = zext i1 %4177 to i8
  store i8 %4195, i8* %4194, align 1
  store %struct.Memory* %loadMem_4276e9, %struct.Memory** %MEMORY
  %loadMem_4276ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 17
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %R8D.i376 = bitcast %union.anon* %4201 to i32*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 11
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RDI.i377 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RDI.i377
  %4206 = load i32, i32* %R8D.i376
  %4207 = zext i32 %4206 to i64
  %4208 = load i64, i64* %PC.i375
  %4209 = add i64 %4208, 3
  store i64 %4209, i64* %PC.i375
  %4210 = trunc i64 %4205 to i32
  %4211 = add i32 %4206, %4210
  %4212 = zext i32 %4211 to i64
  store i64 %4212, i64* %RDI.i377, align 8
  %4213 = icmp ult i32 %4211, %4210
  %4214 = icmp ult i32 %4211, %4206
  %4215 = or i1 %4213, %4214
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4216, i8* %4217, align 1
  %4218 = and i32 %4211, 255
  %4219 = call i32 @llvm.ctpop.i32(i32 %4218)
  %4220 = trunc i32 %4219 to i8
  %4221 = and i8 %4220, 1
  %4222 = xor i8 %4221, 1
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4222, i8* %4223, align 1
  %4224 = xor i64 %4207, %4205
  %4225 = trunc i64 %4224 to i32
  %4226 = xor i32 %4225, %4211
  %4227 = lshr i32 %4226, 4
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4229, i8* %4230, align 1
  %4231 = icmp eq i32 %4211, 0
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4232, i8* %4233, align 1
  %4234 = lshr i32 %4211, 31
  %4235 = trunc i32 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i32 %4210, 31
  %4238 = lshr i32 %4206, 31
  %4239 = xor i32 %4234, %4237
  %4240 = xor i32 %4234, %4238
  %4241 = add i32 %4239, %4240
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4243, i8* %4244, align 1
  store %struct.Memory* %loadMem_4276ed, %struct.Memory** %MEMORY
  %loadMem_4276f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 11
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %EDI.i373 = bitcast %union.anon* %4250 to i32*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 7
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %4253 to i64*
  %4254 = load i32, i32* %EDI.i373
  %4255 = zext i32 %4254 to i64
  %4256 = load i64, i64* %PC.i372
  %4257 = add i64 %4256, 3
  store i64 %4257, i64* %PC.i372
  %4258 = shl i64 %4255, 32
  %4259 = ashr exact i64 %4258, 32
  store i64 %4259, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_4276f0, %struct.Memory** %MEMORY
  %loadMem_4276f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 5
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 7
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %RCX.i370
  %4270 = load i64, i64* %RDX.i371
  %4271 = mul i64 %4270, 8
  %4272 = add i64 %4271, %4269
  %4273 = load i64, i64* %PC.i369
  %4274 = add i64 %4273, 4
  store i64 %4274, i64* %PC.i369
  %4275 = inttoptr i64 %4272 to i64*
  %4276 = load i64, i64* %4275
  store i64 %4276, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_4276f3, %struct.Memory** %MEMORY
  %loadMem_4276f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 11
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RDI.i367 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 15
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %4285 to i64*
  %4286 = load i64, i64* %RBP.i368
  %4287 = sub i64 %4286, 1056
  %4288 = load i64, i64* %PC.i366
  %4289 = add i64 %4288, 6
  store i64 %4289, i64* %PC.i366
  %4290 = inttoptr i64 %4287 to i32*
  %4291 = load i32, i32* %4290
  %4292 = zext i32 %4291 to i64
  store i64 %4292, i64* %RDI.i367, align 8
  store %struct.Memory* %loadMem_4276f7, %struct.Memory** %MEMORY
  %loadMem_4276fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 11
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RDI.i364 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 15
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RDI.i364
  %4303 = load i64, i64* %RBP.i365
  %4304 = sub i64 %4303, 1048
  %4305 = load i64, i64* %PC.i363
  %4306 = add i64 %4305, 6
  store i64 %4306, i64* %PC.i363
  %4307 = trunc i64 %4302 to i32
  %4308 = inttoptr i64 %4304 to i32*
  %4309 = load i32, i32* %4308
  %4310 = add i32 %4309, %4307
  %4311 = zext i32 %4310 to i64
  store i64 %4311, i64* %RDI.i364, align 8
  %4312 = icmp ult i32 %4310, %4307
  %4313 = icmp ult i32 %4310, %4309
  %4314 = or i1 %4312, %4313
  %4315 = zext i1 %4314 to i8
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4315, i8* %4316, align 1
  %4317 = and i32 %4310, 255
  %4318 = call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4321, i8* %4322, align 1
  %4323 = xor i32 %4309, %4307
  %4324 = xor i32 %4323, %4310
  %4325 = lshr i32 %4324, 4
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4327, i8* %4328, align 1
  %4329 = icmp eq i32 %4310, 0
  %4330 = zext i1 %4329 to i8
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4330, i8* %4331, align 1
  %4332 = lshr i32 %4310, 31
  %4333 = trunc i32 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4333, i8* %4334, align 1
  %4335 = lshr i32 %4307, 31
  %4336 = lshr i32 %4309, 31
  %4337 = xor i32 %4332, %4335
  %4338 = xor i32 %4332, %4336
  %4339 = add i32 %4337, %4338
  %4340 = icmp eq i32 %4339, 2
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4341, i8* %4342, align 1
  store %struct.Memory* %loadMem_4276fd, %struct.Memory** %MEMORY
  %loadMem_427703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 11
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %EDI.i361 = bitcast %union.anon* %4348 to i32*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 7
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %4351 to i64*
  %4352 = load i32, i32* %EDI.i361
  %4353 = zext i32 %4352 to i64
  %4354 = load i64, i64* %PC.i360
  %4355 = add i64 %4354, 3
  store i64 %4355, i64* %PC.i360
  %4356 = shl i64 %4353, 32
  %4357 = ashr exact i64 %4356, 32
  store i64 %4357, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_427703, %struct.Memory** %MEMORY
  %loadMem_427706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 9
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %SI.i357 = bitcast %union.anon* %4363 to i16*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 5
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 7
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %RCX.i358
  %4371 = load i64, i64* %RDX.i359
  %4372 = mul i64 %4371, 2
  %4373 = add i64 %4372, %4370
  %4374 = load i16, i16* %SI.i357
  %4375 = zext i16 %4374 to i64
  %4376 = load i64, i64* %PC.i356
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i356
  %4378 = inttoptr i64 %4373 to i16*
  store i16 %4374, i16* %4378
  store %struct.Memory* %loadMem_427706, %struct.Memory** %MEMORY
  %loadMem_42770a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 5
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %4384 to i64*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 15
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %4387 to i64*
  %4388 = load i64, i64* %RBP.i355
  %4389 = sub i64 %4388, 1048
  %4390 = load i64, i64* %PC.i353
  %4391 = add i64 %4390, 7
  store i64 %4391, i64* %PC.i353
  %4392 = inttoptr i64 %4389 to i32*
  %4393 = load i32, i32* %4392
  %4394 = sext i32 %4393 to i64
  store i64 %4394, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_42770a, %struct.Memory** %MEMORY
  %loadMem_427711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 5
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RCX.i352
  %4402 = load i64, i64* %PC.i351
  %4403 = add i64 %4402, 4
  store i64 %4403, i64* %PC.i351
  %4404 = shl i64 %4401, 5
  %4405 = icmp slt i64 %4404, 0
  %4406 = shl i64 %4404, 1
  store i64 %4406, i64* %RCX.i352, align 8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4408 = zext i1 %4405 to i8
  store i8 %4408, i8* %4407, align 1
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4410 = trunc i64 %4406 to i32
  %4411 = and i32 %4410, 254
  %4412 = call i32 @llvm.ctpop.i32(i32 %4411)
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = xor i8 %4414, 1
  store i8 %4415, i8* %4409, align 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4416, align 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4418 = icmp eq i64 %4406, 0
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %4417, align 1
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4421 = lshr i64 %4406, 63
  %4422 = trunc i64 %4421 to i8
  store i8 %4422, i8* %4420, align 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4423, align 1
  store %struct.Memory* %loadMem_427711, %struct.Memory** %MEMORY
  %loadMem_427715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4429 to i64*
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 5
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %4432 to i64*
  %4433 = load i64, i64* %RAX.i349
  %4434 = load i64, i64* %RCX.i350
  %4435 = load i64, i64* %PC.i348
  %4436 = add i64 %4435, 3
  store i64 %4436, i64* %PC.i348
  %4437 = add i64 %4434, %4433
  store i64 %4437, i64* %RAX.i349, align 8
  %4438 = icmp ult i64 %4437, %4433
  %4439 = icmp ult i64 %4437, %4434
  %4440 = or i1 %4438, %4439
  %4441 = zext i1 %4440 to i8
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4441, i8* %4442, align 1
  %4443 = trunc i64 %4437 to i32
  %4444 = and i32 %4443, 255
  %4445 = call i32 @llvm.ctpop.i32(i32 %4444)
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  %4448 = xor i8 %4447, 1
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4448, i8* %4449, align 1
  %4450 = xor i64 %4434, %4433
  %4451 = xor i64 %4450, %4437
  %4452 = lshr i64 %4451, 4
  %4453 = trunc i64 %4452 to i8
  %4454 = and i8 %4453, 1
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4454, i8* %4455, align 1
  %4456 = icmp eq i64 %4437, 0
  %4457 = zext i1 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4457, i8* %4458, align 1
  %4459 = lshr i64 %4437, 63
  %4460 = trunc i64 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i64 %4433, 63
  %4463 = lshr i64 %4434, 63
  %4464 = xor i64 %4459, %4462
  %4465 = xor i64 %4459, %4463
  %4466 = add i64 %4464, %4465
  %4467 = icmp eq i64 %4466, 2
  %4468 = zext i1 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4468, i8* %4469, align 1
  store %struct.Memory* %loadMem_427715, %struct.Memory** %MEMORY
  %loadMem_427718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 11
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 15
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RBP.i347
  %4480 = sub i64 %4479, 1052
  %4481 = load i64, i64* %PC.i345
  %4482 = add i64 %4481, 6
  store i64 %4482, i64* %PC.i345
  %4483 = inttoptr i64 %4480 to i32*
  %4484 = load i32, i32* %4483
  %4485 = zext i32 %4484 to i64
  store i64 %4485, i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_427718, %struct.Memory** %MEMORY
  %loadMem_42771e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 33
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 5
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %PC.i343
  %4493 = add i64 %4492, 8
  store i64 %4493, i64* %PC.i343
  %4494 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4494, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_42771e, %struct.Memory** %MEMORY
  %loadMem_427726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 5
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 11
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RDI.i342 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RDI.i342
  %4505 = load i64, i64* %RCX.i341
  %4506 = add i64 %4505, 72712
  %4507 = load i64, i64* %PC.i340
  %4508 = add i64 %4507, 6
  store i64 %4508, i64* %PC.i340
  %4509 = trunc i64 %4504 to i32
  %4510 = inttoptr i64 %4506 to i32*
  %4511 = load i32, i32* %4510
  %4512 = add i32 %4511, %4509
  %4513 = zext i32 %4512 to i64
  store i64 %4513, i64* %RDI.i342, align 8
  %4514 = icmp ult i32 %4512, %4509
  %4515 = icmp ult i32 %4512, %4511
  %4516 = or i1 %4514, %4515
  %4517 = zext i1 %4516 to i8
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4517, i8* %4518, align 1
  %4519 = and i32 %4512, 255
  %4520 = call i32 @llvm.ctpop.i32(i32 %4519)
  %4521 = trunc i32 %4520 to i8
  %4522 = and i8 %4521, 1
  %4523 = xor i8 %4522, 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4523, i8* %4524, align 1
  %4525 = xor i32 %4511, %4509
  %4526 = xor i32 %4525, %4512
  %4527 = lshr i32 %4526, 4
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4529, i8* %4530, align 1
  %4531 = icmp eq i32 %4512, 0
  %4532 = zext i1 %4531 to i8
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4532, i8* %4533, align 1
  %4534 = lshr i32 %4512, 31
  %4535 = trunc i32 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4535, i8* %4536, align 1
  %4537 = lshr i32 %4509, 31
  %4538 = lshr i32 %4511, 31
  %4539 = xor i32 %4534, %4537
  %4540 = xor i32 %4534, %4538
  %4541 = add i32 %4539, %4540
  %4542 = icmp eq i32 %4541, 2
  %4543 = zext i1 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4543, i8* %4544, align 1
  store %struct.Memory* %loadMem_427726, %struct.Memory** %MEMORY
  %loadMem_42772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 33
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 11
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %EDI.i338 = bitcast %union.anon* %4550 to i32*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 5
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %4553 to i64*
  %4554 = load i32, i32* %EDI.i338
  %4555 = zext i32 %4554 to i64
  %4556 = load i64, i64* %PC.i337
  %4557 = add i64 %4556, 3
  store i64 %4557, i64* %PC.i337
  %4558 = shl i64 %4555, 32
  %4559 = ashr exact i64 %4558, 32
  store i64 %4559, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_42772c, %struct.Memory** %MEMORY
  %loadMem_42772f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 9
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %SI.i334 = bitcast %union.anon* %4565 to i16*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 1
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RAX.i335
  %4573 = load i64, i64* %RCX.i336
  %4574 = mul i64 %4573, 2
  %4575 = add i64 %4574, %4572
  %4576 = load i64, i64* %PC.i333
  %4577 = add i64 %4576, 4
  store i64 %4577, i64* %PC.i333
  %4578 = inttoptr i64 %4575 to i16*
  %4579 = load i16, i16* %4578
  store i16 %4579, i16* %SI.i334, align 2
  store %struct.Memory* %loadMem_42772f, %struct.Memory** %MEMORY
  %loadMem_427733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 1
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 15
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %RBP.i332
  %4590 = sub i64 %4589, 1040
  %4591 = load i64, i64* %PC.i330
  %4592 = add i64 %4591, 7
  store i64 %4592, i64* %PC.i330
  %4593 = inttoptr i64 %4590 to i64*
  %4594 = load i64, i64* %4593
  store i64 %4594, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_427733, %struct.Memory** %MEMORY
  %loadMem_42773a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 5
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 15
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %4603 to i64*
  %4604 = load i64, i64* %RBP.i329
  %4605 = sub i64 %4604, 1064
  %4606 = load i64, i64* %PC.i327
  %4607 = add i64 %4606, 7
  store i64 %4607, i64* %PC.i327
  %4608 = inttoptr i64 %4605 to i32*
  %4609 = load i32, i32* %4608
  %4610 = sext i32 %4609 to i64
  store i64 %4610, i64* %RCX.i328, align 8
  store %struct.Memory* %loadMem_42773a, %struct.Memory** %MEMORY
  %loadMem_427741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 33
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 1
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 5
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %RAX.i325
  %4621 = load i64, i64* %RCX.i326
  %4622 = mul i64 %4621, 8
  %4623 = add i64 %4622, %4620
  %4624 = load i64, i64* %PC.i324
  %4625 = add i64 %4624, 4
  store i64 %4625, i64* %PC.i324
  %4626 = inttoptr i64 %4623 to i64*
  %4627 = load i64, i64* %4626
  store i64 %4627, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_427741, %struct.Memory** %MEMORY
  %loadMem_427745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 11
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RBP.i323
  %4638 = sub i64 %4637, 1060
  %4639 = load i64, i64* %PC.i321
  %4640 = add i64 %4639, 6
  store i64 %4640, i64* %PC.i321
  %4641 = inttoptr i64 %4638 to i32*
  %4642 = load i32, i32* %4641
  %4643 = zext i32 %4642 to i64
  store i64 %4643, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_427745, %struct.Memory** %MEMORY
  %loadMem_42774b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 17
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %R8D.i319 = bitcast %union.anon* %4649 to i32*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 15
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %4652 to i64*
  %4653 = bitcast i32* %R8D.i319 to i64*
  %4654 = load i64, i64* %RBP.i320
  %4655 = sub i64 %4654, 1052
  %4656 = load i64, i64* %PC.i318
  %4657 = add i64 %4656, 7
  store i64 %4657, i64* %PC.i318
  %4658 = inttoptr i64 %4655 to i32*
  %4659 = load i32, i32* %4658
  %4660 = zext i32 %4659 to i64
  store i64 %4660, i64* %4653, align 8
  store %struct.Memory* %loadMem_42774b, %struct.Memory** %MEMORY
  %loadMem_427752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 17
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %R8D.i317 = bitcast %union.anon* %4666 to i32*
  %4667 = bitcast i32* %R8D.i317 to i64*
  %4668 = load i32, i32* %R8D.i317
  %4669 = zext i32 %4668 to i64
  %4670 = load i64, i64* %PC.i316
  %4671 = add i64 %4670, 3
  store i64 %4671, i64* %PC.i316
  %4672 = shl i32 %4668, 1
  %4673 = icmp slt i32 %4668, 0
  %4674 = icmp slt i32 %4672, 0
  %4675 = xor i1 %4673, %4674
  %4676 = zext i32 %4672 to i64
  store i64 %4676, i64* %4667, align 8
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4678 = zext i1 %4673 to i8
  store i8 %4678, i8* %4677, align 1
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4680 = and i32 %4672, 254
  %4681 = call i32 @llvm.ctpop.i32(i32 %4680)
  %4682 = trunc i32 %4681 to i8
  %4683 = and i8 %4682, 1
  %4684 = xor i8 %4683, 1
  store i8 %4684, i8* %4679, align 1
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4685, align 1
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4687 = icmp eq i32 %4672, 0
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %4686, align 1
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4690 = lshr i32 %4672, 31
  %4691 = trunc i32 %4690 to i8
  store i8 %4691, i8* %4689, align 1
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4693 = zext i1 %4675 to i8
  store i8 %4693, i8* %4692, align 1
  store %struct.Memory* %loadMem_427752, %struct.Memory** %MEMORY
  %loadMem_427756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 33
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4696 to i64*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 17
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %R8D.i315 = bitcast %union.anon* %4699 to i32*
  %4700 = bitcast i32* %R8D.i315 to i64*
  %4701 = load i32, i32* %R8D.i315
  %4702 = zext i32 %4701 to i64
  %4703 = load i64, i64* %PC.i314
  %4704 = add i64 %4703, 4
  store i64 %4704, i64* %PC.i314
  %4705 = add i32 1, %4701
  %4706 = zext i32 %4705 to i64
  store i64 %4706, i64* %4700, align 8
  %4707 = icmp ult i32 %4705, %4701
  %4708 = icmp ult i32 %4705, 1
  %4709 = or i1 %4707, %4708
  %4710 = zext i1 %4709 to i8
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4710, i8* %4711, align 1
  %4712 = and i32 %4705, 255
  %4713 = call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4716, i8* %4717, align 1
  %4718 = xor i64 1, %4702
  %4719 = trunc i64 %4718 to i32
  %4720 = xor i32 %4719, %4705
  %4721 = lshr i32 %4720, 4
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4723, i8* %4724, align 1
  %4725 = icmp eq i32 %4705, 0
  %4726 = zext i1 %4725 to i8
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4726, i8* %4727, align 1
  %4728 = lshr i32 %4705, 31
  %4729 = trunc i32 %4728 to i8
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4729, i8* %4730, align 1
  %4731 = lshr i32 %4701, 31
  %4732 = xor i32 %4728, %4731
  %4733 = add i32 %4732, %4728
  %4734 = icmp eq i32 %4733, 2
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4735, i8* %4736, align 1
  store %struct.Memory* %loadMem_427756, %struct.Memory** %MEMORY
  %loadMem_42775a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 17
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %R8D.i312 = bitcast %union.anon* %4742 to i32*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 11
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RDI.i313 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RDI.i313
  %4747 = load i32, i32* %R8D.i312
  %4748 = zext i32 %4747 to i64
  %4749 = load i64, i64* %PC.i311
  %4750 = add i64 %4749, 3
  store i64 %4750, i64* %PC.i311
  %4751 = trunc i64 %4746 to i32
  %4752 = add i32 %4747, %4751
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %RDI.i313, align 8
  %4754 = icmp ult i32 %4752, %4751
  %4755 = icmp ult i32 %4752, %4747
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
  %4765 = xor i64 %4748, %4746
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
  %4779 = lshr i32 %4747, 31
  %4780 = xor i32 %4775, %4778
  %4781 = xor i32 %4775, %4779
  %4782 = add i32 %4780, %4781
  %4783 = icmp eq i32 %4782, 2
  %4784 = zext i1 %4783 to i8
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4784, i8* %4785, align 1
  store %struct.Memory* %loadMem_42775a, %struct.Memory** %MEMORY
  %loadMem_42775d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 11
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %EDI.i309 = bitcast %union.anon* %4791 to i32*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 5
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %4794 to i64*
  %4795 = load i32, i32* %EDI.i309
  %4796 = zext i32 %4795 to i64
  %4797 = load i64, i64* %PC.i308
  %4798 = add i64 %4797, 3
  store i64 %4798, i64* %PC.i308
  %4799 = shl i64 %4796, 32
  %4800 = ashr exact i64 %4799, 32
  store i64 %4800, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_42775d, %struct.Memory** %MEMORY
  %loadMem_427760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 33
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4803 to i64*
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 1
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %4806 to i64*
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 5
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %4809 to i64*
  %4810 = load i64, i64* %RAX.i306
  %4811 = load i64, i64* %RCX.i307
  %4812 = mul i64 %4811, 8
  %4813 = add i64 %4812, %4810
  %4814 = load i64, i64* %PC.i305
  %4815 = add i64 %4814, 4
  store i64 %4815, i64* %PC.i305
  %4816 = inttoptr i64 %4813 to i64*
  %4817 = load i64, i64* %4816
  store i64 %4817, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_427760, %struct.Memory** %MEMORY
  %loadMem_427764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 11
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 15
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4826 to i64*
  %4827 = load i64, i64* %RBP.i304
  %4828 = sub i64 %4827, 1056
  %4829 = load i64, i64* %PC.i302
  %4830 = add i64 %4829, 6
  store i64 %4830, i64* %PC.i302
  %4831 = inttoptr i64 %4828 to i32*
  %4832 = load i32, i32* %4831
  %4833 = zext i32 %4832 to i64
  store i64 %4833, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_427764, %struct.Memory** %MEMORY
  %loadMem_42776a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4836 to i64*
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 11
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %RDI.i300 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 15
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %4842 to i64*
  %4843 = load i64, i64* %RDI.i300
  %4844 = load i64, i64* %RBP.i301
  %4845 = sub i64 %4844, 1048
  %4846 = load i64, i64* %PC.i299
  %4847 = add i64 %4846, 6
  store i64 %4847, i64* %PC.i299
  %4848 = trunc i64 %4843 to i32
  %4849 = inttoptr i64 %4845 to i32*
  %4850 = load i32, i32* %4849
  %4851 = add i32 %4850, %4848
  %4852 = zext i32 %4851 to i64
  store i64 %4852, i64* %RDI.i300, align 8
  %4853 = icmp ult i32 %4851, %4848
  %4854 = icmp ult i32 %4851, %4850
  %4855 = or i1 %4853, %4854
  %4856 = zext i1 %4855 to i8
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4856, i8* %4857, align 1
  %4858 = and i32 %4851, 255
  %4859 = call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4862, i8* %4863, align 1
  %4864 = xor i32 %4850, %4848
  %4865 = xor i32 %4864, %4851
  %4866 = lshr i32 %4865, 4
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4868, i8* %4869, align 1
  %4870 = icmp eq i32 %4851, 0
  %4871 = zext i1 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4871, i8* %4872, align 1
  %4873 = lshr i32 %4851, 31
  %4874 = trunc i32 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4874, i8* %4875, align 1
  %4876 = lshr i32 %4848, 31
  %4877 = lshr i32 %4850, 31
  %4878 = xor i32 %4873, %4876
  %4879 = xor i32 %4873, %4877
  %4880 = add i32 %4878, %4879
  %4881 = icmp eq i32 %4880, 2
  %4882 = zext i1 %4881 to i8
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4882, i8* %4883, align 1
  store %struct.Memory* %loadMem_42776a, %struct.Memory** %MEMORY
  %loadMem_427770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 11
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %EDI.i297 = bitcast %union.anon* %4889 to i32*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 5
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %4892 to i64*
  %4893 = load i32, i32* %EDI.i297
  %4894 = zext i32 %4893 to i64
  %4895 = load i64, i64* %PC.i296
  %4896 = add i64 %4895, 3
  store i64 %4896, i64* %PC.i296
  %4897 = shl i64 %4894, 32
  %4898 = ashr exact i64 %4897, 32
  store i64 %4898, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_427770, %struct.Memory** %MEMORY
  %loadMem_427773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4901 to i64*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 9
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %SI.i293 = bitcast %union.anon* %4904 to i16*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 1
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 5
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %4910 to i64*
  %4911 = load i64, i64* %RAX.i294
  %4912 = load i64, i64* %RCX.i295
  %4913 = mul i64 %4912, 2
  %4914 = add i64 %4913, %4911
  %4915 = load i16, i16* %SI.i293
  %4916 = zext i16 %4915 to i64
  %4917 = load i64, i64* %PC.i292
  %4918 = add i64 %4917, 4
  store i64 %4918, i64* %PC.i292
  %4919 = inttoptr i64 %4914 to i16*
  store i16 %4915, i16* %4919
  store %struct.Memory* %loadMem_427773, %struct.Memory** %MEMORY
  %loadMem_427777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 1
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 15
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RBP.i291
  %4930 = sub i64 %4929, 1048
  %4931 = load i64, i64* %PC.i289
  %4932 = add i64 %4931, 6
  store i64 %4932, i64* %PC.i289
  %4933 = inttoptr i64 %4930 to i32*
  %4934 = load i32, i32* %4933
  %4935 = zext i32 %4934 to i64
  store i64 %4935, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_427777, %struct.Memory** %MEMORY
  %loadMem_42777d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4941 to i64*
  %4942 = load i64, i64* %RAX.i288
  %4943 = load i64, i64* %PC.i287
  %4944 = add i64 %4943, 3
  store i64 %4944, i64* %PC.i287
  %4945 = trunc i64 %4942 to i32
  %4946 = add i32 1, %4945
  %4947 = zext i32 %4946 to i64
  store i64 %4947, i64* %RAX.i288, align 8
  %4948 = icmp ult i32 %4946, %4945
  %4949 = icmp ult i32 %4946, 1
  %4950 = or i1 %4948, %4949
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4951, i8* %4952, align 1
  %4953 = and i32 %4946, 255
  %4954 = call i32 @llvm.ctpop.i32(i32 %4953)
  %4955 = trunc i32 %4954 to i8
  %4956 = and i8 %4955, 1
  %4957 = xor i8 %4956, 1
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4957, i8* %4958, align 1
  %4959 = xor i64 1, %4942
  %4960 = trunc i64 %4959 to i32
  %4961 = xor i32 %4960, %4946
  %4962 = lshr i32 %4961, 4
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4964, i8* %4965, align 1
  %4966 = icmp eq i32 %4946, 0
  %4967 = zext i1 %4966 to i8
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4967, i8* %4968, align 1
  %4969 = lshr i32 %4946, 31
  %4970 = trunc i32 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4970, i8* %4971, align 1
  %4972 = lshr i32 %4945, 31
  %4973 = xor i32 %4969, %4972
  %4974 = add i32 %4973, %4969
  %4975 = icmp eq i32 %4974, 2
  %4976 = zext i1 %4975 to i8
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4976, i8* %4977, align 1
  store %struct.Memory* %loadMem_42777d, %struct.Memory** %MEMORY
  %loadMem_427780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 1
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %4983 to i32*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 15
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %4986 to i64*
  %4987 = load i64, i64* %RBP.i286
  %4988 = sub i64 %4987, 1048
  %4989 = load i32, i32* %EAX.i285
  %4990 = zext i32 %4989 to i64
  %4991 = load i64, i64* %PC.i284
  %4992 = add i64 %4991, 6
  store i64 %4992, i64* %PC.i284
  %4993 = inttoptr i64 %4988 to i32*
  store i32 %4989, i32* %4993
  store %struct.Memory* %loadMem_427780, %struct.Memory** %MEMORY
  %loadMem_427786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %PC.i283
  %4998 = add i64 %4997, -249
  %4999 = load i64, i64* %PC.i283
  %5000 = add i64 %4999, 5
  store i64 %5000, i64* %PC.i283
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4998, i64* %5001, align 8
  store %struct.Memory* %loadMem_427786, %struct.Memory** %MEMORY
  br label %block_.L_42768d

block_.L_42778b:                                  ; preds = %block_.L_42768d
  %loadMem_42778b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 33
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %PC.i282
  %5006 = add i64 %5005, 5
  %5007 = load i64, i64* %PC.i282
  %5008 = add i64 %5007, 5
  store i64 %5008, i64* %PC.i282
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5006, i64* %5009, align 8
  store %struct.Memory* %loadMem_42778b, %struct.Memory** %MEMORY
  br label %block_.L_427790

block_.L_427790:                                  ; preds = %block_.L_42778b
  %loadMem_427790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 1
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %5015 to i64*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 15
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %5018 to i64*
  %5019 = load i64, i64* %RBP.i281
  %5020 = sub i64 %5019, 1052
  %5021 = load i64, i64* %PC.i279
  %5022 = add i64 %5021, 6
  store i64 %5022, i64* %PC.i279
  %5023 = inttoptr i64 %5020 to i32*
  %5024 = load i32, i32* %5023
  %5025 = zext i32 %5024 to i64
  store i64 %5025, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_427790, %struct.Memory** %MEMORY
  %loadMem_427796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 1
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %RAX.i278
  %5033 = load i64, i64* %PC.i277
  %5034 = add i64 %5033, 3
  store i64 %5034, i64* %PC.i277
  %5035 = trunc i64 %5032 to i32
  %5036 = add i32 1, %5035
  %5037 = zext i32 %5036 to i64
  store i64 %5037, i64* %RAX.i278, align 8
  %5038 = icmp ult i32 %5036, %5035
  %5039 = icmp ult i32 %5036, 1
  %5040 = or i1 %5038, %5039
  %5041 = zext i1 %5040 to i8
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5041, i8* %5042, align 1
  %5043 = and i32 %5036, 255
  %5044 = call i32 @llvm.ctpop.i32(i32 %5043)
  %5045 = trunc i32 %5044 to i8
  %5046 = and i8 %5045, 1
  %5047 = xor i8 %5046, 1
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5047, i8* %5048, align 1
  %5049 = xor i64 1, %5032
  %5050 = trunc i64 %5049 to i32
  %5051 = xor i32 %5050, %5036
  %5052 = lshr i32 %5051, 4
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5054, i8* %5055, align 1
  %5056 = icmp eq i32 %5036, 0
  %5057 = zext i1 %5056 to i8
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5057, i8* %5058, align 1
  %5059 = lshr i32 %5036, 31
  %5060 = trunc i32 %5059 to i8
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5060, i8* %5061, align 1
  %5062 = lshr i32 %5035, 31
  %5063 = xor i32 %5059, %5062
  %5064 = add i32 %5063, %5059
  %5065 = icmp eq i32 %5064, 2
  %5066 = zext i1 %5065 to i8
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5066, i8* %5067, align 1
  store %struct.Memory* %loadMem_427796, %struct.Memory** %MEMORY
  %loadMem_427799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 1
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %EAX.i275 = bitcast %union.anon* %5073 to i32*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 15
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RBP.i276
  %5078 = sub i64 %5077, 1052
  %5079 = load i32, i32* %EAX.i275
  %5080 = zext i32 %5079 to i64
  %5081 = load i64, i64* %PC.i274
  %5082 = add i64 %5081, 6
  store i64 %5082, i64* %PC.i274
  %5083 = inttoptr i64 %5078 to i32*
  store i32 %5079, i32* %5083
  store %struct.Memory* %loadMem_427799, %struct.Memory** %MEMORY
  %loadMem_42779f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5086 to i64*
  %5087 = load i64, i64* %PC.i273
  %5088 = add i64 %5087, -310
  %5089 = load i64, i64* %PC.i273
  %5090 = add i64 %5089, 5
  store i64 %5090, i64* %PC.i273
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5088, i64* %5091, align 8
  store %struct.Memory* %loadMem_42779f, %struct.Memory** %MEMORY
  br label %block_.L_427669

block_.L_4277a4:                                  ; preds = %block_.L_427669
  %loadMem_4277a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5094 to i64*
  %5095 = load i64, i64* %PC.i272
  %5096 = add i64 %5095, 5
  %5097 = load i64, i64* %PC.i272
  %5098 = add i64 %5097, 5
  store i64 %5098, i64* %PC.i272
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5096, i64* %5099, align 8
  store %struct.Memory* %loadMem_4277a4, %struct.Memory** %MEMORY
  br label %block_.L_4277a9

block_.L_4277a9:                                  ; preds = %block_.L_4277a4
  %loadMem_4277a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 1
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 15
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5108 to i64*
  %5109 = load i64, i64* %RBP.i271
  %5110 = sub i64 %5109, 1064
  %5111 = load i64, i64* %PC.i269
  %5112 = add i64 %5111, 6
  store i64 %5112, i64* %PC.i269
  %5113 = inttoptr i64 %5110 to i32*
  %5114 = load i32, i32* %5113
  %5115 = zext i32 %5114 to i64
  store i64 %5115, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_4277a9, %struct.Memory** %MEMORY
  %loadMem_4277af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 1
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %5121 to i64*
  %5122 = load i64, i64* %RAX.i268
  %5123 = load i64, i64* %PC.i267
  %5124 = add i64 %5123, 3
  store i64 %5124, i64* %PC.i267
  %5125 = trunc i64 %5122 to i32
  %5126 = add i32 1, %5125
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RAX.i268, align 8
  %5128 = icmp ult i32 %5126, %5125
  %5129 = icmp ult i32 %5126, 1
  %5130 = or i1 %5128, %5129
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5131, i8* %5132, align 1
  %5133 = and i32 %5126, 255
  %5134 = call i32 @llvm.ctpop.i32(i32 %5133)
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = xor i8 %5136, 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5137, i8* %5138, align 1
  %5139 = xor i64 1, %5122
  %5140 = trunc i64 %5139 to i32
  %5141 = xor i32 %5140, %5126
  %5142 = lshr i32 %5141, 4
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5144, i8* %5145, align 1
  %5146 = icmp eq i32 %5126, 0
  %5147 = zext i1 %5146 to i8
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5147, i8* %5148, align 1
  %5149 = lshr i32 %5126, 31
  %5150 = trunc i32 %5149 to i8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5150, i8* %5151, align 1
  %5152 = lshr i32 %5125, 31
  %5153 = xor i32 %5149, %5152
  %5154 = add i32 %5153, %5149
  %5155 = icmp eq i32 %5154, 2
  %5156 = zext i1 %5155 to i8
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5156, i8* %5157, align 1
  store %struct.Memory* %loadMem_4277af, %struct.Memory** %MEMORY
  %loadMem_4277b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 33
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5160 to i64*
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 1
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %5163 to i32*
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 15
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5166 to i64*
  %5167 = load i64, i64* %RBP.i266
  %5168 = sub i64 %5167, 1064
  %5169 = load i32, i32* %EAX.i265
  %5170 = zext i32 %5169 to i64
  %5171 = load i64, i64* %PC.i264
  %5172 = add i64 %5171, 6
  store i64 %5172, i64* %PC.i264
  %5173 = inttoptr i64 %5168 to i32*
  store i32 %5169, i32* %5173
  store %struct.Memory* %loadMem_4277b2, %struct.Memory** %MEMORY
  %loadMem_4277b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %PC.i263
  %5178 = add i64 %5177, -568
  %5179 = load i64, i64* %PC.i263
  %5180 = add i64 %5179, 5
  store i64 %5180, i64* %PC.i263
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5178, i64* %5181, align 8
  store %struct.Memory* %loadMem_4277b8, %struct.Memory** %MEMORY
  br label %block_.L_427580

block_.L_4277bd:                                  ; preds = %block_.L_427580
  %loadMem_4277bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5184 to i64*
  %5185 = load i64, i64* %PC.i262
  %5186 = add i64 %5185, 5
  %5187 = load i64, i64* %PC.i262
  %5188 = add i64 %5187, 5
  store i64 %5188, i64* %PC.i262
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5186, i64* %5189, align 8
  store %struct.Memory* %loadMem_4277bd, %struct.Memory** %MEMORY
  br label %block_.L_4277c2

block_.L_4277c2:                                  ; preds = %block_.L_4277bd, %block_427300
  %loadMem_4277c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 33
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5192 to i64*
  %5193 = load i64, i64* %PC.i261
  %5194 = add i64 %5193, 5
  %5195 = load i64, i64* %PC.i261
  %5196 = add i64 %5195, 5
  store i64 %5196, i64* %PC.i261
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5194, i64* %5197, align 8
  store %struct.Memory* %loadMem_4277c2, %struct.Memory** %MEMORY
  br label %block_.L_4277c7

block_.L_4277c7:                                  ; preds = %block_.L_4277c2
  %loadMem_4277c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 33
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5200 to i64*
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 1
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 15
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RBP.i260
  %5208 = sub i64 %5207, 1044
  %5209 = load i64, i64* %PC.i258
  %5210 = add i64 %5209, 6
  store i64 %5210, i64* %PC.i258
  %5211 = inttoptr i64 %5208 to i32*
  %5212 = load i32, i32* %5211
  %5213 = zext i32 %5212 to i64
  store i64 %5213, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_4277c7, %struct.Memory** %MEMORY
  %loadMem_4277cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 33
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5216 to i64*
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 1
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %5219 to i64*
  %5220 = load i64, i64* %RAX.i257
  %5221 = load i64, i64* %PC.i256
  %5222 = add i64 %5221, 3
  store i64 %5222, i64* %PC.i256
  %5223 = trunc i64 %5220 to i32
  %5224 = add i32 2, %5223
  %5225 = zext i32 %5224 to i64
  store i64 %5225, i64* %RAX.i257, align 8
  %5226 = icmp ult i32 %5224, %5223
  %5227 = icmp ult i32 %5224, 2
  %5228 = or i1 %5226, %5227
  %5229 = zext i1 %5228 to i8
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5229, i8* %5230, align 1
  %5231 = and i32 %5224, 255
  %5232 = call i32 @llvm.ctpop.i32(i32 %5231)
  %5233 = trunc i32 %5232 to i8
  %5234 = and i8 %5233, 1
  %5235 = xor i8 %5234, 1
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5235, i8* %5236, align 1
  %5237 = xor i64 2, %5220
  %5238 = trunc i64 %5237 to i32
  %5239 = xor i32 %5238, %5224
  %5240 = lshr i32 %5239, 4
  %5241 = trunc i32 %5240 to i8
  %5242 = and i8 %5241, 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5242, i8* %5243, align 1
  %5244 = icmp eq i32 %5224, 0
  %5245 = zext i1 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5245, i8* %5246, align 1
  %5247 = lshr i32 %5224, 31
  %5248 = trunc i32 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5248, i8* %5249, align 1
  %5250 = lshr i32 %5223, 31
  %5251 = xor i32 %5247, %5250
  %5252 = add i32 %5251, %5247
  %5253 = icmp eq i32 %5252, 2
  %5254 = zext i1 %5253 to i8
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5254, i8* %5255, align 1
  store %struct.Memory* %loadMem_4277cd, %struct.Memory** %MEMORY
  %loadMem_4277d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 1
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %5261 to i32*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 15
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RBP.i255
  %5266 = sub i64 %5265, 1044
  %5267 = load i32, i32* %EAX.i254
  %5268 = zext i32 %5267 to i64
  %5269 = load i64, i64* %PC.i253
  %5270 = add i64 %5269, 6
  store i64 %5270, i64* %PC.i253
  %5271 = inttoptr i64 %5266 to i32*
  store i32 %5267, i32* %5271
  store %struct.Memory* %loadMem_4277d0, %struct.Memory** %MEMORY
  %loadMem_4277d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %PC.i252
  %5276 = add i64 %5275, -1264
  %5277 = load i64, i64* %PC.i252
  %5278 = add i64 %5277, 5
  store i64 %5278, i64* %PC.i252
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5276, i64* %5279, align 8
  store %struct.Memory* %loadMem_4277d6, %struct.Memory** %MEMORY
  br label %block_.L_4272e6

block_.L_4277db:                                  ; preds = %block_.L_4272e6
  %loadMem_4277db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5282 to i64*
  %5283 = load i64, i64* %PC.i251
  %5284 = add i64 %5283, 567
  %5285 = load i64, i64* %PC.i251
  %5286 = add i64 %5285, 5
  store i64 %5286, i64* %PC.i251
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5284, i64* %5287, align 8
  store %struct.Memory* %loadMem_4277db, %struct.Memory** %MEMORY
  br label %block_.L_427a12

block_.L_4277e0:                                  ; preds = %entry
  %loadMem_4277e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 33
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 15
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %5293 to i64*
  %5294 = load i64, i64* %RBP.i250
  %5295 = sub i64 %5294, 1044
  %5296 = load i64, i64* %PC.i249
  %5297 = add i64 %5296, 10
  store i64 %5297, i64* %PC.i249
  %5298 = inttoptr i64 %5295 to i32*
  store i32 0, i32* %5298
  store %struct.Memory* %loadMem_4277e0, %struct.Memory** %MEMORY
  br label %block_.L_4277ea

block_.L_4277ea:                                  ; preds = %block_.L_4279f9, %block_.L_4277e0
  %loadMem_4277ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 1
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 15
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RBP.i248
  %5309 = sub i64 %5308, 1044
  %5310 = load i64, i64* %PC.i246
  %5311 = add i64 %5310, 6
  store i64 %5311, i64* %PC.i246
  %5312 = inttoptr i64 %5309 to i32*
  %5313 = load i32, i32* %5312
  %5314 = zext i32 %5313 to i64
  store i64 %5314, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_4277ea, %struct.Memory** %MEMORY
  %loadMem_4277f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 5
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %PC.i244
  %5322 = add i64 %5321, 8
  store i64 %5322, i64* %PC.i244
  %5323 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5323, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_4277f0, %struct.Memory** %MEMORY
  %loadMem_4277f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 1
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %5329 to i32*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 5
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %5332 to i64*
  %5333 = load i32, i32* %EAX.i242
  %5334 = zext i32 %5333 to i64
  %5335 = load i64, i64* %RCX.i243
  %5336 = add i64 %5335, 72484
  %5337 = load i64, i64* %PC.i241
  %5338 = add i64 %5337, 6
  store i64 %5338, i64* %PC.i241
  %5339 = inttoptr i64 %5336 to i32*
  %5340 = load i32, i32* %5339
  %5341 = sub i32 %5333, %5340
  %5342 = icmp ult i32 %5333, %5340
  %5343 = zext i1 %5342 to i8
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5343, i8* %5344, align 1
  %5345 = and i32 %5341, 255
  %5346 = call i32 @llvm.ctpop.i32(i32 %5345)
  %5347 = trunc i32 %5346 to i8
  %5348 = and i8 %5347, 1
  %5349 = xor i8 %5348, 1
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5349, i8* %5350, align 1
  %5351 = xor i32 %5340, %5333
  %5352 = xor i32 %5351, %5341
  %5353 = lshr i32 %5352, 4
  %5354 = trunc i32 %5353 to i8
  %5355 = and i8 %5354, 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5355, i8* %5356, align 1
  %5357 = icmp eq i32 %5341, 0
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5341, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = lshr i32 %5333, 31
  %5364 = lshr i32 %5340, 31
  %5365 = xor i32 %5364, %5363
  %5366 = xor i32 %5360, %5363
  %5367 = add i32 %5366, %5365
  %5368 = icmp eq i32 %5367, 2
  %5369 = zext i1 %5368 to i8
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5369, i8* %5370, align 1
  store %struct.Memory* %loadMem_4277f8, %struct.Memory** %MEMORY
  %loadMem_4277fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 33
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %PC.i240
  %5375 = add i64 %5374, 527
  %5376 = load i64, i64* %PC.i240
  %5377 = add i64 %5376, 6
  %5378 = load i64, i64* %PC.i240
  %5379 = add i64 %5378, 6
  store i64 %5379, i64* %PC.i240
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5381 = load i8, i8* %5380, align 1
  %5382 = icmp ne i8 %5381, 0
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5384 = load i8, i8* %5383, align 1
  %5385 = icmp ne i8 %5384, 0
  %5386 = xor i1 %5382, %5385
  %5387 = xor i1 %5386, true
  %5388 = zext i1 %5387 to i8
  store i8 %5388, i8* %BRANCH_TAKEN, align 1
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5390 = select i1 %5386, i64 %5377, i64 %5375
  store i64 %5390, i64* %5389, align 8
  store %struct.Memory* %loadMem_4277fe, %struct.Memory** %MEMORY
  %loadBr_4277fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4277fe = icmp eq i8 %loadBr_4277fe, 1
  br i1 %cmpBr_4277fe, label %block_.L_427a0d, label %block_427804

block_427804:                                     ; preds = %block_.L_4277ea
  %loadMem_427804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %5396 to i64*
  %5397 = load i64, i64* %PC.i238
  %5398 = add i64 %5397, 8
  store i64 %5398, i64* %PC.i238
  %5399 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %5399, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_427804, %struct.Memory** %MEMORY
  %loadMem_42780c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %RAX.i237
  %5407 = add i64 %5406, 6472
  %5408 = load i64, i64* %PC.i236
  %5409 = add i64 %5408, 7
  store i64 %5409, i64* %PC.i236
  %5410 = inttoptr i64 %5407 to i64*
  %5411 = load i64, i64* %5410
  store i64 %5411, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_42780c, %struct.Memory** %MEMORY
  %loadMem_427813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 5
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RBP.i235
  %5422 = sub i64 %5421, 1044
  %5423 = load i64, i64* %PC.i233
  %5424 = add i64 %5423, 7
  store i64 %5424, i64* %PC.i233
  %5425 = inttoptr i64 %5422 to i32*
  %5426 = load i32, i32* %5425
  %5427 = sext i32 %5426 to i64
  store i64 %5427, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_427813, %struct.Memory** %MEMORY
  %loadMem_42781a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 33
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5430 to i64*
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 1
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 5
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %RAX.i231
  %5438 = load i64, i64* %RCX.i232
  %5439 = add i64 %5438, %5437
  %5440 = load i64, i64* %PC.i230
  %5441 = add i64 %5440, 4
  store i64 %5441, i64* %PC.i230
  %5442 = inttoptr i64 %5439 to i8*
  %5443 = load i8, i8* %5442
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5444, align 1
  %5445 = zext i8 %5443 to i32
  %5446 = call i32 @llvm.ctpop.i32(i32 %5445)
  %5447 = trunc i32 %5446 to i8
  %5448 = and i8 %5447, 1
  %5449 = xor i8 %5448, 1
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5449, i8* %5450, align 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5451, align 1
  %5452 = icmp eq i8 %5443, 0
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5453, i8* %5454, align 1
  %5455 = lshr i8 %5443, 7
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5455, i8* %5456, align 1
  %5457 = lshr i8 %5443, 7
  %5458 = xor i8 %5455, %5457
  %5459 = add i8 %5458, %5457
  %5460 = icmp eq i8 %5459, 2
  %5461 = zext i1 %5460 to i8
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5461, i8* %5462, align 1
  store %struct.Memory* %loadMem_42781a, %struct.Memory** %MEMORY
  %loadMem_42781e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5465 to i64*
  %5466 = load i64, i64* %PC.i229
  %5467 = add i64 %5466, 470
  %5468 = load i64, i64* %PC.i229
  %5469 = add i64 %5468, 6
  %5470 = load i64, i64* %PC.i229
  %5471 = add i64 %5470, 6
  store i64 %5471, i64* %PC.i229
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5473 = load i8, i8* %5472, align 1
  store i8 %5473, i8* %BRANCH_TAKEN, align 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5475 = icmp ne i8 %5473, 0
  %5476 = select i1 %5475, i64 %5467, i64 %5469
  store i64 %5476, i64* %5474, align 8
  store %struct.Memory* %loadMem_42781e, %struct.Memory** %MEMORY
  %loadBr_42781e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42781e = icmp eq i8 %loadBr_42781e, 1
  br i1 %cmpBr_42781e, label %block_.L_4279f4, label %block_427824

block_427824:                                     ; preds = %block_427804
  %loadMem_427824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 9
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RBP.i228
  %5487 = sub i64 %5486, 1056
  %5488 = load i64, i64* %PC.i226
  %5489 = add i64 %5488, 7
  store i64 %5489, i64* %PC.i226
  store i64 %5487, i64* %RSI.i227, align 8
  store %struct.Memory* %loadMem_427824, %struct.Memory** %MEMORY
  %loadMem_42782b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5492 to i64*
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 7
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 15
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5498 to i64*
  %5499 = load i64, i64* %RBP.i225
  %5500 = sub i64 %5499, 1060
  %5501 = load i64, i64* %PC.i223
  %5502 = add i64 %5501, 7
  store i64 %5502, i64* %PC.i223
  store i64 %5500, i64* %RDX.i224, align 8
  store %struct.Memory* %loadMem_42782b, %struct.Memory** %MEMORY
  %loadMem_427832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5505 to i64*
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 11
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %RDI.i221 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 15
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %5511 to i64*
  %5512 = load i64, i64* %RBP.i222
  %5513 = sub i64 %5512, 1044
  %5514 = load i64, i64* %PC.i220
  %5515 = add i64 %5514, 6
  store i64 %5515, i64* %PC.i220
  %5516 = inttoptr i64 %5513 to i32*
  %5517 = load i32, i32* %5516
  %5518 = zext i32 %5517 to i64
  store i64 %5518, i64* %RDI.i221, align 8
  store %struct.Memory* %loadMem_427832, %struct.Memory** %MEMORY
  %loadMem1_427838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 33
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %PC.i219
  %5523 = add i64 %5522, 142168
  %5524 = load i64, i64* %PC.i219
  %5525 = add i64 %5524, 5
  %5526 = load i64, i64* %PC.i219
  %5527 = add i64 %5526, 5
  store i64 %5527, i64* %PC.i219
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5529 = load i64, i64* %5528, align 8
  %5530 = add i64 %5529, -8
  %5531 = inttoptr i64 %5530 to i64*
  store i64 %5525, i64* %5531
  store i64 %5530, i64* %5528, align 8
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5523, i64* %5532, align 8
  store %struct.Memory* %loadMem1_427838, %struct.Memory** %MEMORY
  %loadMem2_427838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427838 = load i64, i64* %3
  %call2_427838 = call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* %0, i64 %loadPC_427838, %struct.Memory* %loadMem2_427838)
  store %struct.Memory* %call2_427838, %struct.Memory** %MEMORY
  %loadMem_42783d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 15
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RBP.i218
  %5540 = sub i64 %5539, 1052
  %5541 = load i64, i64* %PC.i217
  %5542 = add i64 %5541, 10
  store i64 %5542, i64* %PC.i217
  %5543 = inttoptr i64 %5540 to i32*
  store i32 0, i32* %5543
  store %struct.Memory* %loadMem_42783d, %struct.Memory** %MEMORY
  br label %block_.L_427847

block_.L_427847:                                  ; preds = %block_.L_4278d1, %block_427824
  %loadMem_427847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 15
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5549 to i64*
  %5550 = load i64, i64* %RBP.i216
  %5551 = sub i64 %5550, 1052
  %5552 = load i64, i64* %PC.i215
  %5553 = add i64 %5552, 7
  store i64 %5553, i64* %PC.i215
  %5554 = inttoptr i64 %5551 to i32*
  %5555 = load i32, i32* %5554
  %5556 = sub i32 %5555, 32
  %5557 = icmp ult i32 %5555, 32
  %5558 = zext i1 %5557 to i8
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5558, i8* %5559, align 1
  %5560 = and i32 %5556, 255
  %5561 = call i32 @llvm.ctpop.i32(i32 %5560)
  %5562 = trunc i32 %5561 to i8
  %5563 = and i8 %5562, 1
  %5564 = xor i8 %5563, 1
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5564, i8* %5565, align 1
  %5566 = xor i32 %5555, 32
  %5567 = xor i32 %5566, %5556
  %5568 = lshr i32 %5567, 4
  %5569 = trunc i32 %5568 to i8
  %5570 = and i8 %5569, 1
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5570, i8* %5571, align 1
  %5572 = icmp eq i32 %5556, 0
  %5573 = zext i1 %5572 to i8
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5573, i8* %5574, align 1
  %5575 = lshr i32 %5556, 31
  %5576 = trunc i32 %5575 to i8
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5576, i8* %5577, align 1
  %5578 = lshr i32 %5555, 31
  %5579 = xor i32 %5575, %5578
  %5580 = add i32 %5579, %5578
  %5581 = icmp eq i32 %5580, 2
  %5582 = zext i1 %5581 to i8
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5582, i8* %5583, align 1
  store %struct.Memory* %loadMem_427847, %struct.Memory** %MEMORY
  %loadMem_42784e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 33
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %PC.i214
  %5588 = add i64 %5587, 151
  %5589 = load i64, i64* %PC.i214
  %5590 = add i64 %5589, 6
  %5591 = load i64, i64* %PC.i214
  %5592 = add i64 %5591, 6
  store i64 %5592, i64* %PC.i214
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5594 = load i8, i8* %5593, align 1
  %5595 = icmp ne i8 %5594, 0
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5597 = load i8, i8* %5596, align 1
  %5598 = icmp ne i8 %5597, 0
  %5599 = xor i1 %5595, %5598
  %5600 = xor i1 %5599, true
  %5601 = zext i1 %5600 to i8
  store i8 %5601, i8* %BRANCH_TAKEN, align 1
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5603 = select i1 %5599, i64 %5590, i64 %5588
  store i64 %5603, i64* %5602, align 8
  store %struct.Memory* %loadMem_42784e, %struct.Memory** %MEMORY
  %loadBr_42784e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42784e = icmp eq i8 %loadBr_42784e, 1
  br i1 %cmpBr_42784e, label %block_.L_4278e5, label %block_427854

block_427854:                                     ; preds = %block_.L_427847
  %loadMem_427854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 33
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5606 to i64*
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 15
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5609 to i64*
  %5610 = load i64, i64* %RBP.i213
  %5611 = sub i64 %5610, 1048
  %5612 = load i64, i64* %PC.i212
  %5613 = add i64 %5612, 10
  store i64 %5613, i64* %PC.i212
  %5614 = inttoptr i64 %5611 to i32*
  store i32 0, i32* %5614
  store %struct.Memory* %loadMem_427854, %struct.Memory** %MEMORY
  br label %block_.L_42785e

block_.L_42785e:                                  ; preds = %block_42786b, %block_427854
  %loadMem_42785e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 33
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 15
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %RBP.i211
  %5622 = sub i64 %5621, 1048
  %5623 = load i64, i64* %PC.i210
  %5624 = add i64 %5623, 7
  store i64 %5624, i64* %PC.i210
  %5625 = inttoptr i64 %5622 to i32*
  %5626 = load i32, i32* %5625
  %5627 = sub i32 %5626, 16
  %5628 = icmp ult i32 %5626, 16
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5629, i8* %5630, align 1
  %5631 = and i32 %5627, 255
  %5632 = call i32 @llvm.ctpop.i32(i32 %5631)
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  %5635 = xor i8 %5634, 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5635, i8* %5636, align 1
  %5637 = xor i32 %5626, 16
  %5638 = xor i32 %5637, %5627
  %5639 = lshr i32 %5638, 4
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5641, i8* %5642, align 1
  %5643 = icmp eq i32 %5627, 0
  %5644 = zext i1 %5643 to i8
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5644, i8* %5645, align 1
  %5646 = lshr i32 %5627, 31
  %5647 = trunc i32 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5647, i8* %5648, align 1
  %5649 = lshr i32 %5626, 31
  %5650 = xor i32 %5646, %5649
  %5651 = add i32 %5650, %5649
  %5652 = icmp eq i32 %5651, 2
  %5653 = zext i1 %5652 to i8
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5653, i8* %5654, align 1
  store %struct.Memory* %loadMem_42785e, %struct.Memory** %MEMORY
  %loadMem_427865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %PC.i209
  %5659 = add i64 %5658, 103
  %5660 = load i64, i64* %PC.i209
  %5661 = add i64 %5660, 6
  %5662 = load i64, i64* %PC.i209
  %5663 = add i64 %5662, 6
  store i64 %5663, i64* %PC.i209
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5665 = load i8, i8* %5664, align 1
  %5666 = icmp ne i8 %5665, 0
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5668 = load i8, i8* %5667, align 1
  %5669 = icmp ne i8 %5668, 0
  %5670 = xor i1 %5666, %5669
  %5671 = xor i1 %5670, true
  %5672 = zext i1 %5671 to i8
  store i8 %5672, i8* %BRANCH_TAKEN, align 1
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5674 = select i1 %5670, i64 %5661, i64 %5659
  store i64 %5674, i64* %5673, align 8
  store %struct.Memory* %loadMem_427865, %struct.Memory** %MEMORY
  %loadBr_427865 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427865 = icmp eq i8 %loadBr_427865, 1
  br i1 %cmpBr_427865, label %block_.L_4278cc, label %block_42786b

block_42786b:                                     ; preds = %block_.L_42785e
  %loadMem_42786b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 33
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5677 to i64*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 1
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %5680 to i64*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 15
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %5683 to i64*
  %5684 = load i64, i64* %RBP.i208
  %5685 = sub i64 %5684, 1024
  %5686 = load i64, i64* %PC.i206
  %5687 = add i64 %5686, 7
  store i64 %5687, i64* %PC.i206
  store i64 %5685, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_42786b, %struct.Memory** %MEMORY
  %loadMem_427872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 5
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 15
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %5696 to i64*
  %5697 = load i64, i64* %RBP.i205
  %5698 = sub i64 %5697, 1032
  %5699 = load i64, i64* %PC.i203
  %5700 = add i64 %5699, 7
  store i64 %5700, i64* %PC.i203
  %5701 = inttoptr i64 %5698 to i64*
  %5702 = load i64, i64* %5701
  store i64 %5702, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_427872, %struct.Memory** %MEMORY
  %loadMem_427879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 33
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 7
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 15
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5711 to i64*
  %5712 = load i64, i64* %RBP.i202
  %5713 = sub i64 %5712, 1060
  %5714 = load i64, i64* %PC.i200
  %5715 = add i64 %5714, 6
  store i64 %5715, i64* %PC.i200
  %5716 = inttoptr i64 %5713 to i32*
  %5717 = load i32, i32* %5716
  %5718 = zext i32 %5717 to i64
  store i64 %5718, i64* %RDX.i201, align 8
  store %struct.Memory* %loadMem_427879, %struct.Memory** %MEMORY
  %loadMem_42787f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 33
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5721 to i64*
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 7
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 15
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %5727 to i64*
  %5728 = load i64, i64* %RDX.i198
  %5729 = load i64, i64* %RBP.i199
  %5730 = sub i64 %5729, 1052
  %5731 = load i64, i64* %PC.i197
  %5732 = add i64 %5731, 6
  store i64 %5732, i64* %PC.i197
  %5733 = trunc i64 %5728 to i32
  %5734 = inttoptr i64 %5730 to i32*
  %5735 = load i32, i32* %5734
  %5736 = add i32 %5735, %5733
  %5737 = zext i32 %5736 to i64
  store i64 %5737, i64* %RDX.i198, align 8
  %5738 = icmp ult i32 %5736, %5733
  %5739 = icmp ult i32 %5736, %5735
  %5740 = or i1 %5738, %5739
  %5741 = zext i1 %5740 to i8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5741, i8* %5742, align 1
  %5743 = and i32 %5736, 255
  %5744 = call i32 @llvm.ctpop.i32(i32 %5743)
  %5745 = trunc i32 %5744 to i8
  %5746 = and i8 %5745, 1
  %5747 = xor i8 %5746, 1
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5747, i8* %5748, align 1
  %5749 = xor i32 %5735, %5733
  %5750 = xor i32 %5749, %5736
  %5751 = lshr i32 %5750, 4
  %5752 = trunc i32 %5751 to i8
  %5753 = and i8 %5752, 1
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5753, i8* %5754, align 1
  %5755 = icmp eq i32 %5736, 0
  %5756 = zext i1 %5755 to i8
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5756, i8* %5757, align 1
  %5758 = lshr i32 %5736, 31
  %5759 = trunc i32 %5758 to i8
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5759, i8* %5760, align 1
  %5761 = lshr i32 %5733, 31
  %5762 = lshr i32 %5735, 31
  %5763 = xor i32 %5758, %5761
  %5764 = xor i32 %5758, %5762
  %5765 = add i32 %5763, %5764
  %5766 = icmp eq i32 %5765, 2
  %5767 = zext i1 %5766 to i8
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5767, i8* %5768, align 1
  store %struct.Memory* %loadMem_42787f, %struct.Memory** %MEMORY
  %loadMem_427885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 33
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5771 to i64*
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 7
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %EDX.i195 = bitcast %union.anon* %5774 to i32*
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 9
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %5777 to i64*
  %5778 = load i32, i32* %EDX.i195
  %5779 = zext i32 %5778 to i64
  %5780 = load i64, i64* %PC.i194
  %5781 = add i64 %5780, 3
  store i64 %5781, i64* %PC.i194
  %5782 = shl i64 %5779, 32
  %5783 = ashr exact i64 %5782, 32
  store i64 %5783, i64* %RSI.i196, align 8
  store %struct.Memory* %loadMem_427885, %struct.Memory** %MEMORY
  %loadMem_427888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 33
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 5
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 9
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RCX.i192
  %5794 = load i64, i64* %RSI.i193
  %5795 = mul i64 %5794, 8
  %5796 = add i64 %5795, %5793
  %5797 = load i64, i64* %PC.i191
  %5798 = add i64 %5797, 4
  store i64 %5798, i64* %PC.i191
  %5799 = inttoptr i64 %5796 to i64*
  %5800 = load i64, i64* %5799
  store i64 %5800, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_427888, %struct.Memory** %MEMORY
  %loadMem_42788c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 7
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 15
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %RBP.i190
  %5811 = sub i64 %5810, 1056
  %5812 = load i64, i64* %PC.i188
  %5813 = add i64 %5812, 6
  store i64 %5813, i64* %PC.i188
  %5814 = inttoptr i64 %5811 to i32*
  %5815 = load i32, i32* %5814
  %5816 = zext i32 %5815 to i64
  store i64 %5816, i64* %RDX.i189, align 8
  store %struct.Memory* %loadMem_42788c, %struct.Memory** %MEMORY
  %loadMem_427892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 7
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %5822 to i64*
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 15
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5825 to i64*
  %5826 = load i64, i64* %RDX.i186
  %5827 = load i64, i64* %RBP.i187
  %5828 = sub i64 %5827, 1048
  %5829 = load i64, i64* %PC.i185
  %5830 = add i64 %5829, 6
  store i64 %5830, i64* %PC.i185
  %5831 = trunc i64 %5826 to i32
  %5832 = inttoptr i64 %5828 to i32*
  %5833 = load i32, i32* %5832
  %5834 = add i32 %5833, %5831
  %5835 = zext i32 %5834 to i64
  store i64 %5835, i64* %RDX.i186, align 8
  %5836 = icmp ult i32 %5834, %5831
  %5837 = icmp ult i32 %5834, %5833
  %5838 = or i1 %5836, %5837
  %5839 = zext i1 %5838 to i8
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5839, i8* %5840, align 1
  %5841 = and i32 %5834, 255
  %5842 = call i32 @llvm.ctpop.i32(i32 %5841)
  %5843 = trunc i32 %5842 to i8
  %5844 = and i8 %5843, 1
  %5845 = xor i8 %5844, 1
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5845, i8* %5846, align 1
  %5847 = xor i32 %5833, %5831
  %5848 = xor i32 %5847, %5834
  %5849 = lshr i32 %5848, 4
  %5850 = trunc i32 %5849 to i8
  %5851 = and i8 %5850, 1
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5851, i8* %5852, align 1
  %5853 = icmp eq i32 %5834, 0
  %5854 = zext i1 %5853 to i8
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5854, i8* %5855, align 1
  %5856 = lshr i32 %5834, 31
  %5857 = trunc i32 %5856 to i8
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5857, i8* %5858, align 1
  %5859 = lshr i32 %5831, 31
  %5860 = lshr i32 %5833, 31
  %5861 = xor i32 %5856, %5859
  %5862 = xor i32 %5856, %5860
  %5863 = add i32 %5861, %5862
  %5864 = icmp eq i32 %5863, 2
  %5865 = zext i1 %5864 to i8
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5865, i8* %5866, align 1
  store %struct.Memory* %loadMem_427892, %struct.Memory** %MEMORY
  %loadMem_427898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 33
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 7
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5872 to i32*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 9
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RSI.i184 = bitcast %union.anon* %5875 to i64*
  %5876 = load i32, i32* %EDX.i
  %5877 = zext i32 %5876 to i64
  %5878 = load i64, i64* %PC.i183
  %5879 = add i64 %5878, 3
  store i64 %5879, i64* %PC.i183
  %5880 = shl i64 %5877, 32
  %5881 = ashr exact i64 %5880, 32
  store i64 %5881, i64* %RSI.i184, align 8
  store %struct.Memory* %loadMem_427898, %struct.Memory** %MEMORY
  %loadMem_42789b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 33
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5884 to i64*
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 11
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %DI.i181 = bitcast %union.anon* %5887 to i16*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 5
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %5890 to i64*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 9
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5893 to i64*
  %5894 = load i64, i64* %RCX.i182
  %5895 = load i64, i64* %RSI.i
  %5896 = mul i64 %5895, 2
  %5897 = add i64 %5896, %5894
  %5898 = load i64, i64* %PC.i180
  %5899 = add i64 %5898, 4
  store i64 %5899, i64* %PC.i180
  %5900 = inttoptr i64 %5897 to i16*
  %5901 = load i16, i16* %5900
  store i16 %5901, i16* %DI.i181, align 2
  store %struct.Memory* %loadMem_42789b, %struct.Memory** %MEMORY
  %loadMem_42789f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 33
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5904 to i64*
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 5
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 15
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %5910 to i64*
  %5911 = load i64, i64* %RBP.i179
  %5912 = sub i64 %5911, 1048
  %5913 = load i64, i64* %PC.i177
  %5914 = add i64 %5913, 7
  store i64 %5914, i64* %PC.i177
  %5915 = inttoptr i64 %5912 to i32*
  %5916 = load i32, i32* %5915
  %5917 = sext i32 %5916 to i64
  store i64 %5917, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_42789f, %struct.Memory** %MEMORY
  %loadMem_4278a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5919 = getelementptr inbounds %struct.GPR, %struct.GPR* %5918, i32 0, i32 33
  %5920 = getelementptr inbounds %struct.Reg, %struct.Reg* %5919, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5920 to i64*
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 5
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %5923 to i64*
  %5924 = load i64, i64* %RCX.i176
  %5925 = load i64, i64* %PC.i175
  %5926 = add i64 %5925, 4
  store i64 %5926, i64* %PC.i175
  %5927 = shl i64 %5924, 5
  %5928 = icmp slt i64 %5927, 0
  %5929 = shl i64 %5927, 1
  store i64 %5929, i64* %RCX.i176, align 8
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5931 = zext i1 %5928 to i8
  store i8 %5931, i8* %5930, align 1
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5933 = trunc i64 %5929 to i32
  %5934 = and i32 %5933, 254
  %5935 = call i32 @llvm.ctpop.i32(i32 %5934)
  %5936 = trunc i32 %5935 to i8
  %5937 = and i8 %5936, 1
  %5938 = xor i8 %5937, 1
  store i8 %5938, i8* %5932, align 1
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5939, align 1
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5941 = icmp eq i64 %5929, 0
  %5942 = zext i1 %5941 to i8
  store i8 %5942, i8* %5940, align 1
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5944 = lshr i64 %5929, 63
  %5945 = trunc i64 %5944 to i8
  store i8 %5945, i8* %5943, align 1
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5946, align 1
  store %struct.Memory* %loadMem_4278a6, %struct.Memory** %MEMORY
  %loadMem_4278aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 1
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %5952 to i64*
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 5
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %5955 to i64*
  %5956 = load i64, i64* %RAX.i173
  %5957 = load i64, i64* %RCX.i174
  %5958 = load i64, i64* %PC.i172
  %5959 = add i64 %5958, 3
  store i64 %5959, i64* %PC.i172
  %5960 = add i64 %5957, %5956
  store i64 %5960, i64* %RAX.i173, align 8
  %5961 = icmp ult i64 %5960, %5956
  %5962 = icmp ult i64 %5960, %5957
  %5963 = or i1 %5961, %5962
  %5964 = zext i1 %5963 to i8
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5964, i8* %5965, align 1
  %5966 = trunc i64 %5960 to i32
  %5967 = and i32 %5966, 255
  %5968 = call i32 @llvm.ctpop.i32(i32 %5967)
  %5969 = trunc i32 %5968 to i8
  %5970 = and i8 %5969, 1
  %5971 = xor i8 %5970, 1
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5971, i8* %5972, align 1
  %5973 = xor i64 %5957, %5956
  %5974 = xor i64 %5973, %5960
  %5975 = lshr i64 %5974, 4
  %5976 = trunc i64 %5975 to i8
  %5977 = and i8 %5976, 1
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5977, i8* %5978, align 1
  %5979 = icmp eq i64 %5960, 0
  %5980 = zext i1 %5979 to i8
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5980, i8* %5981, align 1
  %5982 = lshr i64 %5960, 63
  %5983 = trunc i64 %5982 to i8
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5983, i8* %5984, align 1
  %5985 = lshr i64 %5956, 63
  %5986 = lshr i64 %5957, 63
  %5987 = xor i64 %5982, %5985
  %5988 = xor i64 %5982, %5986
  %5989 = add i64 %5987, %5988
  %5990 = icmp eq i64 %5989, 2
  %5991 = zext i1 %5990 to i8
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5991, i8* %5992, align 1
  store %struct.Memory* %loadMem_4278aa, %struct.Memory** %MEMORY
  %loadMem_4278ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 33
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5995 to i64*
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 5
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %5998 to i64*
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 15
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %6001 to i64*
  %6002 = load i64, i64* %RBP.i171
  %6003 = sub i64 %6002, 1052
  %6004 = load i64, i64* %PC.i169
  %6005 = add i64 %6004, 7
  store i64 %6005, i64* %PC.i169
  %6006 = inttoptr i64 %6003 to i32*
  %6007 = load i32, i32* %6006
  %6008 = sext i32 %6007 to i64
  store i64 %6008, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_4278ad, %struct.Memory** %MEMORY
  %loadMem_4278b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6011 to i64*
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 11
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %DI.i = bitcast %union.anon* %6014 to i16*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 1
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 5
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %6020 to i64*
  %6021 = load i64, i64* %RAX.i167
  %6022 = load i64, i64* %RCX.i168
  %6023 = mul i64 %6022, 2
  %6024 = add i64 %6023, %6021
  %6025 = load i16, i16* %DI.i
  %6026 = zext i16 %6025 to i64
  %6027 = load i64, i64* %PC.i166
  %6028 = add i64 %6027, 4
  store i64 %6028, i64* %PC.i166
  %6029 = inttoptr i64 %6024 to i16*
  store i16 %6025, i16* %6029
  store %struct.Memory* %loadMem_4278b4, %struct.Memory** %MEMORY
  %loadMem_4278b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 33
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6032 to i64*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 1
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %6035 to i64*
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 15
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %6038 to i64*
  %6039 = load i64, i64* %RBP.i165
  %6040 = sub i64 %6039, 1048
  %6041 = load i64, i64* %PC.i163
  %6042 = add i64 %6041, 6
  store i64 %6042, i64* %PC.i163
  %6043 = inttoptr i64 %6040 to i32*
  %6044 = load i32, i32* %6043
  %6045 = zext i32 %6044 to i64
  store i64 %6045, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_4278b8, %struct.Memory** %MEMORY
  %loadMem_4278be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 1
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6051 to i64*
  %6052 = load i64, i64* %RAX.i162
  %6053 = load i64, i64* %PC.i161
  %6054 = add i64 %6053, 3
  store i64 %6054, i64* %PC.i161
  %6055 = trunc i64 %6052 to i32
  %6056 = add i32 1, %6055
  %6057 = zext i32 %6056 to i64
  store i64 %6057, i64* %RAX.i162, align 8
  %6058 = icmp ult i32 %6056, %6055
  %6059 = icmp ult i32 %6056, 1
  %6060 = or i1 %6058, %6059
  %6061 = zext i1 %6060 to i8
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6061, i8* %6062, align 1
  %6063 = and i32 %6056, 255
  %6064 = call i32 @llvm.ctpop.i32(i32 %6063)
  %6065 = trunc i32 %6064 to i8
  %6066 = and i8 %6065, 1
  %6067 = xor i8 %6066, 1
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6067, i8* %6068, align 1
  %6069 = xor i64 1, %6052
  %6070 = trunc i64 %6069 to i32
  %6071 = xor i32 %6070, %6056
  %6072 = lshr i32 %6071, 4
  %6073 = trunc i32 %6072 to i8
  %6074 = and i8 %6073, 1
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6074, i8* %6075, align 1
  %6076 = icmp eq i32 %6056, 0
  %6077 = zext i1 %6076 to i8
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6077, i8* %6078, align 1
  %6079 = lshr i32 %6056, 31
  %6080 = trunc i32 %6079 to i8
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6080, i8* %6081, align 1
  %6082 = lshr i32 %6055, 31
  %6083 = xor i32 %6079, %6082
  %6084 = add i32 %6083, %6079
  %6085 = icmp eq i32 %6084, 2
  %6086 = zext i1 %6085 to i8
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6086, i8* %6087, align 1
  store %struct.Memory* %loadMem_4278be, %struct.Memory** %MEMORY
  %loadMem_4278c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 33
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6090 to i64*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 1
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %6093 to i32*
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6095 = getelementptr inbounds %struct.GPR, %struct.GPR* %6094, i32 0, i32 15
  %6096 = getelementptr inbounds %struct.Reg, %struct.Reg* %6095, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6096 to i64*
  %6097 = load i64, i64* %RBP.i160
  %6098 = sub i64 %6097, 1048
  %6099 = load i32, i32* %EAX.i159
  %6100 = zext i32 %6099 to i64
  %6101 = load i64, i64* %PC.i158
  %6102 = add i64 %6101, 6
  store i64 %6102, i64* %PC.i158
  %6103 = inttoptr i64 %6098 to i32*
  store i32 %6099, i32* %6103
  store %struct.Memory* %loadMem_4278c1, %struct.Memory** %MEMORY
  %loadMem_4278c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %PC.i157
  %6108 = add i64 %6107, -105
  %6109 = load i64, i64* %PC.i157
  %6110 = add i64 %6109, 5
  store i64 %6110, i64* %PC.i157
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6108, i64* %6111, align 8
  store %struct.Memory* %loadMem_4278c7, %struct.Memory** %MEMORY
  br label %block_.L_42785e

block_.L_4278cc:                                  ; preds = %block_.L_42785e
  %loadMem_4278cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 33
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6114 to i64*
  %6115 = load i64, i64* %PC.i156
  %6116 = add i64 %6115, 5
  %6117 = load i64, i64* %PC.i156
  %6118 = add i64 %6117, 5
  store i64 %6118, i64* %PC.i156
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6116, i64* %6119, align 8
  store %struct.Memory* %loadMem_4278cc, %struct.Memory** %MEMORY
  br label %block_.L_4278d1

block_.L_4278d1:                                  ; preds = %block_.L_4278cc
  %loadMem_4278d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 33
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 1
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 15
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %6128 to i64*
  %6129 = load i64, i64* %RBP.i155
  %6130 = sub i64 %6129, 1052
  %6131 = load i64, i64* %PC.i153
  %6132 = add i64 %6131, 6
  store i64 %6132, i64* %PC.i153
  %6133 = inttoptr i64 %6130 to i32*
  %6134 = load i32, i32* %6133
  %6135 = zext i32 %6134 to i64
  store i64 %6135, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_4278d1, %struct.Memory** %MEMORY
  %loadMem_4278d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 1
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RAX.i152
  %6143 = load i64, i64* %PC.i151
  %6144 = add i64 %6143, 3
  store i64 %6144, i64* %PC.i151
  %6145 = trunc i64 %6142 to i32
  %6146 = add i32 1, %6145
  %6147 = zext i32 %6146 to i64
  store i64 %6147, i64* %RAX.i152, align 8
  %6148 = icmp ult i32 %6146, %6145
  %6149 = icmp ult i32 %6146, 1
  %6150 = or i1 %6148, %6149
  %6151 = zext i1 %6150 to i8
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6151, i8* %6152, align 1
  %6153 = and i32 %6146, 255
  %6154 = call i32 @llvm.ctpop.i32(i32 %6153)
  %6155 = trunc i32 %6154 to i8
  %6156 = and i8 %6155, 1
  %6157 = xor i8 %6156, 1
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6157, i8* %6158, align 1
  %6159 = xor i64 1, %6142
  %6160 = trunc i64 %6159 to i32
  %6161 = xor i32 %6160, %6146
  %6162 = lshr i32 %6161, 4
  %6163 = trunc i32 %6162 to i8
  %6164 = and i8 %6163, 1
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6164, i8* %6165, align 1
  %6166 = icmp eq i32 %6146, 0
  %6167 = zext i1 %6166 to i8
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6167, i8* %6168, align 1
  %6169 = lshr i32 %6146, 31
  %6170 = trunc i32 %6169 to i8
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6170, i8* %6171, align 1
  %6172 = lshr i32 %6145, 31
  %6173 = xor i32 %6169, %6172
  %6174 = add i32 %6173, %6169
  %6175 = icmp eq i32 %6174, 2
  %6176 = zext i1 %6175 to i8
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6176, i8* %6177, align 1
  store %struct.Memory* %loadMem_4278d7, %struct.Memory** %MEMORY
  %loadMem_4278da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 33
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 1
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %6183 to i32*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 15
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %RBP.i150
  %6188 = sub i64 %6187, 1052
  %6189 = load i32, i32* %EAX.i149
  %6190 = zext i32 %6189 to i64
  %6191 = load i64, i64* %PC.i148
  %6192 = add i64 %6191, 6
  store i64 %6192, i64* %PC.i148
  %6193 = inttoptr i64 %6188 to i32*
  store i32 %6189, i32* %6193
  store %struct.Memory* %loadMem_4278da, %struct.Memory** %MEMORY
  %loadMem_4278e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 33
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %PC.i147
  %6198 = add i64 %6197, -153
  %6199 = load i64, i64* %PC.i147
  %6200 = add i64 %6199, 5
  store i64 %6200, i64* %PC.i147
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6198, i64* %6201, align 8
  store %struct.Memory* %loadMem_4278e0, %struct.Memory** %MEMORY
  br label %block_.L_427847

block_.L_4278e5:                                  ; preds = %block_.L_427847
  %loadMem_4278e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 15
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %6207 to i64*
  %6208 = load i64, i64* %RBP.i146
  %6209 = sub i64 %6208, 1052
  %6210 = load i64, i64* %PC.i145
  %6211 = add i64 %6210, 10
  store i64 %6211, i64* %PC.i145
  %6212 = inttoptr i64 %6209 to i32*
  store i32 0, i32* %6212
  store %struct.Memory* %loadMem_4278e5, %struct.Memory** %MEMORY
  br label %block_.L_4278ef

block_.L_4278ef:                                  ; preds = %block_.L_4279db, %block_.L_4278e5
  %loadMem_4278ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 33
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6215 to i64*
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 15
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %6218 to i64*
  %6219 = load i64, i64* %RBP.i144
  %6220 = sub i64 %6219, 1052
  %6221 = load i64, i64* %PC.i143
  %6222 = add i64 %6221, 7
  store i64 %6222, i64* %PC.i143
  %6223 = inttoptr i64 %6220 to i32*
  %6224 = load i32, i32* %6223
  %6225 = sub i32 %6224, 16
  %6226 = icmp ult i32 %6224, 16
  %6227 = zext i1 %6226 to i8
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6227, i8* %6228, align 1
  %6229 = and i32 %6225, 255
  %6230 = call i32 @llvm.ctpop.i32(i32 %6229)
  %6231 = trunc i32 %6230 to i8
  %6232 = and i8 %6231, 1
  %6233 = xor i8 %6232, 1
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6233, i8* %6234, align 1
  %6235 = xor i32 %6224, 16
  %6236 = xor i32 %6235, %6225
  %6237 = lshr i32 %6236, 4
  %6238 = trunc i32 %6237 to i8
  %6239 = and i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6239, i8* %6240, align 1
  %6241 = icmp eq i32 %6225, 0
  %6242 = zext i1 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6242, i8* %6243, align 1
  %6244 = lshr i32 %6225, 31
  %6245 = trunc i32 %6244 to i8
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6245, i8* %6246, align 1
  %6247 = lshr i32 %6224, 31
  %6248 = xor i32 %6244, %6247
  %6249 = add i32 %6248, %6247
  %6250 = icmp eq i32 %6249, 2
  %6251 = zext i1 %6250 to i8
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6251, i8* %6252, align 1
  store %struct.Memory* %loadMem_4278ef, %struct.Memory** %MEMORY
  %loadMem_4278f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 33
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %PC.i142
  %6257 = add i64 %6256, 249
  %6258 = load i64, i64* %PC.i142
  %6259 = add i64 %6258, 6
  %6260 = load i64, i64* %PC.i142
  %6261 = add i64 %6260, 6
  store i64 %6261, i64* %PC.i142
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6263 = load i8, i8* %6262, align 1
  %6264 = icmp ne i8 %6263, 0
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6266 = load i8, i8* %6265, align 1
  %6267 = icmp ne i8 %6266, 0
  %6268 = xor i1 %6264, %6267
  %6269 = xor i1 %6268, true
  %6270 = zext i1 %6269 to i8
  store i8 %6270, i8* %BRANCH_TAKEN, align 1
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6272 = select i1 %6268, i64 %6259, i64 %6257
  store i64 %6272, i64* %6271, align 8
  store %struct.Memory* %loadMem_4278f6, %struct.Memory** %MEMORY
  %loadBr_4278f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4278f6 = icmp eq i8 %loadBr_4278f6, 1
  br i1 %cmpBr_4278f6, label %block_.L_4279ef, label %block_4278fc

block_4278fc:                                     ; preds = %block_.L_4278ef
  %loadMem_4278fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 33
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6275 to i64*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 15
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6278 to i64*
  %6279 = load i64, i64* %RBP.i141
  %6280 = sub i64 %6279, 1048
  %6281 = load i64, i64* %PC.i140
  %6282 = add i64 %6281, 10
  store i64 %6282, i64* %PC.i140
  %6283 = inttoptr i64 %6280 to i32*
  store i32 0, i32* %6283
  store %struct.Memory* %loadMem_4278fc, %struct.Memory** %MEMORY
  br label %block_.L_427906

block_.L_427906:                                  ; preds = %block_427913, %block_4278fc
  %loadMem_427906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 33
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 15
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6289 to i64*
  %6290 = load i64, i64* %RBP.i139
  %6291 = sub i64 %6290, 1048
  %6292 = load i64, i64* %PC.i138
  %6293 = add i64 %6292, 7
  store i64 %6293, i64* %PC.i138
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294
  %6296 = sub i32 %6295, 16
  %6297 = icmp ult i32 %6295, 16
  %6298 = zext i1 %6297 to i8
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6298, i8* %6299, align 1
  %6300 = and i32 %6296, 255
  %6301 = call i32 @llvm.ctpop.i32(i32 %6300)
  %6302 = trunc i32 %6301 to i8
  %6303 = and i8 %6302, 1
  %6304 = xor i8 %6303, 1
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6304, i8* %6305, align 1
  %6306 = xor i32 %6295, 16
  %6307 = xor i32 %6306, %6296
  %6308 = lshr i32 %6307, 4
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6310, i8* %6311, align 1
  %6312 = icmp eq i32 %6296, 0
  %6313 = zext i1 %6312 to i8
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6313, i8* %6314, align 1
  %6315 = lshr i32 %6296, 31
  %6316 = trunc i32 %6315 to i8
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6316, i8* %6317, align 1
  %6318 = lshr i32 %6295, 31
  %6319 = xor i32 %6315, %6318
  %6320 = add i32 %6319, %6318
  %6321 = icmp eq i32 %6320, 2
  %6322 = zext i1 %6321 to i8
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6322, i8* %6323, align 1
  store %struct.Memory* %loadMem_427906, %struct.Memory** %MEMORY
  %loadMem_42790d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 33
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6326 to i64*
  %6327 = load i64, i64* %PC.i137
  %6328 = add i64 %6327, 201
  %6329 = load i64, i64* %PC.i137
  %6330 = add i64 %6329, 6
  %6331 = load i64, i64* %PC.i137
  %6332 = add i64 %6331, 6
  store i64 %6332, i64* %PC.i137
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6334 = load i8, i8* %6333, align 1
  %6335 = icmp ne i8 %6334, 0
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6337 = load i8, i8* %6336, align 1
  %6338 = icmp ne i8 %6337, 0
  %6339 = xor i1 %6335, %6338
  %6340 = xor i1 %6339, true
  %6341 = zext i1 %6340 to i8
  store i8 %6341, i8* %BRANCH_TAKEN, align 1
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6343 = select i1 %6339, i64 %6330, i64 %6328
  store i64 %6343, i64* %6342, align 8
  store %struct.Memory* %loadMem_42790d, %struct.Memory** %MEMORY
  %loadBr_42790d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42790d = icmp eq i8 %loadBr_42790d, 1
  br i1 %cmpBr_42790d, label %block_.L_4279d6, label %block_427913

block_427913:                                     ; preds = %block_.L_427906
  %loadMem_427913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 1
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 15
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6352 to i64*
  %6353 = load i64, i64* %RBP.i136
  %6354 = sub i64 %6353, 1024
  %6355 = load i64, i64* %PC.i134
  %6356 = add i64 %6355, 7
  store i64 %6356, i64* %PC.i134
  store i64 %6354, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_427913, %struct.Memory** %MEMORY
  %loadMem_42791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 33
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6359 to i64*
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 5
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 15
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %6365 to i64*
  %6366 = load i64, i64* %RBP.i133
  %6367 = sub i64 %6366, 1048
  %6368 = load i64, i64* %PC.i131
  %6369 = add i64 %6368, 7
  store i64 %6369, i64* %PC.i131
  %6370 = inttoptr i64 %6367 to i32*
  %6371 = load i32, i32* %6370
  %6372 = sext i32 %6371 to i64
  store i64 %6372, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_42791a, %struct.Memory** %MEMORY
  %loadMem_427921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6374 = getelementptr inbounds %struct.GPR, %struct.GPR* %6373, i32 0, i32 33
  %6375 = getelementptr inbounds %struct.Reg, %struct.Reg* %6374, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6375 to i64*
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 5
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %6378 to i64*
  %6379 = load i64, i64* %RCX.i130
  %6380 = load i64, i64* %PC.i129
  %6381 = add i64 %6380, 4
  store i64 %6381, i64* %PC.i129
  %6382 = shl i64 %6379, 5
  %6383 = icmp slt i64 %6382, 0
  %6384 = shl i64 %6382, 1
  store i64 %6384, i64* %RCX.i130, align 8
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6386 = zext i1 %6383 to i8
  store i8 %6386, i8* %6385, align 1
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6388 = trunc i64 %6384 to i32
  %6389 = and i32 %6388, 254
  %6390 = call i32 @llvm.ctpop.i32(i32 %6389)
  %6391 = trunc i32 %6390 to i8
  %6392 = and i8 %6391, 1
  %6393 = xor i8 %6392, 1
  store i8 %6393, i8* %6387, align 1
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6394, align 1
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6396 = icmp eq i64 %6384, 0
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %6395, align 1
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6399 = lshr i64 %6384, 63
  %6400 = trunc i64 %6399 to i8
  store i8 %6400, i8* %6398, align 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6401, align 1
  store %struct.Memory* %loadMem_427921, %struct.Memory** %MEMORY
  %loadMem_427925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 1
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 7
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %6410 to i64*
  %6411 = load i64, i64* %RAX.i127
  %6412 = load i64, i64* %PC.i126
  %6413 = add i64 %6412, 3
  store i64 %6413, i64* %PC.i126
  store i64 %6411, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_427925, %struct.Memory** %MEMORY
  %loadMem_427928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 33
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6416 to i64*
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 5
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 7
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %RDX.i125
  %6424 = load i64, i64* %RCX.i124
  %6425 = load i64, i64* %PC.i123
  %6426 = add i64 %6425, 3
  store i64 %6426, i64* %PC.i123
  %6427 = add i64 %6424, %6423
  store i64 %6427, i64* %RDX.i125, align 8
  %6428 = icmp ult i64 %6427, %6423
  %6429 = icmp ult i64 %6427, %6424
  %6430 = or i1 %6428, %6429
  %6431 = zext i1 %6430 to i8
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6431, i8* %6432, align 1
  %6433 = trunc i64 %6427 to i32
  %6434 = and i32 %6433, 255
  %6435 = call i32 @llvm.ctpop.i32(i32 %6434)
  %6436 = trunc i32 %6435 to i8
  %6437 = and i8 %6436, 1
  %6438 = xor i8 %6437, 1
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6438, i8* %6439, align 1
  %6440 = xor i64 %6424, %6423
  %6441 = xor i64 %6440, %6427
  %6442 = lshr i64 %6441, 4
  %6443 = trunc i64 %6442 to i8
  %6444 = and i8 %6443, 1
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6444, i8* %6445, align 1
  %6446 = icmp eq i64 %6427, 0
  %6447 = zext i1 %6446 to i8
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6447, i8* %6448, align 1
  %6449 = lshr i64 %6427, 63
  %6450 = trunc i64 %6449 to i8
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6450, i8* %6451, align 1
  %6452 = lshr i64 %6423, 63
  %6453 = lshr i64 %6424, 63
  %6454 = xor i64 %6449, %6452
  %6455 = xor i64 %6449, %6453
  %6456 = add i64 %6454, %6455
  %6457 = icmp eq i64 %6456, 2
  %6458 = zext i1 %6457 to i8
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6458, i8* %6459, align 1
  store %struct.Memory* %loadMem_427928, %struct.Memory** %MEMORY
  %loadMem_42792b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 33
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6462 to i64*
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 5
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 15
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %RBP.i122
  %6470 = sub i64 %6469, 1052
  %6471 = load i64, i64* %PC.i120
  %6472 = add i64 %6471, 7
  store i64 %6472, i64* %PC.i120
  %6473 = inttoptr i64 %6470 to i32*
  %6474 = load i32, i32* %6473
  %6475 = sext i32 %6474 to i64
  store i64 %6475, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_42792b, %struct.Memory** %MEMORY
  %loadMem_427932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 9
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %SI.i117 = bitcast %union.anon* %6481 to i16*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 5
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %6484 to i64*
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 7
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %6487 to i64*
  %6488 = load i64, i64* %RDX.i119
  %6489 = load i64, i64* %RCX.i118
  %6490 = mul i64 %6489, 2
  %6491 = add i64 %6490, %6488
  %6492 = load i64, i64* %PC.i116
  %6493 = add i64 %6492, 4
  store i64 %6493, i64* %PC.i116
  %6494 = inttoptr i64 %6491 to i16*
  %6495 = load i16, i16* %6494
  store i16 %6495, i16* %SI.i117, align 2
  store %struct.Memory* %loadMem_427932, %struct.Memory** %MEMORY
  %loadMem_427936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 33
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6498 to i64*
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 5
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 15
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %6504 to i64*
  %6505 = load i64, i64* %RBP.i115
  %6506 = sub i64 %6505, 1032
  %6507 = load i64, i64* %PC.i113
  %6508 = add i64 %6507, 7
  store i64 %6508, i64* %PC.i113
  %6509 = inttoptr i64 %6506 to i64*
  %6510 = load i64, i64* %6509
  store i64 %6510, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_427936, %struct.Memory** %MEMORY
  %loadMem_42793d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 33
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6513 to i64*
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 11
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %RDI.i111 = bitcast %union.anon* %6516 to i64*
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 15
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6519 to i64*
  %6520 = load i64, i64* %RBP.i112
  %6521 = sub i64 %6520, 1060
  %6522 = load i64, i64* %PC.i110
  %6523 = add i64 %6522, 6
  store i64 %6523, i64* %PC.i110
  %6524 = inttoptr i64 %6521 to i32*
  %6525 = load i32, i32* %6524
  %6526 = zext i32 %6525 to i64
  store i64 %6526, i64* %RDI.i111, align 8
  store %struct.Memory* %loadMem_42793d, %struct.Memory** %MEMORY
  %loadMem_427943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 33
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 17
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %R8D.i108 = bitcast %union.anon* %6532 to i32*
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6534 = getelementptr inbounds %struct.GPR, %struct.GPR* %6533, i32 0, i32 15
  %6535 = getelementptr inbounds %struct.Reg, %struct.Reg* %6534, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %6535 to i64*
  %6536 = bitcast i32* %R8D.i108 to i64*
  %6537 = load i64, i64* %RBP.i109
  %6538 = sub i64 %6537, 1052
  %6539 = load i64, i64* %PC.i107
  %6540 = add i64 %6539, 7
  store i64 %6540, i64* %PC.i107
  %6541 = inttoptr i64 %6538 to i32*
  %6542 = load i32, i32* %6541
  %6543 = zext i32 %6542 to i64
  store i64 %6543, i64* %6536, align 8
  store %struct.Memory* %loadMem_427943, %struct.Memory** %MEMORY
  %loadMem_42794a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 33
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6546 to i64*
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 17
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %R8D.i106 = bitcast %union.anon* %6549 to i32*
  %6550 = bitcast i32* %R8D.i106 to i64*
  %6551 = load i32, i32* %R8D.i106
  %6552 = zext i32 %6551 to i64
  %6553 = load i64, i64* %PC.i105
  %6554 = add i64 %6553, 3
  store i64 %6554, i64* %PC.i105
  %6555 = shl i32 %6551, 1
  %6556 = icmp slt i32 %6551, 0
  %6557 = icmp slt i32 %6555, 0
  %6558 = xor i1 %6556, %6557
  %6559 = zext i32 %6555 to i64
  store i64 %6559, i64* %6550, align 8
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6561 = zext i1 %6556 to i8
  store i8 %6561, i8* %6560, align 1
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6563 = and i32 %6555, 254
  %6564 = call i32 @llvm.ctpop.i32(i32 %6563)
  %6565 = trunc i32 %6564 to i8
  %6566 = and i8 %6565, 1
  %6567 = xor i8 %6566, 1
  store i8 %6567, i8* %6562, align 1
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6568, align 1
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6570 = icmp eq i32 %6555, 0
  %6571 = zext i1 %6570 to i8
  store i8 %6571, i8* %6569, align 1
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6573 = lshr i32 %6555, 31
  %6574 = trunc i32 %6573 to i8
  store i8 %6574, i8* %6572, align 1
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6576 = zext i1 %6558 to i8
  store i8 %6576, i8* %6575, align 1
  store %struct.Memory* %loadMem_42794a, %struct.Memory** %MEMORY
  %loadMem_42794e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 33
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6579 to i64*
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6581 = getelementptr inbounds %struct.GPR, %struct.GPR* %6580, i32 0, i32 17
  %6582 = getelementptr inbounds %struct.Reg, %struct.Reg* %6581, i32 0, i32 0
  %R8D.i103 = bitcast %union.anon* %6582 to i32*
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 11
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %6585 to i64*
  %6586 = load i64, i64* %RDI.i104
  %6587 = load i32, i32* %R8D.i103
  %6588 = zext i32 %6587 to i64
  %6589 = load i64, i64* %PC.i102
  %6590 = add i64 %6589, 3
  store i64 %6590, i64* %PC.i102
  %6591 = trunc i64 %6586 to i32
  %6592 = add i32 %6587, %6591
  %6593 = zext i32 %6592 to i64
  store i64 %6593, i64* %RDI.i104, align 8
  %6594 = icmp ult i32 %6592, %6591
  %6595 = icmp ult i32 %6592, %6587
  %6596 = or i1 %6594, %6595
  %6597 = zext i1 %6596 to i8
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6597, i8* %6598, align 1
  %6599 = and i32 %6592, 255
  %6600 = call i32 @llvm.ctpop.i32(i32 %6599)
  %6601 = trunc i32 %6600 to i8
  %6602 = and i8 %6601, 1
  %6603 = xor i8 %6602, 1
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6603, i8* %6604, align 1
  %6605 = xor i64 %6588, %6586
  %6606 = trunc i64 %6605 to i32
  %6607 = xor i32 %6606, %6592
  %6608 = lshr i32 %6607, 4
  %6609 = trunc i32 %6608 to i8
  %6610 = and i8 %6609, 1
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6610, i8* %6611, align 1
  %6612 = icmp eq i32 %6592, 0
  %6613 = zext i1 %6612 to i8
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6613, i8* %6614, align 1
  %6615 = lshr i32 %6592, 31
  %6616 = trunc i32 %6615 to i8
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6616, i8* %6617, align 1
  %6618 = lshr i32 %6591, 31
  %6619 = lshr i32 %6587, 31
  %6620 = xor i32 %6615, %6618
  %6621 = xor i32 %6615, %6619
  %6622 = add i32 %6620, %6621
  %6623 = icmp eq i32 %6622, 2
  %6624 = zext i1 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6624, i8* %6625, align 1
  store %struct.Memory* %loadMem_42794e, %struct.Memory** %MEMORY
  %loadMem_427951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 33
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 11
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %EDI.i100 = bitcast %union.anon* %6631 to i32*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 7
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %6634 to i64*
  %6635 = load i32, i32* %EDI.i100
  %6636 = zext i32 %6635 to i64
  %6637 = load i64, i64* %PC.i99
  %6638 = add i64 %6637, 3
  store i64 %6638, i64* %PC.i99
  %6639 = shl i64 %6636, 32
  %6640 = ashr exact i64 %6639, 32
  store i64 %6640, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_427951, %struct.Memory** %MEMORY
  %loadMem_427954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 33
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 5
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 7
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RDX.i98 = bitcast %union.anon* %6649 to i64*
  %6650 = load i64, i64* %RCX.i97
  %6651 = load i64, i64* %RDX.i98
  %6652 = mul i64 %6651, 8
  %6653 = add i64 %6652, %6650
  %6654 = load i64, i64* %PC.i96
  %6655 = add i64 %6654, 4
  store i64 %6655, i64* %PC.i96
  %6656 = inttoptr i64 %6653 to i64*
  %6657 = load i64, i64* %6656
  store i64 %6657, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_427954, %struct.Memory** %MEMORY
  %loadMem_427958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 33
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 11
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 15
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RBP.i95
  %6668 = sub i64 %6667, 1056
  %6669 = load i64, i64* %PC.i93
  %6670 = add i64 %6669, 6
  store i64 %6670, i64* %PC.i93
  %6671 = inttoptr i64 %6668 to i32*
  %6672 = load i32, i32* %6671
  %6673 = zext i32 %6672 to i64
  store i64 %6673, i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_427958, %struct.Memory** %MEMORY
  %loadMem_42795e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 33
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6676 to i64*
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 11
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %RDI.i91 = bitcast %union.anon* %6679 to i64*
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 15
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6682 to i64*
  %6683 = load i64, i64* %RDI.i91
  %6684 = load i64, i64* %RBP.i92
  %6685 = sub i64 %6684, 1048
  %6686 = load i64, i64* %PC.i90
  %6687 = add i64 %6686, 6
  store i64 %6687, i64* %PC.i90
  %6688 = trunc i64 %6683 to i32
  %6689 = inttoptr i64 %6685 to i32*
  %6690 = load i32, i32* %6689
  %6691 = add i32 %6690, %6688
  %6692 = zext i32 %6691 to i64
  store i64 %6692, i64* %RDI.i91, align 8
  %6693 = icmp ult i32 %6691, %6688
  %6694 = icmp ult i32 %6691, %6690
  %6695 = or i1 %6693, %6694
  %6696 = zext i1 %6695 to i8
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6696, i8* %6697, align 1
  %6698 = and i32 %6691, 255
  %6699 = call i32 @llvm.ctpop.i32(i32 %6698)
  %6700 = trunc i32 %6699 to i8
  %6701 = and i8 %6700, 1
  %6702 = xor i8 %6701, 1
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6702, i8* %6703, align 1
  %6704 = xor i32 %6690, %6688
  %6705 = xor i32 %6704, %6691
  %6706 = lshr i32 %6705, 4
  %6707 = trunc i32 %6706 to i8
  %6708 = and i8 %6707, 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6708, i8* %6709, align 1
  %6710 = icmp eq i32 %6691, 0
  %6711 = zext i1 %6710 to i8
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6711, i8* %6712, align 1
  %6713 = lshr i32 %6691, 31
  %6714 = trunc i32 %6713 to i8
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6714, i8* %6715, align 1
  %6716 = lshr i32 %6688, 31
  %6717 = lshr i32 %6690, 31
  %6718 = xor i32 %6713, %6716
  %6719 = xor i32 %6713, %6717
  %6720 = add i32 %6718, %6719
  %6721 = icmp eq i32 %6720, 2
  %6722 = zext i1 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6722, i8* %6723, align 1
  store %struct.Memory* %loadMem_42795e, %struct.Memory** %MEMORY
  %loadMem_427964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 11
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %EDI.i88 = bitcast %union.anon* %6729 to i32*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 7
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %6732 to i64*
  %6733 = load i32, i32* %EDI.i88
  %6734 = zext i32 %6733 to i64
  %6735 = load i64, i64* %PC.i87
  %6736 = add i64 %6735, 3
  store i64 %6736, i64* %PC.i87
  %6737 = shl i64 %6734, 32
  %6738 = ashr exact i64 %6737, 32
  store i64 %6738, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_427964, %struct.Memory** %MEMORY
  %loadMem_427967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 9
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %SI.i85 = bitcast %union.anon* %6744 to i16*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 5
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %6747 to i64*
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 7
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6750 to i64*
  %6751 = load i64, i64* %RCX.i86
  %6752 = load i64, i64* %RDX.i
  %6753 = mul i64 %6752, 2
  %6754 = add i64 %6753, %6751
  %6755 = load i16, i16* %SI.i85
  %6756 = zext i16 %6755 to i64
  %6757 = load i64, i64* %PC.i84
  %6758 = add i64 %6757, 4
  store i64 %6758, i64* %PC.i84
  %6759 = inttoptr i64 %6754 to i16*
  store i16 %6755, i16* %6759
  store %struct.Memory* %loadMem_427967, %struct.Memory** %MEMORY
  %loadMem_42796b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 33
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 5
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %6765 to i64*
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 15
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %6768 to i64*
  %6769 = load i64, i64* %RBP.i83
  %6770 = sub i64 %6769, 1048
  %6771 = load i64, i64* %PC.i81
  %6772 = add i64 %6771, 7
  store i64 %6772, i64* %PC.i81
  %6773 = inttoptr i64 %6770 to i32*
  %6774 = load i32, i32* %6773
  %6775 = sext i32 %6774 to i64
  store i64 %6775, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_42796b, %struct.Memory** %MEMORY
  %loadMem_427972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 33
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6778 to i64*
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 5
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %6781 to i64*
  %6782 = load i64, i64* %RCX.i80
  %6783 = load i64, i64* %PC.i79
  %6784 = add i64 %6783, 4
  store i64 %6784, i64* %PC.i79
  %6785 = shl i64 %6782, 5
  %6786 = icmp slt i64 %6785, 0
  %6787 = shl i64 %6785, 1
  store i64 %6787, i64* %RCX.i80, align 8
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6789 = zext i1 %6786 to i8
  store i8 %6789, i8* %6788, align 1
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6791 = trunc i64 %6787 to i32
  %6792 = and i32 %6791, 254
  %6793 = call i32 @llvm.ctpop.i32(i32 %6792)
  %6794 = trunc i32 %6793 to i8
  %6795 = and i8 %6794, 1
  %6796 = xor i8 %6795, 1
  store i8 %6796, i8* %6790, align 1
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6797, align 1
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6799 = icmp eq i64 %6787, 0
  %6800 = zext i1 %6799 to i8
  store i8 %6800, i8* %6798, align 1
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6802 = lshr i64 %6787, 63
  %6803 = trunc i64 %6802 to i8
  store i8 %6803, i8* %6801, align 1
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6804, align 1
  store %struct.Memory* %loadMem_427972, %struct.Memory** %MEMORY
  %loadMem_427976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 33
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 1
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6810 to i64*
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 5
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %6813 to i64*
  %6814 = load i64, i64* %RAX.i77
  %6815 = load i64, i64* %RCX.i78
  %6816 = load i64, i64* %PC.i76
  %6817 = add i64 %6816, 3
  store i64 %6817, i64* %PC.i76
  %6818 = add i64 %6815, %6814
  store i64 %6818, i64* %RAX.i77, align 8
  %6819 = icmp ult i64 %6818, %6814
  %6820 = icmp ult i64 %6818, %6815
  %6821 = or i1 %6819, %6820
  %6822 = zext i1 %6821 to i8
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6822, i8* %6823, align 1
  %6824 = trunc i64 %6818 to i32
  %6825 = and i32 %6824, 255
  %6826 = call i32 @llvm.ctpop.i32(i32 %6825)
  %6827 = trunc i32 %6826 to i8
  %6828 = and i8 %6827, 1
  %6829 = xor i8 %6828, 1
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6829, i8* %6830, align 1
  %6831 = xor i64 %6815, %6814
  %6832 = xor i64 %6831, %6818
  %6833 = lshr i64 %6832, 4
  %6834 = trunc i64 %6833 to i8
  %6835 = and i8 %6834, 1
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6835, i8* %6836, align 1
  %6837 = icmp eq i64 %6818, 0
  %6838 = zext i1 %6837 to i8
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6838, i8* %6839, align 1
  %6840 = lshr i64 %6818, 63
  %6841 = trunc i64 %6840 to i8
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6841, i8* %6842, align 1
  %6843 = lshr i64 %6814, 63
  %6844 = lshr i64 %6815, 63
  %6845 = xor i64 %6840, %6843
  %6846 = xor i64 %6840, %6844
  %6847 = add i64 %6845, %6846
  %6848 = icmp eq i64 %6847, 2
  %6849 = zext i1 %6848 to i8
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6849, i8* %6850, align 1
  store %struct.Memory* %loadMem_427976, %struct.Memory** %MEMORY
  %loadMem_427979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6852 = getelementptr inbounds %struct.GPR, %struct.GPR* %6851, i32 0, i32 33
  %6853 = getelementptr inbounds %struct.Reg, %struct.Reg* %6852, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6853 to i64*
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6855 = getelementptr inbounds %struct.GPR, %struct.GPR* %6854, i32 0, i32 11
  %6856 = getelementptr inbounds %struct.Reg, %struct.Reg* %6855, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %6856 to i64*
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 15
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %6859 to i64*
  %6860 = load i64, i64* %RBP.i75
  %6861 = sub i64 %6860, 1052
  %6862 = load i64, i64* %PC.i73
  %6863 = add i64 %6862, 6
  store i64 %6863, i64* %PC.i73
  %6864 = inttoptr i64 %6861 to i32*
  %6865 = load i32, i32* %6864
  %6866 = zext i32 %6865 to i64
  store i64 %6866, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_427979, %struct.Memory** %MEMORY
  %loadMem_42797f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6868 = getelementptr inbounds %struct.GPR, %struct.GPR* %6867, i32 0, i32 33
  %6869 = getelementptr inbounds %struct.Reg, %struct.Reg* %6868, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6869 to i64*
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 11
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %RDI.i72 = bitcast %union.anon* %6872 to i64*
  %6873 = load i64, i64* %RDI.i72
  %6874 = load i64, i64* %PC.i71
  %6875 = add i64 %6874, 3
  store i64 %6875, i64* %PC.i71
  %6876 = trunc i64 %6873 to i32
  %6877 = add i32 16, %6876
  %6878 = zext i32 %6877 to i64
  store i64 %6878, i64* %RDI.i72, align 8
  %6879 = icmp ult i32 %6877, %6876
  %6880 = icmp ult i32 %6877, 16
  %6881 = or i1 %6879, %6880
  %6882 = zext i1 %6881 to i8
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6882, i8* %6883, align 1
  %6884 = and i32 %6877, 255
  %6885 = call i32 @llvm.ctpop.i32(i32 %6884)
  %6886 = trunc i32 %6885 to i8
  %6887 = and i8 %6886, 1
  %6888 = xor i8 %6887, 1
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6888, i8* %6889, align 1
  %6890 = xor i64 16, %6873
  %6891 = trunc i64 %6890 to i32
  %6892 = xor i32 %6891, %6877
  %6893 = lshr i32 %6892, 4
  %6894 = trunc i32 %6893 to i8
  %6895 = and i8 %6894, 1
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6895, i8* %6896, align 1
  %6897 = icmp eq i32 %6877, 0
  %6898 = zext i1 %6897 to i8
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6898, i8* %6899, align 1
  %6900 = lshr i32 %6877, 31
  %6901 = trunc i32 %6900 to i8
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6901, i8* %6902, align 1
  %6903 = lshr i32 %6876, 31
  %6904 = xor i32 %6900, %6903
  %6905 = add i32 %6904, %6900
  %6906 = icmp eq i32 %6905, 2
  %6907 = zext i1 %6906 to i8
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6907, i8* %6908, align 1
  store %struct.Memory* %loadMem_42797f, %struct.Memory** %MEMORY
  %loadMem_427982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 33
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6911 to i64*
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 11
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %EDI.i69 = bitcast %union.anon* %6914 to i32*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 5
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %6917 to i64*
  %6918 = load i32, i32* %EDI.i69
  %6919 = zext i32 %6918 to i64
  %6920 = load i64, i64* %PC.i68
  %6921 = add i64 %6920, 3
  store i64 %6921, i64* %PC.i68
  %6922 = shl i64 %6919, 32
  %6923 = ashr exact i64 %6922, 32
  store i64 %6923, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_427982, %struct.Memory** %MEMORY
  %loadMem_427985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 33
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6926 to i64*
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 9
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %SI.i65 = bitcast %union.anon* %6929 to i16*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 1
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %6932 to i64*
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 5
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %6935 to i64*
  %6936 = load i64, i64* %RAX.i66
  %6937 = load i64, i64* %RCX.i67
  %6938 = mul i64 %6937, 2
  %6939 = add i64 %6938, %6936
  %6940 = load i64, i64* %PC.i64
  %6941 = add i64 %6940, 4
  store i64 %6941, i64* %PC.i64
  %6942 = inttoptr i64 %6939 to i16*
  %6943 = load i16, i16* %6942
  store i16 %6943, i16* %SI.i65, align 2
  store %struct.Memory* %loadMem_427985, %struct.Memory** %MEMORY
  %loadMem_427989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 33
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 1
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 15
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6952 to i64*
  %6953 = load i64, i64* %RBP.i63
  %6954 = sub i64 %6953, 1032
  %6955 = load i64, i64* %PC.i61
  %6956 = add i64 %6955, 7
  store i64 %6956, i64* %PC.i61
  %6957 = inttoptr i64 %6954 to i64*
  %6958 = load i64, i64* %6957
  store i64 %6958, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_427989, %struct.Memory** %MEMORY
  %loadMem_427990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 33
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6961 to i64*
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 11
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %RDI.i59 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 15
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %6967 to i64*
  %6968 = load i64, i64* %RBP.i60
  %6969 = sub i64 %6968, 1060
  %6970 = load i64, i64* %PC.i58
  %6971 = add i64 %6970, 6
  store i64 %6971, i64* %PC.i58
  %6972 = inttoptr i64 %6969 to i32*
  %6973 = load i32, i32* %6972
  %6974 = zext i32 %6973 to i64
  store i64 %6974, i64* %RDI.i59, align 8
  store %struct.Memory* %loadMem_427990, %struct.Memory** %MEMORY
  %loadMem_427996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6976 = getelementptr inbounds %struct.GPR, %struct.GPR* %6975, i32 0, i32 33
  %6977 = getelementptr inbounds %struct.Reg, %struct.Reg* %6976, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6977 to i64*
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6979 = getelementptr inbounds %struct.GPR, %struct.GPR* %6978, i32 0, i32 17
  %6980 = getelementptr inbounds %struct.Reg, %struct.Reg* %6979, i32 0, i32 0
  %R8D.i56 = bitcast %union.anon* %6980 to i32*
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6982 = getelementptr inbounds %struct.GPR, %struct.GPR* %6981, i32 0, i32 15
  %6983 = getelementptr inbounds %struct.Reg, %struct.Reg* %6982, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %6983 to i64*
  %6984 = bitcast i32* %R8D.i56 to i64*
  %6985 = load i64, i64* %RBP.i57
  %6986 = sub i64 %6985, 1052
  %6987 = load i64, i64* %PC.i55
  %6988 = add i64 %6987, 7
  store i64 %6988, i64* %PC.i55
  %6989 = inttoptr i64 %6986 to i32*
  %6990 = load i32, i32* %6989
  %6991 = zext i32 %6990 to i64
  store i64 %6991, i64* %6984, align 8
  store %struct.Memory* %loadMem_427996, %struct.Memory** %MEMORY
  %loadMem_42799d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 33
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 17
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %R8D.i54 = bitcast %union.anon* %6997 to i32*
  %6998 = bitcast i32* %R8D.i54 to i64*
  %6999 = load i32, i32* %R8D.i54
  %7000 = zext i32 %6999 to i64
  %7001 = load i64, i64* %PC.i53
  %7002 = add i64 %7001, 3
  store i64 %7002, i64* %PC.i53
  %7003 = shl i32 %6999, 1
  %7004 = icmp slt i32 %6999, 0
  %7005 = icmp slt i32 %7003, 0
  %7006 = xor i1 %7004, %7005
  %7007 = zext i32 %7003 to i64
  store i64 %7007, i64* %6998, align 8
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7009 = zext i1 %7004 to i8
  store i8 %7009, i8* %7008, align 1
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7011 = and i32 %7003, 254
  %7012 = call i32 @llvm.ctpop.i32(i32 %7011)
  %7013 = trunc i32 %7012 to i8
  %7014 = and i8 %7013, 1
  %7015 = xor i8 %7014, 1
  store i8 %7015, i8* %7010, align 1
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7016, align 1
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7018 = icmp eq i32 %7003, 0
  %7019 = zext i1 %7018 to i8
  store i8 %7019, i8* %7017, align 1
  %7020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7021 = lshr i32 %7003, 31
  %7022 = trunc i32 %7021 to i8
  store i8 %7022, i8* %7020, align 1
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7024 = zext i1 %7006 to i8
  store i8 %7024, i8* %7023, align 1
  store %struct.Memory* %loadMem_42799d, %struct.Memory** %MEMORY
  %loadMem_4279a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 33
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 17
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %R8D.i52 = bitcast %union.anon* %7030 to i32*
  %7031 = bitcast i32* %R8D.i52 to i64*
  %7032 = load i32, i32* %R8D.i52
  %7033 = zext i32 %7032 to i64
  %7034 = load i64, i64* %PC.i51
  %7035 = add i64 %7034, 4
  store i64 %7035, i64* %PC.i51
  %7036 = add i32 1, %7032
  %7037 = zext i32 %7036 to i64
  store i64 %7037, i64* %7031, align 8
  %7038 = icmp ult i32 %7036, %7032
  %7039 = icmp ult i32 %7036, 1
  %7040 = or i1 %7038, %7039
  %7041 = zext i1 %7040 to i8
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7041, i8* %7042, align 1
  %7043 = and i32 %7036, 255
  %7044 = call i32 @llvm.ctpop.i32(i32 %7043)
  %7045 = trunc i32 %7044 to i8
  %7046 = and i8 %7045, 1
  %7047 = xor i8 %7046, 1
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7047, i8* %7048, align 1
  %7049 = xor i64 1, %7033
  %7050 = trunc i64 %7049 to i32
  %7051 = xor i32 %7050, %7036
  %7052 = lshr i32 %7051, 4
  %7053 = trunc i32 %7052 to i8
  %7054 = and i8 %7053, 1
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7054, i8* %7055, align 1
  %7056 = icmp eq i32 %7036, 0
  %7057 = zext i1 %7056 to i8
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7057, i8* %7058, align 1
  %7059 = lshr i32 %7036, 31
  %7060 = trunc i32 %7059 to i8
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7060, i8* %7061, align 1
  %7062 = lshr i32 %7032, 31
  %7063 = xor i32 %7059, %7062
  %7064 = add i32 %7063, %7059
  %7065 = icmp eq i32 %7064, 2
  %7066 = zext i1 %7065 to i8
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7066, i8* %7067, align 1
  store %struct.Memory* %loadMem_4279a1, %struct.Memory** %MEMORY
  %loadMem_4279a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7069 = getelementptr inbounds %struct.GPR, %struct.GPR* %7068, i32 0, i32 33
  %7070 = getelementptr inbounds %struct.Reg, %struct.Reg* %7069, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7070 to i64*
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7072 = getelementptr inbounds %struct.GPR, %struct.GPR* %7071, i32 0, i32 17
  %7073 = getelementptr inbounds %struct.Reg, %struct.Reg* %7072, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %7073 to i32*
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 11
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %RDI.i50 = bitcast %union.anon* %7076 to i64*
  %7077 = load i64, i64* %RDI.i50
  %7078 = load i32, i32* %R8D.i
  %7079 = zext i32 %7078 to i64
  %7080 = load i64, i64* %PC.i49
  %7081 = add i64 %7080, 3
  store i64 %7081, i64* %PC.i49
  %7082 = trunc i64 %7077 to i32
  %7083 = add i32 %7078, %7082
  %7084 = zext i32 %7083 to i64
  store i64 %7084, i64* %RDI.i50, align 8
  %7085 = icmp ult i32 %7083, %7082
  %7086 = icmp ult i32 %7083, %7078
  %7087 = or i1 %7085, %7086
  %7088 = zext i1 %7087 to i8
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7088, i8* %7089, align 1
  %7090 = and i32 %7083, 255
  %7091 = call i32 @llvm.ctpop.i32(i32 %7090)
  %7092 = trunc i32 %7091 to i8
  %7093 = and i8 %7092, 1
  %7094 = xor i8 %7093, 1
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7094, i8* %7095, align 1
  %7096 = xor i64 %7079, %7077
  %7097 = trunc i64 %7096 to i32
  %7098 = xor i32 %7097, %7083
  %7099 = lshr i32 %7098, 4
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7101, i8* %7102, align 1
  %7103 = icmp eq i32 %7083, 0
  %7104 = zext i1 %7103 to i8
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7104, i8* %7105, align 1
  %7106 = lshr i32 %7083, 31
  %7107 = trunc i32 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7107, i8* %7108, align 1
  %7109 = lshr i32 %7082, 31
  %7110 = lshr i32 %7078, 31
  %7111 = xor i32 %7106, %7109
  %7112 = xor i32 %7106, %7110
  %7113 = add i32 %7111, %7112
  %7114 = icmp eq i32 %7113, 2
  %7115 = zext i1 %7114 to i8
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7115, i8* %7116, align 1
  store %struct.Memory* %loadMem_4279a5, %struct.Memory** %MEMORY
  %loadMem_4279a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 33
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7119 to i64*
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 11
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %EDI.i47 = bitcast %union.anon* %7122 to i32*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 5
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %7125 to i64*
  %7126 = load i32, i32* %EDI.i47
  %7127 = zext i32 %7126 to i64
  %7128 = load i64, i64* %PC.i46
  %7129 = add i64 %7128, 3
  store i64 %7129, i64* %PC.i46
  %7130 = shl i64 %7127, 32
  %7131 = ashr exact i64 %7130, 32
  store i64 %7131, i64* %RCX.i48, align 8
  store %struct.Memory* %loadMem_4279a8, %struct.Memory** %MEMORY
  %loadMem_4279ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 33
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 1
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 5
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %RAX.i44
  %7142 = load i64, i64* %RCX.i45
  %7143 = mul i64 %7142, 8
  %7144 = add i64 %7143, %7141
  %7145 = load i64, i64* %PC.i43
  %7146 = add i64 %7145, 4
  store i64 %7146, i64* %PC.i43
  %7147 = inttoptr i64 %7144 to i64*
  %7148 = load i64, i64* %7147
  store i64 %7148, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_4279ab, %struct.Memory** %MEMORY
  %loadMem_4279af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 33
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 11
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %RDI.i41 = bitcast %union.anon* %7154 to i64*
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 15
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %7157 to i64*
  %7158 = load i64, i64* %RBP.i42
  %7159 = sub i64 %7158, 1056
  %7160 = load i64, i64* %PC.i40
  %7161 = add i64 %7160, 6
  store i64 %7161, i64* %PC.i40
  %7162 = inttoptr i64 %7159 to i32*
  %7163 = load i32, i32* %7162
  %7164 = zext i32 %7163 to i64
  store i64 %7164, i64* %RDI.i41, align 8
  store %struct.Memory* %loadMem_4279af, %struct.Memory** %MEMORY
  %loadMem_4279b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 33
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7167 to i64*
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 11
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 15
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %7173 to i64*
  %7174 = load i64, i64* %RDI.i
  %7175 = load i64, i64* %RBP.i39
  %7176 = sub i64 %7175, 1048
  %7177 = load i64, i64* %PC.i38
  %7178 = add i64 %7177, 6
  store i64 %7178, i64* %PC.i38
  %7179 = trunc i64 %7174 to i32
  %7180 = inttoptr i64 %7176 to i32*
  %7181 = load i32, i32* %7180
  %7182 = add i32 %7181, %7179
  %7183 = zext i32 %7182 to i64
  store i64 %7183, i64* %RDI.i, align 8
  %7184 = icmp ult i32 %7182, %7179
  %7185 = icmp ult i32 %7182, %7181
  %7186 = or i1 %7184, %7185
  %7187 = zext i1 %7186 to i8
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7187, i8* %7188, align 1
  %7189 = and i32 %7182, 255
  %7190 = call i32 @llvm.ctpop.i32(i32 %7189)
  %7191 = trunc i32 %7190 to i8
  %7192 = and i8 %7191, 1
  %7193 = xor i8 %7192, 1
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7193, i8* %7194, align 1
  %7195 = xor i32 %7181, %7179
  %7196 = xor i32 %7195, %7182
  %7197 = lshr i32 %7196, 4
  %7198 = trunc i32 %7197 to i8
  %7199 = and i8 %7198, 1
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7199, i8* %7200, align 1
  %7201 = icmp eq i32 %7182, 0
  %7202 = zext i1 %7201 to i8
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7202, i8* %7203, align 1
  %7204 = lshr i32 %7182, 31
  %7205 = trunc i32 %7204 to i8
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7205, i8* %7206, align 1
  %7207 = lshr i32 %7179, 31
  %7208 = lshr i32 %7181, 31
  %7209 = xor i32 %7204, %7207
  %7210 = xor i32 %7204, %7208
  %7211 = add i32 %7209, %7210
  %7212 = icmp eq i32 %7211, 2
  %7213 = zext i1 %7212 to i8
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7213, i8* %7214, align 1
  store %struct.Memory* %loadMem_4279b5, %struct.Memory** %MEMORY
  %loadMem_4279bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 11
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7220 to i32*
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 5
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %7223 to i64*
  %7224 = load i32, i32* %EDI.i
  %7225 = zext i32 %7224 to i64
  %7226 = load i64, i64* %PC.i36
  %7227 = add i64 %7226, 3
  store i64 %7227, i64* %PC.i36
  %7228 = shl i64 %7225, 32
  %7229 = ashr exact i64 %7228, 32
  store i64 %7229, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_4279bb, %struct.Memory** %MEMORY
  %loadMem_4279be = load %struct.Memory*, %struct.Memory** %MEMORY
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 33
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7232 to i64*
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7234 = getelementptr inbounds %struct.GPR, %struct.GPR* %7233, i32 0, i32 9
  %7235 = getelementptr inbounds %struct.Reg, %struct.Reg* %7234, i32 0, i32 0
  %SI.i = bitcast %union.anon* %7235 to i16*
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 1
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %7238 to i64*
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 5
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %RAX.i35
  %7243 = load i64, i64* %RCX.i
  %7244 = mul i64 %7243, 2
  %7245 = add i64 %7244, %7242
  %7246 = load i16, i16* %SI.i
  %7247 = zext i16 %7246 to i64
  %7248 = load i64, i64* %PC.i34
  %7249 = add i64 %7248, 4
  store i64 %7249, i64* %PC.i34
  %7250 = inttoptr i64 %7245 to i16*
  store i16 %7246, i16* %7250
  store %struct.Memory* %loadMem_4279be, %struct.Memory** %MEMORY
  %loadMem_4279c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 33
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7253 to i64*
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7255 = getelementptr inbounds %struct.GPR, %struct.GPR* %7254, i32 0, i32 1
  %7256 = getelementptr inbounds %struct.Reg, %struct.Reg* %7255, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %7256 to i64*
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7258 = getelementptr inbounds %struct.GPR, %struct.GPR* %7257, i32 0, i32 15
  %7259 = getelementptr inbounds %struct.Reg, %struct.Reg* %7258, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %7259 to i64*
  %7260 = load i64, i64* %RBP.i33
  %7261 = sub i64 %7260, 1048
  %7262 = load i64, i64* %PC.i31
  %7263 = add i64 %7262, 6
  store i64 %7263, i64* %PC.i31
  %7264 = inttoptr i64 %7261 to i32*
  %7265 = load i32, i32* %7264
  %7266 = zext i32 %7265 to i64
  store i64 %7266, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_4279c2, %struct.Memory** %MEMORY
  %loadMem_4279c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 33
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7269 to i64*
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 1
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7272 to i64*
  %7273 = load i64, i64* %RAX.i30
  %7274 = load i64, i64* %PC.i29
  %7275 = add i64 %7274, 3
  store i64 %7275, i64* %PC.i29
  %7276 = trunc i64 %7273 to i32
  %7277 = add i32 1, %7276
  %7278 = zext i32 %7277 to i64
  store i64 %7278, i64* %RAX.i30, align 8
  %7279 = icmp ult i32 %7277, %7276
  %7280 = icmp ult i32 %7277, 1
  %7281 = or i1 %7279, %7280
  %7282 = zext i1 %7281 to i8
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7282, i8* %7283, align 1
  %7284 = and i32 %7277, 255
  %7285 = call i32 @llvm.ctpop.i32(i32 %7284)
  %7286 = trunc i32 %7285 to i8
  %7287 = and i8 %7286, 1
  %7288 = xor i8 %7287, 1
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7288, i8* %7289, align 1
  %7290 = xor i64 1, %7273
  %7291 = trunc i64 %7290 to i32
  %7292 = xor i32 %7291, %7277
  %7293 = lshr i32 %7292, 4
  %7294 = trunc i32 %7293 to i8
  %7295 = and i8 %7294, 1
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7295, i8* %7296, align 1
  %7297 = icmp eq i32 %7277, 0
  %7298 = zext i1 %7297 to i8
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7298, i8* %7299, align 1
  %7300 = lshr i32 %7277, 31
  %7301 = trunc i32 %7300 to i8
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7301, i8* %7302, align 1
  %7303 = lshr i32 %7276, 31
  %7304 = xor i32 %7300, %7303
  %7305 = add i32 %7304, %7300
  %7306 = icmp eq i32 %7305, 2
  %7307 = zext i1 %7306 to i8
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7307, i8* %7308, align 1
  store %struct.Memory* %loadMem_4279c8, %struct.Memory** %MEMORY
  %loadMem_4279cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 33
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7311 to i64*
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 1
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %7314 to i32*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 15
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7317 to i64*
  %7318 = load i64, i64* %RBP.i28
  %7319 = sub i64 %7318, 1048
  %7320 = load i32, i32* %EAX.i27
  %7321 = zext i32 %7320 to i64
  %7322 = load i64, i64* %PC.i26
  %7323 = add i64 %7322, 6
  store i64 %7323, i64* %PC.i26
  %7324 = inttoptr i64 %7319 to i32*
  store i32 %7320, i32* %7324
  store %struct.Memory* %loadMem_4279cb, %struct.Memory** %MEMORY
  %loadMem_4279d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7326 = getelementptr inbounds %struct.GPR, %struct.GPR* %7325, i32 0, i32 33
  %7327 = getelementptr inbounds %struct.Reg, %struct.Reg* %7326, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7327 to i64*
  %7328 = load i64, i64* %PC.i25
  %7329 = add i64 %7328, -203
  %7330 = load i64, i64* %PC.i25
  %7331 = add i64 %7330, 5
  store i64 %7331, i64* %PC.i25
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7329, i64* %7332, align 8
  store %struct.Memory* %loadMem_4279d1, %struct.Memory** %MEMORY
  br label %block_.L_427906

block_.L_4279d6:                                  ; preds = %block_.L_427906
  %loadMem_4279d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 33
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7335 to i64*
  %7336 = load i64, i64* %PC.i24
  %7337 = add i64 %7336, 5
  %7338 = load i64, i64* %PC.i24
  %7339 = add i64 %7338, 5
  store i64 %7339, i64* %PC.i24
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7337, i64* %7340, align 8
  store %struct.Memory* %loadMem_4279d6, %struct.Memory** %MEMORY
  br label %block_.L_4279db

block_.L_4279db:                                  ; preds = %block_.L_4279d6
  %loadMem_4279db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 1
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 15
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %RBP.i23
  %7351 = sub i64 %7350, 1052
  %7352 = load i64, i64* %PC.i21
  %7353 = add i64 %7352, 6
  store i64 %7353, i64* %PC.i21
  %7354 = inttoptr i64 %7351 to i32*
  %7355 = load i32, i32* %7354
  %7356 = zext i32 %7355 to i64
  store i64 %7356, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_4279db, %struct.Memory** %MEMORY
  %loadMem_4279e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 33
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7359 to i64*
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 1
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %7362 to i64*
  %7363 = load i64, i64* %RAX.i20
  %7364 = load i64, i64* %PC.i19
  %7365 = add i64 %7364, 3
  store i64 %7365, i64* %PC.i19
  %7366 = trunc i64 %7363 to i32
  %7367 = add i32 1, %7366
  %7368 = zext i32 %7367 to i64
  store i64 %7368, i64* %RAX.i20, align 8
  %7369 = icmp ult i32 %7367, %7366
  %7370 = icmp ult i32 %7367, 1
  %7371 = or i1 %7369, %7370
  %7372 = zext i1 %7371 to i8
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7372, i8* %7373, align 1
  %7374 = and i32 %7367, 255
  %7375 = call i32 @llvm.ctpop.i32(i32 %7374)
  %7376 = trunc i32 %7375 to i8
  %7377 = and i8 %7376, 1
  %7378 = xor i8 %7377, 1
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7378, i8* %7379, align 1
  %7380 = xor i64 1, %7363
  %7381 = trunc i64 %7380 to i32
  %7382 = xor i32 %7381, %7367
  %7383 = lshr i32 %7382, 4
  %7384 = trunc i32 %7383 to i8
  %7385 = and i8 %7384, 1
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7385, i8* %7386, align 1
  %7387 = icmp eq i32 %7367, 0
  %7388 = zext i1 %7387 to i8
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7388, i8* %7389, align 1
  %7390 = lshr i32 %7367, 31
  %7391 = trunc i32 %7390 to i8
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7391, i8* %7392, align 1
  %7393 = lshr i32 %7366, 31
  %7394 = xor i32 %7390, %7393
  %7395 = add i32 %7394, %7390
  %7396 = icmp eq i32 %7395, 2
  %7397 = zext i1 %7396 to i8
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7397, i8* %7398, align 1
  store %struct.Memory* %loadMem_4279e1, %struct.Memory** %MEMORY
  %loadMem_4279e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 33
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7401 to i64*
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 1
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %7404 to i32*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 15
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7407 to i64*
  %7408 = load i64, i64* %RBP.i18
  %7409 = sub i64 %7408, 1052
  %7410 = load i32, i32* %EAX.i17
  %7411 = zext i32 %7410 to i64
  %7412 = load i64, i64* %PC.i16
  %7413 = add i64 %7412, 6
  store i64 %7413, i64* %PC.i16
  %7414 = inttoptr i64 %7409 to i32*
  store i32 %7410, i32* %7414
  store %struct.Memory* %loadMem_4279e4, %struct.Memory** %MEMORY
  %loadMem_4279ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 33
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7417 to i64*
  %7418 = load i64, i64* %PC.i15
  %7419 = add i64 %7418, -251
  %7420 = load i64, i64* %PC.i15
  %7421 = add i64 %7420, 5
  store i64 %7421, i64* %PC.i15
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7419, i64* %7422, align 8
  store %struct.Memory* %loadMem_4279ea, %struct.Memory** %MEMORY
  br label %block_.L_4278ef

block_.L_4279ef:                                  ; preds = %block_.L_4278ef
  %loadMem_4279ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 33
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7425 to i64*
  %7426 = load i64, i64* %PC.i14
  %7427 = add i64 %7426, 5
  %7428 = load i64, i64* %PC.i14
  %7429 = add i64 %7428, 5
  store i64 %7429, i64* %PC.i14
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7427, i64* %7430, align 8
  store %struct.Memory* %loadMem_4279ef, %struct.Memory** %MEMORY
  br label %block_.L_4279f4

block_.L_4279f4:                                  ; preds = %block_.L_4279ef, %block_427804
  %loadMem_4279f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 33
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7433 to i64*
  %7434 = load i64, i64* %PC.i13
  %7435 = add i64 %7434, 5
  %7436 = load i64, i64* %PC.i13
  %7437 = add i64 %7436, 5
  store i64 %7437, i64* %PC.i13
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7435, i64* %7438, align 8
  store %struct.Memory* %loadMem_4279f4, %struct.Memory** %MEMORY
  br label %block_.L_4279f9

block_.L_4279f9:                                  ; preds = %block_.L_4279f4
  %loadMem_4279f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 33
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 1
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %7444 to i64*
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7446 = getelementptr inbounds %struct.GPR, %struct.GPR* %7445, i32 0, i32 15
  %7447 = getelementptr inbounds %struct.Reg, %struct.Reg* %7446, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7447 to i64*
  %7448 = load i64, i64* %RBP.i12
  %7449 = sub i64 %7448, 1044
  %7450 = load i64, i64* %PC.i10
  %7451 = add i64 %7450, 6
  store i64 %7451, i64* %PC.i10
  %7452 = inttoptr i64 %7449 to i32*
  %7453 = load i32, i32* %7452
  %7454 = zext i32 %7453 to i64
  store i64 %7454, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4279f9, %struct.Memory** %MEMORY
  %loadMem_4279ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7456 = getelementptr inbounds %struct.GPR, %struct.GPR* %7455, i32 0, i32 33
  %7457 = getelementptr inbounds %struct.Reg, %struct.Reg* %7456, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7457 to i64*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 1
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7460 to i64*
  %7461 = load i64, i64* %RAX.i
  %7462 = load i64, i64* %PC.i9
  %7463 = add i64 %7462, 3
  store i64 %7463, i64* %PC.i9
  %7464 = trunc i64 %7461 to i32
  %7465 = add i32 2, %7464
  %7466 = zext i32 %7465 to i64
  store i64 %7466, i64* %RAX.i, align 8
  %7467 = icmp ult i32 %7465, %7464
  %7468 = icmp ult i32 %7465, 2
  %7469 = or i1 %7467, %7468
  %7470 = zext i1 %7469 to i8
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7470, i8* %7471, align 1
  %7472 = and i32 %7465, 255
  %7473 = call i32 @llvm.ctpop.i32(i32 %7472)
  %7474 = trunc i32 %7473 to i8
  %7475 = and i8 %7474, 1
  %7476 = xor i8 %7475, 1
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7476, i8* %7477, align 1
  %7478 = xor i64 2, %7461
  %7479 = trunc i64 %7478 to i32
  %7480 = xor i32 %7479, %7465
  %7481 = lshr i32 %7480, 4
  %7482 = trunc i32 %7481 to i8
  %7483 = and i8 %7482, 1
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7483, i8* %7484, align 1
  %7485 = icmp eq i32 %7465, 0
  %7486 = zext i1 %7485 to i8
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7486, i8* %7487, align 1
  %7488 = lshr i32 %7465, 31
  %7489 = trunc i32 %7488 to i8
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7489, i8* %7490, align 1
  %7491 = lshr i32 %7464, 31
  %7492 = xor i32 %7488, %7491
  %7493 = add i32 %7492, %7488
  %7494 = icmp eq i32 %7493, 2
  %7495 = zext i1 %7494 to i8
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7495, i8* %7496, align 1
  store %struct.Memory* %loadMem_4279ff, %struct.Memory** %MEMORY
  %loadMem_427a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7499 to i64*
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7501 = getelementptr inbounds %struct.GPR, %struct.GPR* %7500, i32 0, i32 1
  %7502 = getelementptr inbounds %struct.Reg, %struct.Reg* %7501, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7502 to i32*
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 15
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7505 to i64*
  %7506 = load i64, i64* %RBP.i8
  %7507 = sub i64 %7506, 1044
  %7508 = load i32, i32* %EAX.i
  %7509 = zext i32 %7508 to i64
  %7510 = load i64, i64* %PC.i7
  %7511 = add i64 %7510, 6
  store i64 %7511, i64* %PC.i7
  %7512 = inttoptr i64 %7507 to i32*
  store i32 %7508, i32* %7512
  store %struct.Memory* %loadMem_427a02, %struct.Memory** %MEMORY
  %loadMem_427a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7515 to i64*
  %7516 = load i64, i64* %PC.i6
  %7517 = add i64 %7516, -542
  %7518 = load i64, i64* %PC.i6
  %7519 = add i64 %7518, 5
  store i64 %7519, i64* %PC.i6
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7517, i64* %7520, align 8
  store %struct.Memory* %loadMem_427a08, %struct.Memory** %MEMORY
  br label %block_.L_4277ea

block_.L_427a0d:                                  ; preds = %block_.L_4277ea
  %loadMem_427a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 33
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7523 to i64*
  %7524 = load i64, i64* %PC.i5
  %7525 = add i64 %7524, 5
  %7526 = load i64, i64* %PC.i5
  %7527 = add i64 %7526, 5
  store i64 %7527, i64* %PC.i5
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7525, i64* %7528, align 8
  store %struct.Memory* %loadMem_427a0d, %struct.Memory** %MEMORY
  br label %block_.L_427a12

block_.L_427a12:                                  ; preds = %block_.L_427a0d, %block_.L_4277db
  %loadMem_427a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 33
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7531 to i64*
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7533 = getelementptr inbounds %struct.GPR, %struct.GPR* %7532, i32 0, i32 13
  %7534 = getelementptr inbounds %struct.Reg, %struct.Reg* %7533, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7534 to i64*
  %7535 = load i64, i64* %RSP.i
  %7536 = load i64, i64* %PC.i4
  %7537 = add i64 %7536, 7
  store i64 %7537, i64* %PC.i4
  %7538 = add i64 1104, %7535
  store i64 %7538, i64* %RSP.i, align 8
  %7539 = icmp ult i64 %7538, %7535
  %7540 = icmp ult i64 %7538, 1104
  %7541 = or i1 %7539, %7540
  %7542 = zext i1 %7541 to i8
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7542, i8* %7543, align 1
  %7544 = trunc i64 %7538 to i32
  %7545 = and i32 %7544, 255
  %7546 = call i32 @llvm.ctpop.i32(i32 %7545)
  %7547 = trunc i32 %7546 to i8
  %7548 = and i8 %7547, 1
  %7549 = xor i8 %7548, 1
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7549, i8* %7550, align 1
  %7551 = xor i64 1104, %7535
  %7552 = xor i64 %7551, %7538
  %7553 = lshr i64 %7552, 4
  %7554 = trunc i64 %7553 to i8
  %7555 = and i8 %7554, 1
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7555, i8* %7556, align 1
  %7557 = icmp eq i64 %7538, 0
  %7558 = zext i1 %7557 to i8
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7558, i8* %7559, align 1
  %7560 = lshr i64 %7538, 63
  %7561 = trunc i64 %7560 to i8
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7561, i8* %7562, align 1
  %7563 = lshr i64 %7535, 63
  %7564 = xor i64 %7560, %7563
  %7565 = add i64 %7564, %7560
  %7566 = icmp eq i64 %7565, 2
  %7567 = zext i1 %7566 to i8
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7567, i8* %7568, align 1
  store %struct.Memory* %loadMem_427a12, %struct.Memory** %MEMORY
  %loadMem_427a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7570 = getelementptr inbounds %struct.GPR, %struct.GPR* %7569, i32 0, i32 33
  %7571 = getelementptr inbounds %struct.Reg, %struct.Reg* %7570, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7571 to i64*
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7573 = getelementptr inbounds %struct.GPR, %struct.GPR* %7572, i32 0, i32 15
  %7574 = getelementptr inbounds %struct.Reg, %struct.Reg* %7573, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7574 to i64*
  %7575 = load i64, i64* %PC.i2
  %7576 = add i64 %7575, 1
  store i64 %7576, i64* %PC.i2
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7578 = load i64, i64* %7577, align 8
  %7579 = add i64 %7578, 8
  %7580 = inttoptr i64 %7578 to i64*
  %7581 = load i64, i64* %7580
  store i64 %7581, i64* %RBP.i3, align 8
  store i64 %7579, i64* %7577, align 8
  store %struct.Memory* %loadMem_427a19, %struct.Memory** %MEMORY
  %loadMem_427a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 33
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7584 to i64*
  %7585 = load i64, i64* %PC.i1
  %7586 = add i64 %7585, 1
  store i64 %7586, i64* %PC.i1
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7589 = load i64, i64* %7588, align 8
  %7590 = inttoptr i64 %7589 to i64*
  %7591 = load i64, i64* %7590
  store i64 %7591, i64* %7587, align 8
  %7592 = add i64 %7589, 8
  store i64 %7592, i64* %7588, align 8
  store %struct.Memory* %loadMem_427a1a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_427a1a
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

define %struct.Memory* @routine_subq__0x450___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1104
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1104
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
  %23 = xor i64 1104, %9
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

define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x408__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x410__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72700
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

define %struct.Memory* @routine_je_.L_4277e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x414__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1044
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_0x11b24__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 72484
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_4277db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1948__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6472
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x414__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4277c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x420__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x424__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x414__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x20__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 32
  %16 = icmp ult i32 %14, 32
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
  %25 = xor i32 %14, 32
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

define %struct.Memory* @routine_jge_.L_4273e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1048
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1048
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jge_.L_4273c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x424__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x41c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x420__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x418__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movw___rcx__rsi_2____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  store i16 %22, i16* %DI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 5
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

define %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
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

define %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42735a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4273cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_427343(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jge_.L_4274eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4274d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  store i16 %22, i16* %SI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = shl i32 %10, 1
  %15 = icmp slt i32 %10, 0
  %16 = icmp slt i32 %14, 0
  %17 = xor i1 %15, %16
  %18 = zext i32 %14 to i64
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %20 = zext i1 %15 to i8
  store i8 %20, i8* %19, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %14, 254
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %14, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = lshr i32 %14, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %35 = zext i1 %17 to i8
  store i8 %35, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r8d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDI, align 8
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

define %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i16*
  store i16 %19, i16* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x10___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 16, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  store i16 %22, i16* %SI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x408__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = add i32 1, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 1
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 1, %11
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, %14
  %30 = lshr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i32 %14, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %10, 31
  %41 = xor i32 %37, %40
  %42 = add i32 %41, %37
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i16*
  store i16 %19, i16* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_427402(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4274d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4273eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x420__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x438__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1080
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x438__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11c04__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72708
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %10 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = shl i64 %20, 32
  %25 = or i64 %24, %16
  %26 = sdiv i64 %25, %23
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %block_400488
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = srem i64 %25, %23
  %36 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %37 = and i64 %26, 4294967295
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %39 = and i64 %35, 4294967295
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %34
  %46 = phi %struct.Memory* [ %33, %30 ], [ %2, %34 ]
  ret %struct.Memory* %46
}

define %struct.Memory* @routine_movl__eax__MINUS0x43c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1084
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x43c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1084
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 2
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

define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x424__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x42c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1068
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x440__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1088
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11c08__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72712
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %10 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = shl i64 %20, 32
  %25 = or i64 %24, %16
  %26 = sdiv i64 %25, %23
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %block_400488
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = srem i64 %25, %23
  %36 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %37 = and i64 %26, 4294967295
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %39 = and i64 %35, 4294967295
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %34
  %46 = phi %struct.Memory* [ %33, %30 ], [ %2, %34 ]
  ret %struct.Memory* %46
}

define %struct.Memory* @routine_movl_MINUS0x440__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x444__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1092
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1064
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1064
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

define %struct.Memory* @routine_jge_.L_4277bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11c08__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42765f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 72708
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_427646(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x410__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x41c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x420__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x418__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movw___rcx__rdx_2____di(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  store i16 %22, i16* %DI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4275c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42764b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 72712
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_4277a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_42778b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x11c08__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 72712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x410__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42768d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427790(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427669(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4277a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x428__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_427580(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4277c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4277c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4272e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427a12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_427a0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4279f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4278e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4278cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42785e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4278d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_427847(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4279ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4279d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_427906(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4279db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4278ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4279f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4279f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4277ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x450___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1104, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1104
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
  %25 = xor i64 1104, %9
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
