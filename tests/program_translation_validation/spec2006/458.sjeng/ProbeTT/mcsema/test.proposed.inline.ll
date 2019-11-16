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
%G_0x62ea14_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x8644f8_type = type <{ [8 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d4_type = type <{ [4 x i8] }>
%G_0x8667a4_type = type <{ [4 x i8] }>
%G_0x881df4_type = type <{ [4 x i8] }>
%G_0x886a70_type = type <{ [8 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
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
@G_0x62ea14 = global %G_0x62ea14_type zeroinitializer
@G_0x633b40 = global %G_0x633b40_type zeroinitializer
@G_0x8644f8 = global %G_0x8644f8_type zeroinitializer
@G_0x8661bc = global %G_0x8661bc_type zeroinitializer
@G_0x8661d4 = global %G_0x8661d4_type zeroinitializer
@G_0x8667a4 = global %G_0x8667a4_type zeroinitializer
@G_0x881df4 = global %G_0x881df4_type zeroinitializer
@G_0x886a70 = global %G_0x886a70_type zeroinitializer
@G_0x886bc0 = global %G_0x886bc0_type zeroinitializer

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
define %struct.Memory* @ProbeTT(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_420d90 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_420d90, %struct.Memory** %MEMORY
  %loadMem_420d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i734
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i734
  store i64 %26, i64* %RBP.i735, align 8
  store %struct.Memory* %loadMem_420d91, %struct.Memory** %MEMORY
  %loadMem_420d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i766 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i767
  %39 = sub i64 %38, 16
  %40 = load i64, i64* %RDI.i766
  %41 = load i64, i64* %PC.i765
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i765
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_420d94, %struct.Memory** %MEMORY
  %loadMem_420d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %ESI.i763 = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i764
  %54 = sub i64 %53, 20
  %55 = load i32, i32* %ESI.i763
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC.i762
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i762
  %59 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %59
  store %struct.Memory* %loadMem_420d98, %struct.Memory** %MEMORY
  %loadMem_420d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RDX.i760 = bitcast %union.anon* %65 to i64*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i761
  %70 = sub i64 %69, 32
  %71 = load i64, i64* %RDX.i760
  %72 = load i64, i64* %PC.i759
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC.i759
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74
  store %struct.Memory* %loadMem_420d9b, %struct.Memory** %MEMORY
  %loadMem_420d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i757 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i758
  %85 = sub i64 %84, 40
  %86 = load i64, i64* %RCX.i757
  %87 = load i64, i64* %PC.i756
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i756
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_420d9f, %struct.Memory** %MEMORY
  %loadMem_420da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 17
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %R8.i = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i755
  %100 = sub i64 %99, 48
  %101 = load i64, i64* %R8.i
  %102 = load i64, i64* %PC.i754
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i754
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104
  store %struct.Memory* %loadMem_420da3, %struct.Memory** %MEMORY
  %loadMem_420da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 19
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %110 to i32*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i753
  %115 = sub i64 %114, 52
  %116 = load i32, i32* %R9D.i
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i752
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i752
  %120 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %120
  store %struct.Memory* %loadMem_420da7, %struct.Memory** %MEMORY
  %loadMem_420dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i751
  %131 = sub i64 %130, 48
  %132 = load i64, i64* %PC.i749
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i749
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %RCX.i750, align 8
  store %struct.Memory* %loadMem_420dab, %struct.Memory** %MEMORY
  %loadMem_420daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %RCX.i748
  %143 = load i64, i64* %PC.i747
  %144 = add i64 %143, 6
  store i64 %144, i64* %PC.i747
  %145 = inttoptr i64 %142 to i32*
  store i32 1, i32* %145
  store %struct.Memory* %loadMem_420daf, %struct.Memory** %MEMORY
  %loadMem_420db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RSI.i746 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %PC.i745
  %153 = add i64 %152, 7
  store i64 %153, i64* %PC.i745
  %154 = load i32, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*)
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RSI.i746, align 8
  store %struct.Memory* %loadMem_420db5, %struct.Memory** %MEMORY
  %loadMem_420dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RSI.i744 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RSI.i744
  %163 = load i64, i64* %PC.i743
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i743
  %165 = trunc i64 %162 to i32
  %166 = add i32 1, %165
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RSI.i744, align 8
  %168 = icmp ult i32 %166, %165
  %169 = icmp ult i32 %166, 1
  %170 = or i1 %168, %169
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %171, i8* %172, align 1
  %173 = and i32 %166, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = xor i64 1, %162
  %180 = trunc i64 %179 to i32
  %181 = xor i32 %180, %166
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %184, i8* %185, align 1
  %186 = icmp eq i32 %166, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %166, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %165, 31
  %193 = xor i32 %189, %192
  %194 = add i32 %193, %189
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1
  store %struct.Memory* %loadMem_420dbc, %struct.Memory** %MEMORY
  %loadMem_420dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %ESI.i742 = bitcast %union.anon* %203 to i32*
  %204 = load i32, i32* %ESI.i742
  %205 = zext i32 %204 to i64
  %206 = load i64, i64* %PC.i741
  %207 = add i64 %206, 7
  store i64 %207, i64* %PC.i741
  store i32 %204, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*)
  store %struct.Memory* %loadMem_420dbf, %struct.Memory** %MEMORY
  %loadMem_420dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %PC.i739
  %215 = add i64 %214, 7
  store i64 %215, i64* %PC.i739
  %216 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i740, align 8
  store %struct.Memory* %loadMem_420dc6, %struct.Memory** %MEMORY
  %loadMem_420dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %EDX.i737 = bitcast %union.anon* %223 to i32*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RDX.i738 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RDX.i738
  %228 = load i32, i32* %EDX.i737
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC.i736
  %231 = add i64 %230, 2
  store i64 %231, i64* %PC.i736
  %232 = xor i64 %229, %227
  %233 = trunc i64 %232 to i32
  %234 = and i64 %232, 4294967295
  store i64 %234, i64* %RDX.i738, align 8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %235, align 1
  %236 = and i32 %233, 255
  %237 = call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %240, i8* %241, align 1
  %242 = icmp eq i32 %233, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1
  %245 = lshr i32 %233, 31
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %248, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %249, align 1
  store %struct.Memory* %loadMem_420dcd, %struct.Memory** %MEMORY
  %loadMem_420dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %PC.i733
  %254 = add i64 %253, 7
  store i64 %254, i64* %PC.i733
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %256 = bitcast %union.anon* %255 to i32*
  %257 = load i32, i32* %256, align 8
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %260 = bitcast %union.anon* %259 to i32*
  %261 = load i32, i32* %260, align 8
  %262 = zext i32 %261 to i64
  %263 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*)
  %264 = zext i32 %263 to i64
  %265 = shl i64 %262, 32
  %266 = or i64 %265, %258
  %267 = udiv i64 %266, %264
  %268 = and i64 %267, 4294967295
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %274, label %270

; <label>:270:                                    ; preds = %entry
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %272, %struct.Memory* %loadMem_420dcf)
  br label %routine_divl_0x8661d4.exit

; <label>:274:                                    ; preds = %entry
  %275 = urem i64 %266, %264
  %276 = getelementptr inbounds %union.anon, %union.anon* %255, i64 0, i32 0
  store i64 %267, i64* %276, align 8
  %277 = getelementptr inbounds %union.anon, %union.anon* %259, i64 0, i32 0
  store i64 %275, i64* %277, align 8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %278, align 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %279, align 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %280, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %281, align 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %282, align 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %283, align 1
  br label %routine_divl_0x8661d4.exit

routine_divl_0x8661d4.exit:                       ; preds = %270, %274
  %284 = phi %struct.Memory* [ %273, %270 ], [ %loadMem_420dcf, %274 ]
  store %struct.Memory* %284, %struct.Memory** %MEMORY
  %loadMem_420dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 7
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %EDX.i731 = bitcast %union.anon* %290 to i32*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 15
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %293 to i64*
  %294 = load i64, i64* %RBP.i732
  %295 = sub i64 %294, 56
  %296 = load i32, i32* %EDX.i731
  %297 = zext i32 %296 to i64
  %298 = load i64, i64* %PC.i730
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i730
  %300 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %300
  store %struct.Memory* %loadMem_420dd6, %struct.Memory** %MEMORY
  %loadMem_420dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %PC.i728
  %308 = add i64 %307, 8
  store i64 %308, i64* %PC.i728
  %309 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %309, i64* %RCX.i729, align 8
  store %struct.Memory* %loadMem_420dd9, %struct.Memory** %MEMORY
  %loadMem_420de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 7
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RBP.i727
  %320 = sub i64 %319, 56
  %321 = load i64, i64* %PC.i725
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i725
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RDX.i726, align 8
  store %struct.Memory* %loadMem_420de1, %struct.Memory** %MEMORY
  %loadMem_420de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %EDX.i723 = bitcast %union.anon* %331 to i32*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 11
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RDI.i724 = bitcast %union.anon* %334 to i64*
  %335 = load i32, i32* %EDX.i723
  %336 = zext i32 %335 to i64
  %337 = load i64, i64* %PC.i722
  %338 = add i64 %337, 2
  store i64 %338, i64* %PC.i722
  %339 = and i64 %336, 4294967295
  store i64 %339, i64* %RDI.i724, align 8
  store %struct.Memory* %loadMem_420de4, %struct.Memory** %MEMORY
  %loadMem_420de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 11
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RDI.i721 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RDI.i721
  %347 = load i64, i64* %PC.i720
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC.i720
  %349 = sext i64 %346 to i128
  %350 = and i128 %349, -18446744073709551616
  %351 = zext i64 %346 to i128
  %352 = or i128 %350, %351
  %353 = mul i128 20, %352
  %354 = trunc i128 %353 to i64
  store i64 %354, i64* %RDI.i721, align 8
  %355 = sext i64 %354 to i128
  %356 = icmp ne i128 %355, %353
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %357, i8* %358, align 1
  %359 = trunc i128 %353 to i32
  %360 = and i32 %359, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %366, align 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %367, align 1
  %368 = lshr i64 %354, 63
  %369 = trunc i64 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %369, i8* %370, align 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %357, i8* %371, align 1
  store %struct.Memory* %loadMem_420de6, %struct.Memory** %MEMORY
  %loadMem_420dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 11
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RDI.i719 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RCX.i718
  %382 = load i64, i64* %RDI.i719
  %383 = load i64, i64* %PC.i717
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i717
  %385 = add i64 %382, %381
  store i64 %385, i64* %RCX.i718, align 8
  %386 = icmp ult i64 %385, %381
  %387 = icmp ult i64 %385, %382
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %389, i8* %390, align 1
  %391 = trunc i64 %385 to i32
  %392 = and i32 %391, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i64 %382, %381
  %399 = xor i64 %398, %385
  %400 = lshr i64 %399, 4
  %401 = trunc i64 %400 to i8
  %402 = and i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %402, i8* %403, align 1
  %404 = icmp eq i64 %385, 0
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %405, i8* %406, align 1
  %407 = lshr i64 %385, 63
  %408 = trunc i64 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %408, i8* %409, align 1
  %410 = lshr i64 %381, 63
  %411 = lshr i64 %382, 63
  %412 = xor i64 %407, %410
  %413 = xor i64 %407, %411
  %414 = add i64 %412, %413
  %415 = icmp eq i64 %414, 2
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %416, i8* %417, align 1
  store %struct.Memory* %loadMem_420dea, %struct.Memory** %MEMORY
  %loadMem_420ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 7
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RDX.i716 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RCX.i715
  %428 = add i64 %427, 8
  %429 = load i64, i64* %PC.i714
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC.i714
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RDX.i716, align 8
  store %struct.Memory* %loadMem_420ded, %struct.Memory** %MEMORY
  %loadMem_420df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 7
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %EDX.i713 = bitcast %union.anon* %439 to i32*
  %440 = load i32, i32* %EDX.i713
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %PC.i712
  %443 = add i64 %442, 7
  store i64 %443, i64* %PC.i712
  %444 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %445 = sub i32 %440, %444
  %446 = icmp ult i32 %440, %444
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %447, i8* %448, align 1
  %449 = and i32 %445, 255
  %450 = call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %453, i8* %454, align 1
  %455 = xor i32 %444, %440
  %456 = xor i32 %455, %445
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %459, i8* %460, align 1
  %461 = icmp eq i32 %445, 0
  %462 = zext i1 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %462, i8* %463, align 1
  %464 = lshr i32 %445, 31
  %465 = trunc i32 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %465, i8* %466, align 1
  %467 = lshr i32 %440, 31
  %468 = lshr i32 %444, 31
  %469 = xor i32 %468, %467
  %470 = xor i32 %464, %467
  %471 = add i32 %470, %469
  %472 = icmp eq i32 %471, 2
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %473, i8* %474, align 1
  store %struct.Memory* %loadMem_420df0, %struct.Memory** %MEMORY
  %loadMem_420df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %PC.i711
  %479 = add i64 %478, 569
  %480 = load i64, i64* %PC.i711
  %481 = add i64 %480, 6
  %482 = load i64, i64* %PC.i711
  %483 = add i64 %482, 6
  store i64 %483, i64* %PC.i711
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %485 = load i8, i8* %484, align 1
  %486 = icmp eq i8 %485, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %BRANCH_TAKEN, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %489 = select i1 %486, i64 %479, i64 %481
  store i64 %489, i64* %488, align 8
  store %struct.Memory* %loadMem_420df7, %struct.Memory** %MEMORY
  %loadBr_420df7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420df7 = icmp eq i8 %loadBr_420df7, 1
  br i1 %cmpBr_420df7, label %block_.L_421030, label %block_420dfd

block_420dfd:                                     ; preds = %routine_divl_0x8661d4.exit
  %loadMem_420dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %PC.i709
  %497 = add i64 %496, 8
  store i64 %497, i64* %PC.i709
  %498 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %498, i64* %RAX.i710, align 8
  store %struct.Memory* %loadMem_420dfd, %struct.Memory** %MEMORY
  %loadMem_420e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RBP.i708
  %509 = sub i64 %508, 56
  %510 = load i64, i64* %PC.i706
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i706
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_420e05, %struct.Memory** %MEMORY
  %loadMem_420e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 5
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %ECX.i704 = bitcast %union.anon* %520 to i32*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 7
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %523 to i64*
  %524 = load i32, i32* %ECX.i704
  %525 = zext i32 %524 to i64
  %526 = load i64, i64* %PC.i703
  %527 = add i64 %526, 2
  store i64 %527, i64* %PC.i703
  %528 = and i64 %525, 4294967295
  store i64 %528, i64* %RDX.i705, align 8
  store %struct.Memory* %loadMem_420e08, %struct.Memory** %MEMORY
  %loadMem_420e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 7
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RDX.i702 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RDX.i702
  %536 = load i64, i64* %PC.i701
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC.i701
  %538 = sext i64 %535 to i128
  %539 = and i128 %538, -18446744073709551616
  %540 = zext i64 %535 to i128
  %541 = or i128 %539, %540
  %542 = mul i128 20, %541
  %543 = trunc i128 %542 to i64
  store i64 %543, i64* %RDX.i702, align 8
  %544 = sext i64 %543 to i128
  %545 = icmp ne i128 %544, %542
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %546, i8* %547, align 1
  %548 = trunc i128 %542 to i32
  %549 = and i32 %548, 255
  %550 = call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %553, i8* %554, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %555, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %556, align 1
  %557 = lshr i64 %543, 63
  %558 = trunc i64 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %560, align 1
  store %struct.Memory* %loadMem_420e0a, %struct.Memory** %MEMORY
  %loadMem_420e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 7
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RAX.i699
  %571 = load i64, i64* %RDX.i700
  %572 = load i64, i64* %PC.i698
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC.i698
  %574 = add i64 %571, %570
  store i64 %574, i64* %RAX.i699, align 8
  %575 = icmp ult i64 %574, %570
  %576 = icmp ult i64 %574, %571
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %578, i8* %579, align 1
  %580 = trunc i64 %574 to i32
  %581 = and i32 %580, 255
  %582 = call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %585, i8* %586, align 1
  %587 = xor i64 %571, %570
  %588 = xor i64 %587, %574
  %589 = lshr i64 %588, 4
  %590 = trunc i64 %589 to i8
  %591 = and i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %591, i8* %592, align 1
  %593 = icmp eq i64 %574, 0
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %594, i8* %595, align 1
  %596 = lshr i64 %574, 63
  %597 = trunc i64 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %597, i8* %598, align 1
  %599 = lshr i64 %570, 63
  %600 = lshr i64 %571, 63
  %601 = xor i64 %596, %599
  %602 = xor i64 %596, %600
  %603 = add i64 %601, %602
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %606, align 1
  store %struct.Memory* %loadMem_420e0e, %struct.Memory** %MEMORY
  %loadMem_420e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %615 to i64*
  %616 = load i64, i64* %RAX.i696
  %617 = add i64 %616, 12
  %618 = load i64, i64* %PC.i695
  %619 = add i64 %618, 3
  store i64 %619, i64* %PC.i695
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RCX.i697, align 8
  store %struct.Memory* %loadMem_420e11, %struct.Memory** %MEMORY
  %loadMem_420e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %ECX.i694 = bitcast %union.anon* %628 to i32*
  %629 = load i32, i32* %ECX.i694
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %PC.i693
  %632 = add i64 %631, 7
  store i64 %632, i64* %PC.i693
  %633 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*)
  %634 = sub i32 %629, %633
  %635 = icmp ult i32 %629, %633
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %636, i8* %637, align 1
  %638 = and i32 %634, 255
  %639 = call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %642, i8* %643, align 1
  %644 = xor i32 %633, %629
  %645 = xor i32 %644, %634
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %648, i8* %649, align 1
  %650 = icmp eq i32 %634, 0
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %651, i8* %652, align 1
  %653 = lshr i32 %634, 31
  %654 = trunc i32 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %654, i8* %655, align 1
  %656 = lshr i32 %629, 31
  %657 = lshr i32 %633, 31
  %658 = xor i32 %657, %656
  %659 = xor i32 %653, %656
  %660 = add i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %662, i8* %663, align 1
  store %struct.Memory* %loadMem_420e14, %struct.Memory** %MEMORY
  %loadMem_420e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %PC.i692
  %668 = add i64 %667, 533
  %669 = load i64, i64* %PC.i692
  %670 = add i64 %669, 6
  %671 = load i64, i64* %PC.i692
  %672 = add i64 %671, 6
  store i64 %672, i64* %PC.i692
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %674 = load i8, i8* %673, align 1
  %675 = icmp eq i8 %674, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %BRANCH_TAKEN, align 1
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %678 = select i1 %675, i64 %668, i64 %670
  store i64 %678, i64* %677, align 8
  store %struct.Memory* %loadMem_420e1b, %struct.Memory** %MEMORY
  %loadBr_420e1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e1b = icmp eq i8 %loadBr_420e1b, 1
  br i1 %cmpBr_420e1b, label %block_.L_421030, label %block_420e21

block_420e21:                                     ; preds = %block_420dfd
  %loadMem_420e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %PC.i690
  %686 = add i64 %685, 5
  store i64 %686, i64* %PC.i690
  store i64 1, i64* %RAX.i691, align 8
  store %struct.Memory* %loadMem_420e21, %struct.Memory** %MEMORY
  %loadMem_420e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %ECX.i688 = bitcast %union.anon* %692 to i32*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 5
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RCX.i689
  %697 = load i32, i32* %ECX.i688
  %698 = zext i32 %697 to i64
  %699 = load i64, i64* %PC.i687
  %700 = add i64 %699, 2
  store i64 %700, i64* %PC.i687
  %701 = xor i64 %698, %696
  %702 = trunc i64 %701 to i32
  %703 = and i64 %701, 4294967295
  store i64 %703, i64* %RCX.i689, align 8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %704, align 1
  %705 = and i32 %702, 255
  %706 = call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %709, i8* %710, align 1
  %711 = icmp eq i32 %702, 0
  %712 = zext i1 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %712, i8* %713, align 1
  %714 = lshr i32 %702, 31
  %715 = trunc i32 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %715, i8* %716, align 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %717, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %718, align 1
  store %struct.Memory* %loadMem_420e26, %struct.Memory** %MEMORY
  %loadMem_420e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 7
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RDX.i686 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %PC.i685
  %726 = add i64 %725, 8
  store i64 %726, i64* %PC.i685
  %727 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %727, i64* %RDX.i686, align 8
  store %struct.Memory* %loadMem_420e28, %struct.Memory** %MEMORY
  %loadMem_420e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 9
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RSI.i683 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 15
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %RBP.i684
  %738 = sub i64 %737, 56
  %739 = load i64, i64* %PC.i682
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC.i682
  %741 = inttoptr i64 %738 to i32*
  %742 = load i32, i32* %741
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RSI.i683, align 8
  store %struct.Memory* %loadMem_420e30, %struct.Memory** %MEMORY
  %loadMem_420e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 9
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %ESI.i680 = bitcast %union.anon* %749 to i32*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 11
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RDI.i681 = bitcast %union.anon* %752 to i64*
  %753 = load i32, i32* %ESI.i680
  %754 = zext i32 %753 to i64
  %755 = load i64, i64* %PC.i679
  %756 = add i64 %755, 2
  store i64 %756, i64* %PC.i679
  %757 = and i64 %754, 4294967295
  store i64 %757, i64* %RDI.i681, align 8
  store %struct.Memory* %loadMem_420e33, %struct.Memory** %MEMORY
  %loadMem_420e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 11
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RDI.i678 = bitcast %union.anon* %763 to i64*
  %764 = load i64, i64* %RDI.i678
  %765 = load i64, i64* %PC.i677
  %766 = add i64 %765, 4
  store i64 %766, i64* %PC.i677
  %767 = sext i64 %764 to i128
  %768 = and i128 %767, -18446744073709551616
  %769 = zext i64 %764 to i128
  %770 = or i128 %768, %769
  %771 = mul i128 20, %770
  %772 = trunc i128 %771 to i64
  store i64 %772, i64* %RDI.i678, align 8
  %773 = sext i64 %772 to i128
  %774 = icmp ne i128 %773, %771
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %775, i8* %776, align 1
  %777 = trunc i128 %771 to i32
  %778 = and i32 %777, 255
  %779 = call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %782, i8* %783, align 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %784, align 1
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %785, align 1
  %786 = lshr i64 %772, 63
  %787 = trunc i64 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %775, i8* %789, align 1
  store %struct.Memory* %loadMem_420e35, %struct.Memory** %MEMORY
  %loadMem_420e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 7
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 11
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RDI.i676 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %RDX.i675
  %800 = load i64, i64* %RDI.i676
  %801 = load i64, i64* %PC.i674
  %802 = add i64 %801, 3
  store i64 %802, i64* %PC.i674
  %803 = add i64 %800, %799
  store i64 %803, i64* %RDX.i675, align 8
  %804 = icmp ult i64 %803, %799
  %805 = icmp ult i64 %803, %800
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = trunc i64 %803 to i32
  %810 = and i32 %809, 255
  %811 = call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %814, i8* %815, align 1
  %816 = xor i64 %800, %799
  %817 = xor i64 %816, %803
  %818 = lshr i64 %817, 4
  %819 = trunc i64 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i64 %803, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i64 %803, 63
  %826 = trunc i64 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i64 %799, 63
  %829 = lshr i64 %800, 63
  %830 = xor i64 %825, %828
  %831 = xor i64 %825, %829
  %832 = add i64 %830, %831
  %833 = icmp eq i64 %832, 2
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %834, i8* %835, align 1
  store %struct.Memory* %loadMem_420e39, %struct.Memory** %MEMORY
  %loadMem_420e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 7
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RDX.i672 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 9
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RDX.i672
  %846 = add i64 %845, 1
  %847 = load i64, i64* %PC.i671
  %848 = add i64 %847, 4
  store i64 %848, i64* %PC.i671
  %849 = inttoptr i64 %846 to i8*
  %850 = load i8, i8* %849
  %851 = sext i8 %850 to i64
  %852 = and i64 %851, 4294967295
  store i64 %852, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_420e3c, %struct.Memory** %MEMORY
  %loadMem_420e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %PC.i670
  %857 = add i64 %856, 8
  store i64 %857, i64* %PC.i670
  %858 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %859, align 1
  %860 = and i32 %858, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %866, align 1
  %867 = icmp eq i32 %858, 0
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %858, 31
  %871 = trunc i32 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %871, i8* %872, align 1
  %873 = lshr i32 %858, 31
  %874 = xor i32 %870, %873
  %875 = add i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %877, i8* %878, align 1
  store %struct.Memory* %loadMem_420e40, %struct.Memory** %MEMORY
  %loadMem_420e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 5
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %ECX.i668 = bitcast %union.anon* %884 to i32*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %887 to i64*
  %888 = load i32, i32* %ECX.i668
  %889 = zext i32 %888 to i64
  %890 = load i64, i64* %PC.i667
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i667
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %893 = load i8, i8* %892, align 1
  %894 = icmp eq i8 %893, 0
  %895 = load i64, i64* %RAX.i669, align 8
  %896 = select i1 %894, i64 %889, i64 %895
  %897 = and i64 %896, 4294967295
  store i64 %897, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_420e48, %struct.Memory** %MEMORY
  %loadMem_420e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %904 = bitcast %union.anon* %903 to %struct.anon.2*
  %AL.i665 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %904, i32 0, i32 0
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 17
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %908 = bitcast %union.anon* %907 to %struct.anon.2*
  %R8B.i666 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %908, i32 0, i32 0
  %909 = load i8, i8* %AL.i665
  %910 = zext i8 %909 to i64
  %911 = load i64, i64* %PC.i664
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i664
  store i8 %909, i8* %R8B.i666, align 1
  store %struct.Memory* %loadMem_420e4b, %struct.Memory** %MEMORY
  %loadMem_420e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 17
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %919 = bitcast %union.anon* %918 to %struct.anon.2*
  %R8B.i662 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %919, i32 0, i32 0
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 1
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %922 to i64*
  %923 = load i8, i8* %R8B.i662
  %924 = zext i8 %923 to i64
  %925 = load i64, i64* %PC.i661
  %926 = add i64 %925, 4
  store i64 %926, i64* %PC.i661
  %927 = trunc i64 %924 to i32
  %928 = shl i32 %927, 24
  %929 = ashr exact i32 %928, 24
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_420e4e, %struct.Memory** %MEMORY
  %loadMem_420e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %EAX.i659 = bitcast %union.anon* %936 to i32*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 9
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %ESI.i660 = bitcast %union.anon* %939 to i32*
  %940 = load i32, i32* %ESI.i660
  %941 = zext i32 %940 to i64
  %942 = load i32, i32* %EAX.i659
  %943 = zext i32 %942 to i64
  %944 = load i64, i64* %PC.i658
  %945 = add i64 %944, 2
  store i64 %945, i64* %PC.i658
  %946 = sub i32 %940, %942
  %947 = icmp ult i32 %940, %942
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %948, i8* %949, align 1
  %950 = and i32 %946, 255
  %951 = call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %954, i8* %955, align 1
  %956 = xor i64 %943, %941
  %957 = trunc i64 %956 to i32
  %958 = xor i32 %957, %946
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %961, i8* %962, align 1
  %963 = icmp eq i32 %946, 0
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %964, i8* %965, align 1
  %966 = lshr i32 %946, 31
  %967 = trunc i32 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %967, i8* %968, align 1
  %969 = lshr i32 %940, 31
  %970 = lshr i32 %942, 31
  %971 = xor i32 %970, %969
  %972 = xor i32 %966, %969
  %973 = add i32 %972, %971
  %974 = icmp eq i32 %973, 2
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %975, i8* %976, align 1
  store %struct.Memory* %loadMem_420e52, %struct.Memory** %MEMORY
  %loadMem_420e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i657
  %981 = add i64 %980, 476
  %982 = load i64, i64* %PC.i657
  %983 = add i64 %982, 6
  %984 = load i64, i64* %PC.i657
  %985 = add i64 %984, 6
  store i64 %985, i64* %PC.i657
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %987 = load i8, i8* %986, align 1
  %988 = icmp eq i8 %987, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %BRANCH_TAKEN, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %991 = select i1 %988, i64 %981, i64 %983
  store i64 %991, i64* %990, align 8
  store %struct.Memory* %loadMem_420e54, %struct.Memory** %MEMORY
  %loadBr_420e54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e54 = icmp eq i8 %loadBr_420e54, 1
  br i1 %cmpBr_420e54, label %block_.L_421030, label %block_420e5a

block_420e5a:                                     ; preds = %block_420e21
  %loadMem_420e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i655
  %999 = add i64 %998, 7
  store i64 %999, i64* %PC.i655
  %1000 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_420e5a, %struct.Memory** %MEMORY
  %loadMem_420e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RAX.i654
  %1009 = load i64, i64* %PC.i653
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i653
  %1011 = trunc i64 %1008 to i32
  %1012 = add i32 1, %1011
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RAX.i654, align 8
  %1014 = icmp ult i32 %1012, %1011
  %1015 = icmp ult i32 %1012, 1
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1
  %1019 = and i32 %1012, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i64 1, %1008
  %1026 = trunc i64 %1025 to i32
  %1027 = xor i32 %1026, %1012
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1030, i8* %1031, align 1
  %1032 = icmp eq i32 %1012, 0
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1012, 31
  %1036 = trunc i32 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1036, i8* %1037, align 1
  %1038 = lshr i32 %1011, 31
  %1039 = xor i32 %1035, %1038
  %1040 = add i32 %1039, %1035
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1042, i8* %1043, align 1
  store %struct.Memory* %loadMem_420e61, %struct.Memory** %MEMORY
  %loadMem_420e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %1049 to i32*
  %1050 = load i32, i32* %EAX.i652
  %1051 = zext i32 %1050 to i64
  %1052 = load i64, i64* %PC.i651
  %1053 = add i64 %1052, 7
  store i64 %1053, i64* %PC.i651
  store i32 %1050, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  store %struct.Memory* %loadMem_420e64, %struct.Memory** %MEMORY
  %loadMem_420e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 5
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %PC.i649
  %1061 = add i64 %1060, 8
  store i64 %1061, i64* %PC.i649
  %1062 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %1062, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_420e6b, %struct.Memory** %MEMORY
  %loadMem_420e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i648
  %1073 = sub i64 %1072, 56
  %1074 = load i64, i64* %PC.i646
  %1075 = add i64 %1074, 3
  store i64 %1075, i64* %PC.i646
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_420e73, %struct.Memory** %MEMORY
  %loadMem_420e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 1
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %EAX.i644 = bitcast %union.anon* %1084 to i32*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 7
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %1087 to i64*
  %1088 = load i32, i32* %EAX.i644
  %1089 = zext i32 %1088 to i64
  %1090 = load i64, i64* %PC.i643
  %1091 = add i64 %1090, 2
  store i64 %1091, i64* %PC.i643
  %1092 = and i64 %1089, 4294967295
  store i64 %1092, i64* %RDX.i645, align 8
  store %struct.Memory* %loadMem_420e76, %struct.Memory** %MEMORY
  %loadMem_420e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 7
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RDX.i642
  %1100 = load i64, i64* %PC.i641
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC.i641
  %1102 = sext i64 %1099 to i128
  %1103 = and i128 %1102, -18446744073709551616
  %1104 = zext i64 %1099 to i128
  %1105 = or i128 %1103, %1104
  %1106 = mul i128 20, %1105
  %1107 = trunc i128 %1106 to i64
  store i64 %1107, i64* %RDX.i642, align 8
  %1108 = sext i64 %1107 to i128
  %1109 = icmp ne i128 %1108, %1106
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1110, i8* %1111, align 1
  %1112 = trunc i128 %1106 to i32
  %1113 = and i32 %1112, 255
  %1114 = call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1117, i8* %1118, align 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1119, align 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1120, align 1
  %1121 = lshr i64 %1107, 63
  %1122 = trunc i64 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1122, i8* %1123, align 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1110, i8* %1124, align 1
  store %struct.Memory* %loadMem_420e78, %struct.Memory** %MEMORY
  %loadMem_420e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 5
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 7
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RCX.i639
  %1135 = load i64, i64* %RDX.i640
  %1136 = load i64, i64* %PC.i638
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC.i638
  %1138 = add i64 %1135, %1134
  store i64 %1138, i64* %RCX.i639, align 8
  %1139 = icmp ult i64 %1138, %1134
  %1140 = icmp ult i64 %1138, %1135
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1142, i8* %1143, align 1
  %1144 = trunc i64 %1138 to i32
  %1145 = and i32 %1144, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1
  %1151 = xor i64 %1135, %1134
  %1152 = xor i64 %1151, %1138
  %1153 = lshr i64 %1152, 4
  %1154 = trunc i64 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1155, i8* %1156, align 1
  %1157 = icmp eq i64 %1138, 0
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1158, i8* %1159, align 1
  %1160 = lshr i64 %1138, 63
  %1161 = trunc i64 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1161, i8* %1162, align 1
  %1163 = lshr i64 %1134, 63
  %1164 = lshr i64 %1135, 63
  %1165 = xor i64 %1160, %1163
  %1166 = xor i64 %1160, %1164
  %1167 = add i64 %1165, %1166
  %1168 = icmp eq i64 %1167, 2
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1169, i8* %1170, align 1
  store %struct.Memory* %loadMem_420e7c, %struct.Memory** %MEMORY
  %loadMem_420e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 1
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 5
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RCX.i637
  %1181 = add i64 %1180, 3
  %1182 = load i64, i64* %PC.i635
  %1183 = add i64 %1182, 4
  store i64 %1183, i64* %PC.i635
  %1184 = inttoptr i64 %1181 to i8*
  %1185 = load i8, i8* %1184
  %1186 = sext i8 %1185 to i64
  %1187 = and i64 %1186, 4294967295
  store i64 %1187, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_420e7f, %struct.Memory** %MEMORY
  %loadMem_420e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %EAX.i634 = bitcast %union.anon* %1193 to i32*
  %1194 = load i32, i32* %EAX.i634
  %1195 = zext i32 %1194 to i64
  %1196 = load i64, i64* %PC.i633
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %PC.i633
  %1198 = sub i32 %1194, 1
  %1199 = icmp ult i32 %1194, 1
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1
  %1202 = and i32 %1198, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1
  %1208 = xor i64 1, %1195
  %1209 = trunc i64 %1208 to i32
  %1210 = xor i32 %1209, %1198
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1213, i8* %1214, align 1
  %1215 = icmp eq i32 %1198, 0
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1216, i8* %1217, align 1
  %1218 = lshr i32 %1198, 31
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1219, i8* %1220, align 1
  %1221 = lshr i32 %1194, 31
  %1222 = xor i32 %1218, %1221
  %1223 = add i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1225, i8* %1226, align 1
  store %struct.Memory* %loadMem_420e83, %struct.Memory** %MEMORY
  %loadMem_420e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %PC.i632
  %1231 = add i64 %1230, 88
  %1232 = load i64, i64* %PC.i632
  %1233 = add i64 %1232, 6
  %1234 = load i64, i64* %PC.i632
  %1235 = add i64 %1234, 6
  store i64 %1235, i64* %PC.i632
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1237 = load i8, i8* %1236, align 1
  %1238 = icmp eq i8 %1237, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %BRANCH_TAKEN, align 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1241 = select i1 %1238, i64 %1231, i64 %1233
  store i64 %1241, i64* %1240, align 8
  store %struct.Memory* %loadMem_420e86, %struct.Memory** %MEMORY
  %loadBr_420e86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e86 = icmp eq i8 %loadBr_420e86, 1
  br i1 %cmpBr_420e86, label %block_.L_420ede, label %block_420e8c

block_420e8c:                                     ; preds = %block_420e5a
  %loadMem_420e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 1
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 15
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RBP.i631
  %1252 = sub i64 %1251, 52
  %1253 = load i64, i64* %PC.i629
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC.i629
  %1255 = inttoptr i64 %1252 to i32*
  %1256 = load i32, i32* %1255
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RAX.i630, align 8
  store %struct.Memory* %loadMem_420e8c, %struct.Memory** %MEMORY
  %loadMem_420e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 1
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RAX.i628
  %1265 = load i64, i64* %PC.i627
  %1266 = add i64 %1265, 3
  store i64 %1266, i64* %PC.i627
  %1267 = trunc i64 %1264 to i32
  %1268 = sub i32 %1267, 2
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RAX.i628, align 8
  %1270 = icmp ult i32 %1267, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = and i32 %1268, 255
  %1274 = call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1277, i8* %1278, align 1
  %1279 = xor i64 2, %1264
  %1280 = trunc i64 %1279 to i32
  %1281 = xor i32 %1280, %1268
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1284, i8* %1285, align 1
  %1286 = icmp eq i32 %1268, 0
  %1287 = zext i1 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1287, i8* %1288, align 1
  %1289 = lshr i32 %1268, 31
  %1290 = trunc i32 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1290, i8* %1291, align 1
  %1292 = lshr i32 %1267, 31
  %1293 = xor i32 %1289, %1292
  %1294 = add i32 %1293, %1292
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1296, i8* %1297, align 1
  store %struct.Memory* %loadMem_420e8f, %struct.Memory** %MEMORY
  %loadMem_420e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 1
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RAX.i626
  %1305 = load i64, i64* %PC.i625
  %1306 = add i64 %1305, 3
  store i64 %1306, i64* %PC.i625
  %1307 = trunc i64 %1304 to i32
  %1308 = sub i32 %1307, 1
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RAX.i626, align 8
  %1310 = icmp ult i32 %1307, 1
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1
  %1313 = and i32 %1308, 255
  %1314 = call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1318, align 1
  %1319 = xor i64 1, %1304
  %1320 = trunc i64 %1319 to i32
  %1321 = xor i32 %1320, %1308
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1324, i8* %1325, align 1
  %1326 = icmp eq i32 %1308, 0
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1327, i8* %1328, align 1
  %1329 = lshr i32 %1308, 31
  %1330 = trunc i32 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1330, i8* %1331, align 1
  %1332 = lshr i32 %1307, 31
  %1333 = xor i32 %1329, %1332
  %1334 = add i32 %1333, %1332
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1336, i8* %1337, align 1
  store %struct.Memory* %loadMem_420e92, %struct.Memory** %MEMORY
  %loadMem_420e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 5
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %PC.i623
  %1345 = add i64 %1344, 8
  store i64 %1345, i64* %PC.i623
  %1346 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %1346, i64* %RCX.i624, align 8
  store %struct.Memory* %loadMem_420e95, %struct.Memory** %MEMORY
  %loadMem_420e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 7
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RDX.i621 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 15
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %RBP.i622
  %1357 = sub i64 %1356, 56
  %1358 = load i64, i64* %PC.i620
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC.i620
  %1360 = inttoptr i64 %1357 to i32*
  %1361 = load i32, i32* %1360
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RDX.i621, align 8
  store %struct.Memory* %loadMem_420e9d, %struct.Memory** %MEMORY
  %loadMem_420ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 7
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %EDX.i618 = bitcast %union.anon* %1368 to i32*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 9
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RSI.i619 = bitcast %union.anon* %1371 to i64*
  %1372 = load i32, i32* %EDX.i618
  %1373 = zext i32 %1372 to i64
  %1374 = load i64, i64* %PC.i617
  %1375 = add i64 %1374, 2
  store i64 %1375, i64* %PC.i617
  %1376 = and i64 %1373, 4294967295
  store i64 %1376, i64* %RSI.i619, align 8
  store %struct.Memory* %loadMem_420ea0, %struct.Memory** %MEMORY
  %loadMem_420ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 9
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RSI.i616 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RSI.i616
  %1384 = load i64, i64* %PC.i615
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i615
  %1386 = sext i64 %1383 to i128
  %1387 = and i128 %1386, -18446744073709551616
  %1388 = zext i64 %1383 to i128
  %1389 = or i128 %1387, %1388
  %1390 = mul i128 20, %1389
  %1391 = trunc i128 %1390 to i64
  store i64 %1391, i64* %RSI.i616, align 8
  %1392 = sext i64 %1391 to i128
  %1393 = icmp ne i128 %1392, %1390
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1394, i8* %1395, align 1
  %1396 = trunc i128 %1390 to i32
  %1397 = and i32 %1396, 255
  %1398 = call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1401, i8* %1402, align 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1403, align 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1404, align 1
  %1405 = lshr i64 %1391, 63
  %1406 = trunc i64 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1394, i8* %1408, align 1
  store %struct.Memory* %loadMem_420ea2, %struct.Memory** %MEMORY
  %loadMem_420ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 5
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 9
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RSI.i614 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RCX.i613
  %1419 = load i64, i64* %RSI.i614
  %1420 = load i64, i64* %PC.i612
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %PC.i612
  %1422 = add i64 %1419, %1418
  store i64 %1422, i64* %RCX.i613, align 8
  %1423 = icmp ult i64 %1422, %1418
  %1424 = icmp ult i64 %1422, %1419
  %1425 = or i1 %1423, %1424
  %1426 = zext i1 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1426, i8* %1427, align 1
  %1428 = trunc i64 %1422 to i32
  %1429 = and i32 %1428, 255
  %1430 = call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1433, i8* %1434, align 1
  %1435 = xor i64 %1419, %1418
  %1436 = xor i64 %1435, %1422
  %1437 = lshr i64 %1436, 4
  %1438 = trunc i64 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1439, i8* %1440, align 1
  %1441 = icmp eq i64 %1422, 0
  %1442 = zext i1 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1442, i8* %1443, align 1
  %1444 = lshr i64 %1422, 63
  %1445 = trunc i64 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1445, i8* %1446, align 1
  %1447 = lshr i64 %1418, 63
  %1448 = lshr i64 %1419, 63
  %1449 = xor i64 %1444, %1447
  %1450 = xor i64 %1444, %1448
  %1451 = add i64 %1449, %1450
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1453, i8* %1454, align 1
  store %struct.Memory* %loadMem_420ea6, %struct.Memory** %MEMORY
  %loadMem_420ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 5
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 7
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RCX.i610
  %1465 = load i64, i64* %PC.i609
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i609
  %1467 = inttoptr i64 %1464 to i8*
  %1468 = load i8, i8* %1467
  %1469 = sext i8 %1468 to i64
  %1470 = and i64 %1469, 4294967295
  store i64 %1470, i64* %RDX.i611, align 8
  store %struct.Memory* %loadMem_420ea9, %struct.Memory** %MEMORY
  %loadMem_420eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %1476 to i32*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 7
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %EDX.i608 = bitcast %union.anon* %1479 to i32*
  %1480 = load i32, i32* %EAX.i607
  %1481 = zext i32 %1480 to i64
  %1482 = load i32, i32* %EDX.i608
  %1483 = zext i32 %1482 to i64
  %1484 = load i64, i64* %PC.i606
  %1485 = add i64 %1484, 2
  store i64 %1485, i64* %PC.i606
  %1486 = sub i32 %1480, %1482
  %1487 = icmp ult i32 %1480, %1482
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1488, i8* %1489, align 1
  %1490 = and i32 %1486, 255
  %1491 = call i32 @llvm.ctpop.i32(i32 %1490)
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1494, i8* %1495, align 1
  %1496 = xor i64 %1483, %1481
  %1497 = trunc i64 %1496 to i32
  %1498 = xor i32 %1497, %1486
  %1499 = lshr i32 %1498, 4
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1501, i8* %1502, align 1
  %1503 = icmp eq i32 %1486, 0
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1504, i8* %1505, align 1
  %1506 = lshr i32 %1486, 31
  %1507 = trunc i32 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i32 %1480, 31
  %1510 = lshr i32 %1482, 31
  %1511 = xor i32 %1510, %1509
  %1512 = xor i32 %1506, %1509
  %1513 = add i32 %1512, %1511
  %1514 = icmp eq i32 %1513, 2
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1515, i8* %1516, align 1
  store %struct.Memory* %loadMem_420eac, %struct.Memory** %MEMORY
  %loadMem_420eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %PC.i605
  %1521 = add i64 %1520, 48
  %1522 = load i64, i64* %PC.i605
  %1523 = add i64 %1522, 6
  %1524 = load i64, i64* %PC.i605
  %1525 = add i64 %1524, 6
  store i64 %1525, i64* %PC.i605
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1527 = load i8, i8* %1526, align 1
  %1528 = icmp eq i8 %1527, 0
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1530 = load i8, i8* %1529, align 1
  %1531 = icmp ne i8 %1530, 0
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1533 = load i8, i8* %1532, align 1
  %1534 = icmp ne i8 %1533, 0
  %1535 = xor i1 %1531, %1534
  %1536 = xor i1 %1535, true
  %1537 = and i1 %1528, %1536
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %BRANCH_TAKEN, align 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1540 = select i1 %1537, i64 %1521, i64 %1523
  store i64 %1540, i64* %1539, align 8
  store %struct.Memory* %loadMem_420eae, %struct.Memory** %MEMORY
  %loadBr_420eae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420eae = icmp eq i8 %loadBr_420eae, 1
  br i1 %cmpBr_420eae, label %block_.L_420ede, label %block_420eb4

block_420eb4:                                     ; preds = %block_420e8c
  %loadMem_420eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %1546 to i64*
  %1547 = load i64, i64* %PC.i603
  %1548 = add i64 %1547, 8
  store i64 %1548, i64* %PC.i603
  %1549 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %1549, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_420eb4, %struct.Memory** %MEMORY
  %loadMem_420ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 5
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 15
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %RBP.i602
  %1560 = sub i64 %1559, 56
  %1561 = load i64, i64* %PC.i600
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC.i600
  %1563 = inttoptr i64 %1560 to i32*
  %1564 = load i32, i32* %1563
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RCX.i601, align 8
  store %struct.Memory* %loadMem_420ebc, %struct.Memory** %MEMORY
  %loadMem_420ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 5
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %ECX.i598 = bitcast %union.anon* %1571 to i32*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 7
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %1574 to i64*
  %1575 = load i32, i32* %ECX.i598
  %1576 = zext i32 %1575 to i64
  %1577 = load i64, i64* %PC.i597
  %1578 = add i64 %1577, 2
  store i64 %1578, i64* %PC.i597
  %1579 = and i64 %1576, 4294967295
  store i64 %1579, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_420ebf, %struct.Memory** %MEMORY
  %loadMem_420ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 7
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RDX.i596 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RDX.i596
  %1587 = load i64, i64* %PC.i595
  %1588 = add i64 %1587, 4
  store i64 %1588, i64* %PC.i595
  %1589 = sext i64 %1586 to i128
  %1590 = and i128 %1589, -18446744073709551616
  %1591 = zext i64 %1586 to i128
  %1592 = or i128 %1590, %1591
  %1593 = mul i128 20, %1592
  %1594 = trunc i128 %1593 to i64
  store i64 %1594, i64* %RDX.i596, align 8
  %1595 = sext i64 %1594 to i128
  %1596 = icmp ne i128 %1595, %1593
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1597, i8* %1598, align 1
  %1599 = trunc i128 %1593 to i32
  %1600 = and i32 %1599, 255
  %1601 = call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1604, i8* %1605, align 1
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1606, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1607, align 1
  %1608 = lshr i64 %1594, 63
  %1609 = trunc i64 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1609, i8* %1610, align 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1597, i8* %1611, align 1
  store %struct.Memory* %loadMem_420ec1, %struct.Memory** %MEMORY
  %loadMem_420ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 7
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RAX.i593
  %1622 = load i64, i64* %RDX.i594
  %1623 = load i64, i64* %PC.i592
  %1624 = add i64 %1623, 3
  store i64 %1624, i64* %PC.i592
  %1625 = add i64 %1622, %1621
  store i64 %1625, i64* %RAX.i593, align 8
  %1626 = icmp ult i64 %1625, %1621
  %1627 = icmp ult i64 %1625, %1622
  %1628 = or i1 %1626, %1627
  %1629 = zext i1 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1629, i8* %1630, align 1
  %1631 = trunc i64 %1625 to i32
  %1632 = and i32 %1631, 255
  %1633 = call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1636, i8* %1637, align 1
  %1638 = xor i64 %1622, %1621
  %1639 = xor i64 %1638, %1625
  %1640 = lshr i64 %1639, 4
  %1641 = trunc i64 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1642, i8* %1643, align 1
  %1644 = icmp eq i64 %1625, 0
  %1645 = zext i1 %1644 to i8
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1645, i8* %1646, align 1
  %1647 = lshr i64 %1625, 63
  %1648 = trunc i64 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1648, i8* %1649, align 1
  %1650 = lshr i64 %1621, 63
  %1651 = lshr i64 %1622, 63
  %1652 = xor i64 %1647, %1650
  %1653 = xor i64 %1647, %1651
  %1654 = add i64 %1652, %1653
  %1655 = icmp eq i64 %1654, 2
  %1656 = zext i1 %1655 to i8
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1656, i8* %1657, align 1
  store %struct.Memory* %loadMem_420ec5, %struct.Memory** %MEMORY
  %loadMem_420ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 5
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RAX.i590
  %1668 = add i64 %1667, 16
  %1669 = load i64, i64* %PC.i589
  %1670 = add i64 %1669, 3
  store i64 %1670, i64* %PC.i589
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RCX.i591, align 8
  store %struct.Memory* %loadMem_420ec8, %struct.Memory** %MEMORY
  %loadMem_420ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 5
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %ECX.i587 = bitcast %union.anon* %1679 to i32*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 15
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %1682 to i64*
  %1683 = load i32, i32* %ECX.i587
  %1684 = zext i32 %1683 to i64
  %1685 = load i64, i64* %RBP.i588
  %1686 = sub i64 %1685, 20
  %1687 = load i64, i64* %PC.i586
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i586
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689
  %1691 = sub i32 %1683, %1690
  %1692 = icmp ult i32 %1683, %1690
  %1693 = zext i1 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1693, i8* %1694, align 1
  %1695 = and i32 %1691, 255
  %1696 = call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1699, i8* %1700, align 1
  %1701 = xor i32 %1690, %1683
  %1702 = xor i32 %1701, %1691
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1705, i8* %1706, align 1
  %1707 = icmp eq i32 %1691, 0
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1708, i8* %1709, align 1
  %1710 = lshr i32 %1691, 31
  %1711 = trunc i32 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1711, i8* %1712, align 1
  %1713 = lshr i32 %1683, 31
  %1714 = lshr i32 %1690, 31
  %1715 = xor i32 %1714, %1713
  %1716 = xor i32 %1710, %1713
  %1717 = add i32 %1716, %1715
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1719, i8* %1720, align 1
  store %struct.Memory* %loadMem_420ecb, %struct.Memory** %MEMORY
  %loadMem_420ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %PC.i585
  %1725 = add i64 %1724, 16
  %1726 = load i64, i64* %PC.i585
  %1727 = add i64 %1726, 6
  %1728 = load i64, i64* %PC.i585
  %1729 = add i64 %1728, 6
  store i64 %1729, i64* %PC.i585
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1731 = load i8, i8* %1730, align 1
  %1732 = icmp ne i8 %1731, 0
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1734 = load i8, i8* %1733, align 1
  %1735 = icmp ne i8 %1734, 0
  %1736 = xor i1 %1732, %1735
  %1737 = xor i1 %1736, true
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %BRANCH_TAKEN, align 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1740 = select i1 %1736, i64 %1727, i64 %1725
  store i64 %1740, i64* %1739, align 8
  store %struct.Memory* %loadMem_420ece, %struct.Memory** %MEMORY
  %loadBr_420ece = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ece = icmp eq i8 %loadBr_420ece, 1
  br i1 %cmpBr_420ece, label %block_.L_420ede, label %block_420ed4

block_420ed4:                                     ; preds = %block_420eb4
  %loadMem_420ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 1
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 15
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %RBP.i584
  %1751 = sub i64 %1750, 48
  %1752 = load i64, i64* %PC.i582
  %1753 = add i64 %1752, 4
  store i64 %1753, i64* %PC.i582
  %1754 = inttoptr i64 %1751 to i64*
  %1755 = load i64, i64* %1754
  store i64 %1755, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_420ed4, %struct.Memory** %MEMORY
  %loadMem_420ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 1
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RAX.i581
  %1763 = load i64, i64* %PC.i580
  %1764 = add i64 %1763, 6
  store i64 %1764, i64* %PC.i580
  %1765 = inttoptr i64 %1762 to i32*
  store i32 0, i32* %1765
  store %struct.Memory* %loadMem_420ed8, %struct.Memory** %MEMORY
  br label %block_.L_420ede

block_.L_420ede:                                  ; preds = %block_420ed4, %block_420eb4, %block_420e8c, %block_420e5a
  %loadMem_420ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 1
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %PC.i578
  %1773 = add i64 %1772, 8
  store i64 %1773, i64* %PC.i578
  %1774 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %1774, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_420ede, %struct.Memory** %MEMORY
  %loadMem_420ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i576 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RBP.i577
  %1785 = sub i64 %1784, 56
  %1786 = load i64, i64* %PC.i575
  %1787 = add i64 %1786, 3
  store i64 %1787, i64* %PC.i575
  %1788 = inttoptr i64 %1785 to i32*
  %1789 = load i32, i32* %1788
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RCX.i576, align 8
  store %struct.Memory* %loadMem_420ee6, %struct.Memory** %MEMORY
  %loadMem_420ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 5
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %ECX.i573 = bitcast %union.anon* %1796 to i32*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 7
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RDX.i574 = bitcast %union.anon* %1799 to i64*
  %1800 = load i32, i32* %ECX.i573
  %1801 = zext i32 %1800 to i64
  %1802 = load i64, i64* %PC.i572
  %1803 = add i64 %1802, 2
  store i64 %1803, i64* %PC.i572
  %1804 = and i64 %1801, 4294967295
  store i64 %1804, i64* %RDX.i574, align 8
  store %struct.Memory* %loadMem_420ee9, %struct.Memory** %MEMORY
  %loadMem_420eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 7
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %RDX.i571
  %1812 = load i64, i64* %PC.i570
  %1813 = add i64 %1812, 4
  store i64 %1813, i64* %PC.i570
  %1814 = sext i64 %1811 to i128
  %1815 = and i128 %1814, -18446744073709551616
  %1816 = zext i64 %1811 to i128
  %1817 = or i128 %1815, %1816
  %1818 = mul i128 20, %1817
  %1819 = trunc i128 %1818 to i64
  store i64 %1819, i64* %RDX.i571, align 8
  %1820 = sext i64 %1819 to i128
  %1821 = icmp ne i128 %1820, %1818
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1822, i8* %1823, align 1
  %1824 = trunc i128 %1818 to i32
  %1825 = and i32 %1824, 255
  %1826 = call i32 @llvm.ctpop.i32(i32 %1825)
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1829, i8* %1830, align 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1831, align 1
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1832, align 1
  %1833 = lshr i64 %1819, 63
  %1834 = trunc i64 %1833 to i8
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1834, i8* %1835, align 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1822, i8* %1836, align 1
  store %struct.Memory* %loadMem_420eeb, %struct.Memory** %MEMORY
  %loadMem_420eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 7
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RDX.i569 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RAX.i568
  %1847 = load i64, i64* %RDX.i569
  %1848 = load i64, i64* %PC.i567
  %1849 = add i64 %1848, 3
  store i64 %1849, i64* %PC.i567
  %1850 = add i64 %1847, %1846
  store i64 %1850, i64* %RAX.i568, align 8
  %1851 = icmp ult i64 %1850, %1846
  %1852 = icmp ult i64 %1850, %1847
  %1853 = or i1 %1851, %1852
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1854, i8* %1855, align 1
  %1856 = trunc i64 %1850 to i32
  %1857 = and i32 %1856, 255
  %1858 = call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1861, i8* %1862, align 1
  %1863 = xor i64 %1847, %1846
  %1864 = xor i64 %1863, %1850
  %1865 = lshr i64 %1864, 4
  %1866 = trunc i64 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1867, i8* %1868, align 1
  %1869 = icmp eq i64 %1850, 0
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1870, i8* %1871, align 1
  %1872 = lshr i64 %1850, 63
  %1873 = trunc i64 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i64 %1846, 63
  %1876 = lshr i64 %1847, 63
  %1877 = xor i64 %1872, %1875
  %1878 = xor i64 %1872, %1876
  %1879 = add i64 %1877, %1878
  %1880 = icmp eq i64 %1879, 2
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1881, i8* %1882, align 1
  store %struct.Memory* %loadMem_420eef, %struct.Memory** %MEMORY
  %loadMem_420ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RAX.i566
  %1890 = add i64 %1889, 2
  %1891 = load i64, i64* %PC.i565
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %PC.i565
  %1893 = inttoptr i64 %1890 to i8*
  %1894 = load i8, i8* %1893
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1895, align 1
  %1896 = zext i8 %1894 to i32
  %1897 = call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1900, i8* %1901, align 1
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1902, align 1
  %1903 = icmp eq i8 %1894, 0
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1904, i8* %1905, align 1
  %1906 = lshr i8 %1894, 7
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i8 %1894, 7
  %1909 = xor i8 %1906, %1908
  %1910 = add i8 %1909, %1908
  %1911 = icmp eq i8 %1910, 2
  %1912 = zext i1 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1912, i8* %1913, align 1
  store %struct.Memory* %loadMem_420ef2, %struct.Memory** %MEMORY
  %loadMem_420ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %PC.i564
  %1918 = add i64 %1917, 15
  %1919 = load i64, i64* %PC.i564
  %1920 = add i64 %1919, 6
  %1921 = load i64, i64* %PC.i564
  %1922 = add i64 %1921, 6
  store i64 %1922, i64* %PC.i564
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1924 = load i8, i8* %1923, align 1
  store i8 %1924, i8* %BRANCH_TAKEN, align 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1926 = icmp ne i8 %1924, 0
  %1927 = select i1 %1926, i64 %1918, i64 %1920
  store i64 %1927, i64* %1925, align 8
  store %struct.Memory* %loadMem_420ef6, %struct.Memory** %MEMORY
  %loadBr_420ef6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ef6 = icmp eq i8 %loadBr_420ef6, 1
  br i1 %cmpBr_420ef6, label %block_.L_420f05, label %block_420efc

block_420efc:                                     ; preds = %block_.L_420ede
  %loadMem_420efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 1
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 15
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %RBP.i563
  %1938 = sub i64 %1937, 52
  %1939 = load i64, i64* %PC.i561
  %1940 = add i64 %1939, 3
  store i64 %1940, i64* %PC.i561
  %1941 = inttoptr i64 %1938 to i32*
  %1942 = load i32, i32* %1941
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_420efc, %struct.Memory** %MEMORY
  %loadMem_420eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RAX.i560
  %1951 = load i64, i64* %PC.i559
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC.i559
  %1953 = trunc i64 %1950 to i32
  %1954 = add i32 1, %1953
  %1955 = zext i32 %1954 to i64
  store i64 %1955, i64* %RAX.i560, align 8
  %1956 = icmp ult i32 %1954, %1953
  %1957 = icmp ult i32 %1954, 1
  %1958 = or i1 %1956, %1957
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1959, i8* %1960, align 1
  %1961 = and i32 %1954, 255
  %1962 = call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1965, i8* %1966, align 1
  %1967 = xor i64 1, %1950
  %1968 = trunc i64 %1967 to i32
  %1969 = xor i32 %1968, %1954
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1972, i8* %1973, align 1
  %1974 = icmp eq i32 %1954, 0
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1975, i8* %1976, align 1
  %1977 = lshr i32 %1954, 31
  %1978 = trunc i32 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1978, i8* %1979, align 1
  %1980 = lshr i32 %1953, 31
  %1981 = xor i32 %1977, %1980
  %1982 = add i32 %1981, %1977
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1984, i8* %1985, align 1
  store %struct.Memory* %loadMem_420eff, %struct.Memory** %MEMORY
  %loadMem_420f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 1
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %1991 to i32*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %RBP.i558
  %1996 = sub i64 %1995, 52
  %1997 = load i32, i32* %EAX.i557
  %1998 = zext i32 %1997 to i64
  %1999 = load i64, i64* %PC.i556
  %2000 = add i64 %1999, 3
  store i64 %2000, i64* %PC.i556
  %2001 = inttoptr i64 %1996 to i32*
  store i32 %1997, i32* %2001
  store %struct.Memory* %loadMem_420f02, %struct.Memory** %MEMORY
  br label %block_.L_420f05

block_.L_420f05:                                  ; preds = %block_420efc, %block_.L_420ede
  %loadMem_420f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %PC.i554
  %2009 = add i64 %2008, 8
  store i64 %2009, i64* %PC.i554
  %2010 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %2010, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_420f05, %struct.Memory** %MEMORY
  %loadMem_420f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 5
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RBP.i553
  %2021 = sub i64 %2020, 56
  %2022 = load i64, i64* %PC.i551
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %PC.i551
  %2024 = inttoptr i64 %2021 to i32*
  %2025 = load i32, i32* %2024
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_420f0d, %struct.Memory** %MEMORY
  %loadMem_420f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 5
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %ECX.i549 = bitcast %union.anon* %2032 to i32*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 7
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RDX.i550 = bitcast %union.anon* %2035 to i64*
  %2036 = load i32, i32* %ECX.i549
  %2037 = zext i32 %2036 to i64
  %2038 = load i64, i64* %PC.i548
  %2039 = add i64 %2038, 2
  store i64 %2039, i64* %PC.i548
  %2040 = and i64 %2037, 4294967295
  store i64 %2040, i64* %RDX.i550, align 8
  store %struct.Memory* %loadMem_420f10, %struct.Memory** %MEMORY
  %loadMem_420f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 7
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RDX.i547
  %2048 = load i64, i64* %PC.i546
  %2049 = add i64 %2048, 4
  store i64 %2049, i64* %PC.i546
  %2050 = sext i64 %2047 to i128
  %2051 = and i128 %2050, -18446744073709551616
  %2052 = zext i64 %2047 to i128
  %2053 = or i128 %2051, %2052
  %2054 = mul i128 20, %2053
  %2055 = trunc i128 %2054 to i64
  store i64 %2055, i64* %RDX.i547, align 8
  %2056 = sext i64 %2055 to i128
  %2057 = icmp ne i128 %2056, %2054
  %2058 = zext i1 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2058, i8* %2059, align 1
  %2060 = trunc i128 %2054 to i32
  %2061 = and i32 %2060, 255
  %2062 = call i32 @llvm.ctpop.i32(i32 %2061)
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = xor i8 %2064, 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2065, i8* %2066, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2067, align 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2068, align 1
  %2069 = lshr i64 %2055, 63
  %2070 = trunc i64 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2058, i8* %2072, align 1
  store %struct.Memory* %loadMem_420f12, %struct.Memory** %MEMORY
  %loadMem_420f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 1
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 7
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %2081 to i64*
  %2082 = load i64, i64* %RAX.i544
  %2083 = load i64, i64* %RDX.i545
  %2084 = load i64, i64* %PC.i543
  %2085 = add i64 %2084, 3
  store i64 %2085, i64* %PC.i543
  %2086 = add i64 %2083, %2082
  store i64 %2086, i64* %RAX.i544, align 8
  %2087 = icmp ult i64 %2086, %2082
  %2088 = icmp ult i64 %2086, %2083
  %2089 = or i1 %2087, %2088
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2090, i8* %2091, align 1
  %2092 = trunc i64 %2086 to i32
  %2093 = and i32 %2092, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1
  %2099 = xor i64 %2083, %2082
  %2100 = xor i64 %2099, %2086
  %2101 = lshr i64 %2100, 4
  %2102 = trunc i64 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2103, i8* %2104, align 1
  %2105 = icmp eq i64 %2086, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i64 %2086, 63
  %2109 = trunc i64 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i64 %2082, 63
  %2112 = lshr i64 %2083, 63
  %2113 = xor i64 %2108, %2111
  %2114 = xor i64 %2108, %2112
  %2115 = add i64 %2113, %2114
  %2116 = icmp eq i64 %2115, 2
  %2117 = zext i1 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2117, i8* %2118, align 1
  store %struct.Memory* %loadMem_420f16, %struct.Memory** %MEMORY
  %loadMem_420f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 5
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RAX.i541
  %2129 = load i64, i64* %PC.i540
  %2130 = add i64 %2129, 3
  store i64 %2130, i64* %PC.i540
  %2131 = inttoptr i64 %2128 to i8*
  %2132 = load i8, i8* %2131
  %2133 = sext i8 %2132 to i64
  %2134 = and i64 %2133, 4294967295
  store i64 %2134, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_420f19, %struct.Memory** %MEMORY
  %loadMem_420f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 5
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %ECX.i538 = bitcast %union.anon* %2140 to i32*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 15
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2143 to i64*
  %2144 = load i32, i32* %ECX.i538
  %2145 = zext i32 %2144 to i64
  %2146 = load i64, i64* %RBP.i539
  %2147 = sub i64 %2146, 52
  %2148 = load i64, i64* %PC.i537
  %2149 = add i64 %2148, 3
  store i64 %2149, i64* %PC.i537
  %2150 = inttoptr i64 %2147 to i32*
  %2151 = load i32, i32* %2150
  %2152 = sub i32 %2144, %2151
  %2153 = icmp ult i32 %2144, %2151
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2154, i8* %2155, align 1
  %2156 = and i32 %2152, 255
  %2157 = call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2160, i8* %2161, align 1
  %2162 = xor i32 %2151, %2144
  %2163 = xor i32 %2162, %2152
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2166, i8* %2167, align 1
  %2168 = icmp eq i32 %2152, 0
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i32 %2152, 31
  %2172 = trunc i32 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2172, i8* %2173, align 1
  %2174 = lshr i32 %2144, 31
  %2175 = lshr i32 %2151, 31
  %2176 = xor i32 %2175, %2174
  %2177 = xor i32 %2171, %2174
  %2178 = add i32 %2177, %2176
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2180, i8* %2181, align 1
  store %struct.Memory* %loadMem_420f1c, %struct.Memory** %MEMORY
  %loadMem_420f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %PC.i536
  %2186 = add i64 %2185, 201
  %2187 = load i64, i64* %PC.i536
  %2188 = add i64 %2187, 6
  %2189 = load i64, i64* %PC.i536
  %2190 = add i64 %2189, 6
  store i64 %2190, i64* %PC.i536
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2192 = load i8, i8* %2191, align 1
  %2193 = icmp ne i8 %2192, 0
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2195 = load i8, i8* %2194, align 1
  %2196 = icmp ne i8 %2195, 0
  %2197 = xor i1 %2193, %2196
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %BRANCH_TAKEN, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2200 = select i1 %2197, i64 %2186, i64 %2188
  store i64 %2200, i64* %2199, align 8
  store %struct.Memory* %loadMem_420f1f, %struct.Memory** %MEMORY
  %loadBr_420f1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f1f = icmp eq i8 %loadBr_420f1f, 1
  br i1 %cmpBr_420f1f, label %block_.L_420fe8, label %block_420f25

block_420f25:                                     ; preds = %block_.L_420f05
  %loadMem_420f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %PC.i534
  %2208 = add i64 %2207, 8
  store i64 %2208, i64* %PC.i534
  %2209 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %2209, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_420f25, %struct.Memory** %MEMORY
  %loadMem_420f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 5
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 15
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %RBP.i533
  %2220 = sub i64 %2219, 56
  %2221 = load i64, i64* %PC.i531
  %2222 = add i64 %2221, 3
  store i64 %2222, i64* %PC.i531
  %2223 = inttoptr i64 %2220 to i32*
  %2224 = load i32, i32* %2223
  %2225 = zext i32 %2224 to i64
  store i64 %2225, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_420f2d, %struct.Memory** %MEMORY
  %loadMem_420f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 5
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %ECX.i529 = bitcast %union.anon* %2231 to i32*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 7
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %2234 to i64*
  %2235 = load i32, i32* %ECX.i529
  %2236 = zext i32 %2235 to i64
  %2237 = load i64, i64* %PC.i528
  %2238 = add i64 %2237, 2
  store i64 %2238, i64* %PC.i528
  %2239 = and i64 %2236, 4294967295
  store i64 %2239, i64* %RDX.i530, align 8
  store %struct.Memory* %loadMem_420f30, %struct.Memory** %MEMORY
  %loadMem_420f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 7
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RDX.i527
  %2247 = load i64, i64* %PC.i526
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i526
  %2249 = sext i64 %2246 to i128
  %2250 = and i128 %2249, -18446744073709551616
  %2251 = zext i64 %2246 to i128
  %2252 = or i128 %2250, %2251
  %2253 = mul i128 20, %2252
  %2254 = trunc i128 %2253 to i64
  store i64 %2254, i64* %RDX.i527, align 8
  %2255 = sext i64 %2254 to i128
  %2256 = icmp ne i128 %2255, %2253
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2257, i8* %2258, align 1
  %2259 = trunc i128 %2253 to i32
  %2260 = and i32 %2259, 255
  %2261 = call i32 @llvm.ctpop.i32(i32 %2260)
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2264, i8* %2265, align 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2266, align 1
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2267, align 1
  %2268 = lshr i64 %2254, 63
  %2269 = trunc i64 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2269, i8* %2270, align 1
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2257, i8* %2271, align 1
  store %struct.Memory* %loadMem_420f32, %struct.Memory** %MEMORY
  %loadMem_420f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 1
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 7
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RDX.i525 = bitcast %union.anon* %2280 to i64*
  %2281 = load i64, i64* %RAX.i524
  %2282 = load i64, i64* %RDX.i525
  %2283 = load i64, i64* %PC.i523
  %2284 = add i64 %2283, 3
  store i64 %2284, i64* %PC.i523
  %2285 = add i64 %2282, %2281
  store i64 %2285, i64* %RAX.i524, align 8
  %2286 = icmp ult i64 %2285, %2281
  %2287 = icmp ult i64 %2285, %2282
  %2288 = or i1 %2286, %2287
  %2289 = zext i1 %2288 to i8
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2289, i8* %2290, align 1
  %2291 = trunc i64 %2285 to i32
  %2292 = and i32 %2291, 255
  %2293 = call i32 @llvm.ctpop.i32(i32 %2292)
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2296, i8* %2297, align 1
  %2298 = xor i64 %2282, %2281
  %2299 = xor i64 %2298, %2285
  %2300 = lshr i64 %2299, 4
  %2301 = trunc i64 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2302, i8* %2303, align 1
  %2304 = icmp eq i64 %2285, 0
  %2305 = zext i1 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2305, i8* %2306, align 1
  %2307 = lshr i64 %2285, 63
  %2308 = trunc i64 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2308, i8* %2309, align 1
  %2310 = lshr i64 %2281, 63
  %2311 = lshr i64 %2282, 63
  %2312 = xor i64 %2307, %2310
  %2313 = xor i64 %2307, %2311
  %2314 = add i64 %2312, %2313
  %2315 = icmp eq i64 %2314, 2
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2316, i8* %2317, align 1
  store %struct.Memory* %loadMem_420f36, %struct.Memory** %MEMORY
  %loadMem_420f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 1
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 5
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RAX.i521
  %2328 = add i64 %2327, 16
  %2329 = load i64, i64* %PC.i520
  %2330 = add i64 %2329, 3
  store i64 %2330, i64* %PC.i520
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RCX.i522, align 8
  store %struct.Memory* %loadMem_420f39, %struct.Memory** %MEMORY
  %loadMem_420f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 1
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 15
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RBP.i519
  %2344 = sub i64 %2343, 16
  %2345 = load i64, i64* %PC.i517
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %PC.i517
  %2347 = inttoptr i64 %2344 to i64*
  %2348 = load i64, i64* %2347
  store i64 %2348, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_420f3c, %struct.Memory** %MEMORY
  %loadMem_420f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 5
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %ECX.i515 = bitcast %union.anon* %2354 to i32*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RAX.i516
  %2359 = load i32, i32* %ECX.i515
  %2360 = zext i32 %2359 to i64
  %2361 = load i64, i64* %PC.i514
  %2362 = add i64 %2361, 2
  store i64 %2362, i64* %PC.i514
  %2363 = inttoptr i64 %2358 to i32*
  store i32 %2359, i32* %2363
  store %struct.Memory* %loadMem_420f40, %struct.Memory** %MEMORY
  %loadMem_420f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 1
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RBP.i513
  %2374 = sub i64 %2373, 16
  %2375 = load i64, i64* %PC.i511
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC.i511
  %2377 = inttoptr i64 %2374 to i64*
  %2378 = load i64, i64* %2377
  store i64 %2378, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_420f42, %struct.Memory** %MEMORY
  %loadMem_420f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 1
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %RAX.i510
  %2386 = load i64, i64* %PC.i509
  %2387 = add i64 %2386, 6
  store i64 %2387, i64* %PC.i509
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = sub i32 %2389, 999500
  %2391 = icmp ult i32 %2389, 999500
  %2392 = zext i1 %2391 to i8
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2392, i8* %2393, align 1
  %2394 = and i32 %2390, 255
  %2395 = call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2398, i8* %2399, align 1
  %2400 = xor i32 %2389, 999500
  %2401 = xor i32 %2400, %2390
  %2402 = lshr i32 %2401, 4
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2404, i8* %2405, align 1
  %2406 = icmp eq i32 %2390, 0
  %2407 = zext i1 %2406 to i8
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2407, i8* %2408, align 1
  %2409 = lshr i32 %2390, 31
  %2410 = trunc i32 %2409 to i8
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2410, i8* %2411, align 1
  %2412 = lshr i32 %2389, 31
  %2413 = xor i32 %2409, %2412
  %2414 = add i32 %2413, %2412
  %2415 = icmp eq i32 %2414, 2
  %2416 = zext i1 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2416, i8* %2417, align 1
  store %struct.Memory* %loadMem_420f46, %struct.Memory** %MEMORY
  %loadMem_420f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %PC.i508
  %2422 = add i64 %2421, 28
  %2423 = load i64, i64* %PC.i508
  %2424 = add i64 %2423, 6
  %2425 = load i64, i64* %PC.i508
  %2426 = add i64 %2425, 6
  store i64 %2426, i64* %PC.i508
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2428 = load i8, i8* %2427, align 1
  %2429 = icmp ne i8 %2428, 0
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2431 = load i8, i8* %2430, align 1
  %2432 = icmp ne i8 %2431, 0
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2434 = load i8, i8* %2433, align 1
  %2435 = icmp ne i8 %2434, 0
  %2436 = xor i1 %2432, %2435
  %2437 = or i1 %2429, %2436
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %BRANCH_TAKEN, align 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2440 = select i1 %2437, i64 %2422, i64 %2424
  store i64 %2440, i64* %2439, align 8
  store %struct.Memory* %loadMem_420f4c, %struct.Memory** %MEMORY
  %loadBr_420f4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f4c = icmp eq i8 %loadBr_420f4c, 1
  br i1 %cmpBr_420f4c, label %block_.L_420f68, label %block_420f52

block_420f52:                                     ; preds = %block_420f25
  %loadMem_420f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 1
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %PC.i506
  %2448 = add i64 %2447, 7
  store i64 %2448, i64* %PC.i506
  %2449 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*)
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i507, align 8
  store %struct.Memory* %loadMem_420f52, %struct.Memory** %MEMORY
  %loadMem_420f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 5
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RCX.i504 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RBP.i505
  %2461 = sub i64 %2460, 16
  %2462 = load i64, i64* %PC.i503
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %PC.i503
  %2464 = inttoptr i64 %2461 to i64*
  %2465 = load i64, i64* %2464
  store i64 %2465, i64* %RCX.i504, align 8
  store %struct.Memory* %loadMem_420f59, %struct.Memory** %MEMORY
  %loadMem_420f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 5
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 7
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RDX.i502 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %RCX.i501
  %2476 = load i64, i64* %PC.i500
  %2477 = add i64 %2476, 2
  store i64 %2477, i64* %PC.i500
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RDX.i502, align 8
  store %struct.Memory* %loadMem_420f5d, %struct.Memory** %MEMORY
  %loadMem_420f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %EAX.i498 = bitcast %union.anon* %2486 to i32*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 7
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RDX.i499
  %2491 = load i32, i32* %EAX.i498
  %2492 = zext i32 %2491 to i64
  %2493 = load i64, i64* %PC.i497
  %2494 = add i64 %2493, 2
  store i64 %2494, i64* %PC.i497
  %2495 = trunc i64 %2490 to i32
  %2496 = sub i32 %2495, %2491
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RDX.i499, align 8
  %2498 = icmp ult i32 %2495, %2491
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2499, i8* %2500, align 1
  %2501 = and i32 %2496, 255
  %2502 = call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2505, i8* %2506, align 1
  %2507 = xor i64 %2492, %2490
  %2508 = trunc i64 %2507 to i32
  %2509 = xor i32 %2508, %2496
  %2510 = lshr i32 %2509, 4
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2512, i8* %2513, align 1
  %2514 = icmp eq i32 %2496, 0
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2515, i8* %2516, align 1
  %2517 = lshr i32 %2496, 31
  %2518 = trunc i32 %2517 to i8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2518, i8* %2519, align 1
  %2520 = lshr i32 %2495, 31
  %2521 = lshr i32 %2491, 31
  %2522 = xor i32 %2521, %2520
  %2523 = xor i32 %2517, %2520
  %2524 = add i32 %2523, %2522
  %2525 = icmp eq i32 %2524, 2
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2526, i8* %2527, align 1
  store %struct.Memory* %loadMem_420f5f, %struct.Memory** %MEMORY
  %loadMem_420f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 7
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %EDX.i495 = bitcast %union.anon* %2533 to i32*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 5
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RCX.i496
  %2538 = load i32, i32* %EDX.i495
  %2539 = zext i32 %2538 to i64
  %2540 = load i64, i64* %PC.i494
  %2541 = add i64 %2540, 2
  store i64 %2541, i64* %PC.i494
  %2542 = inttoptr i64 %2537 to i32*
  store i32 %2538, i32* %2542
  store %struct.Memory* %loadMem_420f61, %struct.Memory** %MEMORY
  %loadMem_420f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i493
  %2547 = add i64 %2546, 41
  %2548 = load i64, i64* %PC.i493
  %2549 = add i64 %2548, 5
  store i64 %2549, i64* %PC.i493
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2547, i64* %2550, align 8
  store %struct.Memory* %loadMem_420f63, %struct.Memory** %MEMORY
  br label %block_.L_420f8c

block_.L_420f68:                                  ; preds = %block_420f25
  %loadMem_420f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 1
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RBP.i492
  %2561 = sub i64 %2560, 16
  %2562 = load i64, i64* %PC.i490
  %2563 = add i64 %2562, 4
  store i64 %2563, i64* %PC.i490
  %2564 = inttoptr i64 %2561 to i64*
  %2565 = load i64, i64* %2564
  store i64 %2565, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_420f68, %struct.Memory** %MEMORY
  %loadMem_420f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 1
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %RAX.i489
  %2573 = load i64, i64* %PC.i488
  %2574 = add i64 %2573, 6
  store i64 %2574, i64* %PC.i488
  %2575 = inttoptr i64 %2572 to i32*
  %2576 = load i32, i32* %2575
  %2577 = sub i32 %2576, -999500
  %2578 = icmp ult i32 %2576, -999500
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2577, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i32 %2576, -999500
  %2588 = xor i32 %2587, %2577
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2591, i8* %2592, align 1
  %2593 = icmp eq i32 %2577, 0
  %2594 = zext i1 %2593 to i8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2594, i8* %2595, align 1
  %2596 = lshr i32 %2577, 31
  %2597 = trunc i32 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2597, i8* %2598, align 1
  %2599 = lshr i32 %2576, 31
  %2600 = xor i32 %2599, 1
  %2601 = xor i32 %2596, %2599
  %2602 = add i32 %2601, %2600
  %2603 = icmp eq i32 %2602, 2
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2604, i8* %2605, align 1
  store %struct.Memory* %loadMem_420f6c, %struct.Memory** %MEMORY
  %loadMem_420f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2608 to i64*
  %2609 = load i64, i64* %PC.i487
  %2610 = add i64 %2609, 21
  %2611 = load i64, i64* %PC.i487
  %2612 = add i64 %2611, 6
  %2613 = load i64, i64* %PC.i487
  %2614 = add i64 %2613, 6
  store i64 %2614, i64* %PC.i487
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2616 = load i8, i8* %2615, align 1
  %2617 = icmp ne i8 %2616, 0
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2619 = load i8, i8* %2618, align 1
  %2620 = icmp ne i8 %2619, 0
  %2621 = xor i1 %2617, %2620
  %2622 = xor i1 %2621, true
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %BRANCH_TAKEN, align 1
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2625 = select i1 %2621, i64 %2612, i64 %2610
  store i64 %2625, i64* %2624, align 8
  store %struct.Memory* %loadMem_420f72, %struct.Memory** %MEMORY
  %loadBr_420f72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f72 = icmp eq i8 %loadBr_420f72, 1
  br i1 %cmpBr_420f72, label %block_.L_420f87, label %block_420f78

block_420f78:                                     ; preds = %block_.L_420f68
  %loadMem_420f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 1
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %PC.i485
  %2633 = add i64 %2632, 7
  store i64 %2633, i64* %PC.i485
  %2634 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*)
  %2635 = zext i32 %2634 to i64
  store i64 %2635, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_420f78, %struct.Memory** %MEMORY
  %loadMem_420f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 5
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 15
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2644 to i64*
  %2645 = load i64, i64* %RBP.i484
  %2646 = sub i64 %2645, 16
  %2647 = load i64, i64* %PC.i482
  %2648 = add i64 %2647, 4
  store i64 %2648, i64* %PC.i482
  %2649 = inttoptr i64 %2646 to i64*
  %2650 = load i64, i64* %2649
  store i64 %2650, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_420f7f, %struct.Memory** %MEMORY
  %loadMem_420f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %2659 to i64*
  %2660 = load i64, i64* %RAX.i480
  %2661 = load i64, i64* %RCX.i481
  %2662 = load i64, i64* %PC.i479
  %2663 = add i64 %2662, 2
  store i64 %2663, i64* %PC.i479
  %2664 = trunc i64 %2660 to i32
  %2665 = inttoptr i64 %2661 to i32*
  %2666 = load i32, i32* %2665
  %2667 = add i32 %2666, %2664
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i480, align 8
  %2669 = icmp ult i32 %2667, %2664
  %2670 = icmp ult i32 %2667, %2666
  %2671 = or i1 %2669, %2670
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2672, i8* %2673, align 1
  %2674 = and i32 %2667, 255
  %2675 = call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2678, i8* %2679, align 1
  %2680 = xor i32 %2666, %2664
  %2681 = xor i32 %2680, %2667
  %2682 = lshr i32 %2681, 4
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2684, i8* %2685, align 1
  %2686 = icmp eq i32 %2667, 0
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2687, i8* %2688, align 1
  %2689 = lshr i32 %2667, 31
  %2690 = trunc i32 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2664, 31
  %2693 = lshr i32 %2666, 31
  %2694 = xor i32 %2689, %2692
  %2695 = xor i32 %2689, %2693
  %2696 = add i32 %2694, %2695
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2698, i8* %2699, align 1
  store %struct.Memory* %loadMem_420f83, %struct.Memory** %MEMORY
  %loadMem_420f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 1
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %EAX.i477 = bitcast %union.anon* %2705 to i32*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RCX.i478
  %2710 = load i32, i32* %EAX.i477
  %2711 = zext i32 %2710 to i64
  %2712 = load i64, i64* %PC.i476
  %2713 = add i64 %2712, 2
  store i64 %2713, i64* %PC.i476
  %2714 = inttoptr i64 %2709 to i32*
  store i32 %2710, i32* %2714
  store %struct.Memory* %loadMem_420f85, %struct.Memory** %MEMORY
  br label %block_.L_420f87

block_.L_420f87:                                  ; preds = %block_420f78, %block_.L_420f68
  %loadMem_420f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %PC.i475
  %2719 = add i64 %2718, 5
  %2720 = load i64, i64* %PC.i475
  %2721 = add i64 %2720, 5
  store i64 %2721, i64* %PC.i475
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2719, i64* %2722, align 8
  store %struct.Memory* %loadMem_420f87, %struct.Memory** %MEMORY
  br label %block_.L_420f8c

block_.L_420f8c:                                  ; preds = %block_.L_420f87, %block_420f52
  %loadMem_420f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 1
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %2728 to i64*
  %2729 = load i64, i64* %PC.i473
  %2730 = add i64 %2729, 8
  store i64 %2730, i64* %PC.i473
  %2731 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %2731, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_420f8c, %struct.Memory** %MEMORY
  %loadMem_420f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RBP.i472
  %2742 = sub i64 %2741, 56
  %2743 = load i64, i64* %PC.i470
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %PC.i470
  %2745 = inttoptr i64 %2742 to i32*
  %2746 = load i32, i32* %2745
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_420f94, %struct.Memory** %MEMORY
  %loadMem_420f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 5
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %ECX.i468 = bitcast %union.anon* %2753 to i32*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 7
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %2756 to i64*
  %2757 = load i32, i32* %ECX.i468
  %2758 = zext i32 %2757 to i64
  %2759 = load i64, i64* %PC.i467
  %2760 = add i64 %2759, 2
  store i64 %2760, i64* %PC.i467
  %2761 = and i64 %2758, 4294967295
  store i64 %2761, i64* %RDX.i469, align 8
  store %struct.Memory* %loadMem_420f97, %struct.Memory** %MEMORY
  %loadMem_420f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 7
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RDX.i466
  %2769 = load i64, i64* %PC.i465
  %2770 = add i64 %2769, 4
  store i64 %2770, i64* %PC.i465
  %2771 = sext i64 %2768 to i128
  %2772 = and i128 %2771, -18446744073709551616
  %2773 = zext i64 %2768 to i128
  %2774 = or i128 %2772, %2773
  %2775 = mul i128 20, %2774
  %2776 = trunc i128 %2775 to i64
  store i64 %2776, i64* %RDX.i466, align 8
  %2777 = sext i64 %2776 to i128
  %2778 = icmp ne i128 %2777, %2775
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2779, i8* %2780, align 1
  %2781 = trunc i128 %2775 to i32
  %2782 = and i32 %2781, 255
  %2783 = call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2786, i8* %2787, align 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2788, align 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2789, align 1
  %2790 = lshr i64 %2776, 63
  %2791 = trunc i64 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2791, i8* %2792, align 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2779, i8* %2793, align 1
  store %struct.Memory* %loadMem_420f99, %struct.Memory** %MEMORY
  %loadMem_420f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 7
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RAX.i463
  %2804 = load i64, i64* %RDX.i464
  %2805 = load i64, i64* %PC.i462
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i462
  %2807 = add i64 %2804, %2803
  store i64 %2807, i64* %RAX.i463, align 8
  %2808 = icmp ult i64 %2807, %2803
  %2809 = icmp ult i64 %2807, %2804
  %2810 = or i1 %2808, %2809
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2811, i8* %2812, align 1
  %2813 = trunc i64 %2807 to i32
  %2814 = and i32 %2813, 255
  %2815 = call i32 @llvm.ctpop.i32(i32 %2814)
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2818, i8* %2819, align 1
  %2820 = xor i64 %2804, %2803
  %2821 = xor i64 %2820, %2807
  %2822 = lshr i64 %2821, 4
  %2823 = trunc i64 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2824, i8* %2825, align 1
  %2826 = icmp eq i64 %2807, 0
  %2827 = zext i1 %2826 to i8
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2827, i8* %2828, align 1
  %2829 = lshr i64 %2807, 63
  %2830 = trunc i64 %2829 to i8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2830, i8* %2831, align 1
  %2832 = lshr i64 %2803, 63
  %2833 = lshr i64 %2804, 63
  %2834 = xor i64 %2829, %2832
  %2835 = xor i64 %2829, %2833
  %2836 = add i64 %2834, %2835
  %2837 = icmp eq i64 %2836, 2
  %2838 = zext i1 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2838, i8* %2839, align 1
  store %struct.Memory* %loadMem_420f9d, %struct.Memory** %MEMORY
  %loadMem_420fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 1
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RAX.i460
  %2850 = add i64 %2849, 4
  %2851 = load i64, i64* %PC.i459
  %2852 = add i64 %2851, 4
  store i64 %2852, i64* %PC.i459
  %2853 = inttoptr i64 %2850 to i16*
  %2854 = load i16, i16* %2853
  %2855 = zext i16 %2854 to i64
  store i64 %2855, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_420fa0, %struct.Memory** %MEMORY
  %loadMem_420fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2864 to i64*
  %2865 = load i64, i64* %RBP.i458
  %2866 = sub i64 %2865, 32
  %2867 = load i64, i64* %PC.i456
  %2868 = add i64 %2867, 4
  store i64 %2868, i64* %PC.i456
  %2869 = inttoptr i64 %2866 to i64*
  %2870 = load i64, i64* %2869
  store i64 %2870, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_420fa4, %struct.Memory** %MEMORY
  %loadMem_420fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 5
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %ECX.i454 = bitcast %union.anon* %2876 to i32*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 1
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RAX.i455
  %2881 = load i32, i32* %ECX.i454
  %2882 = zext i32 %2881 to i64
  %2883 = load i64, i64* %PC.i453
  %2884 = add i64 %2883, 2
  store i64 %2884, i64* %PC.i453
  %2885 = inttoptr i64 %2880 to i32*
  store i32 %2881, i32* %2885
  store %struct.Memory* %loadMem_420fa8, %struct.Memory** %MEMORY
  %loadMem_420faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %PC.i451
  %2893 = add i64 %2892, 8
  store i64 %2893, i64* %PC.i451
  %2894 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %2894, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_420faa, %struct.Memory** %MEMORY
  %loadMem_420fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 5
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %RBP.i450
  %2905 = sub i64 %2904, 56
  %2906 = load i64, i64* %PC.i448
  %2907 = add i64 %2906, 3
  store i64 %2907, i64* %PC.i448
  %2908 = inttoptr i64 %2905 to i32*
  %2909 = load i32, i32* %2908
  %2910 = zext i32 %2909 to i64
  store i64 %2910, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_420fb2, %struct.Memory** %MEMORY
  %loadMem_420fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %ECX.i446 = bitcast %union.anon* %2916 to i32*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 7
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %2919 to i64*
  %2920 = load i32, i32* %ECX.i446
  %2921 = zext i32 %2920 to i64
  %2922 = load i64, i64* %PC.i445
  %2923 = add i64 %2922, 2
  store i64 %2923, i64* %PC.i445
  %2924 = and i64 %2921, 4294967295
  store i64 %2924, i64* %RDX.i447, align 8
  store %struct.Memory* %loadMem_420fb5, %struct.Memory** %MEMORY
  %loadMem_420fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 7
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RDX.i444
  %2932 = load i64, i64* %PC.i443
  %2933 = add i64 %2932, 4
  store i64 %2933, i64* %PC.i443
  %2934 = sext i64 %2931 to i128
  %2935 = and i128 %2934, -18446744073709551616
  %2936 = zext i64 %2931 to i128
  %2937 = or i128 %2935, %2936
  %2938 = mul i128 20, %2937
  %2939 = trunc i128 %2938 to i64
  store i64 %2939, i64* %RDX.i444, align 8
  %2940 = sext i64 %2939 to i128
  %2941 = icmp ne i128 %2940, %2938
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2942, i8* %2943, align 1
  %2944 = trunc i128 %2938 to i32
  %2945 = and i32 %2944, 255
  %2946 = call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2949, i8* %2950, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2951, align 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2952, align 1
  %2953 = lshr i64 %2939, 63
  %2954 = trunc i64 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2954, i8* %2955, align 1
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2942, i8* %2956, align 1
  store %struct.Memory* %loadMem_420fb7, %struct.Memory** %MEMORY
  %loadMem_420fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 7
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %RAX.i441
  %2967 = load i64, i64* %RDX.i442
  %2968 = load i64, i64* %PC.i440
  %2969 = add i64 %2968, 3
  store i64 %2969, i64* %PC.i440
  %2970 = add i64 %2967, %2966
  store i64 %2970, i64* %RAX.i441, align 8
  %2971 = icmp ult i64 %2970, %2966
  %2972 = icmp ult i64 %2970, %2967
  %2973 = or i1 %2971, %2972
  %2974 = zext i1 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2974, i8* %2975, align 1
  %2976 = trunc i64 %2970 to i32
  %2977 = and i32 %2976, 255
  %2978 = call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2981, i8* %2982, align 1
  %2983 = xor i64 %2967, %2966
  %2984 = xor i64 %2983, %2970
  %2985 = lshr i64 %2984, 4
  %2986 = trunc i64 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2987, i8* %2988, align 1
  %2989 = icmp eq i64 %2970, 0
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2990, i8* %2991, align 1
  %2992 = lshr i64 %2970, 63
  %2993 = trunc i64 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2993, i8* %2994, align 1
  %2995 = lshr i64 %2966, 63
  %2996 = lshr i64 %2967, 63
  %2997 = xor i64 %2992, %2995
  %2998 = xor i64 %2992, %2996
  %2999 = add i64 %2997, %2998
  %3000 = icmp eq i64 %2999, 2
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3001, i8* %3002, align 1
  store %struct.Memory* %loadMem_420fbb, %struct.Memory** %MEMORY
  %loadMem_420fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 5
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RAX.i438
  %3013 = add i64 %3012, 2
  %3014 = load i64, i64* %PC.i437
  %3015 = add i64 %3014, 4
  store i64 %3015, i64* %PC.i437
  %3016 = inttoptr i64 %3013 to i8*
  %3017 = load i8, i8* %3016
  %3018 = sext i8 %3017 to i64
  %3019 = and i64 %3018, 4294967295
  store i64 %3019, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_420fbe, %struct.Memory** %MEMORY
  %loadMem_420fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 15
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RBP.i436
  %3030 = sub i64 %3029, 40
  %3031 = load i64, i64* %PC.i434
  %3032 = add i64 %3031, 4
  store i64 %3032, i64* %PC.i434
  %3033 = inttoptr i64 %3030 to i64*
  %3034 = load i64, i64* %3033
  store i64 %3034, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_420fc2, %struct.Memory** %MEMORY
  %loadMem_420fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 5
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %ECX.i432 = bitcast %union.anon* %3040 to i32*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 1
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RAX.i433
  %3045 = load i32, i32* %ECX.i432
  %3046 = zext i32 %3045 to i64
  %3047 = load i64, i64* %PC.i431
  %3048 = add i64 %3047, 2
  store i64 %3048, i64* %PC.i431
  %3049 = inttoptr i64 %3044 to i32*
  store i32 %3045, i32* %3049
  store %struct.Memory* %loadMem_420fc6, %struct.Memory** %MEMORY
  %loadMem_420fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 1
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %PC.i429
  %3057 = add i64 %3056, 8
  store i64 %3057, i64* %PC.i429
  %3058 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %3058, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_420fc8, %struct.Memory** %MEMORY
  %loadMem_420fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 5
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 15
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3067 to i64*
  %3068 = load i64, i64* %RBP.i428
  %3069 = sub i64 %3068, 56
  %3070 = load i64, i64* %PC.i426
  %3071 = add i64 %3070, 3
  store i64 %3071, i64* %PC.i426
  %3072 = inttoptr i64 %3069 to i32*
  %3073 = load i32, i32* %3072
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_420fd0, %struct.Memory** %MEMORY
  %loadMem_420fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 5
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %ECX.i424 = bitcast %union.anon* %3080 to i32*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 7
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %3083 to i64*
  %3084 = load i32, i32* %ECX.i424
  %3085 = zext i32 %3084 to i64
  %3086 = load i64, i64* %PC.i423
  %3087 = add i64 %3086, 2
  store i64 %3087, i64* %PC.i423
  %3088 = and i64 %3085, 4294967295
  store i64 %3088, i64* %RDX.i425, align 8
  store %struct.Memory* %loadMem_420fd3, %struct.Memory** %MEMORY
  %loadMem_420fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 7
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RDX.i422
  %3096 = load i64, i64* %PC.i421
  %3097 = add i64 %3096, 4
  store i64 %3097, i64* %PC.i421
  %3098 = sext i64 %3095 to i128
  %3099 = and i128 %3098, -18446744073709551616
  %3100 = zext i64 %3095 to i128
  %3101 = or i128 %3099, %3100
  %3102 = mul i128 20, %3101
  %3103 = trunc i128 %3102 to i64
  store i64 %3103, i64* %RDX.i422, align 8
  %3104 = sext i64 %3103 to i128
  %3105 = icmp ne i128 %3104, %3102
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3106, i8* %3107, align 1
  %3108 = trunc i128 %3102 to i32
  %3109 = and i32 %3108, 255
  %3110 = call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3113, i8* %3114, align 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3115, align 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3116, align 1
  %3117 = lshr i64 %3103, 63
  %3118 = trunc i64 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3106, i8* %3120, align 1
  store %struct.Memory* %loadMem_420fd5, %struct.Memory** %MEMORY
  %loadMem_420fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 7
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RAX.i419
  %3131 = load i64, i64* %RDX.i420
  %3132 = load i64, i64* %PC.i418
  %3133 = add i64 %3132, 3
  store i64 %3133, i64* %PC.i418
  %3134 = add i64 %3131, %3130
  store i64 %3134, i64* %RAX.i419, align 8
  %3135 = icmp ult i64 %3134, %3130
  %3136 = icmp ult i64 %3134, %3131
  %3137 = or i1 %3135, %3136
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3138, i8* %3139, align 1
  %3140 = trunc i64 %3134 to i32
  %3141 = and i32 %3140, 255
  %3142 = call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3145, i8* %3146, align 1
  %3147 = xor i64 %3131, %3130
  %3148 = xor i64 %3147, %3134
  %3149 = lshr i64 %3148, 4
  %3150 = trunc i64 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3151, i8* %3152, align 1
  %3153 = icmp eq i64 %3134, 0
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3154, i8* %3155, align 1
  %3156 = lshr i64 %3134, 63
  %3157 = trunc i64 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3157, i8* %3158, align 1
  %3159 = lshr i64 %3130, 63
  %3160 = lshr i64 %3131, 63
  %3161 = xor i64 %3156, %3159
  %3162 = xor i64 %3156, %3160
  %3163 = add i64 %3161, %3162
  %3164 = icmp eq i64 %3163, 2
  %3165 = zext i1 %3164 to i8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3165, i8* %3166, align 1
  store %struct.Memory* %loadMem_420fd9, %struct.Memory** %MEMORY
  %loadMem_420fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 1
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 5
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %RAX.i416
  %3177 = add i64 %3176, 3
  %3178 = load i64, i64* %PC.i415
  %3179 = add i64 %3178, 4
  store i64 %3179, i64* %PC.i415
  %3180 = inttoptr i64 %3177 to i8*
  %3181 = load i8, i8* %3180
  %3182 = sext i8 %3181 to i64
  %3183 = and i64 %3182, 4294967295
  store i64 %3183, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_420fdc, %struct.Memory** %MEMORY
  %loadMem_420fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 5
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %ECX.i413 = bitcast %union.anon* %3189 to i32*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i414
  %3194 = sub i64 %3193, 4
  %3195 = load i32, i32* %ECX.i413
  %3196 = zext i32 %3195 to i64
  %3197 = load i64, i64* %PC.i412
  %3198 = add i64 %3197, 3
  store i64 %3198, i64* %PC.i412
  %3199 = inttoptr i64 %3194 to i32*
  store i32 %3195, i32* %3199
  store %struct.Memory* %loadMem_420fe0, %struct.Memory** %MEMORY
  %loadMem_420fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %PC.i411
  %3204 = add i64 %3203, 683
  %3205 = load i64, i64* %PC.i411
  %3206 = add i64 %3205, 5
  store i64 %3206, i64* %PC.i411
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3204, i64* %3207, align 8
  store %struct.Memory* %loadMem_420fe3, %struct.Memory** %MEMORY
  br label %block_.L_42128e

block_.L_420fe8:                                  ; preds = %block_.L_420f05
  %loadMem_420fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 1
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %PC.i409
  %3215 = add i64 %3214, 8
  store i64 %3215, i64* %PC.i409
  %3216 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %3216, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_420fe8, %struct.Memory** %MEMORY
  %loadMem_420ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 33
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 5
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 15
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %RBP.i408
  %3227 = sub i64 %3226, 56
  %3228 = load i64, i64* %PC.i406
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %PC.i406
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_420ff0, %struct.Memory** %MEMORY
  %loadMem_420ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 5
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %ECX.i404 = bitcast %union.anon* %3238 to i32*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 7
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %3241 to i64*
  %3242 = load i32, i32* %ECX.i404
  %3243 = zext i32 %3242 to i64
  %3244 = load i64, i64* %PC.i403
  %3245 = add i64 %3244, 2
  store i64 %3245, i64* %PC.i403
  %3246 = and i64 %3243, 4294967295
  store i64 %3246, i64* %RDX.i405, align 8
  store %struct.Memory* %loadMem_420ff3, %struct.Memory** %MEMORY
  %loadMem_420ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 7
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RDX.i402
  %3254 = load i64, i64* %PC.i401
  %3255 = add i64 %3254, 4
  store i64 %3255, i64* %PC.i401
  %3256 = sext i64 %3253 to i128
  %3257 = and i128 %3256, -18446744073709551616
  %3258 = zext i64 %3253 to i128
  %3259 = or i128 %3257, %3258
  %3260 = mul i128 20, %3259
  %3261 = trunc i128 %3260 to i64
  store i64 %3261, i64* %RDX.i402, align 8
  %3262 = sext i64 %3261 to i128
  %3263 = icmp ne i128 %3262, %3260
  %3264 = zext i1 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3264, i8* %3265, align 1
  %3266 = trunc i128 %3260 to i32
  %3267 = and i32 %3266, 255
  %3268 = call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3271, i8* %3272, align 1
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3273, align 1
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3274, align 1
  %3275 = lshr i64 %3261, 63
  %3276 = trunc i64 %3275 to i8
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3276, i8* %3277, align 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3264, i8* %3278, align 1
  store %struct.Memory* %loadMem_420ff5, %struct.Memory** %MEMORY
  %loadMem_420ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 1
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 7
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RAX.i399
  %3289 = load i64, i64* %RDX.i400
  %3290 = load i64, i64* %PC.i398
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i398
  %3292 = add i64 %3289, %3288
  store i64 %3292, i64* %RAX.i399, align 8
  %3293 = icmp ult i64 %3292, %3288
  %3294 = icmp ult i64 %3292, %3289
  %3295 = or i1 %3293, %3294
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3296, i8* %3297, align 1
  %3298 = trunc i64 %3292 to i32
  %3299 = and i32 %3298, 255
  %3300 = call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3303, i8* %3304, align 1
  %3305 = xor i64 %3289, %3288
  %3306 = xor i64 %3305, %3292
  %3307 = lshr i64 %3306, 4
  %3308 = trunc i64 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3309, i8* %3310, align 1
  %3311 = icmp eq i64 %3292, 0
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3312, i8* %3313, align 1
  %3314 = lshr i64 %3292, 63
  %3315 = trunc i64 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3315, i8* %3316, align 1
  %3317 = lshr i64 %3288, 63
  %3318 = lshr i64 %3289, 63
  %3319 = xor i64 %3314, %3317
  %3320 = xor i64 %3314, %3318
  %3321 = add i64 %3319, %3320
  %3322 = icmp eq i64 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1
  store %struct.Memory* %loadMem_420ff9, %struct.Memory** %MEMORY
  %loadMem_420ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 5
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RAX.i396
  %3335 = add i64 %3334, 4
  %3336 = load i64, i64* %PC.i395
  %3337 = add i64 %3336, 4
  store i64 %3337, i64* %PC.i395
  %3338 = inttoptr i64 %3335 to i16*
  %3339 = load i16, i16* %3338
  %3340 = zext i16 %3339 to i64
  store i64 %3340, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_420ffc, %struct.Memory** %MEMORY
  %loadMem_421000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 1
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i394
  %3351 = sub i64 %3350, 32
  %3352 = load i64, i64* %PC.i392
  %3353 = add i64 %3352, 4
  store i64 %3353, i64* %PC.i392
  %3354 = inttoptr i64 %3351 to i64*
  %3355 = load i64, i64* %3354
  store i64 %3355, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_421000, %struct.Memory** %MEMORY
  %loadMem_421004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 5
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %ECX.i390 = bitcast %union.anon* %3361 to i32*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 1
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RAX.i391
  %3366 = load i32, i32* %ECX.i390
  %3367 = zext i32 %3366 to i64
  %3368 = load i64, i64* %PC.i389
  %3369 = add i64 %3368, 2
  store i64 %3369, i64* %PC.i389
  %3370 = inttoptr i64 %3365 to i32*
  store i32 %3366, i32* %3370
  store %struct.Memory* %loadMem_421004, %struct.Memory** %MEMORY
  %loadMem_421006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %3376 to i64*
  %3377 = load i64, i64* %PC.i387
  %3378 = add i64 %3377, 8
  store i64 %3378, i64* %PC.i387
  %3379 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %3379, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_421006, %struct.Memory** %MEMORY
  %loadMem_42100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 5
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RBP.i386
  %3390 = sub i64 %3389, 56
  %3391 = load i64, i64* %PC.i384
  %3392 = add i64 %3391, 3
  store i64 %3392, i64* %PC.i384
  %3393 = inttoptr i64 %3390 to i32*
  %3394 = load i32, i32* %3393
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RCX.i385, align 8
  store %struct.Memory* %loadMem_42100e, %struct.Memory** %MEMORY
  %loadMem_421011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 5
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %ECX.i382 = bitcast %union.anon* %3401 to i32*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 7
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %3404 to i64*
  %3405 = load i32, i32* %ECX.i382
  %3406 = zext i32 %3405 to i64
  %3407 = load i64, i64* %PC.i381
  %3408 = add i64 %3407, 2
  store i64 %3408, i64* %PC.i381
  %3409 = and i64 %3406, 4294967295
  store i64 %3409, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_421011, %struct.Memory** %MEMORY
  %loadMem_421013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 7
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RDX.i380
  %3417 = load i64, i64* %PC.i379
  %3418 = add i64 %3417, 4
  store i64 %3418, i64* %PC.i379
  %3419 = sext i64 %3416 to i128
  %3420 = and i128 %3419, -18446744073709551616
  %3421 = zext i64 %3416 to i128
  %3422 = or i128 %3420, %3421
  %3423 = mul i128 20, %3422
  %3424 = trunc i128 %3423 to i64
  store i64 %3424, i64* %RDX.i380, align 8
  %3425 = sext i64 %3424 to i128
  %3426 = icmp ne i128 %3425, %3423
  %3427 = zext i1 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3427, i8* %3428, align 1
  %3429 = trunc i128 %3423 to i32
  %3430 = and i32 %3429, 255
  %3431 = call i32 @llvm.ctpop.i32(i32 %3430)
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = xor i8 %3433, 1
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3434, i8* %3435, align 1
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3436, align 1
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3437, align 1
  %3438 = lshr i64 %3424, 63
  %3439 = trunc i64 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3439, i8* %3440, align 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3427, i8* %3441, align 1
  store %struct.Memory* %loadMem_421013, %struct.Memory** %MEMORY
  %loadMem_421017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 1
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 7
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RAX.i377
  %3452 = load i64, i64* %RDX.i378
  %3453 = load i64, i64* %PC.i376
  %3454 = add i64 %3453, 3
  store i64 %3454, i64* %PC.i376
  %3455 = add i64 %3452, %3451
  store i64 %3455, i64* %RAX.i377, align 8
  %3456 = icmp ult i64 %3455, %3451
  %3457 = icmp ult i64 %3455, %3452
  %3458 = or i1 %3456, %3457
  %3459 = zext i1 %3458 to i8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3459, i8* %3460, align 1
  %3461 = trunc i64 %3455 to i32
  %3462 = and i32 %3461, 255
  %3463 = call i32 @llvm.ctpop.i32(i32 %3462)
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = xor i8 %3465, 1
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3466, i8* %3467, align 1
  %3468 = xor i64 %3452, %3451
  %3469 = xor i64 %3468, %3455
  %3470 = lshr i64 %3469, 4
  %3471 = trunc i64 %3470 to i8
  %3472 = and i8 %3471, 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3472, i8* %3473, align 1
  %3474 = icmp eq i64 %3455, 0
  %3475 = zext i1 %3474 to i8
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3475, i8* %3476, align 1
  %3477 = lshr i64 %3455, 63
  %3478 = trunc i64 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3478, i8* %3479, align 1
  %3480 = lshr i64 %3451, 63
  %3481 = lshr i64 %3452, 63
  %3482 = xor i64 %3477, %3480
  %3483 = xor i64 %3477, %3481
  %3484 = add i64 %3482, %3483
  %3485 = icmp eq i64 %3484, 2
  %3486 = zext i1 %3485 to i8
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3486, i8* %3487, align 1
  store %struct.Memory* %loadMem_421017, %struct.Memory** %MEMORY
  %loadMem_42101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 1
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 5
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3496 to i64*
  %3497 = load i64, i64* %RAX.i374
  %3498 = add i64 %3497, 2
  %3499 = load i64, i64* %PC.i373
  %3500 = add i64 %3499, 4
  store i64 %3500, i64* %PC.i373
  %3501 = inttoptr i64 %3498 to i8*
  %3502 = load i8, i8* %3501
  %3503 = sext i8 %3502 to i64
  %3504 = and i64 %3503, 4294967295
  store i64 %3504, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_42101a, %struct.Memory** %MEMORY
  %loadMem_42101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 1
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 15
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RBP.i372
  %3515 = sub i64 %3514, 40
  %3516 = load i64, i64* %PC.i370
  %3517 = add i64 %3516, 4
  store i64 %3517, i64* %PC.i370
  %3518 = inttoptr i64 %3515 to i64*
  %3519 = load i64, i64* %3518
  store i64 %3519, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_42101e, %struct.Memory** %MEMORY
  %loadMem_421022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 5
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %3525 to i32*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 1
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %RAX.i369
  %3530 = load i32, i32* %ECX.i368
  %3531 = zext i32 %3530 to i64
  %3532 = load i64, i64* %PC.i367
  %3533 = add i64 %3532, 2
  store i64 %3533, i64* %PC.i367
  %3534 = inttoptr i64 %3529 to i32*
  store i32 %3530, i32* %3534
  store %struct.Memory* %loadMem_421022, %struct.Memory** %MEMORY
  %loadMem_421024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i366
  %3542 = sub i64 %3541, 4
  %3543 = load i64, i64* %PC.i365
  %3544 = add i64 %3543, 7
  store i64 %3544, i64* %PC.i365
  %3545 = inttoptr i64 %3542 to i32*
  store i32 0, i32* %3545
  store %struct.Memory* %loadMem_421024, %struct.Memory** %MEMORY
  %loadMem_42102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %PC.i364
  %3550 = add i64 %3549, 611
  %3551 = load i64, i64* %PC.i364
  %3552 = add i64 %3551, 5
  store i64 %3552, i64* %PC.i364
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3550, i64* %3553, align 8
  store %struct.Memory* %loadMem_42102b, %struct.Memory** %MEMORY
  br label %block_.L_42128e

block_.L_421030:                                  ; preds = %block_420e21, %block_420dfd, %routine_divl_0x8661d4.exit
  %loadMem_421030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 1
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %PC.i362
  %3561 = add i64 %3560, 8
  store i64 %3561, i64* %PC.i362
  %3562 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %3562, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_421030, %struct.Memory** %MEMORY
  %loadMem_421038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 33
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 5
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 15
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RBP.i361
  %3573 = sub i64 %3572, 56
  %3574 = load i64, i64* %PC.i359
  %3575 = add i64 %3574, 3
  store i64 %3575, i64* %PC.i359
  %3576 = inttoptr i64 %3573 to i32*
  %3577 = load i32, i32* %3576
  %3578 = zext i32 %3577 to i64
  store i64 %3578, i64* %RCX.i360, align 8
  store %struct.Memory* %loadMem_421038, %struct.Memory** %MEMORY
  %loadMem_42103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 5
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %ECX.i357 = bitcast %union.anon* %3584 to i32*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 7
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %3587 to i64*
  %3588 = load i32, i32* %ECX.i357
  %3589 = zext i32 %3588 to i64
  %3590 = load i64, i64* %PC.i356
  %3591 = add i64 %3590, 2
  store i64 %3591, i64* %PC.i356
  %3592 = and i64 %3589, 4294967295
  store i64 %3592, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_42103b, %struct.Memory** %MEMORY
  %loadMem_42103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 7
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RDX.i355
  %3600 = load i64, i64* %PC.i354
  %3601 = add i64 %3600, 4
  store i64 %3601, i64* %PC.i354
  %3602 = sext i64 %3599 to i128
  %3603 = and i128 %3602, -18446744073709551616
  %3604 = zext i64 %3599 to i128
  %3605 = or i128 %3603, %3604
  %3606 = mul i128 20, %3605
  %3607 = trunc i128 %3606 to i64
  store i64 %3607, i64* %RDX.i355, align 8
  %3608 = sext i64 %3607 to i128
  %3609 = icmp ne i128 %3608, %3606
  %3610 = zext i1 %3609 to i8
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3610, i8* %3611, align 1
  %3612 = trunc i128 %3606 to i32
  %3613 = and i32 %3612, 255
  %3614 = call i32 @llvm.ctpop.i32(i32 %3613)
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = xor i8 %3616, 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3617, i8* %3618, align 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3619, align 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3620, align 1
  %3621 = lshr i64 %3607, 63
  %3622 = trunc i64 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3622, i8* %3623, align 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3610, i8* %3624, align 1
  store %struct.Memory* %loadMem_42103d, %struct.Memory** %MEMORY
  %loadMem_421041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 7
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %RAX.i352
  %3635 = load i64, i64* %RDX.i353
  %3636 = load i64, i64* %PC.i351
  %3637 = add i64 %3636, 3
  store i64 %3637, i64* %PC.i351
  %3638 = add i64 %3635, %3634
  store i64 %3638, i64* %RAX.i352, align 8
  %3639 = icmp ult i64 %3638, %3634
  %3640 = icmp ult i64 %3638, %3635
  %3641 = or i1 %3639, %3640
  %3642 = zext i1 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3642, i8* %3643, align 1
  %3644 = trunc i64 %3638 to i32
  %3645 = and i32 %3644, 255
  %3646 = call i32 @llvm.ctpop.i32(i32 %3645)
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  %3649 = xor i8 %3648, 1
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3649, i8* %3650, align 1
  %3651 = xor i64 %3635, %3634
  %3652 = xor i64 %3651, %3638
  %3653 = lshr i64 %3652, 4
  %3654 = trunc i64 %3653 to i8
  %3655 = and i8 %3654, 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3655, i8* %3656, align 1
  %3657 = icmp eq i64 %3638, 0
  %3658 = zext i1 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3658, i8* %3659, align 1
  %3660 = lshr i64 %3638, 63
  %3661 = trunc i64 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3661, i8* %3662, align 1
  %3663 = lshr i64 %3634, 63
  %3664 = lshr i64 %3635, 63
  %3665 = xor i64 %3660, %3663
  %3666 = xor i64 %3660, %3664
  %3667 = add i64 %3665, %3666
  %3668 = icmp eq i64 %3667, 2
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3669, i8* %3670, align 1
  store %struct.Memory* %loadMem_421041, %struct.Memory** %MEMORY
  %loadMem_421044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 1
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 5
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %RAX.i349
  %3681 = add i64 %3680, 8
  %3682 = load i64, i64* %PC.i348
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC.i348
  %3684 = inttoptr i64 %3681 to i32*
  %3685 = load i32, i32* %3684
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_421044, %struct.Memory** %MEMORY
  %loadMem_421047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 5
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %ECX.i347 = bitcast %union.anon* %3692 to i32*
  %3693 = load i32, i32* %ECX.i347
  %3694 = zext i32 %3693 to i64
  %3695 = load i64, i64* %PC.i346
  %3696 = add i64 %3695, 7
  store i64 %3696, i64* %PC.i346
  %3697 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %3698 = sub i32 %3693, %3697
  %3699 = icmp ult i32 %3693, %3697
  %3700 = zext i1 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3700, i8* %3701, align 1
  %3702 = and i32 %3698, 255
  %3703 = call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3706, i8* %3707, align 1
  %3708 = xor i32 %3697, %3693
  %3709 = xor i32 %3708, %3698
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3712, i8* %3713, align 1
  %3714 = icmp eq i32 %3698, 0
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i32 %3698, 31
  %3718 = trunc i32 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i32 %3693, 31
  %3721 = lshr i32 %3697, 31
  %3722 = xor i32 %3721, %3720
  %3723 = xor i32 %3717, %3720
  %3724 = add i32 %3723, %3722
  %3725 = icmp eq i32 %3724, 2
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3726, i8* %3727, align 1
  store %struct.Memory* %loadMem_421047, %struct.Memory** %MEMORY
  %loadMem_42104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %PC.i345
  %3732 = add i64 %3731, 569
  %3733 = load i64, i64* %PC.i345
  %3734 = add i64 %3733, 6
  %3735 = load i64, i64* %PC.i345
  %3736 = add i64 %3735, 6
  store i64 %3736, i64* %PC.i345
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3738 = load i8, i8* %3737, align 1
  %3739 = icmp eq i8 %3738, 0
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %BRANCH_TAKEN, align 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3742 = select i1 %3739, i64 %3732, i64 %3734
  store i64 %3742, i64* %3741, align 8
  store %struct.Memory* %loadMem_42104e, %struct.Memory** %MEMORY
  %loadBr_42104e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42104e = icmp eq i8 %loadBr_42104e, 1
  br i1 %cmpBr_42104e, label %block_.L_421287, label %block_421054

block_421054:                                     ; preds = %block_.L_421030
  %loadMem_421054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %PC.i343
  %3750 = add i64 %3749, 8
  store i64 %3750, i64* %PC.i343
  %3751 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %3751, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_421054, %struct.Memory** %MEMORY
  %loadMem_42105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 5
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i342
  %3762 = sub i64 %3761, 56
  %3763 = load i64, i64* %PC.i340
  %3764 = add i64 %3763, 3
  store i64 %3764, i64* %PC.i340
  %3765 = inttoptr i64 %3762 to i32*
  %3766 = load i32, i32* %3765
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_42105c, %struct.Memory** %MEMORY
  %loadMem_42105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 5
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %3773 to i32*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 7
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RDX.i339 = bitcast %union.anon* %3776 to i64*
  %3777 = load i32, i32* %ECX.i338
  %3778 = zext i32 %3777 to i64
  %3779 = load i64, i64* %PC.i337
  %3780 = add i64 %3779, 2
  store i64 %3780, i64* %PC.i337
  %3781 = and i64 %3778, 4294967295
  store i64 %3781, i64* %RDX.i339, align 8
  store %struct.Memory* %loadMem_42105f, %struct.Memory** %MEMORY
  %loadMem_421061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 7
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RDX.i336
  %3789 = load i64, i64* %PC.i335
  %3790 = add i64 %3789, 4
  store i64 %3790, i64* %PC.i335
  %3791 = sext i64 %3788 to i128
  %3792 = and i128 %3791, -18446744073709551616
  %3793 = zext i64 %3788 to i128
  %3794 = or i128 %3792, %3793
  %3795 = mul i128 20, %3794
  %3796 = trunc i128 %3795 to i64
  store i64 %3796, i64* %RDX.i336, align 8
  %3797 = sext i64 %3796 to i128
  %3798 = icmp ne i128 %3797, %3795
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3799, i8* %3800, align 1
  %3801 = trunc i128 %3795 to i32
  %3802 = and i32 %3801, 255
  %3803 = call i32 @llvm.ctpop.i32(i32 %3802)
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = xor i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3806, i8* %3807, align 1
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3808, align 1
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3809, align 1
  %3810 = lshr i64 %3796, 63
  %3811 = trunc i64 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3811, i8* %3812, align 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3799, i8* %3813, align 1
  store %struct.Memory* %loadMem_421061, %struct.Memory** %MEMORY
  %loadMem_421065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 7
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RAX.i333
  %3824 = load i64, i64* %RDX.i334
  %3825 = load i64, i64* %PC.i332
  %3826 = add i64 %3825, 3
  store i64 %3826, i64* %PC.i332
  %3827 = add i64 %3824, %3823
  store i64 %3827, i64* %RAX.i333, align 8
  %3828 = icmp ult i64 %3827, %3823
  %3829 = icmp ult i64 %3827, %3824
  %3830 = or i1 %3828, %3829
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3831, i8* %3832, align 1
  %3833 = trunc i64 %3827 to i32
  %3834 = and i32 %3833, 255
  %3835 = call i32 @llvm.ctpop.i32(i32 %3834)
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  %3838 = xor i8 %3837, 1
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3838, i8* %3839, align 1
  %3840 = xor i64 %3824, %3823
  %3841 = xor i64 %3840, %3827
  %3842 = lshr i64 %3841, 4
  %3843 = trunc i64 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3844, i8* %3845, align 1
  %3846 = icmp eq i64 %3827, 0
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3847, i8* %3848, align 1
  %3849 = lshr i64 %3827, 63
  %3850 = trunc i64 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3850, i8* %3851, align 1
  %3852 = lshr i64 %3823, 63
  %3853 = lshr i64 %3824, 63
  %3854 = xor i64 %3849, %3852
  %3855 = xor i64 %3849, %3853
  %3856 = add i64 %3854, %3855
  %3857 = icmp eq i64 %3856, 2
  %3858 = zext i1 %3857 to i8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3858, i8* %3859, align 1
  store %struct.Memory* %loadMem_421065, %struct.Memory** %MEMORY
  %loadMem_421068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 5
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %RAX.i330
  %3870 = add i64 %3869, 12
  %3871 = load i64, i64* %PC.i329
  %3872 = add i64 %3871, 3
  store i64 %3872, i64* %PC.i329
  %3873 = inttoptr i64 %3870 to i32*
  %3874 = load i32, i32* %3873
  %3875 = zext i32 %3874 to i64
  store i64 %3875, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_421068, %struct.Memory** %MEMORY
  %loadMem_42106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 5
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %ECX.i328 = bitcast %union.anon* %3881 to i32*
  %3882 = load i32, i32* %ECX.i328
  %3883 = zext i32 %3882 to i64
  %3884 = load i64, i64* %PC.i327
  %3885 = add i64 %3884, 7
  store i64 %3885, i64* %PC.i327
  %3886 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*)
  %3887 = sub i32 %3882, %3886
  %3888 = icmp ult i32 %3882, %3886
  %3889 = zext i1 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3889, i8* %3890, align 1
  %3891 = and i32 %3887, 255
  %3892 = call i32 @llvm.ctpop.i32(i32 %3891)
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  %3895 = xor i8 %3894, 1
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3895, i8* %3896, align 1
  %3897 = xor i32 %3886, %3882
  %3898 = xor i32 %3897, %3887
  %3899 = lshr i32 %3898, 4
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3901, i8* %3902, align 1
  %3903 = icmp eq i32 %3887, 0
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3904, i8* %3905, align 1
  %3906 = lshr i32 %3887, 31
  %3907 = trunc i32 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3907, i8* %3908, align 1
  %3909 = lshr i32 %3882, 31
  %3910 = lshr i32 %3886, 31
  %3911 = xor i32 %3910, %3909
  %3912 = xor i32 %3906, %3909
  %3913 = add i32 %3912, %3911
  %3914 = icmp eq i32 %3913, 2
  %3915 = zext i1 %3914 to i8
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3915, i8* %3916, align 1
  store %struct.Memory* %loadMem_42106b, %struct.Memory** %MEMORY
  %loadMem_421072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3919 to i64*
  %3920 = load i64, i64* %PC.i326
  %3921 = add i64 %3920, 533
  %3922 = load i64, i64* %PC.i326
  %3923 = add i64 %3922, 6
  %3924 = load i64, i64* %PC.i326
  %3925 = add i64 %3924, 6
  store i64 %3925, i64* %PC.i326
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3927 = load i8, i8* %3926, align 1
  %3928 = icmp eq i8 %3927, 0
  %3929 = zext i1 %3928 to i8
  store i8 %3929, i8* %BRANCH_TAKEN, align 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3931 = select i1 %3928, i64 %3921, i64 %3923
  store i64 %3931, i64* %3930, align 8
  store %struct.Memory* %loadMem_421072, %struct.Memory** %MEMORY
  %loadBr_421072 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421072 = icmp eq i8 %loadBr_421072, 1
  br i1 %cmpBr_421072, label %block_.L_421287, label %block_421078

block_421078:                                     ; preds = %block_421054
  %loadMem_421078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 1
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %3937 to i64*
  %3938 = load i64, i64* %PC.i324
  %3939 = add i64 %3938, 5
  store i64 %3939, i64* %PC.i324
  store i64 1, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_421078, %struct.Memory** %MEMORY
  %loadMem_42107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 5
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %ECX.i322 = bitcast %union.anon* %3945 to i32*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 5
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %RCX.i323
  %3950 = load i32, i32* %ECX.i322
  %3951 = zext i32 %3950 to i64
  %3952 = load i64, i64* %PC.i321
  %3953 = add i64 %3952, 2
  store i64 %3953, i64* %PC.i321
  %3954 = xor i64 %3951, %3949
  %3955 = trunc i64 %3954 to i32
  %3956 = and i64 %3954, 4294967295
  store i64 %3956, i64* %RCX.i323, align 8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3957, align 1
  %3958 = and i32 %3955, 255
  %3959 = call i32 @llvm.ctpop.i32(i32 %3958)
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = xor i8 %3961, 1
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3962, i8* %3963, align 1
  %3964 = icmp eq i32 %3955, 0
  %3965 = zext i1 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3965, i8* %3966, align 1
  %3967 = lshr i32 %3955, 31
  %3968 = trunc i32 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3968, i8* %3969, align 1
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3970, align 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3971, align 1
  store %struct.Memory* %loadMem_42107d, %struct.Memory** %MEMORY
  %loadMem_42107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 7
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %PC.i319
  %3979 = add i64 %3978, 8
  store i64 %3979, i64* %PC.i319
  %3980 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %3980, i64* %RDX.i320, align 8
  store %struct.Memory* %loadMem_42107f, %struct.Memory** %MEMORY
  %loadMem_421087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 9
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RSI.i317 = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 15
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %3989 to i64*
  %3990 = load i64, i64* %RBP.i318
  %3991 = sub i64 %3990, 56
  %3992 = load i64, i64* %PC.i316
  %3993 = add i64 %3992, 3
  store i64 %3993, i64* %PC.i316
  %3994 = inttoptr i64 %3991 to i32*
  %3995 = load i32, i32* %3994
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RSI.i317, align 8
  store %struct.Memory* %loadMem_421087, %struct.Memory** %MEMORY
  %loadMem_42108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 9
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %ESI.i314 = bitcast %union.anon* %4002 to i32*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 11
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RDI.i315 = bitcast %union.anon* %4005 to i64*
  %4006 = load i32, i32* %ESI.i314
  %4007 = zext i32 %4006 to i64
  %4008 = load i64, i64* %PC.i313
  %4009 = add i64 %4008, 2
  store i64 %4009, i64* %PC.i313
  %4010 = and i64 %4007, 4294967295
  store i64 %4010, i64* %RDI.i315, align 8
  store %struct.Memory* %loadMem_42108a, %struct.Memory** %MEMORY
  %loadMem_42108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 33
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 11
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RDI.i312 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RDI.i312
  %4018 = load i64, i64* %PC.i311
  %4019 = add i64 %4018, 4
  store i64 %4019, i64* %PC.i311
  %4020 = sext i64 %4017 to i128
  %4021 = and i128 %4020, -18446744073709551616
  %4022 = zext i64 %4017 to i128
  %4023 = or i128 %4021, %4022
  %4024 = mul i128 20, %4023
  %4025 = trunc i128 %4024 to i64
  store i64 %4025, i64* %RDI.i312, align 8
  %4026 = sext i64 %4025 to i128
  %4027 = icmp ne i128 %4026, %4024
  %4028 = zext i1 %4027 to i8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4028, i8* %4029, align 1
  %4030 = trunc i128 %4024 to i32
  %4031 = and i32 %4030, 255
  %4032 = call i32 @llvm.ctpop.i32(i32 %4031)
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4035, i8* %4036, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4037, align 1
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4038, align 1
  %4039 = lshr i64 %4025, 63
  %4040 = trunc i64 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4040, i8* %4041, align 1
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4028, i8* %4042, align 1
  store %struct.Memory* %loadMem_42108c, %struct.Memory** %MEMORY
  %loadMem_421090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 33
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4045 to i64*
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 7
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 11
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4051 to i64*
  %4052 = load i64, i64* %RDX.i310
  %4053 = load i64, i64* %RDI.i
  %4054 = load i64, i64* %PC.i309
  %4055 = add i64 %4054, 3
  store i64 %4055, i64* %PC.i309
  %4056 = add i64 %4053, %4052
  store i64 %4056, i64* %RDX.i310, align 8
  %4057 = icmp ult i64 %4056, %4052
  %4058 = icmp ult i64 %4056, %4053
  %4059 = or i1 %4057, %4058
  %4060 = zext i1 %4059 to i8
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4060, i8* %4061, align 1
  %4062 = trunc i64 %4056 to i32
  %4063 = and i32 %4062, 255
  %4064 = call i32 @llvm.ctpop.i32(i32 %4063)
  %4065 = trunc i32 %4064 to i8
  %4066 = and i8 %4065, 1
  %4067 = xor i8 %4066, 1
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4067, i8* %4068, align 1
  %4069 = xor i64 %4053, %4052
  %4070 = xor i64 %4069, %4056
  %4071 = lshr i64 %4070, 4
  %4072 = trunc i64 %4071 to i8
  %4073 = and i8 %4072, 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4073, i8* %4074, align 1
  %4075 = icmp eq i64 %4056, 0
  %4076 = zext i1 %4075 to i8
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4076, i8* %4077, align 1
  %4078 = lshr i64 %4056, 63
  %4079 = trunc i64 %4078 to i8
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4079, i8* %4080, align 1
  %4081 = lshr i64 %4052, 63
  %4082 = lshr i64 %4053, 63
  %4083 = xor i64 %4078, %4081
  %4084 = xor i64 %4078, %4082
  %4085 = add i64 %4083, %4084
  %4086 = icmp eq i64 %4085, 2
  %4087 = zext i1 %4086 to i8
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4087, i8* %4088, align 1
  store %struct.Memory* %loadMem_421090, %struct.Memory** %MEMORY
  %loadMem_421093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 7
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 9
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %RDX.i307
  %4099 = add i64 %4098, 1
  %4100 = load i64, i64* %PC.i306
  %4101 = add i64 %4100, 4
  store i64 %4101, i64* %PC.i306
  %4102 = inttoptr i64 %4099 to i8*
  %4103 = load i8, i8* %4102
  %4104 = sext i8 %4103 to i64
  %4105 = and i64 %4104, 4294967295
  store i64 %4105, i64* %RSI.i308, align 8
  store %struct.Memory* %loadMem_421093, %struct.Memory** %MEMORY
  %loadMem_421097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %PC.i305
  %4110 = add i64 %4109, 8
  store i64 %4110, i64* %PC.i305
  %4111 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4112, align 1
  %4113 = and i32 %4111, 255
  %4114 = call i32 @llvm.ctpop.i32(i32 %4113)
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  %4117 = xor i8 %4116, 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4117, i8* %4118, align 1
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4119, align 1
  %4120 = icmp eq i32 %4111, 0
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4121, i8* %4122, align 1
  %4123 = lshr i32 %4111, 31
  %4124 = trunc i32 %4123 to i8
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4124, i8* %4125, align 1
  %4126 = lshr i32 %4111, 31
  %4127 = xor i32 %4123, %4126
  %4128 = add i32 %4127, %4126
  %4129 = icmp eq i32 %4128, 2
  %4130 = zext i1 %4129 to i8
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4130, i8* %4131, align 1
  store %struct.Memory* %loadMem_421097, %struct.Memory** %MEMORY
  %loadMem_42109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 5
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %ECX.i303 = bitcast %union.anon* %4137 to i32*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 1
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %4140 to i64*
  %4141 = load i32, i32* %ECX.i303
  %4142 = zext i32 %4141 to i64
  %4143 = load i64, i64* %PC.i302
  %4144 = add i64 %4143, 3
  store i64 %4144, i64* %PC.i302
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4146 = load i8, i8* %4145, align 1
  %4147 = icmp eq i8 %4146, 0
  %4148 = load i64, i64* %RAX.i304, align 8
  %4149 = select i1 %4147, i64 %4142, i64 %4148
  %4150 = and i64 %4149, 4294967295
  store i64 %4150, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_42109f, %struct.Memory** %MEMORY
  %loadMem_4210a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 33
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 1
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %4157 = bitcast %union.anon* %4156 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4157, i32 0, i32 0
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 17
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %4161 = bitcast %union.anon* %4160 to %struct.anon.2*
  %R8B.i301 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4161, i32 0, i32 0
  %4162 = load i8, i8* %AL.i
  %4163 = zext i8 %4162 to i64
  %4164 = load i64, i64* %PC.i300
  %4165 = add i64 %4164, 3
  store i64 %4165, i64* %PC.i300
  store i8 %4162, i8* %R8B.i301, align 1
  store %struct.Memory* %loadMem_4210a2, %struct.Memory** %MEMORY
  %loadMem_4210a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 33
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 17
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %4172 = bitcast %union.anon* %4171 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4172, i32 0, i32 0
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 1
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %4175 to i64*
  %4176 = load i8, i8* %R8B.i
  %4177 = zext i8 %4176 to i64
  %4178 = load i64, i64* %PC.i298
  %4179 = add i64 %4178, 4
  store i64 %4179, i64* %PC.i298
  %4180 = trunc i64 %4177 to i32
  %4181 = shl i32 %4180, 24
  %4182 = ashr exact i32 %4181, 24
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_4210a5, %struct.Memory** %MEMORY
  %loadMem_4210a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 1
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %4189 to i32*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 9
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4192 to i32*
  %4193 = load i32, i32* %ESI.i
  %4194 = zext i32 %4193 to i64
  %4195 = load i32, i32* %EAX.i297
  %4196 = zext i32 %4195 to i64
  %4197 = load i64, i64* %PC.i296
  %4198 = add i64 %4197, 2
  store i64 %4198, i64* %PC.i296
  %4199 = sub i32 %4193, %4195
  %4200 = icmp ult i32 %4193, %4195
  %4201 = zext i1 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4201, i8* %4202, align 1
  %4203 = and i32 %4199, 255
  %4204 = call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4207, i8* %4208, align 1
  %4209 = xor i64 %4196, %4194
  %4210 = trunc i64 %4209 to i32
  %4211 = xor i32 %4210, %4199
  %4212 = lshr i32 %4211, 4
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4214, i8* %4215, align 1
  %4216 = icmp eq i32 %4199, 0
  %4217 = zext i1 %4216 to i8
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4217, i8* %4218, align 1
  %4219 = lshr i32 %4199, 31
  %4220 = trunc i32 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4220, i8* %4221, align 1
  %4222 = lshr i32 %4193, 31
  %4223 = lshr i32 %4195, 31
  %4224 = xor i32 %4223, %4222
  %4225 = xor i32 %4219, %4222
  %4226 = add i32 %4225, %4224
  %4227 = icmp eq i32 %4226, 2
  %4228 = zext i1 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4228, i8* %4229, align 1
  store %struct.Memory* %loadMem_4210a9, %struct.Memory** %MEMORY
  %loadMem_4210ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %PC.i295
  %4234 = add i64 %4233, 476
  %4235 = load i64, i64* %PC.i295
  %4236 = add i64 %4235, 6
  %4237 = load i64, i64* %PC.i295
  %4238 = add i64 %4237, 6
  store i64 %4238, i64* %PC.i295
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4240 = load i8, i8* %4239, align 1
  %4241 = icmp eq i8 %4240, 0
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %BRANCH_TAKEN, align 1
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4244 = select i1 %4241, i64 %4234, i64 %4236
  store i64 %4244, i64* %4243, align 8
  store %struct.Memory* %loadMem_4210ab, %struct.Memory** %MEMORY
  %loadBr_4210ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210ab = icmp eq i8 %loadBr_4210ab, 1
  br i1 %cmpBr_4210ab, label %block_.L_421287, label %block_4210b1

block_4210b1:                                     ; preds = %block_421078
  %loadMem_4210b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 1
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %PC.i293
  %4252 = add i64 %4251, 7
  store i64 %4252, i64* %PC.i293
  %4253 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  %4254 = zext i32 %4253 to i64
  store i64 %4254, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_4210b1, %struct.Memory** %MEMORY
  %loadMem_4210b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 33
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 1
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RAX.i292
  %4262 = load i64, i64* %PC.i291
  %4263 = add i64 %4262, 3
  store i64 %4263, i64* %PC.i291
  %4264 = trunc i64 %4261 to i32
  %4265 = add i32 1, %4264
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RAX.i292, align 8
  %4267 = icmp ult i32 %4265, %4264
  %4268 = icmp ult i32 %4265, 1
  %4269 = or i1 %4267, %4268
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4270, i8* %4271, align 1
  %4272 = and i32 %4265, 255
  %4273 = call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4276, i8* %4277, align 1
  %4278 = xor i64 1, %4261
  %4279 = trunc i64 %4278 to i32
  %4280 = xor i32 %4279, %4265
  %4281 = lshr i32 %4280, 4
  %4282 = trunc i32 %4281 to i8
  %4283 = and i8 %4282, 1
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4283, i8* %4284, align 1
  %4285 = icmp eq i32 %4265, 0
  %4286 = zext i1 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i32 %4265, 31
  %4289 = trunc i32 %4288 to i8
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4289, i8* %4290, align 1
  %4291 = lshr i32 %4264, 31
  %4292 = xor i32 %4288, %4291
  %4293 = add i32 %4292, %4288
  %4294 = icmp eq i32 %4293, 2
  %4295 = zext i1 %4294 to i8
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4295, i8* %4296, align 1
  store %struct.Memory* %loadMem_4210b8, %struct.Memory** %MEMORY
  %loadMem_4210bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %4302 to i32*
  %4303 = load i32, i32* %EAX.i290
  %4304 = zext i32 %4303 to i64
  %4305 = load i64, i64* %PC.i289
  %4306 = add i64 %4305, 7
  store i64 %4306, i64* %PC.i289
  store i32 %4303, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  store %struct.Memory* %loadMem_4210bb, %struct.Memory** %MEMORY
  %loadMem_4210c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 5
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %4312 to i64*
  %4313 = load i64, i64* %PC.i287
  %4314 = add i64 %4313, 8
  store i64 %4314, i64* %PC.i287
  %4315 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %4315, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_4210c2, %struct.Memory** %MEMORY
  %loadMem_4210ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 1
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 15
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RBP.i286
  %4326 = sub i64 %4325, 56
  %4327 = load i64, i64* %PC.i284
  %4328 = add i64 %4327, 3
  store i64 %4328, i64* %PC.i284
  %4329 = inttoptr i64 %4326 to i32*
  %4330 = load i32, i32* %4329
  %4331 = zext i32 %4330 to i64
  store i64 %4331, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_4210ca, %struct.Memory** %MEMORY
  %loadMem_4210cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 1
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %EAX.i282 = bitcast %union.anon* %4337 to i32*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 7
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %4340 to i64*
  %4341 = load i32, i32* %EAX.i282
  %4342 = zext i32 %4341 to i64
  %4343 = load i64, i64* %PC.i281
  %4344 = add i64 %4343, 2
  store i64 %4344, i64* %PC.i281
  %4345 = and i64 %4342, 4294967295
  store i64 %4345, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_4210cd, %struct.Memory** %MEMORY
  %loadMem_4210cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 7
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %4351 to i64*
  %4352 = load i64, i64* %RDX.i280
  %4353 = load i64, i64* %PC.i279
  %4354 = add i64 %4353, 4
  store i64 %4354, i64* %PC.i279
  %4355 = sext i64 %4352 to i128
  %4356 = and i128 %4355, -18446744073709551616
  %4357 = zext i64 %4352 to i128
  %4358 = or i128 %4356, %4357
  %4359 = mul i128 20, %4358
  %4360 = trunc i128 %4359 to i64
  store i64 %4360, i64* %RDX.i280, align 8
  %4361 = sext i64 %4360 to i128
  %4362 = icmp ne i128 %4361, %4359
  %4363 = zext i1 %4362 to i8
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4363, i8* %4364, align 1
  %4365 = trunc i128 %4359 to i32
  %4366 = and i32 %4365, 255
  %4367 = call i32 @llvm.ctpop.i32(i32 %4366)
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  %4370 = xor i8 %4369, 1
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4370, i8* %4371, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4372, align 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4373, align 1
  %4374 = lshr i64 %4360, 63
  %4375 = trunc i64 %4374 to i8
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4375, i8* %4376, align 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4363, i8* %4377, align 1
  store %struct.Memory* %loadMem_4210cf, %struct.Memory** %MEMORY
  %loadMem_4210d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 5
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %4383 to i64*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 7
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %4386 to i64*
  %4387 = load i64, i64* %RCX.i277
  %4388 = load i64, i64* %RDX.i278
  %4389 = load i64, i64* %PC.i276
  %4390 = add i64 %4389, 3
  store i64 %4390, i64* %PC.i276
  %4391 = add i64 %4388, %4387
  store i64 %4391, i64* %RCX.i277, align 8
  %4392 = icmp ult i64 %4391, %4387
  %4393 = icmp ult i64 %4391, %4388
  %4394 = or i1 %4392, %4393
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4395, i8* %4396, align 1
  %4397 = trunc i64 %4391 to i32
  %4398 = and i32 %4397, 255
  %4399 = call i32 @llvm.ctpop.i32(i32 %4398)
  %4400 = trunc i32 %4399 to i8
  %4401 = and i8 %4400, 1
  %4402 = xor i8 %4401, 1
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4402, i8* %4403, align 1
  %4404 = xor i64 %4388, %4387
  %4405 = xor i64 %4404, %4391
  %4406 = lshr i64 %4405, 4
  %4407 = trunc i64 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4408, i8* %4409, align 1
  %4410 = icmp eq i64 %4391, 0
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4411, i8* %4412, align 1
  %4413 = lshr i64 %4391, 63
  %4414 = trunc i64 %4413 to i8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4414, i8* %4415, align 1
  %4416 = lshr i64 %4387, 63
  %4417 = lshr i64 %4388, 63
  %4418 = xor i64 %4413, %4416
  %4419 = xor i64 %4413, %4417
  %4420 = add i64 %4418, %4419
  %4421 = icmp eq i64 %4420, 2
  %4422 = zext i1 %4421 to i8
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4422, i8* %4423, align 1
  store %struct.Memory* %loadMem_4210d3, %struct.Memory** %MEMORY
  %loadMem_4210d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %4429 to i64*
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 5
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %4432 to i64*
  %4433 = load i64, i64* %RCX.i275
  %4434 = add i64 %4433, 3
  %4435 = load i64, i64* %PC.i273
  %4436 = add i64 %4435, 4
  store i64 %4436, i64* %PC.i273
  %4437 = inttoptr i64 %4434 to i8*
  %4438 = load i8, i8* %4437
  %4439 = sext i8 %4438 to i64
  %4440 = and i64 %4439, 4294967295
  store i64 %4440, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_4210d6, %struct.Memory** %MEMORY
  %loadMem_4210da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 1
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %EAX.i272 = bitcast %union.anon* %4446 to i32*
  %4447 = load i32, i32* %EAX.i272
  %4448 = zext i32 %4447 to i64
  %4449 = load i64, i64* %PC.i271
  %4450 = add i64 %4449, 3
  store i64 %4450, i64* %PC.i271
  %4451 = sub i32 %4447, 1
  %4452 = icmp ult i32 %4447, 1
  %4453 = zext i1 %4452 to i8
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4453, i8* %4454, align 1
  %4455 = and i32 %4451, 255
  %4456 = call i32 @llvm.ctpop.i32(i32 %4455)
  %4457 = trunc i32 %4456 to i8
  %4458 = and i8 %4457, 1
  %4459 = xor i8 %4458, 1
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4459, i8* %4460, align 1
  %4461 = xor i64 1, %4448
  %4462 = trunc i64 %4461 to i32
  %4463 = xor i32 %4462, %4451
  %4464 = lshr i32 %4463, 4
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4466, i8* %4467, align 1
  %4468 = icmp eq i32 %4451, 0
  %4469 = zext i1 %4468 to i8
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4469, i8* %4470, align 1
  %4471 = lshr i32 %4451, 31
  %4472 = trunc i32 %4471 to i8
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4472, i8* %4473, align 1
  %4474 = lshr i32 %4447, 31
  %4475 = xor i32 %4471, %4474
  %4476 = add i32 %4475, %4474
  %4477 = icmp eq i32 %4476, 2
  %4478 = zext i1 %4477 to i8
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4478, i8* %4479, align 1
  store %struct.Memory* %loadMem_4210da, %struct.Memory** %MEMORY
  %loadMem_4210dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %PC.i270
  %4484 = add i64 %4483, 88
  %4485 = load i64, i64* %PC.i270
  %4486 = add i64 %4485, 6
  %4487 = load i64, i64* %PC.i270
  %4488 = add i64 %4487, 6
  store i64 %4488, i64* %PC.i270
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4490 = load i8, i8* %4489, align 1
  %4491 = icmp eq i8 %4490, 0
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %BRANCH_TAKEN, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4494 = select i1 %4491, i64 %4484, i64 %4486
  store i64 %4494, i64* %4493, align 8
  store %struct.Memory* %loadMem_4210dd, %struct.Memory** %MEMORY
  %loadBr_4210dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210dd = icmp eq i8 %loadBr_4210dd, 1
  br i1 %cmpBr_4210dd, label %block_.L_421135, label %block_4210e3

block_4210e3:                                     ; preds = %block_4210b1
  %loadMem_4210e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 1
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RBP.i269
  %4505 = sub i64 %4504, 52
  %4506 = load i64, i64* %PC.i267
  %4507 = add i64 %4506, 3
  store i64 %4507, i64* %PC.i267
  %4508 = inttoptr i64 %4505 to i32*
  %4509 = load i32, i32* %4508
  %4510 = zext i32 %4509 to i64
  store i64 %4510, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_4210e3, %struct.Memory** %MEMORY
  %loadMem_4210e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 1
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %4516 to i64*
  %4517 = load i64, i64* %RAX.i266
  %4518 = load i64, i64* %PC.i265
  %4519 = add i64 %4518, 3
  store i64 %4519, i64* %PC.i265
  %4520 = trunc i64 %4517 to i32
  %4521 = sub i32 %4520, 2
  %4522 = zext i32 %4521 to i64
  store i64 %4522, i64* %RAX.i266, align 8
  %4523 = icmp ult i32 %4520, 2
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4524, i8* %4525, align 1
  %4526 = and i32 %4521, 255
  %4527 = call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4530, i8* %4531, align 1
  %4532 = xor i64 2, %4517
  %4533 = trunc i64 %4532 to i32
  %4534 = xor i32 %4533, %4521
  %4535 = lshr i32 %4534, 4
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4537, i8* %4538, align 1
  %4539 = icmp eq i32 %4521, 0
  %4540 = zext i1 %4539 to i8
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4540, i8* %4541, align 1
  %4542 = lshr i32 %4521, 31
  %4543 = trunc i32 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4543, i8* %4544, align 1
  %4545 = lshr i32 %4520, 31
  %4546 = xor i32 %4542, %4545
  %4547 = add i32 %4546, %4545
  %4548 = icmp eq i32 %4547, 2
  %4549 = zext i1 %4548 to i8
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4549, i8* %4550, align 1
  store %struct.Memory* %loadMem_4210e6, %struct.Memory** %MEMORY
  %loadMem_4210e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 1
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RAX.i264
  %4558 = load i64, i64* %PC.i263
  %4559 = add i64 %4558, 3
  store i64 %4559, i64* %PC.i263
  %4560 = trunc i64 %4557 to i32
  %4561 = sub i32 %4560, 1
  %4562 = zext i32 %4561 to i64
  store i64 %4562, i64* %RAX.i264, align 8
  %4563 = icmp ult i32 %4560, 1
  %4564 = zext i1 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4564, i8* %4565, align 1
  %4566 = and i32 %4561, 255
  %4567 = call i32 @llvm.ctpop.i32(i32 %4566)
  %4568 = trunc i32 %4567 to i8
  %4569 = and i8 %4568, 1
  %4570 = xor i8 %4569, 1
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4570, i8* %4571, align 1
  %4572 = xor i64 1, %4557
  %4573 = trunc i64 %4572 to i32
  %4574 = xor i32 %4573, %4561
  %4575 = lshr i32 %4574, 4
  %4576 = trunc i32 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4577, i8* %4578, align 1
  %4579 = icmp eq i32 %4561, 0
  %4580 = zext i1 %4579 to i8
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4580, i8* %4581, align 1
  %4582 = lshr i32 %4561, 31
  %4583 = trunc i32 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4583, i8* %4584, align 1
  %4585 = lshr i32 %4560, 31
  %4586 = xor i32 %4582, %4585
  %4587 = add i32 %4586, %4585
  %4588 = icmp eq i32 %4587, 2
  %4589 = zext i1 %4588 to i8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4589, i8* %4590, align 1
  store %struct.Memory* %loadMem_4210e9, %struct.Memory** %MEMORY
  %loadMem_4210ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 5
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %PC.i261
  %4598 = add i64 %4597, 8
  store i64 %4598, i64* %PC.i261
  %4599 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %4599, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_4210ec, %struct.Memory** %MEMORY
  %loadMem_4210f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 7
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 15
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RBP.i260
  %4610 = sub i64 %4609, 56
  %4611 = load i64, i64* %PC.i258
  %4612 = add i64 %4611, 3
  store i64 %4612, i64* %PC.i258
  %4613 = inttoptr i64 %4610 to i32*
  %4614 = load i32, i32* %4613
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_4210f4, %struct.Memory** %MEMORY
  %loadMem_4210f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 7
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %EDX.i256 = bitcast %union.anon* %4621 to i32*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 9
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RSI.i257 = bitcast %union.anon* %4624 to i64*
  %4625 = load i32, i32* %EDX.i256
  %4626 = zext i32 %4625 to i64
  %4627 = load i64, i64* %PC.i255
  %4628 = add i64 %4627, 2
  store i64 %4628, i64* %PC.i255
  %4629 = and i64 %4626, 4294967295
  store i64 %4629, i64* %RSI.i257, align 8
  store %struct.Memory* %loadMem_4210f7, %struct.Memory** %MEMORY
  %loadMem_4210f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 9
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RSI.i254 = bitcast %union.anon* %4635 to i64*
  %4636 = load i64, i64* %RSI.i254
  %4637 = load i64, i64* %PC.i253
  %4638 = add i64 %4637, 4
  store i64 %4638, i64* %PC.i253
  %4639 = sext i64 %4636 to i128
  %4640 = and i128 %4639, -18446744073709551616
  %4641 = zext i64 %4636 to i128
  %4642 = or i128 %4640, %4641
  %4643 = mul i128 20, %4642
  %4644 = trunc i128 %4643 to i64
  store i64 %4644, i64* %RSI.i254, align 8
  %4645 = sext i64 %4644 to i128
  %4646 = icmp ne i128 %4645, %4643
  %4647 = zext i1 %4646 to i8
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4647, i8* %4648, align 1
  %4649 = trunc i128 %4643 to i32
  %4650 = and i32 %4649, 255
  %4651 = call i32 @llvm.ctpop.i32(i32 %4650)
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  %4654 = xor i8 %4653, 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4654, i8* %4655, align 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4656, align 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4657, align 1
  %4658 = lshr i64 %4644, 63
  %4659 = trunc i64 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4659, i8* %4660, align 1
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4647, i8* %4661, align 1
  store %struct.Memory* %loadMem_4210f9, %struct.Memory** %MEMORY
  %loadMem_4210fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 5
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 9
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RCX.i252
  %4672 = load i64, i64* %RSI.i
  %4673 = load i64, i64* %PC.i251
  %4674 = add i64 %4673, 3
  store i64 %4674, i64* %PC.i251
  %4675 = add i64 %4672, %4671
  store i64 %4675, i64* %RCX.i252, align 8
  %4676 = icmp ult i64 %4675, %4671
  %4677 = icmp ult i64 %4675, %4672
  %4678 = or i1 %4676, %4677
  %4679 = zext i1 %4678 to i8
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4679, i8* %4680, align 1
  %4681 = trunc i64 %4675 to i32
  %4682 = and i32 %4681, 255
  %4683 = call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4686, i8* %4687, align 1
  %4688 = xor i64 %4672, %4671
  %4689 = xor i64 %4688, %4675
  %4690 = lshr i64 %4689, 4
  %4691 = trunc i64 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4692, i8* %4693, align 1
  %4694 = icmp eq i64 %4675, 0
  %4695 = zext i1 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4695, i8* %4696, align 1
  %4697 = lshr i64 %4675, 63
  %4698 = trunc i64 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4698, i8* %4699, align 1
  %4700 = lshr i64 %4671, 63
  %4701 = lshr i64 %4672, 63
  %4702 = xor i64 %4697, %4700
  %4703 = xor i64 %4697, %4701
  %4704 = add i64 %4702, %4703
  %4705 = icmp eq i64 %4704, 2
  %4706 = zext i1 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4706, i8* %4707, align 1
  store %struct.Memory* %loadMem_4210fd, %struct.Memory** %MEMORY
  %loadMem_421100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 5
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 7
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RCX.i249
  %4718 = load i64, i64* %PC.i248
  %4719 = add i64 %4718, 3
  store i64 %4719, i64* %PC.i248
  %4720 = inttoptr i64 %4717 to i8*
  %4721 = load i8, i8* %4720
  %4722 = sext i8 %4721 to i64
  %4723 = and i64 %4722, 4294967295
  store i64 %4723, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_421100, %struct.Memory** %MEMORY
  %loadMem_421103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %4729 to i32*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 7
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %EDX.i247 = bitcast %union.anon* %4732 to i32*
  %4733 = load i32, i32* %EAX.i246
  %4734 = zext i32 %4733 to i64
  %4735 = load i32, i32* %EDX.i247
  %4736 = zext i32 %4735 to i64
  %4737 = load i64, i64* %PC.i245
  %4738 = add i64 %4737, 2
  store i64 %4738, i64* %PC.i245
  %4739 = sub i32 %4733, %4735
  %4740 = icmp ult i32 %4733, %4735
  %4741 = zext i1 %4740 to i8
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4741, i8* %4742, align 1
  %4743 = and i32 %4739, 255
  %4744 = call i32 @llvm.ctpop.i32(i32 %4743)
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = xor i8 %4746, 1
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4747, i8* %4748, align 1
  %4749 = xor i64 %4736, %4734
  %4750 = trunc i64 %4749 to i32
  %4751 = xor i32 %4750, %4739
  %4752 = lshr i32 %4751, 4
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4754, i8* %4755, align 1
  %4756 = icmp eq i32 %4739, 0
  %4757 = zext i1 %4756 to i8
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4757, i8* %4758, align 1
  %4759 = lshr i32 %4739, 31
  %4760 = trunc i32 %4759 to i8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4760, i8* %4761, align 1
  %4762 = lshr i32 %4733, 31
  %4763 = lshr i32 %4735, 31
  %4764 = xor i32 %4763, %4762
  %4765 = xor i32 %4759, %4762
  %4766 = add i32 %4765, %4764
  %4767 = icmp eq i32 %4766, 2
  %4768 = zext i1 %4767 to i8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4768, i8* %4769, align 1
  store %struct.Memory* %loadMem_421103, %struct.Memory** %MEMORY
  %loadMem_421105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4772 to i64*
  %4773 = load i64, i64* %PC.i244
  %4774 = add i64 %4773, 48
  %4775 = load i64, i64* %PC.i244
  %4776 = add i64 %4775, 6
  %4777 = load i64, i64* %PC.i244
  %4778 = add i64 %4777, 6
  store i64 %4778, i64* %PC.i244
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4780 = load i8, i8* %4779, align 1
  %4781 = icmp eq i8 %4780, 0
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4783 = load i8, i8* %4782, align 1
  %4784 = icmp ne i8 %4783, 0
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4786 = load i8, i8* %4785, align 1
  %4787 = icmp ne i8 %4786, 0
  %4788 = xor i1 %4784, %4787
  %4789 = xor i1 %4788, true
  %4790 = and i1 %4781, %4789
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %BRANCH_TAKEN, align 1
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4793 = select i1 %4790, i64 %4774, i64 %4776
  store i64 %4793, i64* %4792, align 8
  store %struct.Memory* %loadMem_421105, %struct.Memory** %MEMORY
  %loadBr_421105 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421105 = icmp eq i8 %loadBr_421105, 1
  br i1 %cmpBr_421105, label %block_.L_421135, label %block_42110b

block_42110b:                                     ; preds = %block_4210e3
  %loadMem_42110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 1
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %4799 to i64*
  %4800 = load i64, i64* %PC.i242
  %4801 = add i64 %4800, 8
  store i64 %4801, i64* %PC.i242
  %4802 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %4802, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_42110b, %struct.Memory** %MEMORY
  %loadMem_421113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 5
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 15
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RBP.i241
  %4813 = sub i64 %4812, 56
  %4814 = load i64, i64* %PC.i239
  %4815 = add i64 %4814, 3
  store i64 %4815, i64* %PC.i239
  %4816 = inttoptr i64 %4813 to i32*
  %4817 = load i32, i32* %4816
  %4818 = zext i32 %4817 to i64
  store i64 %4818, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_421113, %struct.Memory** %MEMORY
  %loadMem_421116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 5
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %ECX.i237 = bitcast %union.anon* %4824 to i32*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 7
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %4827 to i64*
  %4828 = load i32, i32* %ECX.i237
  %4829 = zext i32 %4828 to i64
  %4830 = load i64, i64* %PC.i236
  %4831 = add i64 %4830, 2
  store i64 %4831, i64* %PC.i236
  %4832 = and i64 %4829, 4294967295
  store i64 %4832, i64* %RDX.i238, align 8
  store %struct.Memory* %loadMem_421116, %struct.Memory** %MEMORY
  %loadMem_421118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 7
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %4838 to i64*
  %4839 = load i64, i64* %RDX.i235
  %4840 = load i64, i64* %PC.i234
  %4841 = add i64 %4840, 4
  store i64 %4841, i64* %PC.i234
  %4842 = sext i64 %4839 to i128
  %4843 = and i128 %4842, -18446744073709551616
  %4844 = zext i64 %4839 to i128
  %4845 = or i128 %4843, %4844
  %4846 = mul i128 20, %4845
  %4847 = trunc i128 %4846 to i64
  store i64 %4847, i64* %RDX.i235, align 8
  %4848 = sext i64 %4847 to i128
  %4849 = icmp ne i128 %4848, %4846
  %4850 = zext i1 %4849 to i8
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4850, i8* %4851, align 1
  %4852 = trunc i128 %4846 to i32
  %4853 = and i32 %4852, 255
  %4854 = call i32 @llvm.ctpop.i32(i32 %4853)
  %4855 = trunc i32 %4854 to i8
  %4856 = and i8 %4855, 1
  %4857 = xor i8 %4856, 1
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4857, i8* %4858, align 1
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4859, align 1
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4860, align 1
  %4861 = lshr i64 %4847, 63
  %4862 = trunc i64 %4861 to i8
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4862, i8* %4863, align 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4850, i8* %4864, align 1
  store %struct.Memory* %loadMem_421118, %struct.Memory** %MEMORY
  %loadMem_42111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 1
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 7
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %RAX.i232
  %4875 = load i64, i64* %RDX.i233
  %4876 = load i64, i64* %PC.i231
  %4877 = add i64 %4876, 3
  store i64 %4877, i64* %PC.i231
  %4878 = add i64 %4875, %4874
  store i64 %4878, i64* %RAX.i232, align 8
  %4879 = icmp ult i64 %4878, %4874
  %4880 = icmp ult i64 %4878, %4875
  %4881 = or i1 %4879, %4880
  %4882 = zext i1 %4881 to i8
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4882, i8* %4883, align 1
  %4884 = trunc i64 %4878 to i32
  %4885 = and i32 %4884, 255
  %4886 = call i32 @llvm.ctpop.i32(i32 %4885)
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  %4889 = xor i8 %4888, 1
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4889, i8* %4890, align 1
  %4891 = xor i64 %4875, %4874
  %4892 = xor i64 %4891, %4878
  %4893 = lshr i64 %4892, 4
  %4894 = trunc i64 %4893 to i8
  %4895 = and i8 %4894, 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4895, i8* %4896, align 1
  %4897 = icmp eq i64 %4878, 0
  %4898 = zext i1 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4898, i8* %4899, align 1
  %4900 = lshr i64 %4878, 63
  %4901 = trunc i64 %4900 to i8
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4901, i8* %4902, align 1
  %4903 = lshr i64 %4874, 63
  %4904 = lshr i64 %4875, 63
  %4905 = xor i64 %4900, %4903
  %4906 = xor i64 %4900, %4904
  %4907 = add i64 %4905, %4906
  %4908 = icmp eq i64 %4907, 2
  %4909 = zext i1 %4908 to i8
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4909, i8* %4910, align 1
  store %struct.Memory* %loadMem_42111c, %struct.Memory** %MEMORY
  %loadMem_42111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 1
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 5
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RAX.i229
  %4921 = add i64 %4920, 16
  %4922 = load i64, i64* %PC.i228
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i228
  %4924 = inttoptr i64 %4921 to i32*
  %4925 = load i32, i32* %4924
  %4926 = zext i32 %4925 to i64
  store i64 %4926, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_42111f, %struct.Memory** %MEMORY
  %loadMem_421122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 5
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %ECX.i226 = bitcast %union.anon* %4932 to i32*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 15
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4935 to i64*
  %4936 = load i32, i32* %ECX.i226
  %4937 = zext i32 %4936 to i64
  %4938 = load i64, i64* %RBP.i227
  %4939 = sub i64 %4938, 20
  %4940 = load i64, i64* %PC.i225
  %4941 = add i64 %4940, 3
  store i64 %4941, i64* %PC.i225
  %4942 = inttoptr i64 %4939 to i32*
  %4943 = load i32, i32* %4942
  %4944 = sub i32 %4936, %4943
  %4945 = icmp ult i32 %4936, %4943
  %4946 = zext i1 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4946, i8* %4947, align 1
  %4948 = and i32 %4944, 255
  %4949 = call i32 @llvm.ctpop.i32(i32 %4948)
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  %4952 = xor i8 %4951, 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4952, i8* %4953, align 1
  %4954 = xor i32 %4943, %4936
  %4955 = xor i32 %4954, %4944
  %4956 = lshr i32 %4955, 4
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4958, i8* %4959, align 1
  %4960 = icmp eq i32 %4944, 0
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4961, i8* %4962, align 1
  %4963 = lshr i32 %4944, 31
  %4964 = trunc i32 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4964, i8* %4965, align 1
  %4966 = lshr i32 %4936, 31
  %4967 = lshr i32 %4943, 31
  %4968 = xor i32 %4967, %4966
  %4969 = xor i32 %4963, %4966
  %4970 = add i32 %4969, %4968
  %4971 = icmp eq i32 %4970, 2
  %4972 = zext i1 %4971 to i8
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4972, i8* %4973, align 1
  store %struct.Memory* %loadMem_421122, %struct.Memory** %MEMORY
  %loadMem_421125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 33
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4976 to i64*
  %4977 = load i64, i64* %PC.i224
  %4978 = add i64 %4977, 16
  %4979 = load i64, i64* %PC.i224
  %4980 = add i64 %4979, 6
  %4981 = load i64, i64* %PC.i224
  %4982 = add i64 %4981, 6
  store i64 %4982, i64* %PC.i224
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4984 = load i8, i8* %4983, align 1
  %4985 = icmp ne i8 %4984, 0
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4987 = load i8, i8* %4986, align 1
  %4988 = icmp ne i8 %4987, 0
  %4989 = xor i1 %4985, %4988
  %4990 = xor i1 %4989, true
  %4991 = zext i1 %4990 to i8
  store i8 %4991, i8* %BRANCH_TAKEN, align 1
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4993 = select i1 %4989, i64 %4980, i64 %4978
  store i64 %4993, i64* %4992, align 8
  store %struct.Memory* %loadMem_421125, %struct.Memory** %MEMORY
  %loadBr_421125 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421125 = icmp eq i8 %loadBr_421125, 1
  br i1 %cmpBr_421125, label %block_.L_421135, label %block_42112b

block_42112b:                                     ; preds = %block_42110b
  %loadMem_42112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 1
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i223
  %5004 = sub i64 %5003, 48
  %5005 = load i64, i64* %PC.i221
  %5006 = add i64 %5005, 4
  store i64 %5006, i64* %PC.i221
  %5007 = inttoptr i64 %5004 to i64*
  %5008 = load i64, i64* %5007
  store i64 %5008, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_42112b, %struct.Memory** %MEMORY
  %loadMem_42112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 1
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %5014 to i64*
  %5015 = load i64, i64* %RAX.i220
  %5016 = load i64, i64* %PC.i219
  %5017 = add i64 %5016, 6
  store i64 %5017, i64* %PC.i219
  %5018 = inttoptr i64 %5015 to i32*
  store i32 0, i32* %5018
  store %struct.Memory* %loadMem_42112f, %struct.Memory** %MEMORY
  br label %block_.L_421135

block_.L_421135:                                  ; preds = %block_42112b, %block_42110b, %block_4210e3, %block_4210b1
  %loadMem_421135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 33
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 1
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %PC.i217
  %5026 = add i64 %5025, 8
  store i64 %5026, i64* %PC.i217
  %5027 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %5027, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_421135, %struct.Memory** %MEMORY
  %loadMem_42113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 5
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 15
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5036 to i64*
  %5037 = load i64, i64* %RBP.i216
  %5038 = sub i64 %5037, 56
  %5039 = load i64, i64* %PC.i214
  %5040 = add i64 %5039, 3
  store i64 %5040, i64* %PC.i214
  %5041 = inttoptr i64 %5038 to i32*
  %5042 = load i32, i32* %5041
  %5043 = zext i32 %5042 to i64
  store i64 %5043, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_42113d, %struct.Memory** %MEMORY
  %loadMem_421140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 5
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %ECX.i212 = bitcast %union.anon* %5049 to i32*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 7
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %5052 to i64*
  %5053 = load i32, i32* %ECX.i212
  %5054 = zext i32 %5053 to i64
  %5055 = load i64, i64* %PC.i211
  %5056 = add i64 %5055, 2
  store i64 %5056, i64* %PC.i211
  %5057 = and i64 %5054, 4294967295
  store i64 %5057, i64* %RDX.i213, align 8
  store %struct.Memory* %loadMem_421140, %struct.Memory** %MEMORY
  %loadMem_421142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 33
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 7
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RDX.i210
  %5065 = load i64, i64* %PC.i209
  %5066 = add i64 %5065, 4
  store i64 %5066, i64* %PC.i209
  %5067 = sext i64 %5064 to i128
  %5068 = and i128 %5067, -18446744073709551616
  %5069 = zext i64 %5064 to i128
  %5070 = or i128 %5068, %5069
  %5071 = mul i128 20, %5070
  %5072 = trunc i128 %5071 to i64
  store i64 %5072, i64* %RDX.i210, align 8
  %5073 = sext i64 %5072 to i128
  %5074 = icmp ne i128 %5073, %5071
  %5075 = zext i1 %5074 to i8
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5075, i8* %5076, align 1
  %5077 = trunc i128 %5071 to i32
  %5078 = and i32 %5077, 255
  %5079 = call i32 @llvm.ctpop.i32(i32 %5078)
  %5080 = trunc i32 %5079 to i8
  %5081 = and i8 %5080, 1
  %5082 = xor i8 %5081, 1
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5082, i8* %5083, align 1
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5084, align 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5085, align 1
  %5086 = lshr i64 %5072, 63
  %5087 = trunc i64 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5087, i8* %5088, align 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5075, i8* %5089, align 1
  store %struct.Memory* %loadMem_421142, %struct.Memory** %MEMORY
  %loadMem_421146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 1
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 7
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %RAX.i207
  %5100 = load i64, i64* %RDX.i208
  %5101 = load i64, i64* %PC.i206
  %5102 = add i64 %5101, 3
  store i64 %5102, i64* %PC.i206
  %5103 = add i64 %5100, %5099
  store i64 %5103, i64* %RAX.i207, align 8
  %5104 = icmp ult i64 %5103, %5099
  %5105 = icmp ult i64 %5103, %5100
  %5106 = or i1 %5104, %5105
  %5107 = zext i1 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5107, i8* %5108, align 1
  %5109 = trunc i64 %5103 to i32
  %5110 = and i32 %5109, 255
  %5111 = call i32 @llvm.ctpop.i32(i32 %5110)
  %5112 = trunc i32 %5111 to i8
  %5113 = and i8 %5112, 1
  %5114 = xor i8 %5113, 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5114, i8* %5115, align 1
  %5116 = xor i64 %5100, %5099
  %5117 = xor i64 %5116, %5103
  %5118 = lshr i64 %5117, 4
  %5119 = trunc i64 %5118 to i8
  %5120 = and i8 %5119, 1
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5120, i8* %5121, align 1
  %5122 = icmp eq i64 %5103, 0
  %5123 = zext i1 %5122 to i8
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5123, i8* %5124, align 1
  %5125 = lshr i64 %5103, 63
  %5126 = trunc i64 %5125 to i8
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5126, i8* %5127, align 1
  %5128 = lshr i64 %5099, 63
  %5129 = lshr i64 %5100, 63
  %5130 = xor i64 %5125, %5128
  %5131 = xor i64 %5125, %5129
  %5132 = add i64 %5130, %5131
  %5133 = icmp eq i64 %5132, 2
  %5134 = zext i1 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5134, i8* %5135, align 1
  store %struct.Memory* %loadMem_421146, %struct.Memory** %MEMORY
  %loadMem_421149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 1
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %5141 to i64*
  %5142 = load i64, i64* %RAX.i205
  %5143 = add i64 %5142, 2
  %5144 = load i64, i64* %PC.i204
  %5145 = add i64 %5144, 4
  store i64 %5145, i64* %PC.i204
  %5146 = inttoptr i64 %5143 to i8*
  %5147 = load i8, i8* %5146
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5148, align 1
  %5149 = zext i8 %5147 to i32
  %5150 = call i32 @llvm.ctpop.i32(i32 %5149)
  %5151 = trunc i32 %5150 to i8
  %5152 = and i8 %5151, 1
  %5153 = xor i8 %5152, 1
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5153, i8* %5154, align 1
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5155, align 1
  %5156 = icmp eq i8 %5147, 0
  %5157 = zext i1 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5157, i8* %5158, align 1
  %5159 = lshr i8 %5147, 7
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5159, i8* %5160, align 1
  %5161 = lshr i8 %5147, 7
  %5162 = xor i8 %5159, %5161
  %5163 = add i8 %5162, %5161
  %5164 = icmp eq i8 %5163, 2
  %5165 = zext i1 %5164 to i8
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5165, i8* %5166, align 1
  store %struct.Memory* %loadMem_421149, %struct.Memory** %MEMORY
  %loadMem_42114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %PC.i203
  %5171 = add i64 %5170, 15
  %5172 = load i64, i64* %PC.i203
  %5173 = add i64 %5172, 6
  %5174 = load i64, i64* %PC.i203
  %5175 = add i64 %5174, 6
  store i64 %5175, i64* %PC.i203
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5177 = load i8, i8* %5176, align 1
  store i8 %5177, i8* %BRANCH_TAKEN, align 1
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5179 = icmp ne i8 %5177, 0
  %5180 = select i1 %5179, i64 %5171, i64 %5173
  store i64 %5180, i64* %5178, align 8
  store %struct.Memory* %loadMem_42114d, %struct.Memory** %MEMORY
  %loadBr_42114d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42114d = icmp eq i8 %loadBr_42114d, 1
  br i1 %cmpBr_42114d, label %block_.L_42115c, label %block_421153

block_421153:                                     ; preds = %block_.L_421135
  %loadMem_421153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 1
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 15
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %RBP.i202
  %5191 = sub i64 %5190, 52
  %5192 = load i64, i64* %PC.i200
  %5193 = add i64 %5192, 3
  store i64 %5193, i64* %PC.i200
  %5194 = inttoptr i64 %5191 to i32*
  %5195 = load i32, i32* %5194
  %5196 = zext i32 %5195 to i64
  store i64 %5196, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_421153, %struct.Memory** %MEMORY
  %loadMem_421156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 1
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %5202 to i64*
  %5203 = load i64, i64* %RAX.i199
  %5204 = load i64, i64* %PC.i198
  %5205 = add i64 %5204, 3
  store i64 %5205, i64* %PC.i198
  %5206 = trunc i64 %5203 to i32
  %5207 = add i32 1, %5206
  %5208 = zext i32 %5207 to i64
  store i64 %5208, i64* %RAX.i199, align 8
  %5209 = icmp ult i32 %5207, %5206
  %5210 = icmp ult i32 %5207, 1
  %5211 = or i1 %5209, %5210
  %5212 = zext i1 %5211 to i8
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5212, i8* %5213, align 1
  %5214 = and i32 %5207, 255
  %5215 = call i32 @llvm.ctpop.i32(i32 %5214)
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  %5218 = xor i8 %5217, 1
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5218, i8* %5219, align 1
  %5220 = xor i64 1, %5203
  %5221 = trunc i64 %5220 to i32
  %5222 = xor i32 %5221, %5207
  %5223 = lshr i32 %5222, 4
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5225, i8* %5226, align 1
  %5227 = icmp eq i32 %5207, 0
  %5228 = zext i1 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5228, i8* %5229, align 1
  %5230 = lshr i32 %5207, 31
  %5231 = trunc i32 %5230 to i8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5231, i8* %5232, align 1
  %5233 = lshr i32 %5206, 31
  %5234 = xor i32 %5230, %5233
  %5235 = add i32 %5234, %5230
  %5236 = icmp eq i32 %5235, 2
  %5237 = zext i1 %5236 to i8
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5237, i8* %5238, align 1
  store %struct.Memory* %loadMem_421156, %struct.Memory** %MEMORY
  %loadMem_421159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 1
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %5244 to i32*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 15
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RBP.i197
  %5249 = sub i64 %5248, 52
  %5250 = load i32, i32* %EAX.i196
  %5251 = zext i32 %5250 to i64
  %5252 = load i64, i64* %PC.i195
  %5253 = add i64 %5252, 3
  store i64 %5253, i64* %PC.i195
  %5254 = inttoptr i64 %5249 to i32*
  store i32 %5250, i32* %5254
  store %struct.Memory* %loadMem_421159, %struct.Memory** %MEMORY
  br label %block_.L_42115c

block_.L_42115c:                                  ; preds = %block_421153, %block_.L_421135
  %loadMem_42115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 1
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %PC.i193
  %5262 = add i64 %5261, 8
  store i64 %5262, i64* %PC.i193
  %5263 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %5263, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_42115c, %struct.Memory** %MEMORY
  %loadMem_421164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 33
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 5
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 15
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %RBP.i192
  %5274 = sub i64 %5273, 56
  %5275 = load i64, i64* %PC.i190
  %5276 = add i64 %5275, 3
  store i64 %5276, i64* %PC.i190
  %5277 = inttoptr i64 %5274 to i32*
  %5278 = load i32, i32* %5277
  %5279 = zext i32 %5278 to i64
  store i64 %5279, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_421164, %struct.Memory** %MEMORY
  %loadMem_421167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5282 to i64*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 5
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %ECX.i188 = bitcast %union.anon* %5285 to i32*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 7
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %5288 to i64*
  %5289 = load i32, i32* %ECX.i188
  %5290 = zext i32 %5289 to i64
  %5291 = load i64, i64* %PC.i187
  %5292 = add i64 %5291, 2
  store i64 %5292, i64* %PC.i187
  %5293 = and i64 %5290, 4294967295
  store i64 %5293, i64* %RDX.i189, align 8
  store %struct.Memory* %loadMem_421167, %struct.Memory** %MEMORY
  %loadMem_421169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 33
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 7
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %RDX.i186
  %5301 = load i64, i64* %PC.i185
  %5302 = add i64 %5301, 4
  store i64 %5302, i64* %PC.i185
  %5303 = sext i64 %5300 to i128
  %5304 = and i128 %5303, -18446744073709551616
  %5305 = zext i64 %5300 to i128
  %5306 = or i128 %5304, %5305
  %5307 = mul i128 20, %5306
  %5308 = trunc i128 %5307 to i64
  store i64 %5308, i64* %RDX.i186, align 8
  %5309 = sext i64 %5308 to i128
  %5310 = icmp ne i128 %5309, %5307
  %5311 = zext i1 %5310 to i8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5311, i8* %5312, align 1
  %5313 = trunc i128 %5307 to i32
  %5314 = and i32 %5313, 255
  %5315 = call i32 @llvm.ctpop.i32(i32 %5314)
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  %5318 = xor i8 %5317, 1
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5318, i8* %5319, align 1
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5320, align 1
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5321, align 1
  %5322 = lshr i64 %5308, 63
  %5323 = trunc i64 %5322 to i8
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5323, i8* %5324, align 1
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5311, i8* %5325, align 1
  store %struct.Memory* %loadMem_421169, %struct.Memory** %MEMORY
  %loadMem_42116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 33
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5328 to i64*
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 1
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 7
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %5334 to i64*
  %5335 = load i64, i64* %RAX.i183
  %5336 = load i64, i64* %RDX.i184
  %5337 = load i64, i64* %PC.i182
  %5338 = add i64 %5337, 3
  store i64 %5338, i64* %PC.i182
  %5339 = add i64 %5336, %5335
  store i64 %5339, i64* %RAX.i183, align 8
  %5340 = icmp ult i64 %5339, %5335
  %5341 = icmp ult i64 %5339, %5336
  %5342 = or i1 %5340, %5341
  %5343 = zext i1 %5342 to i8
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5343, i8* %5344, align 1
  %5345 = trunc i64 %5339 to i32
  %5346 = and i32 %5345, 255
  %5347 = call i32 @llvm.ctpop.i32(i32 %5346)
  %5348 = trunc i32 %5347 to i8
  %5349 = and i8 %5348, 1
  %5350 = xor i8 %5349, 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5350, i8* %5351, align 1
  %5352 = xor i64 %5336, %5335
  %5353 = xor i64 %5352, %5339
  %5354 = lshr i64 %5353, 4
  %5355 = trunc i64 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5356, i8* %5357, align 1
  %5358 = icmp eq i64 %5339, 0
  %5359 = zext i1 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5359, i8* %5360, align 1
  %5361 = lshr i64 %5339, 63
  %5362 = trunc i64 %5361 to i8
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5362, i8* %5363, align 1
  %5364 = lshr i64 %5335, 63
  %5365 = lshr i64 %5336, 63
  %5366 = xor i64 %5361, %5364
  %5367 = xor i64 %5361, %5365
  %5368 = add i64 %5366, %5367
  %5369 = icmp eq i64 %5368, 2
  %5370 = zext i1 %5369 to i8
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5370, i8* %5371, align 1
  store %struct.Memory* %loadMem_42116d, %struct.Memory** %MEMORY
  %loadMem_421170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 33
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 1
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %5377 to i64*
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 5
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %5380 to i64*
  %5381 = load i64, i64* %RAX.i180
  %5382 = load i64, i64* %PC.i179
  %5383 = add i64 %5382, 3
  store i64 %5383, i64* %PC.i179
  %5384 = inttoptr i64 %5381 to i8*
  %5385 = load i8, i8* %5384
  %5386 = sext i8 %5385 to i64
  %5387 = and i64 %5386, 4294967295
  store i64 %5387, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_421170, %struct.Memory** %MEMORY
  %loadMem_421173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 33
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 5
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %ECX.i177 = bitcast %union.anon* %5393 to i32*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 15
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5396 to i64*
  %5397 = load i32, i32* %ECX.i177
  %5398 = zext i32 %5397 to i64
  %5399 = load i64, i64* %RBP.i178
  %5400 = sub i64 %5399, 52
  %5401 = load i64, i64* %PC.i176
  %5402 = add i64 %5401, 3
  store i64 %5402, i64* %PC.i176
  %5403 = inttoptr i64 %5400 to i32*
  %5404 = load i32, i32* %5403
  %5405 = sub i32 %5397, %5404
  %5406 = icmp ult i32 %5397, %5404
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5407, i8* %5408, align 1
  %5409 = and i32 %5405, 255
  %5410 = call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5413, i8* %5414, align 1
  %5415 = xor i32 %5404, %5397
  %5416 = xor i32 %5415, %5405
  %5417 = lshr i32 %5416, 4
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5419, i8* %5420, align 1
  %5421 = icmp eq i32 %5405, 0
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5422, i8* %5423, align 1
  %5424 = lshr i32 %5405, 31
  %5425 = trunc i32 %5424 to i8
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5425, i8* %5426, align 1
  %5427 = lshr i32 %5397, 31
  %5428 = lshr i32 %5404, 31
  %5429 = xor i32 %5428, %5427
  %5430 = xor i32 %5424, %5427
  %5431 = add i32 %5430, %5429
  %5432 = icmp eq i32 %5431, 2
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5433, i8* %5434, align 1
  store %struct.Memory* %loadMem_421173, %struct.Memory** %MEMORY
  %loadMem_421176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 33
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %PC.i175
  %5439 = add i64 %5438, 201
  %5440 = load i64, i64* %PC.i175
  %5441 = add i64 %5440, 6
  %5442 = load i64, i64* %PC.i175
  %5443 = add i64 %5442, 6
  store i64 %5443, i64* %PC.i175
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5445 = load i8, i8* %5444, align 1
  %5446 = icmp ne i8 %5445, 0
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5448 = load i8, i8* %5447, align 1
  %5449 = icmp ne i8 %5448, 0
  %5450 = xor i1 %5446, %5449
  %5451 = zext i1 %5450 to i8
  store i8 %5451, i8* %BRANCH_TAKEN, align 1
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5453 = select i1 %5450, i64 %5439, i64 %5441
  store i64 %5453, i64* %5452, align 8
  store %struct.Memory* %loadMem_421176, %struct.Memory** %MEMORY
  %loadBr_421176 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421176 = icmp eq i8 %loadBr_421176, 1
  br i1 %cmpBr_421176, label %block_.L_42123f, label %block_42117c

block_42117c:                                     ; preds = %block_.L_42115c
  %loadMem_42117c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 1
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %PC.i173
  %5461 = add i64 %5460, 8
  store i64 %5461, i64* %PC.i173
  %5462 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %5462, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_42117c, %struct.Memory** %MEMORY
  %loadMem_421184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 5
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 15
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RBP.i172
  %5473 = sub i64 %5472, 56
  %5474 = load i64, i64* %PC.i170
  %5475 = add i64 %5474, 3
  store i64 %5475, i64* %PC.i170
  %5476 = inttoptr i64 %5473 to i32*
  %5477 = load i32, i32* %5476
  %5478 = zext i32 %5477 to i64
  store i64 %5478, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_421184, %struct.Memory** %MEMORY
  %loadMem_421187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 33
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %5481 to i64*
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 5
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %ECX.i168 = bitcast %union.anon* %5484 to i32*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 7
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %5487 to i64*
  %5488 = load i32, i32* %ECX.i168
  %5489 = zext i32 %5488 to i64
  %5490 = load i64, i64* %PC.i167
  %5491 = add i64 %5490, 2
  store i64 %5491, i64* %PC.i167
  %5492 = and i64 %5489, 4294967295
  store i64 %5492, i64* %RDX.i169, align 8
  store %struct.Memory* %loadMem_421187, %struct.Memory** %MEMORY
  %loadMem_421189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 7
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %5498 to i64*
  %5499 = load i64, i64* %RDX.i166
  %5500 = load i64, i64* %PC.i165
  %5501 = add i64 %5500, 4
  store i64 %5501, i64* %PC.i165
  %5502 = sext i64 %5499 to i128
  %5503 = and i128 %5502, -18446744073709551616
  %5504 = zext i64 %5499 to i128
  %5505 = or i128 %5503, %5504
  %5506 = mul i128 20, %5505
  %5507 = trunc i128 %5506 to i64
  store i64 %5507, i64* %RDX.i166, align 8
  %5508 = sext i64 %5507 to i128
  %5509 = icmp ne i128 %5508, %5506
  %5510 = zext i1 %5509 to i8
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5510, i8* %5511, align 1
  %5512 = trunc i128 %5506 to i32
  %5513 = and i32 %5512, 255
  %5514 = call i32 @llvm.ctpop.i32(i32 %5513)
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = xor i8 %5516, 1
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5517, i8* %5518, align 1
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5519, align 1
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5520, align 1
  %5521 = lshr i64 %5507, 63
  %5522 = trunc i64 %5521 to i8
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5522, i8* %5523, align 1
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5510, i8* %5524, align 1
  store %struct.Memory* %loadMem_421189, %struct.Memory** %MEMORY
  %loadMem_42118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 1
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 7
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RAX.i163
  %5535 = load i64, i64* %RDX.i164
  %5536 = load i64, i64* %PC.i162
  %5537 = add i64 %5536, 3
  store i64 %5537, i64* %PC.i162
  %5538 = add i64 %5535, %5534
  store i64 %5538, i64* %RAX.i163, align 8
  %5539 = icmp ult i64 %5538, %5534
  %5540 = icmp ult i64 %5538, %5535
  %5541 = or i1 %5539, %5540
  %5542 = zext i1 %5541 to i8
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5542, i8* %5543, align 1
  %5544 = trunc i64 %5538 to i32
  %5545 = and i32 %5544, 255
  %5546 = call i32 @llvm.ctpop.i32(i32 %5545)
  %5547 = trunc i32 %5546 to i8
  %5548 = and i8 %5547, 1
  %5549 = xor i8 %5548, 1
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5549, i8* %5550, align 1
  %5551 = xor i64 %5535, %5534
  %5552 = xor i64 %5551, %5538
  %5553 = lshr i64 %5552, 4
  %5554 = trunc i64 %5553 to i8
  %5555 = and i8 %5554, 1
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5555, i8* %5556, align 1
  %5557 = icmp eq i64 %5538, 0
  %5558 = zext i1 %5557 to i8
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5558, i8* %5559, align 1
  %5560 = lshr i64 %5538, 63
  %5561 = trunc i64 %5560 to i8
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5561, i8* %5562, align 1
  %5563 = lshr i64 %5534, 63
  %5564 = lshr i64 %5535, 63
  %5565 = xor i64 %5560, %5563
  %5566 = xor i64 %5560, %5564
  %5567 = add i64 %5565, %5566
  %5568 = icmp eq i64 %5567, 2
  %5569 = zext i1 %5568 to i8
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5569, i8* %5570, align 1
  store %struct.Memory* %loadMem_42118d, %struct.Memory** %MEMORY
  %loadMem_421190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 33
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %5573 to i64*
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 1
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %5576 to i64*
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 5
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %5579 to i64*
  %5580 = load i64, i64* %RAX.i160
  %5581 = add i64 %5580, 16
  %5582 = load i64, i64* %PC.i159
  %5583 = add i64 %5582, 3
  store i64 %5583, i64* %PC.i159
  %5584 = inttoptr i64 %5581 to i32*
  %5585 = load i32, i32* %5584
  %5586 = zext i32 %5585 to i64
  store i64 %5586, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_421190, %struct.Memory** %MEMORY
  %loadMem_421193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 33
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5589 to i64*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 1
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 15
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %5595 to i64*
  %5596 = load i64, i64* %RBP.i158
  %5597 = sub i64 %5596, 16
  %5598 = load i64, i64* %PC.i156
  %5599 = add i64 %5598, 4
  store i64 %5599, i64* %PC.i156
  %5600 = inttoptr i64 %5597 to i64*
  %5601 = load i64, i64* %5600
  store i64 %5601, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_421193, %struct.Memory** %MEMORY
  %loadMem_421197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 33
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5604 to i64*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 5
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %ECX.i154 = bitcast %union.anon* %5607 to i32*
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 1
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %5610 to i64*
  %5611 = load i64, i64* %RAX.i155
  %5612 = load i32, i32* %ECX.i154
  %5613 = zext i32 %5612 to i64
  %5614 = load i64, i64* %PC.i153
  %5615 = add i64 %5614, 2
  store i64 %5615, i64* %PC.i153
  %5616 = inttoptr i64 %5611 to i32*
  store i32 %5612, i32* %5616
  store %struct.Memory* %loadMem_421197, %struct.Memory** %MEMORY
  %loadMem_421199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 33
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5619 to i64*
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 1
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 15
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %RBP.i152
  %5627 = sub i64 %5626, 16
  %5628 = load i64, i64* %PC.i150
  %5629 = add i64 %5628, 4
  store i64 %5629, i64* %PC.i150
  %5630 = inttoptr i64 %5627 to i64*
  %5631 = load i64, i64* %5630
  store i64 %5631, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_421199, %struct.Memory** %MEMORY
  %loadMem_42119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 33
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5634 to i64*
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 1
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %5637 to i64*
  %5638 = load i64, i64* %RAX.i149
  %5639 = load i64, i64* %PC.i148
  %5640 = add i64 %5639, 6
  store i64 %5640, i64* %PC.i148
  %5641 = inttoptr i64 %5638 to i32*
  %5642 = load i32, i32* %5641
  %5643 = sub i32 %5642, 999500
  %5644 = icmp ult i32 %5642, 999500
  %5645 = zext i1 %5644 to i8
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5645, i8* %5646, align 1
  %5647 = and i32 %5643, 255
  %5648 = call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5651, i8* %5652, align 1
  %5653 = xor i32 %5642, 999500
  %5654 = xor i32 %5653, %5643
  %5655 = lshr i32 %5654, 4
  %5656 = trunc i32 %5655 to i8
  %5657 = and i8 %5656, 1
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5657, i8* %5658, align 1
  %5659 = icmp eq i32 %5643, 0
  %5660 = zext i1 %5659 to i8
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5660, i8* %5661, align 1
  %5662 = lshr i32 %5643, 31
  %5663 = trunc i32 %5662 to i8
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5663, i8* %5664, align 1
  %5665 = lshr i32 %5642, 31
  %5666 = xor i32 %5662, %5665
  %5667 = add i32 %5666, %5665
  %5668 = icmp eq i32 %5667, 2
  %5669 = zext i1 %5668 to i8
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5669, i8* %5670, align 1
  store %struct.Memory* %loadMem_42119d, %struct.Memory** %MEMORY
  %loadMem_4211a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %5673 to i64*
  %5674 = load i64, i64* %PC.i147
  %5675 = add i64 %5674, 28
  %5676 = load i64, i64* %PC.i147
  %5677 = add i64 %5676, 6
  %5678 = load i64, i64* %PC.i147
  %5679 = add i64 %5678, 6
  store i64 %5679, i64* %PC.i147
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5681 = load i8, i8* %5680, align 1
  %5682 = icmp ne i8 %5681, 0
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5684 = load i8, i8* %5683, align 1
  %5685 = icmp ne i8 %5684, 0
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5687 = load i8, i8* %5686, align 1
  %5688 = icmp ne i8 %5687, 0
  %5689 = xor i1 %5685, %5688
  %5690 = or i1 %5682, %5689
  %5691 = zext i1 %5690 to i8
  store i8 %5691, i8* %BRANCH_TAKEN, align 1
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5693 = select i1 %5690, i64 %5675, i64 %5677
  store i64 %5693, i64* %5692, align 8
  store %struct.Memory* %loadMem_4211a3, %struct.Memory** %MEMORY
  %loadBr_4211a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211a3 = icmp eq i8 %loadBr_4211a3, 1
  br i1 %cmpBr_4211a3, label %block_.L_4211bf, label %block_4211a9

block_4211a9:                                     ; preds = %block_42117c
  %loadMem_4211a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 33
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 1
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5699 to i64*
  %5700 = load i64, i64* %PC.i145
  %5701 = add i64 %5700, 7
  store i64 %5701, i64* %PC.i145
  %5702 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*)
  %5703 = zext i32 %5702 to i64
  store i64 %5703, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_4211a9, %struct.Memory** %MEMORY
  %loadMem_4211b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 33
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5706 to i64*
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 5
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 15
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5712 to i64*
  %5713 = load i64, i64* %RBP.i144
  %5714 = sub i64 %5713, 16
  %5715 = load i64, i64* %PC.i142
  %5716 = add i64 %5715, 4
  store i64 %5716, i64* %PC.i142
  %5717 = inttoptr i64 %5714 to i64*
  %5718 = load i64, i64* %5717
  store i64 %5718, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_4211b0, %struct.Memory** %MEMORY
  %loadMem_4211b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 33
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5721 to i64*
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 5
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 7
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %5727 to i64*
  %5728 = load i64, i64* %RCX.i140
  %5729 = load i64, i64* %PC.i139
  %5730 = add i64 %5729, 2
  store i64 %5730, i64* %PC.i139
  %5731 = inttoptr i64 %5728 to i32*
  %5732 = load i32, i32* %5731
  %5733 = zext i32 %5732 to i64
  store i64 %5733, i64* %RDX.i141, align 8
  store %struct.Memory* %loadMem_4211b4, %struct.Memory** %MEMORY
  %loadMem_4211b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 33
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5736 to i64*
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 1
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %5739 to i32*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 7
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %RDX.i138
  %5744 = load i32, i32* %EAX.i137
  %5745 = zext i32 %5744 to i64
  %5746 = load i64, i64* %PC.i136
  %5747 = add i64 %5746, 2
  store i64 %5747, i64* %PC.i136
  %5748 = trunc i64 %5743 to i32
  %5749 = sub i32 %5748, %5744
  %5750 = zext i32 %5749 to i64
  store i64 %5750, i64* %RDX.i138, align 8
  %5751 = icmp ult i32 %5748, %5744
  %5752 = zext i1 %5751 to i8
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5752, i8* %5753, align 1
  %5754 = and i32 %5749, 255
  %5755 = call i32 @llvm.ctpop.i32(i32 %5754)
  %5756 = trunc i32 %5755 to i8
  %5757 = and i8 %5756, 1
  %5758 = xor i8 %5757, 1
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5758, i8* %5759, align 1
  %5760 = xor i64 %5745, %5743
  %5761 = trunc i64 %5760 to i32
  %5762 = xor i32 %5761, %5749
  %5763 = lshr i32 %5762, 4
  %5764 = trunc i32 %5763 to i8
  %5765 = and i8 %5764, 1
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5765, i8* %5766, align 1
  %5767 = icmp eq i32 %5749, 0
  %5768 = zext i1 %5767 to i8
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5768, i8* %5769, align 1
  %5770 = lshr i32 %5749, 31
  %5771 = trunc i32 %5770 to i8
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5771, i8* %5772, align 1
  %5773 = lshr i32 %5748, 31
  %5774 = lshr i32 %5744, 31
  %5775 = xor i32 %5774, %5773
  %5776 = xor i32 %5770, %5773
  %5777 = add i32 %5776, %5775
  %5778 = icmp eq i32 %5777, 2
  %5779 = zext i1 %5778 to i8
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5779, i8* %5780, align 1
  store %struct.Memory* %loadMem_4211b6, %struct.Memory** %MEMORY
  %loadMem_4211b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 33
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 7
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5786 to i32*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 5
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %5789 to i64*
  %5790 = load i64, i64* %RCX.i135
  %5791 = load i32, i32* %EDX.i
  %5792 = zext i32 %5791 to i64
  %5793 = load i64, i64* %PC.i134
  %5794 = add i64 %5793, 2
  store i64 %5794, i64* %PC.i134
  %5795 = inttoptr i64 %5790 to i32*
  store i32 %5791, i32* %5795
  store %struct.Memory* %loadMem_4211b8, %struct.Memory** %MEMORY
  %loadMem_4211ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5798 to i64*
  %5799 = load i64, i64* %PC.i133
  %5800 = add i64 %5799, 41
  %5801 = load i64, i64* %PC.i133
  %5802 = add i64 %5801, 5
  store i64 %5802, i64* %PC.i133
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5800, i64* %5803, align 8
  store %struct.Memory* %loadMem_4211ba, %struct.Memory** %MEMORY
  br label %block_.L_4211e3

block_.L_4211bf:                                  ; preds = %block_42117c
  %loadMem_4211bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 1
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i132
  %5814 = sub i64 %5813, 16
  %5815 = load i64, i64* %PC.i130
  %5816 = add i64 %5815, 4
  store i64 %5816, i64* %PC.i130
  %5817 = inttoptr i64 %5814 to i64*
  %5818 = load i64, i64* %5817
  store i64 %5818, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_4211bf, %struct.Memory** %MEMORY
  %loadMem_4211c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 33
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 1
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %5824 to i64*
  %5825 = load i64, i64* %RAX.i129
  %5826 = load i64, i64* %PC.i128
  %5827 = add i64 %5826, 6
  store i64 %5827, i64* %PC.i128
  %5828 = inttoptr i64 %5825 to i32*
  %5829 = load i32, i32* %5828
  %5830 = sub i32 %5829, -999500
  %5831 = icmp ult i32 %5829, -999500
  %5832 = zext i1 %5831 to i8
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5832, i8* %5833, align 1
  %5834 = and i32 %5830, 255
  %5835 = call i32 @llvm.ctpop.i32(i32 %5834)
  %5836 = trunc i32 %5835 to i8
  %5837 = and i8 %5836, 1
  %5838 = xor i8 %5837, 1
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5838, i8* %5839, align 1
  %5840 = xor i32 %5829, -999500
  %5841 = xor i32 %5840, %5830
  %5842 = lshr i32 %5841, 4
  %5843 = trunc i32 %5842 to i8
  %5844 = and i8 %5843, 1
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5844, i8* %5845, align 1
  %5846 = icmp eq i32 %5830, 0
  %5847 = zext i1 %5846 to i8
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5847, i8* %5848, align 1
  %5849 = lshr i32 %5830, 31
  %5850 = trunc i32 %5849 to i8
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5850, i8* %5851, align 1
  %5852 = lshr i32 %5829, 31
  %5853 = xor i32 %5852, 1
  %5854 = xor i32 %5849, %5852
  %5855 = add i32 %5854, %5853
  %5856 = icmp eq i32 %5855, 2
  %5857 = zext i1 %5856 to i8
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5857, i8* %5858, align 1
  store %struct.Memory* %loadMem_4211c3, %struct.Memory** %MEMORY
  %loadMem_4211c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5861 to i64*
  %5862 = load i64, i64* %PC.i127
  %5863 = add i64 %5862, 21
  %5864 = load i64, i64* %PC.i127
  %5865 = add i64 %5864, 6
  %5866 = load i64, i64* %PC.i127
  %5867 = add i64 %5866, 6
  store i64 %5867, i64* %PC.i127
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5869 = load i8, i8* %5868, align 1
  %5870 = icmp ne i8 %5869, 0
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5872 = load i8, i8* %5871, align 1
  %5873 = icmp ne i8 %5872, 0
  %5874 = xor i1 %5870, %5873
  %5875 = xor i1 %5874, true
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %BRANCH_TAKEN, align 1
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5878 = select i1 %5874, i64 %5865, i64 %5863
  store i64 %5878, i64* %5877, align 8
  store %struct.Memory* %loadMem_4211c9, %struct.Memory** %MEMORY
  %loadBr_4211c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211c9 = icmp eq i8 %loadBr_4211c9, 1
  br i1 %cmpBr_4211c9, label %block_.L_4211de, label %block_4211cf

block_4211cf:                                     ; preds = %block_.L_4211bf
  %loadMem_4211cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 33
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5881 to i64*
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 1
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %5884 to i64*
  %5885 = load i64, i64* %PC.i125
  %5886 = add i64 %5885, 7
  store i64 %5886, i64* %PC.i125
  %5887 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*)
  %5888 = zext i32 %5887 to i64
  store i64 %5888, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4211cf, %struct.Memory** %MEMORY
  %loadMem_4211d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 5
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 15
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %5897 to i64*
  %5898 = load i64, i64* %RBP.i124
  %5899 = sub i64 %5898, 16
  %5900 = load i64, i64* %PC.i122
  %5901 = add i64 %5900, 4
  store i64 %5901, i64* %PC.i122
  %5902 = inttoptr i64 %5899 to i64*
  %5903 = load i64, i64* %5902
  store i64 %5903, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4211d6, %struct.Memory** %MEMORY
  %loadMem_4211da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 33
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 1
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 5
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %RAX.i120
  %5914 = load i64, i64* %RCX.i121
  %5915 = load i64, i64* %PC.i119
  %5916 = add i64 %5915, 2
  store i64 %5916, i64* %PC.i119
  %5917 = trunc i64 %5913 to i32
  %5918 = inttoptr i64 %5914 to i32*
  %5919 = load i32, i32* %5918
  %5920 = add i32 %5919, %5917
  %5921 = zext i32 %5920 to i64
  store i64 %5921, i64* %RAX.i120, align 8
  %5922 = icmp ult i32 %5920, %5917
  %5923 = icmp ult i32 %5920, %5919
  %5924 = or i1 %5922, %5923
  %5925 = zext i1 %5924 to i8
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5925, i8* %5926, align 1
  %5927 = and i32 %5920, 255
  %5928 = call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5931, i8* %5932, align 1
  %5933 = xor i32 %5919, %5917
  %5934 = xor i32 %5933, %5920
  %5935 = lshr i32 %5934, 4
  %5936 = trunc i32 %5935 to i8
  %5937 = and i8 %5936, 1
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5937, i8* %5938, align 1
  %5939 = icmp eq i32 %5920, 0
  %5940 = zext i1 %5939 to i8
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5940, i8* %5941, align 1
  %5942 = lshr i32 %5920, 31
  %5943 = trunc i32 %5942 to i8
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5943, i8* %5944, align 1
  %5945 = lshr i32 %5917, 31
  %5946 = lshr i32 %5919, 31
  %5947 = xor i32 %5942, %5945
  %5948 = xor i32 %5942, %5946
  %5949 = add i32 %5947, %5948
  %5950 = icmp eq i32 %5949, 2
  %5951 = zext i1 %5950 to i8
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5951, i8* %5952, align 1
  store %struct.Memory* %loadMem_4211da, %struct.Memory** %MEMORY
  %loadMem_4211dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5955 to i64*
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 1
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5958 to i32*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 5
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %5961 to i64*
  %5962 = load i64, i64* %RCX.i118
  %5963 = load i32, i32* %EAX.i
  %5964 = zext i32 %5963 to i64
  %5965 = load i64, i64* %PC.i117
  %5966 = add i64 %5965, 2
  store i64 %5966, i64* %PC.i117
  %5967 = inttoptr i64 %5962 to i32*
  store i32 %5963, i32* %5967
  store %struct.Memory* %loadMem_4211dc, %struct.Memory** %MEMORY
  br label %block_.L_4211de

block_.L_4211de:                                  ; preds = %block_4211cf, %block_.L_4211bf
  %loadMem_4211de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5970 to i64*
  %5971 = load i64, i64* %PC.i116
  %5972 = add i64 %5971, 5
  %5973 = load i64, i64* %PC.i116
  %5974 = add i64 %5973, 5
  store i64 %5974, i64* %PC.i116
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5972, i64* %5975, align 8
  store %struct.Memory* %loadMem_4211de, %struct.Memory** %MEMORY
  br label %block_.L_4211e3

block_.L_4211e3:                                  ; preds = %block_.L_4211de, %block_4211a9
  %loadMem_4211e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %5981 to i64*
  %5982 = load i64, i64* %PC.i114
  %5983 = add i64 %5982, 8
  store i64 %5983, i64* %PC.i114
  %5984 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %5984, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_4211e3, %struct.Memory** %MEMORY
  %loadMem_4211eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 5
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %5990 to i64*
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 15
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %5993 to i64*
  %5994 = load i64, i64* %RBP.i113
  %5995 = sub i64 %5994, 56
  %5996 = load i64, i64* %PC.i111
  %5997 = add i64 %5996, 3
  store i64 %5997, i64* %PC.i111
  %5998 = inttoptr i64 %5995 to i32*
  %5999 = load i32, i32* %5998
  %6000 = zext i32 %5999 to i64
  store i64 %6000, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_4211eb, %struct.Memory** %MEMORY
  %loadMem_4211ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 33
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6003 to i64*
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 5
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %ECX.i109 = bitcast %union.anon* %6006 to i32*
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 7
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %6009 to i64*
  %6010 = load i32, i32* %ECX.i109
  %6011 = zext i32 %6010 to i64
  %6012 = load i64, i64* %PC.i108
  %6013 = add i64 %6012, 2
  store i64 %6013, i64* %PC.i108
  %6014 = and i64 %6011, 4294967295
  store i64 %6014, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_4211ee, %struct.Memory** %MEMORY
  %loadMem_4211f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 33
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 7
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %6020 to i64*
  %6021 = load i64, i64* %RDX.i107
  %6022 = load i64, i64* %PC.i106
  %6023 = add i64 %6022, 4
  store i64 %6023, i64* %PC.i106
  %6024 = sext i64 %6021 to i128
  %6025 = and i128 %6024, -18446744073709551616
  %6026 = zext i64 %6021 to i128
  %6027 = or i128 %6025, %6026
  %6028 = mul i128 20, %6027
  %6029 = trunc i128 %6028 to i64
  store i64 %6029, i64* %RDX.i107, align 8
  %6030 = sext i64 %6029 to i128
  %6031 = icmp ne i128 %6030, %6028
  %6032 = zext i1 %6031 to i8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6032, i8* %6033, align 1
  %6034 = trunc i128 %6028 to i32
  %6035 = and i32 %6034, 255
  %6036 = call i32 @llvm.ctpop.i32(i32 %6035)
  %6037 = trunc i32 %6036 to i8
  %6038 = and i8 %6037, 1
  %6039 = xor i8 %6038, 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6039, i8* %6040, align 1
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6041, align 1
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6042, align 1
  %6043 = lshr i64 %6029, 63
  %6044 = trunc i64 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6044, i8* %6045, align 1
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6032, i8* %6046, align 1
  store %struct.Memory* %loadMem_4211f0, %struct.Memory** %MEMORY
  %loadMem_4211f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 33
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 1
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 7
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %RAX.i104
  %6057 = load i64, i64* %RDX.i105
  %6058 = load i64, i64* %PC.i103
  %6059 = add i64 %6058, 3
  store i64 %6059, i64* %PC.i103
  %6060 = add i64 %6057, %6056
  store i64 %6060, i64* %RAX.i104, align 8
  %6061 = icmp ult i64 %6060, %6056
  %6062 = icmp ult i64 %6060, %6057
  %6063 = or i1 %6061, %6062
  %6064 = zext i1 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6064, i8* %6065, align 1
  %6066 = trunc i64 %6060 to i32
  %6067 = and i32 %6066, 255
  %6068 = call i32 @llvm.ctpop.i32(i32 %6067)
  %6069 = trunc i32 %6068 to i8
  %6070 = and i8 %6069, 1
  %6071 = xor i8 %6070, 1
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6071, i8* %6072, align 1
  %6073 = xor i64 %6057, %6056
  %6074 = xor i64 %6073, %6060
  %6075 = lshr i64 %6074, 4
  %6076 = trunc i64 %6075 to i8
  %6077 = and i8 %6076, 1
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6077, i8* %6078, align 1
  %6079 = icmp eq i64 %6060, 0
  %6080 = zext i1 %6079 to i8
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6080, i8* %6081, align 1
  %6082 = lshr i64 %6060, 63
  %6083 = trunc i64 %6082 to i8
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6083, i8* %6084, align 1
  %6085 = lshr i64 %6056, 63
  %6086 = lshr i64 %6057, 63
  %6087 = xor i64 %6082, %6085
  %6088 = xor i64 %6082, %6086
  %6089 = add i64 %6087, %6088
  %6090 = icmp eq i64 %6089, 2
  %6091 = zext i1 %6090 to i8
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6091, i8* %6092, align 1
  store %struct.Memory* %loadMem_4211f4, %struct.Memory** %MEMORY
  %loadMem_4211f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 33
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 1
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 5
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %6101 to i64*
  %6102 = load i64, i64* %RAX.i101
  %6103 = add i64 %6102, 4
  %6104 = load i64, i64* %PC.i100
  %6105 = add i64 %6104, 4
  store i64 %6105, i64* %PC.i100
  %6106 = inttoptr i64 %6103 to i16*
  %6107 = load i16, i16* %6106
  %6108 = zext i16 %6107 to i64
  store i64 %6108, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_4211f7, %struct.Memory** %MEMORY
  %loadMem_4211fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6111 to i64*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 1
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 15
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %6117 to i64*
  %6118 = load i64, i64* %RBP.i99
  %6119 = sub i64 %6118, 32
  %6120 = load i64, i64* %PC.i97
  %6121 = add i64 %6120, 4
  store i64 %6121, i64* %PC.i97
  %6122 = inttoptr i64 %6119 to i64*
  %6123 = load i64, i64* %6122
  store i64 %6123, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_4211fb, %struct.Memory** %MEMORY
  %loadMem_4211ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 5
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %ECX.i95 = bitcast %union.anon* %6129 to i32*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 1
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %6132 to i64*
  %6133 = load i64, i64* %RAX.i96
  %6134 = load i32, i32* %ECX.i95
  %6135 = zext i32 %6134 to i64
  %6136 = load i64, i64* %PC.i94
  %6137 = add i64 %6136, 2
  store i64 %6137, i64* %PC.i94
  %6138 = inttoptr i64 %6133 to i32*
  store i32 %6134, i32* %6138
  store %struct.Memory* %loadMem_4211ff, %struct.Memory** %MEMORY
  %loadMem_421201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 1
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %6144 to i64*
  %6145 = load i64, i64* %PC.i92
  %6146 = add i64 %6145, 8
  store i64 %6146, i64* %PC.i92
  %6147 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %6147, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_421201, %struct.Memory** %MEMORY
  %loadMem_421209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 5
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 15
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RBP.i91
  %6158 = sub i64 %6157, 56
  %6159 = load i64, i64* %PC.i89
  %6160 = add i64 %6159, 3
  store i64 %6160, i64* %PC.i89
  %6161 = inttoptr i64 %6158 to i32*
  %6162 = load i32, i32* %6161
  %6163 = zext i32 %6162 to i64
  store i64 %6163, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_421209, %struct.Memory** %MEMORY
  %loadMem_42120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 5
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %ECX.i87 = bitcast %union.anon* %6169 to i32*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 7
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %6172 to i64*
  %6173 = load i32, i32* %ECX.i87
  %6174 = zext i32 %6173 to i64
  %6175 = load i64, i64* %PC.i86
  %6176 = add i64 %6175, 2
  store i64 %6176, i64* %PC.i86
  %6177 = and i64 %6174, 4294967295
  store i64 %6177, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_42120c, %struct.Memory** %MEMORY
  %loadMem_42120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 33
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 7
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %6183 to i64*
  %6184 = load i64, i64* %RDX.i85
  %6185 = load i64, i64* %PC.i84
  %6186 = add i64 %6185, 4
  store i64 %6186, i64* %PC.i84
  %6187 = sext i64 %6184 to i128
  %6188 = and i128 %6187, -18446744073709551616
  %6189 = zext i64 %6184 to i128
  %6190 = or i128 %6188, %6189
  %6191 = mul i128 20, %6190
  %6192 = trunc i128 %6191 to i64
  store i64 %6192, i64* %RDX.i85, align 8
  %6193 = sext i64 %6192 to i128
  %6194 = icmp ne i128 %6193, %6191
  %6195 = zext i1 %6194 to i8
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6195, i8* %6196, align 1
  %6197 = trunc i128 %6191 to i32
  %6198 = and i32 %6197, 255
  %6199 = call i32 @llvm.ctpop.i32(i32 %6198)
  %6200 = trunc i32 %6199 to i8
  %6201 = and i8 %6200, 1
  %6202 = xor i8 %6201, 1
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6202, i8* %6203, align 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6204, align 1
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6205, align 1
  %6206 = lshr i64 %6192, 63
  %6207 = trunc i64 %6206 to i8
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6207, i8* %6208, align 1
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6195, i8* %6209, align 1
  store %struct.Memory* %loadMem_42120e, %struct.Memory** %MEMORY
  %loadMem_421212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 33
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6212 to i64*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 1
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %6215 to i64*
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 7
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %6218 to i64*
  %6219 = load i64, i64* %RAX.i82
  %6220 = load i64, i64* %RDX.i83
  %6221 = load i64, i64* %PC.i81
  %6222 = add i64 %6221, 3
  store i64 %6222, i64* %PC.i81
  %6223 = add i64 %6220, %6219
  store i64 %6223, i64* %RAX.i82, align 8
  %6224 = icmp ult i64 %6223, %6219
  %6225 = icmp ult i64 %6223, %6220
  %6226 = or i1 %6224, %6225
  %6227 = zext i1 %6226 to i8
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6227, i8* %6228, align 1
  %6229 = trunc i64 %6223 to i32
  %6230 = and i32 %6229, 255
  %6231 = call i32 @llvm.ctpop.i32(i32 %6230)
  %6232 = trunc i32 %6231 to i8
  %6233 = and i8 %6232, 1
  %6234 = xor i8 %6233, 1
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6234, i8* %6235, align 1
  %6236 = xor i64 %6220, %6219
  %6237 = xor i64 %6236, %6223
  %6238 = lshr i64 %6237, 4
  %6239 = trunc i64 %6238 to i8
  %6240 = and i8 %6239, 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6240, i8* %6241, align 1
  %6242 = icmp eq i64 %6223, 0
  %6243 = zext i1 %6242 to i8
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6243, i8* %6244, align 1
  %6245 = lshr i64 %6223, 63
  %6246 = trunc i64 %6245 to i8
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6246, i8* %6247, align 1
  %6248 = lshr i64 %6219, 63
  %6249 = lshr i64 %6220, 63
  %6250 = xor i64 %6245, %6248
  %6251 = xor i64 %6245, %6249
  %6252 = add i64 %6250, %6251
  %6253 = icmp eq i64 %6252, 2
  %6254 = zext i1 %6253 to i8
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6254, i8* %6255, align 1
  store %struct.Memory* %loadMem_421212, %struct.Memory** %MEMORY
  %loadMem_421215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6257 = getelementptr inbounds %struct.GPR, %struct.GPR* %6256, i32 0, i32 33
  %6258 = getelementptr inbounds %struct.Reg, %struct.Reg* %6257, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6258 to i64*
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 1
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %6261 to i64*
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 5
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %6264 to i64*
  %6265 = load i64, i64* %RAX.i79
  %6266 = add i64 %6265, 2
  %6267 = load i64, i64* %PC.i78
  %6268 = add i64 %6267, 4
  store i64 %6268, i64* %PC.i78
  %6269 = inttoptr i64 %6266 to i8*
  %6270 = load i8, i8* %6269
  %6271 = sext i8 %6270 to i64
  %6272 = and i64 %6271, 4294967295
  store i64 %6272, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_421215, %struct.Memory** %MEMORY
  %loadMem_421219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 33
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6275 to i64*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 1
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 15
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %6281 to i64*
  %6282 = load i64, i64* %RBP.i77
  %6283 = sub i64 %6282, 40
  %6284 = load i64, i64* %PC.i75
  %6285 = add i64 %6284, 4
  store i64 %6285, i64* %PC.i75
  %6286 = inttoptr i64 %6283 to i64*
  %6287 = load i64, i64* %6286
  store i64 %6287, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_421219, %struct.Memory** %MEMORY
  %loadMem_42121d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 33
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6290 to i64*
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 5
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %ECX.i73 = bitcast %union.anon* %6293 to i32*
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 1
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %6296 to i64*
  %6297 = load i64, i64* %RAX.i74
  %6298 = load i32, i32* %ECX.i73
  %6299 = zext i32 %6298 to i64
  %6300 = load i64, i64* %PC.i72
  %6301 = add i64 %6300, 2
  store i64 %6301, i64* %PC.i72
  %6302 = inttoptr i64 %6297 to i32*
  store i32 %6298, i32* %6302
  store %struct.Memory* %loadMem_42121d, %struct.Memory** %MEMORY
  %loadMem_42121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6304 = getelementptr inbounds %struct.GPR, %struct.GPR* %6303, i32 0, i32 33
  %6305 = getelementptr inbounds %struct.Reg, %struct.Reg* %6304, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6305 to i64*
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 1
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %6308 to i64*
  %6309 = load i64, i64* %PC.i70
  %6310 = add i64 %6309, 8
  store i64 %6310, i64* %PC.i70
  %6311 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %6311, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_42121f, %struct.Memory** %MEMORY
  %loadMem_421227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 33
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6314 to i64*
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6316 = getelementptr inbounds %struct.GPR, %struct.GPR* %6315, i32 0, i32 5
  %6317 = getelementptr inbounds %struct.Reg, %struct.Reg* %6316, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %6317 to i64*
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 15
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %6320 to i64*
  %6321 = load i64, i64* %RBP.i69
  %6322 = sub i64 %6321, 56
  %6323 = load i64, i64* %PC.i67
  %6324 = add i64 %6323, 3
  store i64 %6324, i64* %PC.i67
  %6325 = inttoptr i64 %6322 to i32*
  %6326 = load i32, i32* %6325
  %6327 = zext i32 %6326 to i64
  store i64 %6327, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_421227, %struct.Memory** %MEMORY
  %loadMem_42122a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 33
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 5
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %6333 to i32*
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 7
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %RDX.i66 = bitcast %union.anon* %6336 to i64*
  %6337 = load i32, i32* %ECX.i65
  %6338 = zext i32 %6337 to i64
  %6339 = load i64, i64* %PC.i64
  %6340 = add i64 %6339, 2
  store i64 %6340, i64* %PC.i64
  %6341 = and i64 %6338, 4294967295
  store i64 %6341, i64* %RDX.i66, align 8
  store %struct.Memory* %loadMem_42122a, %struct.Memory** %MEMORY
  %loadMem_42122c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 33
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6344 to i64*
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 7
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %6347 to i64*
  %6348 = load i64, i64* %RDX.i63
  %6349 = load i64, i64* %PC.i62
  %6350 = add i64 %6349, 4
  store i64 %6350, i64* %PC.i62
  %6351 = sext i64 %6348 to i128
  %6352 = and i128 %6351, -18446744073709551616
  %6353 = zext i64 %6348 to i128
  %6354 = or i128 %6352, %6353
  %6355 = mul i128 20, %6354
  %6356 = trunc i128 %6355 to i64
  store i64 %6356, i64* %RDX.i63, align 8
  %6357 = sext i64 %6356 to i128
  %6358 = icmp ne i128 %6357, %6355
  %6359 = zext i1 %6358 to i8
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6359, i8* %6360, align 1
  %6361 = trunc i128 %6355 to i32
  %6362 = and i32 %6361, 255
  %6363 = call i32 @llvm.ctpop.i32(i32 %6362)
  %6364 = trunc i32 %6363 to i8
  %6365 = and i8 %6364, 1
  %6366 = xor i8 %6365, 1
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6366, i8* %6367, align 1
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6368, align 1
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6369, align 1
  %6370 = lshr i64 %6356, 63
  %6371 = trunc i64 %6370 to i8
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6371, i8* %6372, align 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6359, i8* %6373, align 1
  store %struct.Memory* %loadMem_42122c, %struct.Memory** %MEMORY
  %loadMem_421230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 33
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 1
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 7
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %6382 to i64*
  %6383 = load i64, i64* %RAX.i60
  %6384 = load i64, i64* %RDX.i61
  %6385 = load i64, i64* %PC.i59
  %6386 = add i64 %6385, 3
  store i64 %6386, i64* %PC.i59
  %6387 = add i64 %6384, %6383
  store i64 %6387, i64* %RAX.i60, align 8
  %6388 = icmp ult i64 %6387, %6383
  %6389 = icmp ult i64 %6387, %6384
  %6390 = or i1 %6388, %6389
  %6391 = zext i1 %6390 to i8
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6391, i8* %6392, align 1
  %6393 = trunc i64 %6387 to i32
  %6394 = and i32 %6393, 255
  %6395 = call i32 @llvm.ctpop.i32(i32 %6394)
  %6396 = trunc i32 %6395 to i8
  %6397 = and i8 %6396, 1
  %6398 = xor i8 %6397, 1
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6398, i8* %6399, align 1
  %6400 = xor i64 %6384, %6383
  %6401 = xor i64 %6400, %6387
  %6402 = lshr i64 %6401, 4
  %6403 = trunc i64 %6402 to i8
  %6404 = and i8 %6403, 1
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6404, i8* %6405, align 1
  %6406 = icmp eq i64 %6387, 0
  %6407 = zext i1 %6406 to i8
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6407, i8* %6408, align 1
  %6409 = lshr i64 %6387, 63
  %6410 = trunc i64 %6409 to i8
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6410, i8* %6411, align 1
  %6412 = lshr i64 %6383, 63
  %6413 = lshr i64 %6384, 63
  %6414 = xor i64 %6409, %6412
  %6415 = xor i64 %6409, %6413
  %6416 = add i64 %6414, %6415
  %6417 = icmp eq i64 %6416, 2
  %6418 = zext i1 %6417 to i8
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6418, i8* %6419, align 1
  store %struct.Memory* %loadMem_421230, %struct.Memory** %MEMORY
  %loadMem_421233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 33
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %6422 to i64*
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 1
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %6425 to i64*
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 5
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %6428 to i64*
  %6429 = load i64, i64* %RAX.i57
  %6430 = add i64 %6429, 3
  %6431 = load i64, i64* %PC.i56
  %6432 = add i64 %6431, 4
  store i64 %6432, i64* %PC.i56
  %6433 = inttoptr i64 %6430 to i8*
  %6434 = load i8, i8* %6433
  %6435 = sext i8 %6434 to i64
  %6436 = and i64 %6435, 4294967295
  store i64 %6436, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_421233, %struct.Memory** %MEMORY
  %loadMem_421237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 5
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %ECX.i54 = bitcast %union.anon* %6442 to i32*
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6444 = getelementptr inbounds %struct.GPR, %struct.GPR* %6443, i32 0, i32 15
  %6445 = getelementptr inbounds %struct.Reg, %struct.Reg* %6444, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %6445 to i64*
  %6446 = load i64, i64* %RBP.i55
  %6447 = sub i64 %6446, 4
  %6448 = load i32, i32* %ECX.i54
  %6449 = zext i32 %6448 to i64
  %6450 = load i64, i64* %PC.i53
  %6451 = add i64 %6450, 3
  store i64 %6451, i64* %PC.i53
  %6452 = inttoptr i64 %6447 to i32*
  store i32 %6448, i32* %6452
  store %struct.Memory* %loadMem_421237, %struct.Memory** %MEMORY
  %loadMem_42123a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6455 to i64*
  %6456 = load i64, i64* %PC.i52
  %6457 = add i64 %6456, 84
  %6458 = load i64, i64* %PC.i52
  %6459 = add i64 %6458, 5
  store i64 %6459, i64* %PC.i52
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6457, i64* %6460, align 8
  store %struct.Memory* %loadMem_42123a, %struct.Memory** %MEMORY
  br label %block_.L_42128e

block_.L_42123f:                                  ; preds = %block_.L_42115c
  %loadMem_42123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 33
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6463 to i64*
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 1
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %6466 to i64*
  %6467 = load i64, i64* %PC.i50
  %6468 = add i64 %6467, 8
  store i64 %6468, i64* %PC.i50
  %6469 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %6469, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_42123f, %struct.Memory** %MEMORY
  %loadMem_421247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 5
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %6475 to i64*
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 15
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %RBP.i49
  %6480 = sub i64 %6479, 56
  %6481 = load i64, i64* %PC.i47
  %6482 = add i64 %6481, 3
  store i64 %6482, i64* %PC.i47
  %6483 = inttoptr i64 %6480 to i32*
  %6484 = load i32, i32* %6483
  %6485 = zext i32 %6484 to i64
  store i64 %6485, i64* %RCX.i48, align 8
  store %struct.Memory* %loadMem_421247, %struct.Memory** %MEMORY
  %loadMem_42124a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 33
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 5
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %ECX.i45 = bitcast %union.anon* %6491 to i32*
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 7
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %6494 to i64*
  %6495 = load i32, i32* %ECX.i45
  %6496 = zext i32 %6495 to i64
  %6497 = load i64, i64* %PC.i44
  %6498 = add i64 %6497, 2
  store i64 %6498, i64* %PC.i44
  %6499 = and i64 %6496, 4294967295
  store i64 %6499, i64* %RDX.i46, align 8
  store %struct.Memory* %loadMem_42124a, %struct.Memory** %MEMORY
  %loadMem_42124c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6502 to i64*
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 7
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %6505 to i64*
  %6506 = load i64, i64* %RDX.i43
  %6507 = load i64, i64* %PC.i42
  %6508 = add i64 %6507, 4
  store i64 %6508, i64* %PC.i42
  %6509 = sext i64 %6506 to i128
  %6510 = and i128 %6509, -18446744073709551616
  %6511 = zext i64 %6506 to i128
  %6512 = or i128 %6510, %6511
  %6513 = mul i128 20, %6512
  %6514 = trunc i128 %6513 to i64
  store i64 %6514, i64* %RDX.i43, align 8
  %6515 = sext i64 %6514 to i128
  %6516 = icmp ne i128 %6515, %6513
  %6517 = zext i1 %6516 to i8
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6517, i8* %6518, align 1
  %6519 = trunc i128 %6513 to i32
  %6520 = and i32 %6519, 255
  %6521 = call i32 @llvm.ctpop.i32(i32 %6520)
  %6522 = trunc i32 %6521 to i8
  %6523 = and i8 %6522, 1
  %6524 = xor i8 %6523, 1
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6524, i8* %6525, align 1
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6526, align 1
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6527, align 1
  %6528 = lshr i64 %6514, 63
  %6529 = trunc i64 %6528 to i8
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6529, i8* %6530, align 1
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6517, i8* %6531, align 1
  store %struct.Memory* %loadMem_42124c, %struct.Memory** %MEMORY
  %loadMem_421250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 33
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 1
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 7
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %RAX.i40
  %6542 = load i64, i64* %RDX.i41
  %6543 = load i64, i64* %PC.i39
  %6544 = add i64 %6543, 3
  store i64 %6544, i64* %PC.i39
  %6545 = add i64 %6542, %6541
  store i64 %6545, i64* %RAX.i40, align 8
  %6546 = icmp ult i64 %6545, %6541
  %6547 = icmp ult i64 %6545, %6542
  %6548 = or i1 %6546, %6547
  %6549 = zext i1 %6548 to i8
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6549, i8* %6550, align 1
  %6551 = trunc i64 %6545 to i32
  %6552 = and i32 %6551, 255
  %6553 = call i32 @llvm.ctpop.i32(i32 %6552)
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  %6556 = xor i8 %6555, 1
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6556, i8* %6557, align 1
  %6558 = xor i64 %6542, %6541
  %6559 = xor i64 %6558, %6545
  %6560 = lshr i64 %6559, 4
  %6561 = trunc i64 %6560 to i8
  %6562 = and i8 %6561, 1
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6562, i8* %6563, align 1
  %6564 = icmp eq i64 %6545, 0
  %6565 = zext i1 %6564 to i8
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6565, i8* %6566, align 1
  %6567 = lshr i64 %6545, 63
  %6568 = trunc i64 %6567 to i8
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6568, i8* %6569, align 1
  %6570 = lshr i64 %6541, 63
  %6571 = lshr i64 %6542, 63
  %6572 = xor i64 %6567, %6570
  %6573 = xor i64 %6567, %6571
  %6574 = add i64 %6572, %6573
  %6575 = icmp eq i64 %6574, 2
  %6576 = zext i1 %6575 to i8
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6576, i8* %6577, align 1
  store %struct.Memory* %loadMem_421250, %struct.Memory** %MEMORY
  %loadMem_421253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6579 = getelementptr inbounds %struct.GPR, %struct.GPR* %6578, i32 0, i32 33
  %6580 = getelementptr inbounds %struct.Reg, %struct.Reg* %6579, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6580 to i64*
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 1
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %6583 to i64*
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 5
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %6586 to i64*
  %6587 = load i64, i64* %RAX.i37
  %6588 = add i64 %6587, 4
  %6589 = load i64, i64* %PC.i36
  %6590 = add i64 %6589, 4
  store i64 %6590, i64* %PC.i36
  %6591 = inttoptr i64 %6588 to i16*
  %6592 = load i16, i16* %6591
  %6593 = zext i16 %6592 to i64
  store i64 %6593, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_421253, %struct.Memory** %MEMORY
  %loadMem_421257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 33
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %6596 to i64*
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6598 = getelementptr inbounds %struct.GPR, %struct.GPR* %6597, i32 0, i32 1
  %6599 = getelementptr inbounds %struct.Reg, %struct.Reg* %6598, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %6599 to i64*
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6601 = getelementptr inbounds %struct.GPR, %struct.GPR* %6600, i32 0, i32 15
  %6602 = getelementptr inbounds %struct.Reg, %struct.Reg* %6601, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %6602 to i64*
  %6603 = load i64, i64* %RBP.i35
  %6604 = sub i64 %6603, 32
  %6605 = load i64, i64* %PC.i33
  %6606 = add i64 %6605, 4
  store i64 %6606, i64* %PC.i33
  %6607 = inttoptr i64 %6604 to i64*
  %6608 = load i64, i64* %6607
  store i64 %6608, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_421257, %struct.Memory** %MEMORY
  %loadMem_42125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 33
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 5
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %ECX.i31 = bitcast %union.anon* %6614 to i32*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 1
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %6617 to i64*
  %6618 = load i64, i64* %RAX.i32
  %6619 = load i32, i32* %ECX.i31
  %6620 = zext i32 %6619 to i64
  %6621 = load i64, i64* %PC.i30
  %6622 = add i64 %6621, 2
  store i64 %6622, i64* %PC.i30
  %6623 = inttoptr i64 %6618 to i32*
  store i32 %6619, i32* %6623
  store %struct.Memory* %loadMem_42125b, %struct.Memory** %MEMORY
  %loadMem_42125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 33
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6626 to i64*
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 1
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %6629 to i64*
  %6630 = load i64, i64* %PC.i28
  %6631 = add i64 %6630, 8
  store i64 %6631, i64* %PC.i28
  %6632 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %6632, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_42125d, %struct.Memory** %MEMORY
  %loadMem_421265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 33
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 5
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %6638 to i64*
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 15
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %6641 to i64*
  %6642 = load i64, i64* %RBP.i27
  %6643 = sub i64 %6642, 56
  %6644 = load i64, i64* %PC.i25
  %6645 = add i64 %6644, 3
  store i64 %6645, i64* %PC.i25
  %6646 = inttoptr i64 %6643 to i32*
  %6647 = load i32, i32* %6646
  %6648 = zext i32 %6647 to i64
  store i64 %6648, i64* %RCX.i26, align 8
  store %struct.Memory* %loadMem_421265, %struct.Memory** %MEMORY
  %loadMem_421268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6650 = getelementptr inbounds %struct.GPR, %struct.GPR* %6649, i32 0, i32 33
  %6651 = getelementptr inbounds %struct.Reg, %struct.Reg* %6650, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6651 to i64*
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 5
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %ECX.i23 = bitcast %union.anon* %6654 to i32*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 7
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %RDX.i24 = bitcast %union.anon* %6657 to i64*
  %6658 = load i32, i32* %ECX.i23
  %6659 = zext i32 %6658 to i64
  %6660 = load i64, i64* %PC.i22
  %6661 = add i64 %6660, 2
  store i64 %6661, i64* %PC.i22
  %6662 = and i64 %6659, 4294967295
  store i64 %6662, i64* %RDX.i24, align 8
  store %struct.Memory* %loadMem_421268, %struct.Memory** %MEMORY
  %loadMem_42126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 33
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6665 to i64*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 7
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RDX.i21 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %RDX.i21
  %6670 = load i64, i64* %PC.i20
  %6671 = add i64 %6670, 4
  store i64 %6671, i64* %PC.i20
  %6672 = sext i64 %6669 to i128
  %6673 = and i128 %6672, -18446744073709551616
  %6674 = zext i64 %6669 to i128
  %6675 = or i128 %6673, %6674
  %6676 = mul i128 20, %6675
  %6677 = trunc i128 %6676 to i64
  store i64 %6677, i64* %RDX.i21, align 8
  %6678 = sext i64 %6677 to i128
  %6679 = icmp ne i128 %6678, %6676
  %6680 = zext i1 %6679 to i8
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6680, i8* %6681, align 1
  %6682 = trunc i128 %6676 to i32
  %6683 = and i32 %6682, 255
  %6684 = call i32 @llvm.ctpop.i32(i32 %6683)
  %6685 = trunc i32 %6684 to i8
  %6686 = and i8 %6685, 1
  %6687 = xor i8 %6686, 1
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6687, i8* %6688, align 1
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6689, align 1
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6690, align 1
  %6691 = lshr i64 %6677, 63
  %6692 = trunc i64 %6691 to i8
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6692, i8* %6693, align 1
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6680, i8* %6694, align 1
  store %struct.Memory* %loadMem_42126a, %struct.Memory** %MEMORY
  %loadMem_42126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 33
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6697 to i64*
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 1
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %6700 to i64*
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 7
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6703 to i64*
  %6704 = load i64, i64* %RAX.i19
  %6705 = load i64, i64* %RDX.i
  %6706 = load i64, i64* %PC.i18
  %6707 = add i64 %6706, 3
  store i64 %6707, i64* %PC.i18
  %6708 = add i64 %6705, %6704
  store i64 %6708, i64* %RAX.i19, align 8
  %6709 = icmp ult i64 %6708, %6704
  %6710 = icmp ult i64 %6708, %6705
  %6711 = or i1 %6709, %6710
  %6712 = zext i1 %6711 to i8
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6712, i8* %6713, align 1
  %6714 = trunc i64 %6708 to i32
  %6715 = and i32 %6714, 255
  %6716 = call i32 @llvm.ctpop.i32(i32 %6715)
  %6717 = trunc i32 %6716 to i8
  %6718 = and i8 %6717, 1
  %6719 = xor i8 %6718, 1
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6719, i8* %6720, align 1
  %6721 = xor i64 %6705, %6704
  %6722 = xor i64 %6721, %6708
  %6723 = lshr i64 %6722, 4
  %6724 = trunc i64 %6723 to i8
  %6725 = and i8 %6724, 1
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6725, i8* %6726, align 1
  %6727 = icmp eq i64 %6708, 0
  %6728 = zext i1 %6727 to i8
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6728, i8* %6729, align 1
  %6730 = lshr i64 %6708, 63
  %6731 = trunc i64 %6730 to i8
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6731, i8* %6732, align 1
  %6733 = lshr i64 %6704, 63
  %6734 = lshr i64 %6705, 63
  %6735 = xor i64 %6730, %6733
  %6736 = xor i64 %6730, %6734
  %6737 = add i64 %6735, %6736
  %6738 = icmp eq i64 %6737, 2
  %6739 = zext i1 %6738 to i8
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6739, i8* %6740, align 1
  store %struct.Memory* %loadMem_42126e, %struct.Memory** %MEMORY
  %loadMem_421271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 33
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6743 to i64*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 1
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %6746 to i64*
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 5
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6749 to i64*
  %6750 = load i64, i64* %RAX.i17
  %6751 = add i64 %6750, 2
  %6752 = load i64, i64* %PC.i16
  %6753 = add i64 %6752, 4
  store i64 %6753, i64* %PC.i16
  %6754 = inttoptr i64 %6751 to i8*
  %6755 = load i8, i8* %6754
  %6756 = sext i8 %6755 to i64
  %6757 = and i64 %6756, 4294967295
  store i64 %6757, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_421271, %struct.Memory** %MEMORY
  %loadMem_421275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 33
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 1
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %6763 to i64*
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 15
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %6766 to i64*
  %6767 = load i64, i64* %RBP.i15
  %6768 = sub i64 %6767, 40
  %6769 = load i64, i64* %PC.i13
  %6770 = add i64 %6769, 4
  store i64 %6770, i64* %PC.i13
  %6771 = inttoptr i64 %6768 to i64*
  %6772 = load i64, i64* %6771
  store i64 %6772, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_421275, %struct.Memory** %MEMORY
  %loadMem_421279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 33
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 5
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6778 to i32*
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 1
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %6781 to i64*
  %6782 = load i64, i64* %RAX.i12
  %6783 = load i32, i32* %ECX.i
  %6784 = zext i32 %6783 to i64
  %6785 = load i64, i64* %PC.i11
  %6786 = add i64 %6785, 2
  store i64 %6786, i64* %PC.i11
  %6787 = inttoptr i64 %6782 to i32*
  store i32 %6783, i32* %6787
  store %struct.Memory* %loadMem_421279, %struct.Memory** %MEMORY
  %loadMem_42127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6789 = getelementptr inbounds %struct.GPR, %struct.GPR* %6788, i32 0, i32 33
  %6790 = getelementptr inbounds %struct.Reg, %struct.Reg* %6789, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6790 to i64*
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 15
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %6793 to i64*
  %6794 = load i64, i64* %RBP.i10
  %6795 = sub i64 %6794, 4
  %6796 = load i64, i64* %PC.i9
  %6797 = add i64 %6796, 7
  store i64 %6797, i64* %PC.i9
  %6798 = inttoptr i64 %6795 to i32*
  store i32 0, i32* %6798
  store %struct.Memory* %loadMem_42127b, %struct.Memory** %MEMORY
  %loadMem_421282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 33
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6801 to i64*
  %6802 = load i64, i64* %PC.i8
  %6803 = add i64 %6802, 12
  %6804 = load i64, i64* %PC.i8
  %6805 = add i64 %6804, 5
  store i64 %6805, i64* %PC.i8
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6803, i64* %6806, align 8
  store %struct.Memory* %loadMem_421282, %struct.Memory** %MEMORY
  br label %block_.L_42128e

block_.L_421287:                                  ; preds = %block_421078, %block_421054, %block_.L_421030
  %loadMem_421287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6808 = getelementptr inbounds %struct.GPR, %struct.GPR* %6807, i32 0, i32 33
  %6809 = getelementptr inbounds %struct.Reg, %struct.Reg* %6808, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6809 to i64*
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6811 = getelementptr inbounds %struct.GPR, %struct.GPR* %6810, i32 0, i32 15
  %6812 = getelementptr inbounds %struct.Reg, %struct.Reg* %6811, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6812 to i64*
  %6813 = load i64, i64* %RBP.i7
  %6814 = sub i64 %6813, 4
  %6815 = load i64, i64* %PC.i6
  %6816 = add i64 %6815, 7
  store i64 %6816, i64* %PC.i6
  %6817 = inttoptr i64 %6814 to i32*
  store i32 4, i32* %6817
  store %struct.Memory* %loadMem_421287, %struct.Memory** %MEMORY
  br label %block_.L_42128e

block_.L_42128e:                                  ; preds = %block_.L_421287, %block_.L_42123f, %block_.L_4211e3, %block_.L_420fe8, %block_.L_420f8c
  %loadMem_42128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6820 to i64*
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 1
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 15
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %6826 to i64*
  %6827 = load i64, i64* %RBP.i5
  %6828 = sub i64 %6827, 4
  %6829 = load i64, i64* %PC.i4
  %6830 = add i64 %6829, 3
  store i64 %6830, i64* %PC.i4
  %6831 = inttoptr i64 %6828 to i32*
  %6832 = load i32, i32* %6831
  %6833 = zext i32 %6832 to i64
  store i64 %6833, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42128e, %struct.Memory** %MEMORY
  %loadMem_421291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 15
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6839 to i64*
  %6840 = load i64, i64* %PC.i2
  %6841 = add i64 %6840, 1
  store i64 %6841, i64* %PC.i2
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6843 = load i64, i64* %6842, align 8
  %6844 = add i64 %6843, 8
  %6845 = inttoptr i64 %6843 to i64*
  %6846 = load i64, i64* %6845
  store i64 %6846, i64* %RBP.i3, align 8
  store i64 %6844, i64* %6842, align 8
  store %struct.Memory* %loadMem_421291, %struct.Memory** %MEMORY
  %loadMem_421292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 33
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6849 to i64*
  %6850 = load i64, i64* %PC.i1
  %6851 = add i64 %6850, 1
  store i64 %6851, i64* %PC.i1
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6854 = load i64, i64* %6853, align 8
  %6855 = inttoptr i64 %6854 to i64*
  %6856 = load i64, i64* %6855
  store i64 %6856, i64* %6852, align 8
  %6857 = add i64 %6854, 8
  store i64 %6857, i64* %6853, align 8
  store %struct.Memory* %loadMem_421292, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_421292
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

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 1, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62ea14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__0x62ea14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8644f8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x14___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 20, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_0x633b40___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_421030(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8644f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_0x881df4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x8644f8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movsbl_0x1__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsbl__r8b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_movl_0x8667a4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x8667a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsbl_0x3__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_jne_.L_420ede(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jg_.L_420ede(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jge_.L_420ede(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0__0x2__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  %14 = load i8, i8* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_420f05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jl_.L_420fe8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xf404c____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 999500
  %15 = icmp ult i32 %13, 999500
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, 999500
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_420f68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
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

define %struct.Memory* @routine_movl__edx____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_420f8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xfff0bfb4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, -999500
  %15 = icmp ult i32 %13, -999500
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, -999500
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %13, 31
  %37 = xor i32 %36, 1
  %38 = xor i32 %33, %36
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_420f87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = trunc i64 %12 to i32
  %17 = inttoptr i64 %13 to i32*
  %18 = load i32, i32* %17
  %19 = add i32 %18, %16
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8
  %21 = icmp ult i32 %19, %16
  %22 = icmp ult i32 %19, %18
  %23 = or i1 %21, %22
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %18, %16
  %33 = xor i32 %32, %19
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %19, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %16, 31
  %45 = lshr i32 %18, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x3__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42128e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x633b40___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_421287(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x886a70___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*)
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_jne_.L_421135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_421135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_421135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42115c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_42123f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4211bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4211e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4211de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 4, i32* %13
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
