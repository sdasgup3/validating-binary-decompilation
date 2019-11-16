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

declare %struct.Memory* @sub_4438d0.ZeroRef(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @writeMotionInfo2NAL(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_444f40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_444f40, %struct.Memory** %MEMORY
  %loadMem_444f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i143 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i143
  %27 = load i64, i64* %PC.i142
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i142
  store i64 %26, i64* %RBP.i144, align 8
  store %struct.Memory* %loadMem_444f41, %struct.Memory** %MEMORY
  %loadMem_444f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i350 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i350
  %36 = load i64, i64* %PC.i349
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i349
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i350, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_444f44, %struct.Memory** %MEMORY
  %loadMem_444f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i527
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i527
  %75 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %75, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_444f48, %struct.Memory** %MEMORY
  %loadMem_444f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RAX.i679
  %83 = add i64 %82, 14168
  %84 = load i64, i64* %PC.i678
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i678
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_444f50, %struct.Memory** %MEMORY
  %loadMem_444f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RCX.i871 = bitcast %union.anon* %93 to i64*
  %94 = load i64, i64* %PC.i870
  %95 = add i64 %94, 8
  store i64 %95, i64* %PC.i870
  %96 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %96, i64* %RCX.i871, align 8
  store %struct.Memory* %loadMem_444f57, %struct.Memory** %MEMORY
  %loadMem_444f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RCX.i869 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RCX.i869
  %104 = add i64 %103, 12
  %105 = load i64, i64* %PC.i868
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC.i868
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RCX.i869, align 8
  store %struct.Memory* %loadMem_444f5f, %struct.Memory** %MEMORY
  %loadMem_444f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RCX.i867 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RCX.i867
  %117 = load i64, i64* %PC.i866
  %118 = add i64 %117, 7
  store i64 %118, i64* %PC.i866
  %119 = sext i64 %116 to i128
  %120 = and i128 %119, -18446744073709551616
  %121 = zext i64 %116 to i128
  %122 = or i128 %120, %121
  %123 = mul i128 632, %122
  %124 = trunc i128 %123 to i64
  store i64 %124, i64* %RCX.i867, align 8
  %125 = sext i64 %124 to i128
  %126 = icmp ne i128 %125, %123
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1
  %129 = trunc i128 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %136, align 1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %137, align 1
  %138 = lshr i64 %124, 63
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %139, i8* %140, align 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %141, align 1
  store %struct.Memory* %loadMem_444f63, %struct.Memory** %MEMORY
  %loadMem_444f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RCX.i865 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RAX.i864
  %152 = load i64, i64* %RCX.i865
  %153 = load i64, i64* %PC.i863
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i863
  %155 = add i64 %152, %151
  store i64 %155, i64* %RAX.i864, align 8
  %156 = icmp ult i64 %155, %151
  %157 = icmp ult i64 %155, %152
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %159, i8* %160, align 1
  %161 = trunc i64 %155 to i32
  %162 = and i32 %161, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1
  %168 = xor i64 %152, %151
  %169 = xor i64 %168, %155
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %172, i8* %173, align 1
  %174 = icmp eq i64 %155, 0
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %175, i8* %176, align 1
  %177 = lshr i64 %155, 63
  %178 = trunc i64 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %178, i8* %179, align 1
  %180 = lshr i64 %151, 63
  %181 = lshr i64 %152, 63
  %182 = xor i64 %177, %180
  %183 = xor i64 %177, %181
  %184 = add i64 %182, %183
  %185 = icmp eq i64 %184, 2
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %186, i8* %187, align 1
  store %struct.Memory* %loadMem_444f6a, %struct.Memory** %MEMORY
  %loadMem_444f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 15
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RBP.i862 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %RBP.i862
  %198 = sub i64 %197, 24
  %199 = load i64, i64* %RAX.i861
  %200 = load i64, i64* %PC.i860
  %201 = add i64 %200, 4
  store i64 %201, i64* %PC.i860
  %202 = inttoptr i64 %198 to i64*
  store i64 %199, i64* %202
  store %struct.Memory* %loadMem_444f6d, %struct.Memory** %MEMORY
  %loadMem_444f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i859
  %210 = sub i64 %209, 28
  %211 = load i64, i64* %PC.i858
  %212 = add i64 %211, 7
  store i64 %212, i64* %PC.i858
  %213 = inttoptr i64 %210 to i32*
  store i32 0, i32* %213
  store %struct.Memory* %loadMem_444f71, %struct.Memory** %MEMORY
  %loadMem_444f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %PC.i856
  %221 = add i64 %220, 8
  store i64 %221, i64* %PC.i856
  %222 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %222, i64* %RAX.i857, align 8
  store %struct.Memory* %loadMem_444f78, %struct.Memory** %MEMORY
  %loadMem_444f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RAX.i855
  %230 = add i64 %229, 24
  %231 = load i64, i64* %PC.i854
  %232 = add i64 %231, 4
  store i64 %232, i64* %PC.i854
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233
  %235 = sub i32 %234, 1
  %236 = icmp ult i32 %234, 1
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %237, i8* %238, align 1
  %239 = and i32 %235, 255
  %240 = call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %243, i8* %244, align 1
  %245 = xor i32 %234, 1
  %246 = xor i32 %245, %235
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %249, i8* %250, align 1
  %251 = icmp eq i32 %235, 0
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %252, i8* %253, align 1
  %254 = lshr i32 %235, 31
  %255 = trunc i32 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %255, i8* %256, align 1
  %257 = lshr i32 %234, 31
  %258 = xor i32 %254, %257
  %259 = add i32 %258, %257
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %261, i8* %262, align 1
  store %struct.Memory* %loadMem_444f80, %struct.Memory** %MEMORY
  %loadMem_444f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %269 = bitcast %union.anon* %268 to %struct.anon.2*
  %DL.i853 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %269, i32 0, i32 0
  %270 = load i64, i64* %PC.i852
  %271 = add i64 %270, 3
  store i64 %271, i64* %PC.i852
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %273 = load i8, i8* %272, align 1
  store i8 %273, i8* %DL.i853, align 1
  store %struct.Memory* %loadMem_444f84, %struct.Memory** %MEMORY
  %loadMem_444f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %280 = bitcast %union.anon* %279 to %struct.anon.2*
  %DL.i851 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %280, i32 0, i32 0
  %281 = load i8, i8* %DL.i851
  %282 = zext i8 %281 to i64
  %283 = load i64, i64* %PC.i850
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i850
  %285 = and i64 1, %282
  %286 = trunc i64 %285 to i8
  store i8 %286, i8* %DL.i851, align 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %287, align 1
  %288 = trunc i64 %285 to i32
  %289 = and i32 %288, 255
  %290 = call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %293, i8* %294, align 1
  %295 = icmp eq i8 %286, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %298, align 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %299, align 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %300, align 1
  store %struct.Memory* %loadMem_444f87, %struct.Memory** %MEMORY
  %loadMem_444f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %307 = bitcast %union.anon* %306 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %307, i32 0, i32 0
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 9
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RSI.i849 = bitcast %union.anon* %310 to i64*
  %311 = load i8, i8* %DL.i
  %312 = zext i8 %311 to i64
  %313 = load i64, i64* %PC.i848
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i848
  %315 = and i64 %312, 255
  store i64 %315, i64* %RSI.i849, align 8
  store %struct.Memory* %loadMem_444f8a, %struct.Memory** %MEMORY
  %loadMem_444f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %ESI.i846 = bitcast %union.anon* %321 to i32*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i847
  %326 = sub i64 %325, 32
  %327 = load i32, i32* %ESI.i846
  %328 = zext i32 %327 to i64
  %329 = load i64, i64* %PC.i845
  %330 = add i64 %329, 3
  store i64 %330, i64* %PC.i845
  %331 = inttoptr i64 %326 to i32*
  store i32 %327, i32* %331
  store %struct.Memory* %loadMem_444f8d, %struct.Memory** %MEMORY
  %loadMem_444f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RAX.i844 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i843
  %339 = add i64 %338, 8
  store i64 %339, i64* %PC.i843
  %340 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %340, i64* %RAX.i844, align 8
  store %struct.Memory* %loadMem_444f90, %struct.Memory** %MEMORY
  %loadMem_444f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %RAX.i842
  %348 = load i64, i64* %PC.i841
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC.i841
  %350 = add i64 80, %347
  store i64 %350, i64* %RAX.i842, align 8
  %351 = icmp ult i64 %350, %347
  %352 = icmp ult i64 %350, 80
  %353 = or i1 %351, %352
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %354, i8* %355, align 1
  %356 = trunc i64 %350 to i32
  %357 = and i32 %356, 255
  %358 = call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %361, i8* %362, align 1
  %363 = xor i64 80, %347
  %364 = xor i64 %363, %350
  %365 = lshr i64 %364, 4
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %367, i8* %368, align 1
  %369 = icmp eq i64 %350, 0
  %370 = zext i1 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %370, i8* %371, align 1
  %372 = lshr i64 %350, 63
  %373 = trunc i64 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %373, i8* %374, align 1
  %375 = lshr i64 %347, 63
  %376 = xor i64 %372, %375
  %377 = add i64 %376, %372
  %378 = icmp eq i64 %377, 2
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %379, i8* %380, align 1
  store %struct.Memory* %loadMem_444f98, %struct.Memory** %MEMORY
  %loadMem_444f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 33
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RCX.i839 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 15
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %389 to i64*
  %390 = load i64, i64* %RBP.i840
  %391 = sub i64 %390, 24
  %392 = load i64, i64* %PC.i838
  %393 = add i64 %392, 4
  store i64 %393, i64* %PC.i838
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394
  store i64 %395, i64* %RCX.i839, align 8
  store %struct.Memory* %loadMem_444f9c, %struct.Memory** %MEMORY
  %loadMem_444fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RCX.i837 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RCX.i837
  %403 = add i64 %402, 72
  %404 = load i64, i64* %PC.i836
  %405 = add i64 %404, 4
  store i64 %405, i64* %PC.i836
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = sub i32 %407, 8
  %409 = icmp ult i32 %407, 8
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
  %418 = xor i32 %407, 8
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
  store %struct.Memory* %loadMem_444fa0, %struct.Memory** %MEMORY
  %loadMem_444fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i835
  %446 = sub i64 %445, 48
  %447 = load i64, i64* %RAX.i834
  %448 = load i64, i64* %PC.i833
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC.i833
  %450 = inttoptr i64 %446 to i64*
  store i64 %447, i64* %450
  store %struct.Memory* %loadMem_444fa4, %struct.Memory** %MEMORY
  %loadMem_444fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i832
  %455 = add i64 %454, 19
  %456 = load i64, i64* %PC.i832
  %457 = add i64 %456, 6
  %458 = load i64, i64* %PC.i832
  %459 = add i64 %458, 6
  store i64 %459, i64* %PC.i832
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %461 = load i8, i8* %460, align 1
  %462 = icmp eq i8 %461, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %BRANCH_TAKEN, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %465 = select i1 %462, i64 %455, i64 %457
  store i64 %465, i64* %464, align 8
  store %struct.Memory* %loadMem_444fa8, %struct.Memory** %MEMORY
  %loadBr_444fa8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444fa8 = icmp eq i8 %loadBr_444fa8, 1
  br i1 %cmpBr_444fa8, label %block_.L_444fbb, label %block_444fae

block_444fae:                                     ; preds = %entry
  %loadMem_444fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %PC.i830
  %473 = add i64 %472, 5
  store i64 %473, i64* %PC.i830
  store i64 4, i64* %RAX.i831, align 8
  store %struct.Memory* %loadMem_444fae, %struct.Memory** %MEMORY
  %loadMem_444fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %EAX.i828 = bitcast %union.anon* %479 to i32*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RBP.i829
  %484 = sub i64 %483, 52
  %485 = load i32, i32* %EAX.i828
  %486 = zext i32 %485 to i64
  %487 = load i64, i64* %PC.i827
  %488 = add i64 %487, 3
  store i64 %488, i64* %PC.i827
  %489 = inttoptr i64 %484 to i32*
  store i32 %485, i32* %489
  store %struct.Memory* %loadMem_444fb3, %struct.Memory** %MEMORY
  %loadMem_444fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %PC.i826
  %494 = add i64 %493, 15
  %495 = load i64, i64* %PC.i826
  %496 = add i64 %495, 5
  store i64 %496, i64* %PC.i826
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %494, i64* %497, align 8
  store %struct.Memory* %loadMem_444fb6, %struct.Memory** %MEMORY
  br label %block_.L_444fc5

block_.L_444fbb:                                  ; preds = %entry
  %loadMem_444fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i825
  %508 = sub i64 %507, 24
  %509 = load i64, i64* %PC.i823
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i823
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RAX.i824, align 8
  store %struct.Memory* %loadMem_444fbb, %struct.Memory** %MEMORY
  %loadMem_444fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RAX.i821
  %523 = add i64 %522, 72
  %524 = load i64, i64* %PC.i820
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC.i820
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX.i822, align 8
  store %struct.Memory* %loadMem_444fbf, %struct.Memory** %MEMORY
  %loadMem_444fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %ECX.i818 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i819
  %539 = sub i64 %538, 52
  %540 = load i32, i32* %ECX.i818
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i817
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC.i817
  %544 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %544
  store %struct.Memory* %loadMem_444fc2, %struct.Memory** %MEMORY
  br label %block_.L_444fc5

block_.L_444fc5:                                  ; preds = %block_.L_444fbb, %block_444fae
  %loadMem_444fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 1
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RAX.i815 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i816
  %555 = sub i64 %554, 52
  %556 = load i64, i64* %PC.i814
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i814
  %558 = inttoptr i64 %555 to i32*
  %559 = load i32, i32* %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RAX.i815, align 8
  store %struct.Memory* %loadMem_444fc5, %struct.Memory** %MEMORY
  %loadMem_444fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %EAX.i812 = bitcast %union.anon* %566 to i32*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %569 to i64*
  %570 = load i32, i32* %EAX.i812
  %571 = zext i32 %570 to i64
  %572 = load i64, i64* %PC.i811
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC.i811
  %574 = shl i64 %571, 32
  %575 = ashr exact i64 %574, 32
  store i64 %575, i64* %RCX.i813, align 8
  store %struct.Memory* %loadMem_444fc8, %struct.Memory** %MEMORY
  %loadMem_444fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 7
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RDX.i809 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 15
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %584 to i64*
  %585 = load i64, i64* %RBP.i810
  %586 = sub i64 %585, 48
  %587 = load i64, i64* %PC.i808
  %588 = add i64 %587, 4
  store i64 %588, i64* %PC.i808
  %589 = inttoptr i64 %586 to i64*
  %590 = load i64, i64* %589
  store i64 %590, i64* %RDX.i809, align 8
  store %struct.Memory* %loadMem_444fcb, %struct.Memory** %MEMORY
  %loadMem_444fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RAX.i805 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 5
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 7
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RDX.i807 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RDX.i807
  %604 = load i64, i64* %RCX.i806
  %605 = mul i64 %604, 8
  %606 = add i64 %605, %603
  %607 = load i64, i64* %PC.i804
  %608 = add i64 %607, 3
  store i64 %608, i64* %PC.i804
  %609 = inttoptr i64 %606 to i32*
  %610 = load i32, i32* %609
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i805, align 8
  store %struct.Memory* %loadMem_444fcf, %struct.Memory** %MEMORY
  %loadMem_444fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RAX.i803
  %619 = load i64, i64* %PC.i802
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC.i802
  %621 = shl i64 %618, 32
  %622 = ashr exact i64 %621, 32
  %623 = ashr i64 %622, 1
  %624 = lshr i64 %623, 1
  %625 = trunc i64 %623 to i8
  %626 = and i8 %625, 1
  %627 = trunc i64 %624 to i32
  %628 = and i64 %624, 4294967295
  store i64 %628, i64* %RAX.i803, align 8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %626, i8* %629, align 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %631 = and i32 %627, 255
  %632 = call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %630, align 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %636, align 1
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %638 = icmp eq i32 %627, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %637, align 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %641 = lshr i32 %627, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %640, align 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %643, align 1
  store %struct.Memory* %loadMem_444fd2, %struct.Memory** %MEMORY
  %loadMem_444fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %EAX.i800 = bitcast %union.anon* %649 to i32*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RBP.i801
  %654 = sub i64 %653, 36
  %655 = load i32, i32* %EAX.i800
  %656 = zext i32 %655 to i64
  %657 = load i64, i64* %PC.i799
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC.i799
  %659 = inttoptr i64 %654 to i32*
  store i32 %655, i32* %659
  store %struct.Memory* %loadMem_444fd5, %struct.Memory** %MEMORY
  %loadMem_444fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 5
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %PC.i797
  %667 = add i64 %666, 8
  store i64 %667, i64* %PC.i797
  %668 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %668, i64* %RCX.i798, align 8
  store %struct.Memory* %loadMem_444fd8, %struct.Memory** %MEMORY
  %loadMem_444fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 5
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %RCX.i796
  %676 = load i64, i64* %PC.i795
  %677 = add i64 %676, 4
  store i64 %677, i64* %PC.i795
  %678 = add i64 80, %675
  store i64 %678, i64* %RCX.i796, align 8
  %679 = icmp ult i64 %678, %675
  %680 = icmp ult i64 %678, 80
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = trunc i64 %678 to i32
  %685 = and i32 %684, 255
  %686 = call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %689, i8* %690, align 1
  %691 = xor i64 80, %675
  %692 = xor i64 %691, %678
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %695, i8* %696, align 1
  %697 = icmp eq i64 %678, 0
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %698, i8* %699, align 1
  %700 = lshr i64 %678, 63
  %701 = trunc i64 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %701, i8* %702, align 1
  %703 = lshr i64 %675, 63
  %704 = xor i64 %700, %703
  %705 = add i64 %704, %700
  %706 = icmp eq i64 %705, 2
  %707 = zext i1 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %707, i8* %708, align 1
  store %struct.Memory* %loadMem_444fe0, %struct.Memory** %MEMORY
  %loadMem_444fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 9
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RSI.i793 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i794
  %719 = sub i64 %718, 24
  %720 = load i64, i64* %PC.i792
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i792
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RSI.i793, align 8
  store %struct.Memory* %loadMem_444fe4, %struct.Memory** %MEMORY
  %loadMem_444fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 9
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RSI.i791 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RSI.i791
  %731 = add i64 %730, 72
  %732 = load i64, i64* %PC.i790
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC.i790
  %734 = inttoptr i64 %731 to i32*
  %735 = load i32, i32* %734
  %736 = sub i32 %735, 8
  %737 = icmp ult i32 %735, 8
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %738, i8* %739, align 1
  %740 = and i32 %736, 255
  %741 = call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %744, i8* %745, align 1
  %746 = xor i32 %735, 8
  %747 = xor i32 %746, %736
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %750, i8* %751, align 1
  %752 = icmp eq i32 %736, 0
  %753 = zext i1 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %753, i8* %754, align 1
  %755 = lshr i32 %736, 31
  %756 = trunc i32 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %735, 31
  %759 = xor i32 %755, %758
  %760 = add i32 %759, %758
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %762, i8* %763, align 1
  store %struct.Memory* %loadMem_444fe8, %struct.Memory** %MEMORY
  %loadMem_444fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 5
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 15
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RBP.i789
  %774 = sub i64 %773, 64
  %775 = load i64, i64* %RCX.i788
  %776 = load i64, i64* %PC.i787
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC.i787
  %778 = inttoptr i64 %774 to i64*
  store i64 %775, i64* %778
  store %struct.Memory* %loadMem_444fec, %struct.Memory** %MEMORY
  %loadMem_444ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %781 to i64*
  %782 = load i64, i64* %PC.i786
  %783 = add i64 %782, 19
  %784 = load i64, i64* %PC.i786
  %785 = add i64 %784, 6
  %786 = load i64, i64* %PC.i786
  %787 = add i64 %786, 6
  store i64 %787, i64* %PC.i786
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %789 = load i8, i8* %788, align 1
  %790 = icmp eq i8 %789, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %BRANCH_TAKEN, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %793 = select i1 %790, i64 %783, i64 %785
  store i64 %793, i64* %792, align 8
  store %struct.Memory* %loadMem_444ff0, %struct.Memory** %MEMORY
  %loadBr_444ff0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444ff0 = icmp eq i8 %loadBr_444ff0, 1
  br i1 %cmpBr_444ff0, label %block_.L_445003, label %block_444ff6

block_444ff6:                                     ; preds = %block_.L_444fc5
  %loadMem_444ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %PC.i784
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC.i784
  store i64 4, i64* %RAX.i785, align 8
  store %struct.Memory* %loadMem_444ff6, %struct.Memory** %MEMORY
  %loadMem_444ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %EAX.i782 = bitcast %union.anon* %807 to i32*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 15
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RBP.i783
  %812 = sub i64 %811, 68
  %813 = load i32, i32* %EAX.i782
  %814 = zext i32 %813 to i64
  %815 = load i64, i64* %PC.i781
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC.i781
  %817 = inttoptr i64 %812 to i32*
  store i32 %813, i32* %817
  store %struct.Memory* %loadMem_444ffb, %struct.Memory** %MEMORY
  %loadMem_444ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i780
  %822 = add i64 %821, 15
  %823 = load i64, i64* %PC.i780
  %824 = add i64 %823, 5
  store i64 %824, i64* %PC.i780
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %822, i64* %825, align 8
  store %struct.Memory* %loadMem_444ffe, %struct.Memory** %MEMORY
  br label %block_.L_44500d

block_.L_445003:                                  ; preds = %block_.L_444fc5
  %loadMem_445003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i779
  %836 = sub i64 %835, 24
  %837 = load i64, i64* %PC.i777
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i777
  %839 = inttoptr i64 %836 to i64*
  %840 = load i64, i64* %839
  store i64 %840, i64* %RAX.i778, align 8
  store %struct.Memory* %loadMem_445003, %struct.Memory** %MEMORY
  %loadMem_445007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RAX.i775
  %851 = add i64 %850, 72
  %852 = load i64, i64* %PC.i774
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i774
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RCX.i776, align 8
  store %struct.Memory* %loadMem_445007, %struct.Memory** %MEMORY
  %loadMem_44500a = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 5
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %ECX.i772 = bitcast %union.anon* %862 to i32*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RBP.i773
  %867 = sub i64 %866, 68
  %868 = load i32, i32* %ECX.i772
  %869 = zext i32 %868 to i64
  %870 = load i64, i64* %PC.i771
  %871 = add i64 %870, 3
  store i64 %871, i64* %PC.i771
  %872 = inttoptr i64 %867 to i32*
  store i32 %868, i32* %872
  store %struct.Memory* %loadMem_44500a, %struct.Memory** %MEMORY
  br label %block_.L_44500d

block_.L_44500d:                                  ; preds = %block_.L_445003, %block_444ff6
  %loadMem_44500d = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 15
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RBP.i770
  %883 = sub i64 %882, 68
  %884 = load i64, i64* %PC.i768
  %885 = add i64 %884, 3
  store i64 %885, i64* %PC.i768
  %886 = inttoptr i64 %883 to i32*
  %887 = load i32, i32* %886
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i769, align 8
  store %struct.Memory* %loadMem_44500d, %struct.Memory** %MEMORY
  %loadMem_445010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 1
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %EAX.i766 = bitcast %union.anon* %894 to i32*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 5
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %897 to i64*
  %898 = load i32, i32* %EAX.i766
  %899 = zext i32 %898 to i64
  %900 = load i64, i64* %PC.i765
  %901 = add i64 %900, 3
  store i64 %901, i64* %PC.i765
  %902 = shl i64 %899, 32
  %903 = ashr exact i64 %902, 32
  store i64 %903, i64* %RCX.i767, align 8
  store %struct.Memory* %loadMem_445010, %struct.Memory** %MEMORY
  %loadMem_445013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 7
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RDX.i763 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i764
  %914 = sub i64 %913, 64
  %915 = load i64, i64* %PC.i762
  %916 = add i64 %915, 4
  store i64 %916, i64* %PC.i762
  %917 = inttoptr i64 %914 to i64*
  %918 = load i64, i64* %917
  store i64 %918, i64* %RDX.i763, align 8
  store %struct.Memory* %loadMem_445013, %struct.Memory** %MEMORY
  %loadMem_445017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 5
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RCX.i760 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 7
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RDX.i761 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %RDX.i761
  %932 = load i64, i64* %RCX.i760
  %933 = mul i64 %932, 8
  %934 = add i64 %931, 4
  %935 = add i64 %934, %933
  %936 = load i64, i64* %PC.i758
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC.i758
  %938 = inttoptr i64 %935 to i32*
  %939 = load i32, i32* %938
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX.i759, align 8
  store %struct.Memory* %loadMem_445017, %struct.Memory** %MEMORY
  %loadMem_44501b = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 1
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RAX.i757
  %948 = load i64, i64* %PC.i756
  %949 = add i64 %948, 3
  store i64 %949, i64* %PC.i756
  %950 = shl i64 %947, 32
  %951 = ashr exact i64 %950, 32
  %952 = ashr i64 %951, 1
  %953 = lshr i64 %952, 1
  %954 = trunc i64 %952 to i8
  %955 = and i8 %954, 1
  %956 = trunc i64 %953 to i32
  %957 = and i64 %953, 4294967295
  store i64 %957, i64* %RAX.i757, align 8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %955, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %960 = and i32 %956, 255
  %961 = call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %959, align 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %965, align 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %967 = icmp eq i32 %956, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %966, align 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %970 = lshr i32 %956, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %969, align 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %972, align 1
  store %struct.Memory* %loadMem_44501b, %struct.Memory** %MEMORY
  %loadMem_44501e = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 1
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %978 to i32*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i755
  %983 = sub i64 %982, 40
  %984 = load i32, i32* %EAX.i754
  %985 = zext i32 %984 to i64
  %986 = load i64, i64* %PC.i753
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i753
  %988 = inttoptr i64 %983 to i32*
  store i32 %984, i32* %988
  store %struct.Memory* %loadMem_44501e, %struct.Memory** %MEMORY
  %loadMem_445021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 5
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RCX.i751 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i752
  %999 = sub i64 %998, 24
  %1000 = load i64, i64* %PC.i750
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC.i750
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RCX.i751, align 8
  store %struct.Memory* %loadMem_445021, %struct.Memory** %MEMORY
  %loadMem_445025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 5
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RCX.i749 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RCX.i749
  %1011 = add i64 %1010, 72
  %1012 = load i64, i64* %PC.i748
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC.i748
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sub i32 %1015, 9
  %1017 = icmp ult i32 %1015, 9
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1018, i8* %1019, align 1
  %1020 = and i32 %1016, 255
  %1021 = call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1024, i8* %1025, align 1
  %1026 = xor i32 %1015, 9
  %1027 = xor i32 %1026, %1016
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1030, i8* %1031, align 1
  %1032 = icmp eq i32 %1016, 0
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = trunc i32 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1036, i8* %1037, align 1
  %1038 = lshr i32 %1015, 31
  %1039 = xor i32 %1035, %1038
  %1040 = add i32 %1039, %1038
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1042, i8* %1043, align 1
  store %struct.Memory* %loadMem_445025, %struct.Memory** %MEMORY
  %loadMem_445029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %PC.i747
  %1048 = add i64 %1047, 667
  %1049 = load i64, i64* %PC.i747
  %1050 = add i64 %1049, 6
  %1051 = load i64, i64* %PC.i747
  %1052 = add i64 %1051, 6
  store i64 %1052, i64* %PC.i747
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1054 = load i8, i8* %1053, align 1
  store i8 %1054, i8* %BRANCH_TAKEN, align 1
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1056 = icmp ne i8 %1054, 0
  %1057 = select i1 %1056, i64 %1048, i64 %1050
  store i64 %1057, i64* %1055, align 8
  store %struct.Memory* %loadMem_445029, %struct.Memory** %MEMORY
  %loadBr_445029 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445029 = icmp eq i8 %loadBr_445029, 1
  br i1 %cmpBr_445029, label %block_.L_4452c4, label %block_44502f

block_44502f:                                     ; preds = %block_.L_44500d
  %loadMem_44502f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 1
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RBP.i746
  %1068 = sub i64 %1067, 24
  %1069 = load i64, i64* %PC.i744
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i744
  %1071 = inttoptr i64 %1068 to i64*
  %1072 = load i64, i64* %1071
  store i64 %1072, i64* %RAX.i745, align 8
  store %struct.Memory* %loadMem_44502f, %struct.Memory** %MEMORY
  %loadMem_445033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RAX.i743
  %1080 = add i64 %1079, 72
  %1081 = load i64, i64* %PC.i742
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC.i742
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = sub i32 %1084, 10
  %1086 = icmp ult i32 %1084, 10
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1087, i8* %1088, align 1
  %1089 = and i32 %1085, 255
  %1090 = call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1093, i8* %1094, align 1
  %1095 = xor i32 %1084, 10
  %1096 = xor i32 %1095, %1085
  %1097 = lshr i32 %1096, 4
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1099, i8* %1100, align 1
  %1101 = icmp eq i32 %1085, 0
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1102, i8* %1103, align 1
  %1104 = lshr i32 %1085, 31
  %1105 = trunc i32 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1105, i8* %1106, align 1
  %1107 = lshr i32 %1084, 31
  %1108 = xor i32 %1104, %1107
  %1109 = add i32 %1108, %1107
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1111, i8* %1112, align 1
  store %struct.Memory* %loadMem_445033, %struct.Memory** %MEMORY
  %loadMem_445037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %PC.i741
  %1117 = add i64 %1116, 653
  %1118 = load i64, i64* %PC.i741
  %1119 = add i64 %1118, 6
  %1120 = load i64, i64* %PC.i741
  %1121 = add i64 %1120, 6
  store i64 %1121, i64* %PC.i741
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1123 = load i8, i8* %1122, align 1
  store i8 %1123, i8* %BRANCH_TAKEN, align 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1125 = icmp ne i8 %1123, 0
  %1126 = select i1 %1125, i64 %1117, i64 %1119
  store i64 %1126, i64* %1124, align 8
  store %struct.Memory* %loadMem_445037, %struct.Memory** %MEMORY
  %loadBr_445037 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445037 = icmp eq i8 %loadBr_445037, 1
  br i1 %cmpBr_445037, label %block_.L_4452c4, label %block_44503d

block_44503d:                                     ; preds = %block_44502f
  %loadMem_44503d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 15
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %RBP.i740
  %1137 = sub i64 %1136, 24
  %1138 = load i64, i64* %PC.i738
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC.i738
  %1140 = inttoptr i64 %1137 to i64*
  %1141 = load i64, i64* %1140
  store i64 %1141, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_44503d, %struct.Memory** %MEMORY
  %loadMem_445041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 1
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RAX.i737
  %1149 = add i64 %1148, 72
  %1150 = load i64, i64* %PC.i736
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC.i736
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = sub i32 %1153, 13
  %1155 = icmp ult i32 %1153, 13
  %1156 = zext i1 %1155 to i8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1156, i8* %1157, align 1
  %1158 = and i32 %1154, 255
  %1159 = call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1162, i8* %1163, align 1
  %1164 = xor i32 %1153, 13
  %1165 = xor i32 %1164, %1154
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1168, i8* %1169, align 1
  %1170 = icmp eq i32 %1154, 0
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1171, i8* %1172, align 1
  %1173 = lshr i32 %1154, 31
  %1174 = trunc i32 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i32 %1153, 31
  %1177 = xor i32 %1173, %1176
  %1178 = add i32 %1177, %1176
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1180, i8* %1181, align 1
  store %struct.Memory* %loadMem_445041, %struct.Memory** %MEMORY
  %loadMem_445045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %PC.i735
  %1186 = add i64 %1185, 639
  %1187 = load i64, i64* %PC.i735
  %1188 = add i64 %1187, 6
  %1189 = load i64, i64* %PC.i735
  %1190 = add i64 %1189, 6
  store i64 %1190, i64* %PC.i735
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1192 = load i8, i8* %1191, align 1
  store i8 %1192, i8* %BRANCH_TAKEN, align 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1194 = icmp ne i8 %1192, 0
  %1195 = select i1 %1194, i64 %1186, i64 %1188
  store i64 %1195, i64* %1193, align 8
  store %struct.Memory* %loadMem_445045, %struct.Memory** %MEMORY
  %loadBr_445045 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445045 = icmp eq i8 %loadBr_445045, 1
  br i1 %cmpBr_445045, label %block_.L_4452c4, label %block_44504b

block_44504b:                                     ; preds = %block_44503d
  %loadMem_44504b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 1
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 15
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RBP.i734
  %1206 = sub i64 %1205, 24
  %1207 = load i64, i64* %PC.i732
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %PC.i732
  %1209 = inttoptr i64 %1206 to i64*
  %1210 = load i64, i64* %1209
  store i64 %1210, i64* %RAX.i733, align 8
  store %struct.Memory* %loadMem_44504b, %struct.Memory** %MEMORY
  %loadMem_44504f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RAX.i731
  %1218 = add i64 %1217, 72
  %1219 = load i64, i64* %PC.i730
  %1220 = add i64 %1219, 4
  store i64 %1220, i64* %PC.i730
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1223, align 1
  %1224 = and i32 %1222, 255
  %1225 = call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1228, i8* %1229, align 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1230, align 1
  %1231 = icmp eq i32 %1222, 0
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1232, i8* %1233, align 1
  %1234 = lshr i32 %1222, 31
  %1235 = trunc i32 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1222, 31
  %1238 = xor i32 %1234, %1237
  %1239 = add i32 %1238, %1237
  %1240 = icmp eq i32 %1239, 2
  %1241 = zext i1 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1241, i8* %1242, align 1
  store %struct.Memory* %loadMem_44504f, %struct.Memory** %MEMORY
  %loadMem_445053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1245 to i64*
  %1246 = load i64, i64* %PC.i729
  %1247 = add i64 %1246, 625
  %1248 = load i64, i64* %PC.i729
  %1249 = add i64 %1248, 6
  %1250 = load i64, i64* %PC.i729
  %1251 = add i64 %1250, 6
  store i64 %1251, i64* %PC.i729
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1253 = load i8, i8* %1252, align 1
  store i8 %1253, i8* %BRANCH_TAKEN, align 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1255 = icmp ne i8 %1253, 0
  %1256 = select i1 %1255, i64 %1247, i64 %1249
  store i64 %1256, i64* %1254, align 8
  store %struct.Memory* %loadMem_445053, %struct.Memory** %MEMORY
  %loadBr_445053 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445053 = icmp eq i8 %loadBr_445053, 1
  br i1 %cmpBr_445053, label %block_.L_4452c4, label %block_445059

block_445059:                                     ; preds = %block_44504b
  %loadMem_445059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 1
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 15
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %1265 to i64*
  %1266 = load i64, i64* %RBP.i728
  %1267 = sub i64 %1266, 24
  %1268 = load i64, i64* %PC.i726
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %PC.i726
  %1270 = inttoptr i64 %1267 to i64*
  %1271 = load i64, i64* %1270
  store i64 %1271, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_445059, %struct.Memory** %MEMORY
  %loadMem_44505d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %RAX.i725
  %1279 = add i64 %1278, 72
  %1280 = load i64, i64* %PC.i724
  %1281 = add i64 %1280, 4
  store i64 %1281, i64* %PC.i724
  %1282 = inttoptr i64 %1279 to i32*
  %1283 = load i32, i32* %1282
  %1284 = sub i32 %1283, 8
  %1285 = icmp ult i32 %1283, 8
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1287, align 1
  %1288 = and i32 %1284, 255
  %1289 = call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1292, i8* %1293, align 1
  %1294 = xor i32 %1283, 8
  %1295 = xor i32 %1294, %1284
  %1296 = lshr i32 %1295, 4
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1298, i8* %1299, align 1
  %1300 = icmp eq i32 %1284, 0
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1301, i8* %1302, align 1
  %1303 = lshr i32 %1284, 31
  %1304 = trunc i32 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1304, i8* %1305, align 1
  %1306 = lshr i32 %1283, 31
  %1307 = xor i32 %1303, %1306
  %1308 = add i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1310, i8* %1311, align 1
  store %struct.Memory* %loadMem_44505d, %struct.Memory** %MEMORY
  %loadMem_445061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %PC.i723
  %1316 = add i64 %1315, 55
  %1317 = load i64, i64* %PC.i723
  %1318 = add i64 %1317, 6
  %1319 = load i64, i64* %PC.i723
  %1320 = add i64 %1319, 6
  store i64 %1320, i64* %PC.i723
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1322 = load i8, i8* %1321, align 1
  %1323 = icmp eq i8 %1322, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %BRANCH_TAKEN, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1326 = select i1 %1323, i64 %1316, i64 %1318
  store i64 %1326, i64* %1325, align 8
  store %struct.Memory* %loadMem_445061, %struct.Memory** %MEMORY
  %loadBr_445061 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445061 = icmp eq i8 %loadBr_445061, 1
  br i1 %cmpBr_445061, label %block_.L_445098, label %block_445067

block_445067:                                     ; preds = %block_445059
  %loadMem_445067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 11
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RDI.i721 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 15
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %RBP.i722
  %1337 = sub i64 %1336, 24
  %1338 = load i64, i64* %PC.i720
  %1339 = add i64 %1338, 4
  store i64 %1339, i64* %PC.i720
  %1340 = inttoptr i64 %1337 to i64*
  %1341 = load i64, i64* %1340
  store i64 %1341, i64* %RDI.i721, align 8
  store %struct.Memory* %loadMem_445067, %struct.Memory** %MEMORY
  %loadMem1_44506b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %PC.i719
  %1346 = add i64 %1345, -6043
  %1347 = load i64, i64* %PC.i719
  %1348 = add i64 %1347, 5
  %1349 = load i64, i64* %PC.i719
  %1350 = add i64 %1349, 5
  store i64 %1350, i64* %PC.i719
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1352 = load i64, i64* %1351, align 8
  %1353 = add i64 %1352, -8
  %1354 = inttoptr i64 %1353 to i64*
  store i64 %1348, i64* %1354
  store i64 %1353, i64* %1351, align 8
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1346, i64* %1355, align 8
  store %struct.Memory* %loadMem1_44506b, %struct.Memory** %MEMORY
  %loadMem2_44506b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44506b = load i64, i64* %3
  %call2_44506b = call %struct.Memory* @sub_4438d0.ZeroRef(%struct.State* %0, i64 %loadPC_44506b, %struct.Memory* %loadMem2_44506b)
  store %struct.Memory* %call2_44506b, %struct.Memory** %MEMORY
  %loadMem_445070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 33
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 1
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %EAX.i718 = bitcast %union.anon* %1361 to i32*
  %1362 = load i32, i32* %EAX.i718
  %1363 = zext i32 %1362 to i64
  %1364 = load i64, i64* %PC.i717
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC.i717
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1366, align 1
  %1367 = and i32 %1362, 255
  %1368 = call i32 @llvm.ctpop.i32(i32 %1367)
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1371, i8* %1372, align 1
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1373, align 1
  %1374 = icmp eq i32 %1362, 0
  %1375 = zext i1 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1375, i8* %1376, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = trunc i32 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1378, i8* %1379, align 1
  %1380 = lshr i32 %1362, 31
  %1381 = xor i32 %1377, %1380
  %1382 = add i32 %1381, %1380
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1384, i8* %1385, align 1
  store %struct.Memory* %loadMem_445070, %struct.Memory** %MEMORY
  %loadMem_445073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %PC.i716
  %1390 = add i64 %1389, 37
  %1391 = load i64, i64* %PC.i716
  %1392 = add i64 %1391, 6
  %1393 = load i64, i64* %PC.i716
  %1394 = add i64 %1393, 6
  store i64 %1394, i64* %PC.i716
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1396 = load i8, i8* %1395, align 1
  store i8 %1396, i8* %BRANCH_TAKEN, align 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1398 = icmp ne i8 %1396, 0
  %1399 = select i1 %1398, i64 %1390, i64 %1392
  store i64 %1399, i64* %1397, align 8
  store %struct.Memory* %loadMem_445073, %struct.Memory** %MEMORY
  %loadBr_445073 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445073 = icmp eq i8 %loadBr_445073, 1
  br i1 %cmpBr_445073, label %block_.L_445098, label %block_445079

block_445079:                                     ; preds = %block_445067
  %loadMem_445079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %PC.i714
  %1407 = add i64 %1406, 8
  store i64 %1407, i64* %PC.i714
  %1408 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1408, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_445079, %struct.Memory** %MEMORY
  %loadMem_445081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RAX.i713
  %1416 = add i64 %1415, 2356
  %1417 = load i64, i64* %PC.i712
  %1418 = add i64 %1417, 7
  store i64 %1418, i64* %PC.i712
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419
  %1421 = sub i32 %1420, 1
  %1422 = icmp ult i32 %1420, 1
  %1423 = zext i1 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1423, i8* %1424, align 1
  %1425 = and i32 %1421, 255
  %1426 = call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1429, i8* %1430, align 1
  %1431 = xor i32 %1420, 1
  %1432 = xor i32 %1431, %1421
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1
  %1437 = icmp eq i32 %1421, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i32 %1421, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i32 %1420, 31
  %1444 = xor i32 %1440, %1443
  %1445 = add i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1447, i8* %1448, align 1
  store %struct.Memory* %loadMem_445081, %struct.Memory** %MEMORY
  %loadMem_445088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %PC.i711
  %1453 = add i64 %1452, 16
  %1454 = load i64, i64* %PC.i711
  %1455 = add i64 %1454, 6
  %1456 = load i64, i64* %PC.i711
  %1457 = add i64 %1456, 6
  store i64 %1457, i64* %PC.i711
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1459 = load i8, i8* %1458, align 1
  store i8 %1459, i8* %BRANCH_TAKEN, align 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1461 = icmp ne i8 %1459, 0
  %1462 = select i1 %1461, i64 %1453, i64 %1455
  store i64 %1462, i64* %1460, align 8
  store %struct.Memory* %loadMem_445088, %struct.Memory** %MEMORY
  %loadBr_445088 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445088 = icmp eq i8 %loadBr_445088, 1
  br i1 %cmpBr_445088, label %block_.L_445098, label %block_44508e

block_44508e:                                     ; preds = %block_445079
  %loadMem_44508e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 15
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %1468 to i64*
  %1469 = load i64, i64* %RBP.i710
  %1470 = sub i64 %1469, 32
  %1471 = load i64, i64* %PC.i709
  %1472 = add i64 %1471, 4
  store i64 %1472, i64* %PC.i709
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1475, align 1
  %1476 = and i32 %1474, 255
  %1477 = call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1480, i8* %1481, align 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1482, align 1
  %1483 = icmp eq i32 %1474, 0
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1484, i8* %1485, align 1
  %1486 = lshr i32 %1474, 31
  %1487 = trunc i32 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1487, i8* %1488, align 1
  %1489 = lshr i32 %1474, 31
  %1490 = xor i32 %1486, %1489
  %1491 = add i32 %1490, %1489
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1493, i8* %1494, align 1
  store %struct.Memory* %loadMem_44508e, %struct.Memory** %MEMORY
  %loadMem_445092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %PC.i708
  %1499 = add i64 %1498, 557
  %1500 = load i64, i64* %PC.i708
  %1501 = add i64 %1500, 6
  %1502 = load i64, i64* %PC.i708
  %1503 = add i64 %1502, 6
  store i64 %1503, i64* %PC.i708
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1505 = load i8, i8* %1504, align 1
  store i8 %1505, i8* %BRANCH_TAKEN, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1507 = icmp ne i8 %1505, 0
  %1508 = select i1 %1507, i64 %1499, i64 %1501
  store i64 %1508, i64* %1506, align 8
  store %struct.Memory* %loadMem_445092, %struct.Memory** %MEMORY
  %loadBr_445092 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445092 = icmp eq i8 %loadBr_445092, 1
  br i1 %cmpBr_445092, label %block_.L_4452bf, label %block_.L_445098

block_.L_445098:                                  ; preds = %block_44508e, %block_445079, %block_445067, %block_445059
  %loadMem_445098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 15
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RBP.i707
  %1516 = sub i64 %1515, 8
  %1517 = load i64, i64* %PC.i706
  %1518 = add i64 %1517, 7
  store i64 %1518, i64* %PC.i706
  %1519 = inttoptr i64 %1516 to i32*
  store i32 0, i32* %1519
  store %struct.Memory* %loadMem_445098, %struct.Memory** %MEMORY
  br label %block_.L_44509f

block_.L_44509f:                                  ; preds = %block_.L_44519c, %block_.L_445098
  %loadMem_44509f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i705
  %1527 = sub i64 %1526, 8
  %1528 = load i64, i64* %PC.i704
  %1529 = add i64 %1528, 4
  store i64 %1529, i64* %PC.i704
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530
  %1532 = sub i32 %1531, 4
  %1533 = icmp ult i32 %1531, 4
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1534, i8* %1535, align 1
  %1536 = and i32 %1532, 255
  %1537 = call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1540, i8* %1541, align 1
  %1542 = xor i32 %1531, 4
  %1543 = xor i32 %1542, %1532
  %1544 = lshr i32 %1543, 4
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1546, i8* %1547, align 1
  %1548 = icmp eq i32 %1532, 0
  %1549 = zext i1 %1548 to i8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1549, i8* %1550, align 1
  %1551 = lshr i32 %1532, 31
  %1552 = trunc i32 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1552, i8* %1553, align 1
  %1554 = lshr i32 %1531, 31
  %1555 = xor i32 %1551, %1554
  %1556 = add i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1558, i8* %1559, align 1
  store %struct.Memory* %loadMem_44509f, %struct.Memory** %MEMORY
  %loadMem_4450a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %PC.i703
  %1564 = add i64 %1563, 263
  %1565 = load i64, i64* %PC.i703
  %1566 = add i64 %1565, 6
  %1567 = load i64, i64* %PC.i703
  %1568 = add i64 %1567, 6
  store i64 %1568, i64* %PC.i703
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1570 = load i8, i8* %1569, align 1
  %1571 = icmp ne i8 %1570, 0
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1573 = load i8, i8* %1572, align 1
  %1574 = icmp ne i8 %1573, 0
  %1575 = xor i1 %1571, %1574
  %1576 = xor i1 %1575, true
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %BRANCH_TAKEN, align 1
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1579 = select i1 %1575, i64 %1566, i64 %1564
  store i64 %1579, i64* %1578, align 8
  store %struct.Memory* %loadMem_4450a3, %struct.Memory** %MEMORY
  %loadBr_4450a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450a3 = icmp eq i8 %loadBr_4450a3, 1
  br i1 %cmpBr_4450a3, label %block_.L_4451aa, label %block_4450a9

block_4450a9:                                     ; preds = %block_.L_44509f
  %loadMem_4450a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i702
  %1587 = sub i64 %1586, 12
  %1588 = load i64, i64* %PC.i701
  %1589 = add i64 %1588, 7
  store i64 %1589, i64* %PC.i701
  %1590 = inttoptr i64 %1587 to i32*
  store i32 0, i32* %1590
  store %struct.Memory* %loadMem_4450a9, %struct.Memory** %MEMORY
  br label %block_.L_4450b0

block_.L_4450b0:                                  ; preds = %block_.L_445189, %block_4450a9
  %loadMem_4450b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i700
  %1598 = sub i64 %1597, 12
  %1599 = load i64, i64* %PC.i699
  %1600 = add i64 %1599, 4
  store i64 %1600, i64* %PC.i699
  %1601 = inttoptr i64 %1598 to i32*
  %1602 = load i32, i32* %1601
  %1603 = sub i32 %1602, 4
  %1604 = icmp ult i32 %1602, 4
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1605, i8* %1606, align 1
  %1607 = and i32 %1603, 255
  %1608 = call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1611, i8* %1612, align 1
  %1613 = xor i32 %1602, 4
  %1614 = xor i32 %1613, %1603
  %1615 = lshr i32 %1614, 4
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1617, i8* %1618, align 1
  %1619 = icmp eq i32 %1603, 0
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1620, i8* %1621, align 1
  %1622 = lshr i32 %1603, 31
  %1623 = trunc i32 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1623, i8* %1624, align 1
  %1625 = lshr i32 %1602, 31
  %1626 = xor i32 %1622, %1625
  %1627 = add i32 %1626, %1625
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1629, i8* %1630, align 1
  store %struct.Memory* %loadMem_4450b0, %struct.Memory** %MEMORY
  %loadMem_4450b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %PC.i698
  %1635 = add i64 %1634, 227
  %1636 = load i64, i64* %PC.i698
  %1637 = add i64 %1636, 6
  %1638 = load i64, i64* %PC.i698
  %1639 = add i64 %1638, 6
  store i64 %1639, i64* %PC.i698
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1641 = load i8, i8* %1640, align 1
  %1642 = icmp ne i8 %1641, 0
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1644 = load i8, i8* %1643, align 1
  %1645 = icmp ne i8 %1644, 0
  %1646 = xor i1 %1642, %1645
  %1647 = xor i1 %1646, true
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %BRANCH_TAKEN, align 1
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1650 = select i1 %1646, i64 %1637, i64 %1635
  store i64 %1650, i64* %1649, align 8
  store %struct.Memory* %loadMem_4450b4, %struct.Memory** %MEMORY
  %loadBr_4450b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450b4 = icmp eq i8 %loadBr_4450b4, 1
  br i1 %cmpBr_4450b4, label %block_.L_445197, label %block_4450ba

block_4450ba:                                     ; preds = %block_.L_4450b0
  %loadMem_4450ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 1
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %PC.i696
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %PC.i696
  store i64 2, i64* %RAX.i697, align 8
  store %struct.Memory* %loadMem_4450ba, %struct.Memory** %MEMORY
  %loadMem_4450bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 5
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RBP.i695
  %1669 = sub i64 %1668, 8
  %1670 = load i64, i64* %PC.i693
  %1671 = add i64 %1670, 3
  store i64 %1671, i64* %PC.i693
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RCX.i694, align 8
  store %struct.Memory* %loadMem_4450bf, %struct.Memory** %MEMORY
  %loadMem_4450c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 7
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %RBP.i692
  %1685 = sub i64 %1684, 12
  %1686 = load i64, i64* %PC.i690
  %1687 = add i64 %1686, 3
  store i64 %1687, i64* %PC.i690
  %1688 = inttoptr i64 %1685 to i32*
  %1689 = load i32, i32* %1688
  %1690 = zext i32 %1689 to i64
  store i64 %1690, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_4450c2, %struct.Memory** %MEMORY
  %loadMem_4450c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 1
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %1696 to i32*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 15
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RBP.i689
  %1701 = sub i64 %1700, 72
  %1702 = load i32, i32* %EAX.i688
  %1703 = zext i32 %1702 to i64
  %1704 = load i64, i64* %PC.i687
  %1705 = add i64 %1704, 3
  store i64 %1705, i64* %PC.i687
  %1706 = inttoptr i64 %1701 to i32*
  store i32 %1702, i32* %1706
  store %struct.Memory* %loadMem_4450c5, %struct.Memory** %MEMORY
  %loadMem_4450c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 7
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %EDX.i685 = bitcast %union.anon* %1712 to i32*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1715 to i64*
  %1716 = load i32, i32* %EDX.i685
  %1717 = zext i32 %1716 to i64
  %1718 = load i64, i64* %PC.i684
  %1719 = add i64 %1718, 2
  store i64 %1719, i64* %PC.i684
  %1720 = and i64 %1717, 4294967295
  store i64 %1720, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_4450c8, %struct.Memory** %MEMORY
  %loadMem_4450ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %PC.i683
  %1725 = add i64 %1724, 1
  store i64 %1725, i64* %PC.i683
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1728 = bitcast %union.anon* %1727 to i32*
  %1729 = load i32, i32* %1728, align 8
  %1730 = sext i32 %1729 to i64
  %1731 = lshr i64 %1730, 32
  store i64 %1731, i64* %1726, align 8
  store %struct.Memory* %loadMem_4450ca, %struct.Memory** %MEMORY
  %loadMem_4450cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 9
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RSI.i681 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 15
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RBP.i682
  %1742 = sub i64 %1741, 72
  %1743 = load i64, i64* %PC.i680
  %1744 = add i64 %1743, 3
  store i64 %1744, i64* %PC.i680
  %1745 = inttoptr i64 %1742 to i32*
  %1746 = load i32, i32* %1745
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RSI.i681, align 8
  store %struct.Memory* %loadMem_4450cb, %struct.Memory** %MEMORY
  %loadMem_4450ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 9
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %ESI.i676 = bitcast %union.anon* %1753 to i32*
  %1754 = load i32, i32* %ESI.i676
  %1755 = zext i32 %1754 to i64
  %1756 = load i64, i64* %PC.i675
  %1757 = add i64 %1756, 2
  store i64 %1757, i64* %PC.i675
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1759 = bitcast %union.anon* %1758 to i32*
  %1760 = load i32, i32* %1759, align 8
  %1761 = zext i32 %1760 to i64
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1763 = bitcast %union.anon* %1762 to i32*
  %1764 = load i32, i32* %1763, align 8
  %1765 = zext i32 %1764 to i64
  %1766 = shl i64 %1755, 32
  %1767 = ashr exact i64 %1766, 32
  %1768 = shl i64 %1765, 32
  %1769 = or i64 %1768, %1761
  %1770 = sdiv i64 %1769, %1767
  %1771 = shl i64 %1770, 32
  %1772 = ashr exact i64 %1771, 32
  %1773 = icmp eq i64 %1770, %1772
  br i1 %1773, label %1778, label %1774

; <label>:1774:                                   ; preds = %block_4450ba
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1776 = load i64, i64* %1775, align 8
  %1777 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1776, %struct.Memory* %loadMem_4450ce)
  br label %routine_idivl__esi.exit677

; <label>:1778:                                   ; preds = %block_4450ba
  %1779 = srem i64 %1769, %1767
  %1780 = getelementptr inbounds %union.anon, %union.anon* %1758, i64 0, i32 0
  %1781 = and i64 %1770, 4294967295
  store i64 %1781, i64* %1780, align 8
  %1782 = getelementptr inbounds %union.anon, %union.anon* %1762, i64 0, i32 0
  %1783 = and i64 %1779, 4294967295
  store i64 %1783, i64* %1782, align 8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1784, align 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1785, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1787, align 1
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1788, align 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1789, align 1
  br label %routine_idivl__esi.exit677

routine_idivl__esi.exit677:                       ; preds = %1774, %1778
  %1790 = phi %struct.Memory* [ %1777, %1774 ], [ %loadMem_4450ce, %1778 ]
  store %struct.Memory* %1790, %struct.Memory** %MEMORY
  %loadMem_4450d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 1
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %EAX.i673 = bitcast %union.anon* %1796 to i32*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 5
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RCX.i674
  %1801 = load i32, i32* %EAX.i673
  %1802 = zext i32 %1801 to i64
  %1803 = load i64, i64* %PC.i672
  %1804 = add i64 %1803, 2
  store i64 %1804, i64* %PC.i672
  %1805 = trunc i64 %1800 to i32
  %1806 = add i32 %1801, %1805
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i674, align 8
  %1808 = icmp ult i32 %1806, %1805
  %1809 = icmp ult i32 %1806, %1801
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1
  %1813 = and i32 %1806, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1
  %1819 = xor i64 %1802, %1800
  %1820 = trunc i64 %1819 to i32
  %1821 = xor i32 %1820, %1806
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1824, i8* %1825, align 1
  %1826 = icmp eq i32 %1806, 0
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1827, i8* %1828, align 1
  %1829 = lshr i32 %1806, 31
  %1830 = trunc i32 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1830, i8* %1831, align 1
  %1832 = lshr i32 %1805, 31
  %1833 = lshr i32 %1801, 31
  %1834 = xor i32 %1829, %1832
  %1835 = xor i32 %1829, %1833
  %1836 = add i32 %1834, %1835
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1838, i8* %1839, align 1
  store %struct.Memory* %loadMem_4450d0, %struct.Memory** %MEMORY
  %loadMem_4450d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 5
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %ECX.i670 = bitcast %union.anon* %1845 to i32*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 15
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RBP.i671
  %1850 = sub i64 %1849, 4
  %1851 = load i32, i32* %ECX.i670
  %1852 = zext i32 %1851 to i64
  %1853 = load i64, i64* %PC.i669
  %1854 = add i64 %1853, 3
  store i64 %1854, i64* %PC.i669
  %1855 = inttoptr i64 %1850 to i32*
  store i32 %1851, i32* %1855
  store %struct.Memory* %loadMem_4450d2, %struct.Memory** %MEMORY
  %loadMem_4450d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 11
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RDI.i667 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 15
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %RBP.i668
  %1866 = sub i64 %1865, 24
  %1867 = load i64, i64* %PC.i666
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %PC.i666
  %1869 = inttoptr i64 %1866 to i64*
  %1870 = load i64, i64* %1869
  store i64 %1870, i64* %RDI.i667, align 8
  store %struct.Memory* %loadMem_4450d5, %struct.Memory** %MEMORY
  %loadMem_4450d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 15
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 17
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %R8.i665 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i664
  %1881 = sub i64 %1880, 4
  %1882 = load i64, i64* %PC.i663
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %PC.i663
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884
  %1886 = sext i32 %1885 to i64
  store i64 %1886, i64* %R8.i665, align 8
  store %struct.Memory* %loadMem_4450d9, %struct.Memory** %MEMORY
  %loadMem_4450dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 11
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RDI.i661 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 17
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %R8.i662 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RDI.i661
  %1897 = load i64, i64* %R8.i662
  %1898 = mul i64 %1897, 4
  %1899 = add i64 %1896, 488
  %1900 = add i64 %1899, %1898
  %1901 = load i64, i64* %PC.i660
  %1902 = add i64 %1901, 9
  store i64 %1902, i64* %PC.i660
  %1903 = inttoptr i64 %1900 to i32*
  %1904 = load i32, i32* %1903
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1905, align 1
  %1906 = and i32 %1904, 255
  %1907 = call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1910, i8* %1911, align 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1912, align 1
  %1913 = icmp eq i32 %1904, 0
  %1914 = zext i1 %1913 to i8
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1914, i8* %1915, align 1
  %1916 = lshr i32 %1904, 31
  %1917 = trunc i32 %1916 to i8
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1917, i8* %1918, align 1
  %1919 = lshr i32 %1904, 31
  %1920 = xor i32 %1916, %1919
  %1921 = add i32 %1920, %1919
  %1922 = icmp eq i32 %1921, 2
  %1923 = zext i1 %1922 to i8
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1923, i8* %1924, align 1
  store %struct.Memory* %loadMem_4450dd, %struct.Memory** %MEMORY
  %loadMem_4450e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %PC.i659
  %1929 = add i64 %1928, 28
  %1930 = load i64, i64* %PC.i659
  %1931 = add i64 %1930, 6
  %1932 = load i64, i64* %PC.i659
  %1933 = add i64 %1932, 6
  store i64 %1933, i64* %PC.i659
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1935 = load i8, i8* %1934, align 1
  store i8 %1935, i8* %BRANCH_TAKEN, align 1
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1937 = icmp ne i8 %1935, 0
  %1938 = select i1 %1937, i64 %1929, i64 %1931
  store i64 %1938, i64* %1936, align 8
  store %struct.Memory* %loadMem_4450e6, %struct.Memory** %MEMORY
  %loadBr_4450e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450e6 = icmp eq i8 %loadBr_4450e6, 1
  br i1 %cmpBr_4450e6, label %block_.L_445102, label %block_4450ec

block_4450ec:                                     ; preds = %routine_idivl__esi.exit677
  %loadMem_4450ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i658
  %1949 = sub i64 %1948, 24
  %1950 = load i64, i64* %PC.i656
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i656
  %1952 = inttoptr i64 %1949 to i64*
  %1953 = load i64, i64* %1952
  store i64 %1953, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_4450ec, %struct.Memory** %MEMORY
  %loadMem_4450f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 5
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 15
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %RBP.i655
  %1964 = sub i64 %1963, 4
  %1965 = load i64, i64* %PC.i653
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC.i653
  %1967 = inttoptr i64 %1964 to i32*
  %1968 = load i32, i32* %1967
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_4450f0, %struct.Memory** %MEMORY
  %loadMem_4450f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 1
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 5
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RAX.i651
  %1980 = load i64, i64* %RCX.i652
  %1981 = mul i64 %1980, 4
  %1982 = add i64 %1979, 488
  %1983 = add i64 %1982, %1981
  %1984 = load i64, i64* %PC.i650
  %1985 = add i64 %1984, 8
  store i64 %1985, i64* %PC.i650
  %1986 = inttoptr i64 %1983 to i32*
  %1987 = load i32, i32* %1986
  %1988 = sub i32 %1987, 2
  %1989 = icmp ult i32 %1987, 2
  %1990 = zext i1 %1989 to i8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1990, i8* %1991, align 1
  %1992 = and i32 %1988, 255
  %1993 = call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1996, i8* %1997, align 1
  %1998 = xor i32 %1987, 2
  %1999 = xor i32 %1998, %1988
  %2000 = lshr i32 %1999, 4
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2002, i8* %2003, align 1
  %2004 = icmp eq i32 %1988, 0
  %2005 = zext i1 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2005, i8* %2006, align 1
  %2007 = lshr i32 %1988, 31
  %2008 = trunc i32 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2008, i8* %2009, align 1
  %2010 = lshr i32 %1987, 31
  %2011 = xor i32 %2007, %2010
  %2012 = add i32 %2011, %2010
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2014, i8* %2015, align 1
  store %struct.Memory* %loadMem_4450f4, %struct.Memory** %MEMORY
  %loadMem_4450fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %PC.i649
  %2020 = add i64 %2019, 136
  %2021 = load i64, i64* %PC.i649
  %2022 = add i64 %2021, 6
  %2023 = load i64, i64* %PC.i649
  %2024 = add i64 %2023, 6
  store i64 %2024, i64* %PC.i649
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2026 = load i8, i8* %2025, align 1
  %2027 = icmp eq i8 %2026, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %BRANCH_TAKEN, align 1
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2030 = select i1 %2027, i64 %2020, i64 %2022
  store i64 %2030, i64* %2029, align 8
  store %struct.Memory* %loadMem_4450fc, %struct.Memory** %MEMORY
  %loadBr_4450fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450fc = icmp eq i8 %loadBr_4450fc, 1
  br i1 %cmpBr_4450fc, label %block_.L_445184, label %block_.L_445102

block_.L_445102:                                  ; preds = %block_4450ec, %routine_idivl__esi.exit677
  %loadMem_445102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 1
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 15
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RBP.i648
  %2041 = sub i64 %2040, 24
  %2042 = load i64, i64* %PC.i646
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i646
  %2044 = inttoptr i64 %2041 to i64*
  %2045 = load i64, i64* %2044
  store i64 %2045, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_445102, %struct.Memory** %MEMORY
  %loadMem_445106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 5
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 15
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RBP.i645
  %2056 = sub i64 %2055, 4
  %2057 = load i64, i64* %PC.i643
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %PC.i643
  %2059 = inttoptr i64 %2056 to i32*
  %2060 = load i32, i32* %2059
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i644, align 8
  store %struct.Memory* %loadMem_445106, %struct.Memory** %MEMORY
  %loadMem_44510a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 1
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 5
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %RAX.i641
  %2072 = load i64, i64* %RCX.i642
  %2073 = mul i64 %2072, 4
  %2074 = add i64 %2071, 472
  %2075 = add i64 %2074, %2073
  %2076 = load i64, i64* %PC.i640
  %2077 = add i64 %2076, 8
  store i64 %2077, i64* %PC.i640
  %2078 = inttoptr i64 %2075 to i32*
  %2079 = load i32, i32* %2078
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2080, align 1
  %2081 = and i32 %2079, 255
  %2082 = call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2085, i8* %2086, align 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2087, align 1
  %2088 = icmp eq i32 %2079, 0
  %2089 = zext i1 %2088 to i8
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2089, i8* %2090, align 1
  %2091 = lshr i32 %2079, 31
  %2092 = trunc i32 %2091 to i8
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2092, i8* %2093, align 1
  %2094 = lshr i32 %2079, 31
  %2095 = xor i32 %2091, %2094
  %2096 = add i32 %2095, %2094
  %2097 = icmp eq i32 %2096, 2
  %2098 = zext i1 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2098, i8* %2099, align 1
  store %struct.Memory* %loadMem_44510a, %struct.Memory** %MEMORY
  %loadMem_445112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %PC.i639
  %2104 = add i64 %2103, 114
  %2105 = load i64, i64* %PC.i639
  %2106 = add i64 %2105, 6
  %2107 = load i64, i64* %PC.i639
  %2108 = add i64 %2107, 6
  store i64 %2108, i64* %PC.i639
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2110 = load i8, i8* %2109, align 1
  store i8 %2110, i8* %BRANCH_TAKEN, align 1
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2112 = icmp ne i8 %2110, 0
  %2113 = select i1 %2112, i64 %2104, i64 %2106
  store i64 %2113, i64* %2111, align 8
  store %struct.Memory* %loadMem_445112, %struct.Memory** %MEMORY
  %loadBr_445112 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445112 = icmp eq i8 %loadBr_445112, 1
  br i1 %cmpBr_445112, label %block_.L_445184, label %block_445118

block_445118:                                     ; preds = %block_.L_445102
  %loadMem_445118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 5
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i637
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %PC.i637
  store i64 1, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_445118, %struct.Memory** %MEMORY
  %loadMem_44511d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 1
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 15
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %RBP.i636
  %2132 = sub i64 %2131, 24
  %2133 = load i64, i64* %PC.i634
  %2134 = add i64 %2133, 4
  store i64 %2134, i64* %PC.i634
  %2135 = inttoptr i64 %2132 to i64*
  %2136 = load i64, i64* %2135
  store i64 %2136, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_44511d, %struct.Memory** %MEMORY
  %loadMem_445121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 7
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RBP.i633
  %2147 = sub i64 %2146, 4
  %2148 = load i64, i64* %PC.i631
  %2149 = add i64 %2148, 4
  store i64 %2149, i64* %PC.i631
  %2150 = inttoptr i64 %2147 to i32*
  %2151 = load i32, i32* %2150
  %2152 = sext i32 %2151 to i64
  store i64 %2152, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_445121, %struct.Memory** %MEMORY
  %loadMem_445125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 1
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 7
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 11
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RDI.i630 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RAX.i628
  %2166 = load i64, i64* %RDX.i629
  %2167 = mul i64 %2166, 4
  %2168 = add i64 %2165, 472
  %2169 = add i64 %2168, %2167
  %2170 = load i64, i64* %PC.i627
  %2171 = add i64 %2170, 7
  store i64 %2171, i64* %PC.i627
  %2172 = inttoptr i64 %2169 to i32*
  %2173 = load i32, i32* %2172
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RDI.i630, align 8
  store %struct.Memory* %loadMem_445125, %struct.Memory** %MEMORY
  %loadMem_44512c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 9
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RSI.i625 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i626
  %2185 = sub i64 %2184, 12
  %2186 = load i64, i64* %PC.i624
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i624
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RSI.i625, align 8
  store %struct.Memory* %loadMem_44512c, %struct.Memory** %MEMORY
  %loadMem_44512f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 7
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RBP.i623
  %2201 = sub i64 %2200, 8
  %2202 = load i64, i64* %PC.i621
  %2203 = add i64 %2202, 3
  store i64 %2203, i64* %PC.i621
  %2204 = inttoptr i64 %2201 to i32*
  %2205 = load i32, i32* %2204
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RDX.i622, align 8
  store %struct.Memory* %loadMem_44512f, %struct.Memory** %MEMORY
  %loadMem_445132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %PC.i619
  %2214 = add i64 %2213, 8
  store i64 %2214, i64* %PC.i619
  %2215 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %2215, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_445132, %struct.Memory** %MEMORY
  %loadMem_44513a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 1
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RAX.i618
  %2223 = add i64 %2222, 6480
  %2224 = load i64, i64* %PC.i617
  %2225 = add i64 %2224, 7
  store i64 %2225, i64* %PC.i617
  %2226 = inttoptr i64 %2223 to i64*
  %2227 = load i64, i64* %2226
  store i64 %2227, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_44513a, %struct.Memory** %MEMORY
  %loadMem_445141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %RAX.i616
  %2235 = load i64, i64* %PC.i615
  %2236 = add i64 %2235, 3
  store i64 %2236, i64* %PC.i615
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237
  store i64 %2238, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_445141, %struct.Memory** %MEMORY
  %loadMem_445144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 17
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %R8.i614 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i613
  %2246 = add i64 %2245, 8
  store i64 %2246, i64* %PC.i613
  %2247 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2247, i64* %R8.i614, align 8
  store %struct.Memory* %loadMem_445144, %struct.Memory** %MEMORY
  %loadMem_44514c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 19
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %R9D.i611 = bitcast %union.anon* %2253 to i32*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 17
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %R8.i612 = bitcast %union.anon* %2256 to i64*
  %2257 = bitcast i32* %R9D.i611 to i64*
  %2258 = load i64, i64* %R8.i612
  %2259 = add i64 %2258, 144
  %2260 = load i64, i64* %PC.i610
  %2261 = add i64 %2260, 7
  store i64 %2261, i64* %PC.i610
  %2262 = inttoptr i64 %2259 to i32*
  %2263 = load i32, i32* %2262
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %2257, align 8
  store %struct.Memory* %loadMem_44514c, %struct.Memory** %MEMORY
  %loadMem_445153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 19
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %R9D.i608 = bitcast %union.anon* %2270 to i32*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %2273 to i64*
  %2274 = bitcast i32* %R9D.i608 to i64*
  %2275 = load i32, i32* %R9D.i608
  %2276 = zext i32 %2275 to i64
  %2277 = load i64, i64* %RBP.i609
  %2278 = sub i64 %2277, 12
  %2279 = load i64, i64* %PC.i607
  %2280 = add i64 %2279, 4
  store i64 %2280, i64* %PC.i607
  %2281 = inttoptr i64 %2278 to i32*
  %2282 = load i32, i32* %2281
  %2283 = add i32 %2282, %2275
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %2274, align 8
  %2285 = icmp ult i32 %2283, %2275
  %2286 = icmp ult i32 %2283, %2282
  %2287 = or i1 %2285, %2286
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2288, i8* %2289, align 1
  %2290 = and i32 %2283, 255
  %2291 = call i32 @llvm.ctpop.i32(i32 %2290)
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2294, i8* %2295, align 1
  %2296 = xor i32 %2282, %2275
  %2297 = xor i32 %2296, %2283
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2300, i8* %2301, align 1
  %2302 = icmp eq i32 %2283, 0
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2303, i8* %2304, align 1
  %2305 = lshr i32 %2283, 31
  %2306 = trunc i32 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2306, i8* %2307, align 1
  %2308 = lshr i32 %2275, 31
  %2309 = lshr i32 %2282, 31
  %2310 = xor i32 %2305, %2308
  %2311 = xor i32 %2305, %2309
  %2312 = add i32 %2310, %2311
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2314, i8* %2315, align 1
  store %struct.Memory* %loadMem_445153, %struct.Memory** %MEMORY
  %loadMem_445157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 19
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %R9D.i605 = bitcast %union.anon* %2321 to i32*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 17
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %R8.i606 = bitcast %union.anon* %2324 to i64*
  %2325 = load i32, i32* %R9D.i605
  %2326 = zext i32 %2325 to i64
  %2327 = load i64, i64* %PC.i604
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i604
  %2329 = shl i64 %2326, 32
  %2330 = ashr exact i64 %2329, 32
  store i64 %2330, i64* %R8.i606, align 8
  store %struct.Memory* %loadMem_445157, %struct.Memory** %MEMORY
  %loadMem_44515a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 17
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %R8.i603 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RAX.i602
  %2341 = load i64, i64* %R8.i603
  %2342 = mul i64 %2341, 8
  %2343 = add i64 %2342, %2340
  %2344 = load i64, i64* %PC.i601
  %2345 = add i64 %2344, 4
  store i64 %2345, i64* %PC.i601
  %2346 = inttoptr i64 %2343 to i64*
  %2347 = load i64, i64* %2346
  store i64 %2347, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_44515a, %struct.Memory** %MEMORY
  %loadMem_44515e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 17
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %R8.i600 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %PC.i599
  %2355 = add i64 %2354, 8
  store i64 %2355, i64* %PC.i599
  %2356 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2356, i64* %R8.i600, align 8
  store %struct.Memory* %loadMem_44515e, %struct.Memory** %MEMORY
  %loadMem_445166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 19
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %R9D.i597 = bitcast %union.anon* %2362 to i32*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 17
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %R8.i598 = bitcast %union.anon* %2365 to i64*
  %2366 = bitcast i32* %R9D.i597 to i64*
  %2367 = load i64, i64* %R8.i598
  %2368 = add i64 %2367, 148
  %2369 = load i64, i64* %PC.i596
  %2370 = add i64 %2369, 7
  store i64 %2370, i64* %PC.i596
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %2366, align 8
  store %struct.Memory* %loadMem_445166, %struct.Memory** %MEMORY
  %loadMem_44516d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 19
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %R9D.i594 = bitcast %union.anon* %2379 to i32*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %2382 to i64*
  %2383 = bitcast i32* %R9D.i594 to i64*
  %2384 = load i32, i32* %R9D.i594
  %2385 = zext i32 %2384 to i64
  %2386 = load i64, i64* %RBP.i595
  %2387 = sub i64 %2386, 8
  %2388 = load i64, i64* %PC.i593
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC.i593
  %2390 = inttoptr i64 %2387 to i32*
  %2391 = load i32, i32* %2390
  %2392 = add i32 %2391, %2384
  %2393 = zext i32 %2392 to i64
  store i64 %2393, i64* %2383, align 8
  %2394 = icmp ult i32 %2392, %2384
  %2395 = icmp ult i32 %2392, %2391
  %2396 = or i1 %2394, %2395
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1
  %2399 = and i32 %2392, 255
  %2400 = call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2403, i8* %2404, align 1
  %2405 = xor i32 %2391, %2384
  %2406 = xor i32 %2405, %2392
  %2407 = lshr i32 %2406, 4
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2409, i8* %2410, align 1
  %2411 = icmp eq i32 %2392, 0
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2412, i8* %2413, align 1
  %2414 = lshr i32 %2392, 31
  %2415 = trunc i32 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2415, i8* %2416, align 1
  %2417 = lshr i32 %2384, 31
  %2418 = lshr i32 %2391, 31
  %2419 = xor i32 %2414, %2417
  %2420 = xor i32 %2414, %2418
  %2421 = add i32 %2419, %2420
  %2422 = icmp eq i32 %2421, 2
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2423, i8* %2424, align 1
  store %struct.Memory* %loadMem_44516d, %struct.Memory** %MEMORY
  %loadMem_445171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 19
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %R9D.i591 = bitcast %union.anon* %2430 to i32*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 17
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %R8.i592 = bitcast %union.anon* %2433 to i64*
  %2434 = load i32, i32* %R9D.i591
  %2435 = zext i32 %2434 to i64
  %2436 = load i64, i64* %PC.i590
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i590
  %2438 = shl i64 %2435, 32
  %2439 = ashr exact i64 %2438, 32
  store i64 %2439, i64* %R8.i592, align 8
  store %struct.Memory* %loadMem_445171, %struct.Memory** %MEMORY
  %loadMem_445174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 17
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %R8D.i587 = bitcast %union.anon* %2445 to i32*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 1
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 17
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %R8.i589 = bitcast %union.anon* %2451 to i64*
  %2452 = bitcast i32* %R8D.i587 to i64*
  %2453 = load i64, i64* %RAX.i588
  %2454 = load i64, i64* %R8.i589
  %2455 = mul i64 %2454, 2
  %2456 = add i64 %2455, %2453
  %2457 = load i64, i64* %PC.i586
  %2458 = add i64 %2457, 5
  store i64 %2458, i64* %PC.i586
  %2459 = inttoptr i64 %2456 to i16*
  %2460 = load i16, i16* %2459
  %2461 = sext i16 %2460 to i64
  %2462 = and i64 %2461, 4294967295
  store i64 %2462, i64* %2452, align 8
  store %struct.Memory* %loadMem_445174, %struct.Memory** %MEMORY
  %loadMem1_445179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2465 to i64*
  %2466 = load i64, i64* %PC.i585
  %2467 = add i64 %2466, 12663
  %2468 = load i64, i64* %PC.i585
  %2469 = add i64 %2468, 5
  %2470 = load i64, i64* %PC.i585
  %2471 = add i64 %2470, 5
  store i64 %2471, i64* %PC.i585
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2473 = load i64, i64* %2472, align 8
  %2474 = add i64 %2473, -8
  %2475 = inttoptr i64 %2474 to i64*
  store i64 %2469, i64* %2475
  store i64 %2474, i64* %2472, align 8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2467, i64* %2476, align 8
  store %struct.Memory* %loadMem1_445179, %struct.Memory** %MEMORY
  %loadMem2_445179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_445179 = load i64, i64* %3
  %call2_445179 = call %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* %0, i64 %loadPC_445179, %struct.Memory* %loadMem2_445179)
  store %struct.Memory* %call2_445179, %struct.Memory** %MEMORY
  %loadMem_44517e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RAX.i583
  %2487 = load i64, i64* %RBP.i584
  %2488 = sub i64 %2487, 28
  %2489 = load i64, i64* %PC.i582
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC.i582
  %2491 = trunc i64 %2486 to i32
  %2492 = inttoptr i64 %2488 to i32*
  %2493 = load i32, i32* %2492
  %2494 = add i32 %2493, %2491
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RAX.i583, align 8
  %2496 = icmp ult i32 %2494, %2491
  %2497 = icmp ult i32 %2494, %2493
  %2498 = or i1 %2496, %2497
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2499, i8* %2500, align 1
  %2501 = and i32 %2494, 255
  %2502 = call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2505, i8* %2506, align 1
  %2507 = xor i32 %2493, %2491
  %2508 = xor i32 %2507, %2494
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2511, i8* %2512, align 1
  %2513 = icmp eq i32 %2494, 0
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2514, i8* %2515, align 1
  %2516 = lshr i32 %2494, 31
  %2517 = trunc i32 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2517, i8* %2518, align 1
  %2519 = lshr i32 %2491, 31
  %2520 = lshr i32 %2493, 31
  %2521 = xor i32 %2516, %2519
  %2522 = xor i32 %2516, %2520
  %2523 = add i32 %2521, %2522
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2525, i8* %2526, align 1
  store %struct.Memory* %loadMem_44517e, %struct.Memory** %MEMORY
  %loadMem_445181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %EAX.i580 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 15
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RBP.i581
  %2537 = sub i64 %2536, 28
  %2538 = load i32, i32* %EAX.i580
  %2539 = zext i32 %2538 to i64
  %2540 = load i64, i64* %PC.i579
  %2541 = add i64 %2540, 3
  store i64 %2541, i64* %PC.i579
  %2542 = inttoptr i64 %2537 to i32*
  store i32 %2538, i32* %2542
  store %struct.Memory* %loadMem_445181, %struct.Memory** %MEMORY
  br label %block_.L_445184

block_.L_445184:                                  ; preds = %block_445118, %block_.L_445102, %block_4450ec
  %loadMem_445184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i578
  %2547 = add i64 %2546, 5
  %2548 = load i64, i64* %PC.i578
  %2549 = add i64 %2548, 5
  store i64 %2549, i64* %PC.i578
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2547, i64* %2550, align 8
  store %struct.Memory* %loadMem_445184, %struct.Memory** %MEMORY
  br label %block_.L_445189

block_.L_445189:                                  ; preds = %block_.L_445184
  %loadMem_445189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 1
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RBP.i577
  %2561 = sub i64 %2560, 36
  %2562 = load i64, i64* %PC.i575
  %2563 = add i64 %2562, 3
  store i64 %2563, i64* %PC.i575
  %2564 = inttoptr i64 %2561 to i32*
  %2565 = load i32, i32* %2564
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_445189, %struct.Memory** %MEMORY
  %loadMem_44518c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 1
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 15
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RAX.i573
  %2577 = load i64, i64* %RBP.i574
  %2578 = sub i64 %2577, 12
  %2579 = load i64, i64* %PC.i572
  %2580 = add i64 %2579, 3
  store i64 %2580, i64* %PC.i572
  %2581 = trunc i64 %2576 to i32
  %2582 = inttoptr i64 %2578 to i32*
  %2583 = load i32, i32* %2582
  %2584 = add i32 %2583, %2581
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RAX.i573, align 8
  %2586 = icmp ult i32 %2584, %2581
  %2587 = icmp ult i32 %2584, %2583
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2589, i8* %2590, align 1
  %2591 = and i32 %2584, 255
  %2592 = call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2595, i8* %2596, align 1
  %2597 = xor i32 %2583, %2581
  %2598 = xor i32 %2597, %2584
  %2599 = lshr i32 %2598, 4
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2601, i8* %2602, align 1
  %2603 = icmp eq i32 %2584, 0
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2604, i8* %2605, align 1
  %2606 = lshr i32 %2584, 31
  %2607 = trunc i32 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2607, i8* %2608, align 1
  %2609 = lshr i32 %2581, 31
  %2610 = lshr i32 %2583, 31
  %2611 = xor i32 %2606, %2609
  %2612 = xor i32 %2606, %2610
  %2613 = add i32 %2611, %2612
  %2614 = icmp eq i32 %2613, 2
  %2615 = zext i1 %2614 to i8
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2615, i8* %2616, align 1
  store %struct.Memory* %loadMem_44518c, %struct.Memory** %MEMORY
  %loadMem_44518f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 1
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %2622 to i32*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %RBP.i571
  %2627 = sub i64 %2626, 12
  %2628 = load i32, i32* %EAX.i570
  %2629 = zext i32 %2628 to i64
  %2630 = load i64, i64* %PC.i569
  %2631 = add i64 %2630, 3
  store i64 %2631, i64* %PC.i569
  %2632 = inttoptr i64 %2627 to i32*
  store i32 %2628, i32* %2632
  store %struct.Memory* %loadMem_44518f, %struct.Memory** %MEMORY
  %loadMem_445192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %PC.i568
  %2637 = add i64 %2636, -226
  %2638 = load i64, i64* %PC.i568
  %2639 = add i64 %2638, 5
  store i64 %2639, i64* %PC.i568
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2637, i64* %2640, align 8
  store %struct.Memory* %loadMem_445192, %struct.Memory** %MEMORY
  br label %block_.L_4450b0

block_.L_445197:                                  ; preds = %block_.L_4450b0
  %loadMem_445197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %PC.i567
  %2645 = add i64 %2644, 5
  %2646 = load i64, i64* %PC.i567
  %2647 = add i64 %2646, 5
  store i64 %2647, i64* %PC.i567
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2645, i64* %2648, align 8
  store %struct.Memory* %loadMem_445197, %struct.Memory** %MEMORY
  br label %block_.L_44519c

block_.L_44519c:                                  ; preds = %block_.L_445197
  %loadMem_44519c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RBP.i566
  %2659 = sub i64 %2658, 40
  %2660 = load i64, i64* %PC.i564
  %2661 = add i64 %2660, 3
  store i64 %2661, i64* %PC.i564
  %2662 = inttoptr i64 %2659 to i32*
  %2663 = load i32, i32* %2662
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_44519c, %struct.Memory** %MEMORY
  %loadMem_44519f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 1
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 15
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RAX.i562
  %2675 = load i64, i64* %RBP.i563
  %2676 = sub i64 %2675, 8
  %2677 = load i64, i64* %PC.i561
  %2678 = add i64 %2677, 3
  store i64 %2678, i64* %PC.i561
  %2679 = trunc i64 %2674 to i32
  %2680 = inttoptr i64 %2676 to i32*
  %2681 = load i32, i32* %2680
  %2682 = add i32 %2681, %2679
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX.i562, align 8
  %2684 = icmp ult i32 %2682, %2679
  %2685 = icmp ult i32 %2682, %2681
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2687, i8* %2688, align 1
  %2689 = and i32 %2682, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1
  %2695 = xor i32 %2681, %2679
  %2696 = xor i32 %2695, %2682
  %2697 = lshr i32 %2696, 4
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2699, i8* %2700, align 1
  %2701 = icmp eq i32 %2682, 0
  %2702 = zext i1 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2702, i8* %2703, align 1
  %2704 = lshr i32 %2682, 31
  %2705 = trunc i32 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2705, i8* %2706, align 1
  %2707 = lshr i32 %2679, 31
  %2708 = lshr i32 %2681, 31
  %2709 = xor i32 %2704, %2707
  %2710 = xor i32 %2704, %2708
  %2711 = add i32 %2709, %2710
  %2712 = icmp eq i32 %2711, 2
  %2713 = zext i1 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2713, i8* %2714, align 1
  store %struct.Memory* %loadMem_44519f, %struct.Memory** %MEMORY
  %loadMem_4451a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 1
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %EAX.i559 = bitcast %union.anon* %2720 to i32*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 15
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %RBP.i560
  %2725 = sub i64 %2724, 8
  %2726 = load i32, i32* %EAX.i559
  %2727 = zext i32 %2726 to i64
  %2728 = load i64, i64* %PC.i558
  %2729 = add i64 %2728, 3
  store i64 %2729, i64* %PC.i558
  %2730 = inttoptr i64 %2725 to i32*
  store i32 %2726, i32* %2730
  store %struct.Memory* %loadMem_4451a2, %struct.Memory** %MEMORY
  %loadMem_4451a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 33
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2733 to i64*
  %2734 = load i64, i64* %PC.i557
  %2735 = add i64 %2734, -262
  %2736 = load i64, i64* %PC.i557
  %2737 = add i64 %2736, 5
  store i64 %2737, i64* %PC.i557
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2735, i64* %2738, align 8
  store %struct.Memory* %loadMem_4451a5, %struct.Memory** %MEMORY
  br label %block_.L_44509f

block_.L_4451aa:                                  ; preds = %block_.L_44509f
  %loadMem_4451aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i556
  %2746 = sub i64 %2745, 8
  %2747 = load i64, i64* %PC.i555
  %2748 = add i64 %2747, 7
  store i64 %2748, i64* %PC.i555
  %2749 = inttoptr i64 %2746 to i32*
  store i32 0, i32* %2749
  store %struct.Memory* %loadMem_4451aa, %struct.Memory** %MEMORY
  br label %block_.L_4451b1

block_.L_4451b1:                                  ; preds = %block_.L_4452ac, %block_.L_4451aa
  %loadMem_4451b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 15
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RBP.i554
  %2757 = sub i64 %2756, 8
  %2758 = load i64, i64* %PC.i553
  %2759 = add i64 %2758, 4
  store i64 %2759, i64* %PC.i553
  %2760 = inttoptr i64 %2757 to i32*
  %2761 = load i32, i32* %2760
  %2762 = sub i32 %2761, 4
  %2763 = icmp ult i32 %2761, 4
  %2764 = zext i1 %2763 to i8
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2764, i8* %2765, align 1
  %2766 = and i32 %2762, 255
  %2767 = call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2770, i8* %2771, align 1
  %2772 = xor i32 %2761, 4
  %2773 = xor i32 %2772, %2762
  %2774 = lshr i32 %2773, 4
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2776, i8* %2777, align 1
  %2778 = icmp eq i32 %2762, 0
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2779, i8* %2780, align 1
  %2781 = lshr i32 %2762, 31
  %2782 = trunc i32 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2782, i8* %2783, align 1
  %2784 = lshr i32 %2761, 31
  %2785 = xor i32 %2781, %2784
  %2786 = add i32 %2785, %2784
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2788, i8* %2789, align 1
  store %struct.Memory* %loadMem_4451b1, %struct.Memory** %MEMORY
  %loadMem_4451b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i552
  %2794 = add i64 %2793, 261
  %2795 = load i64, i64* %PC.i552
  %2796 = add i64 %2795, 6
  %2797 = load i64, i64* %PC.i552
  %2798 = add i64 %2797, 6
  store i64 %2798, i64* %PC.i552
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2800 = load i8, i8* %2799, align 1
  %2801 = icmp ne i8 %2800, 0
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2803 = load i8, i8* %2802, align 1
  %2804 = icmp ne i8 %2803, 0
  %2805 = xor i1 %2801, %2804
  %2806 = xor i1 %2805, true
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %BRANCH_TAKEN, align 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2809 = select i1 %2805, i64 %2796, i64 %2794
  store i64 %2809, i64* %2808, align 8
  store %struct.Memory* %loadMem_4451b5, %struct.Memory** %MEMORY
  %loadBr_4451b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4451b5 = icmp eq i8 %loadBr_4451b5, 1
  br i1 %cmpBr_4451b5, label %block_.L_4452ba, label %block_4451bb

block_4451bb:                                     ; preds = %block_.L_4451b1
  %loadMem_4451bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i551
  %2817 = sub i64 %2816, 12
  %2818 = load i64, i64* %PC.i550
  %2819 = add i64 %2818, 7
  store i64 %2819, i64* %PC.i550
  %2820 = inttoptr i64 %2817 to i32*
  store i32 0, i32* %2820
  store %struct.Memory* %loadMem_4451bb, %struct.Memory** %MEMORY
  br label %block_.L_4451c2

block_.L_4451c2:                                  ; preds = %block_.L_445299, %block_4451bb
  %loadMem_4451c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 15
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RBP.i549
  %2828 = sub i64 %2827, 12
  %2829 = load i64, i64* %PC.i548
  %2830 = add i64 %2829, 4
  store i64 %2830, i64* %PC.i548
  %2831 = inttoptr i64 %2828 to i32*
  %2832 = load i32, i32* %2831
  %2833 = sub i32 %2832, 4
  %2834 = icmp ult i32 %2832, 4
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2835, i8* %2836, align 1
  %2837 = and i32 %2833, 255
  %2838 = call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2841, i8* %2842, align 1
  %2843 = xor i32 %2832, 4
  %2844 = xor i32 %2843, %2833
  %2845 = lshr i32 %2844, 4
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2847, i8* %2848, align 1
  %2849 = icmp eq i32 %2833, 0
  %2850 = zext i1 %2849 to i8
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2850, i8* %2851, align 1
  %2852 = lshr i32 %2833, 31
  %2853 = trunc i32 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2853, i8* %2854, align 1
  %2855 = lshr i32 %2832, 31
  %2856 = xor i32 %2852, %2855
  %2857 = add i32 %2856, %2855
  %2858 = icmp eq i32 %2857, 2
  %2859 = zext i1 %2858 to i8
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2859, i8* %2860, align 1
  store %struct.Memory* %loadMem_4451c2, %struct.Memory** %MEMORY
  %loadMem_4451c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %PC.i547
  %2865 = add i64 %2864, 225
  %2866 = load i64, i64* %PC.i547
  %2867 = add i64 %2866, 6
  %2868 = load i64, i64* %PC.i547
  %2869 = add i64 %2868, 6
  store i64 %2869, i64* %PC.i547
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2871 = load i8, i8* %2870, align 1
  %2872 = icmp ne i8 %2871, 0
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2874 = load i8, i8* %2873, align 1
  %2875 = icmp ne i8 %2874, 0
  %2876 = xor i1 %2872, %2875
  %2877 = xor i1 %2876, true
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %BRANCH_TAKEN, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2880 = select i1 %2876, i64 %2867, i64 %2865
  store i64 %2880, i64* %2879, align 8
  store %struct.Memory* %loadMem_4451c6, %struct.Memory** %MEMORY
  %loadBr_4451c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4451c6 = icmp eq i8 %loadBr_4451c6, 1
  br i1 %cmpBr_4451c6, label %block_.L_4452a7, label %block_4451cc

block_4451cc:                                     ; preds = %block_.L_4451c2
  %loadMem_4451cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 1
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %PC.i545
  %2888 = add i64 %2887, 5
  store i64 %2888, i64* %PC.i545
  store i64 2, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_4451cc, %struct.Memory** %MEMORY
  %loadMem_4451d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 33
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 5
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 15
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %RBP.i544
  %2899 = sub i64 %2898, 8
  %2900 = load i64, i64* %PC.i542
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC.i542
  %2902 = inttoptr i64 %2899 to i32*
  %2903 = load i32, i32* %2902
  %2904 = zext i32 %2903 to i64
  store i64 %2904, i64* %RCX.i543, align 8
  store %struct.Memory* %loadMem_4451d1, %struct.Memory** %MEMORY
  %loadMem_4451d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 7
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 15
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %RBP.i541
  %2915 = sub i64 %2914, 12
  %2916 = load i64, i64* %PC.i539
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC.i539
  %2918 = inttoptr i64 %2915 to i32*
  %2919 = load i32, i32* %2918
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_4451d4, %struct.Memory** %MEMORY
  %loadMem_4451d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 33
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 1
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %EAX.i537 = bitcast %union.anon* %2926 to i32*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 15
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %RBP.i538
  %2931 = sub i64 %2930, 76
  %2932 = load i32, i32* %EAX.i537
  %2933 = zext i32 %2932 to i64
  %2934 = load i64, i64* %PC.i536
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC.i536
  %2936 = inttoptr i64 %2931 to i32*
  store i32 %2932, i32* %2936
  store %struct.Memory* %loadMem_4451d7, %struct.Memory** %MEMORY
  %loadMem_4451da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 7
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %EDX.i534 = bitcast %union.anon* %2942 to i32*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 1
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2945 to i64*
  %2946 = load i32, i32* %EDX.i534
  %2947 = zext i32 %2946 to i64
  %2948 = load i64, i64* %PC.i533
  %2949 = add i64 %2948, 2
  store i64 %2949, i64* %PC.i533
  %2950 = and i64 %2947, 4294967295
  store i64 %2950, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_4451da, %struct.Memory** %MEMORY
  %loadMem_4451dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %PC.i532
  %2955 = add i64 %2954, 1
  store i64 %2955, i64* %PC.i532
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2958 = bitcast %union.anon* %2957 to i32*
  %2959 = load i32, i32* %2958, align 8
  %2960 = sext i32 %2959 to i64
  %2961 = lshr i64 %2960, 32
  store i64 %2961, i64* %2956, align 8
  store %struct.Memory* %loadMem_4451dc, %struct.Memory** %MEMORY
  %loadMem_4451dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 9
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RSI.i530 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i531
  %2972 = sub i64 %2971, 76
  %2973 = load i64, i64* %PC.i529
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i529
  %2975 = inttoptr i64 %2972 to i32*
  %2976 = load i32, i32* %2975
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RSI.i530, align 8
  store %struct.Memory* %loadMem_4451dd, %struct.Memory** %MEMORY
  %loadMem_4451e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 9
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %ESI.i525 = bitcast %union.anon* %2983 to i32*
  %2984 = load i32, i32* %ESI.i525
  %2985 = zext i32 %2984 to i64
  %2986 = load i64, i64* %PC.i524
  %2987 = add i64 %2986, 2
  store i64 %2987, i64* %PC.i524
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2989 = bitcast %union.anon* %2988 to i32*
  %2990 = load i32, i32* %2989, align 8
  %2991 = zext i32 %2990 to i64
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2993 = bitcast %union.anon* %2992 to i32*
  %2994 = load i32, i32* %2993, align 8
  %2995 = zext i32 %2994 to i64
  %2996 = shl i64 %2985, 32
  %2997 = ashr exact i64 %2996, 32
  %2998 = shl i64 %2995, 32
  %2999 = or i64 %2998, %2991
  %3000 = sdiv i64 %2999, %2997
  %3001 = shl i64 %3000, 32
  %3002 = ashr exact i64 %3001, 32
  %3003 = icmp eq i64 %3000, %3002
  br i1 %3003, label %3008, label %3004

; <label>:3004:                                   ; preds = %block_4451cc
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3006 = load i64, i64* %3005, align 8
  %3007 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3006, %struct.Memory* %loadMem_4451e0)
  br label %routine_idivl__esi.exit526

; <label>:3008:                                   ; preds = %block_4451cc
  %3009 = srem i64 %2999, %2997
  %3010 = getelementptr inbounds %union.anon, %union.anon* %2988, i64 0, i32 0
  %3011 = and i64 %3000, 4294967295
  store i64 %3011, i64* %3010, align 8
  %3012 = getelementptr inbounds %union.anon, %union.anon* %2992, i64 0, i32 0
  %3013 = and i64 %3009, 4294967295
  store i64 %3013, i64* %3012, align 8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3014, align 1
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3015, align 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3016, align 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3017, align 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3018, align 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3019, align 1
  br label %routine_idivl__esi.exit526

routine_idivl__esi.exit526:                       ; preds = %3004, %3008
  %3020 = phi %struct.Memory* [ %3007, %3004 ], [ %loadMem_4451e0, %3008 ]
  store %struct.Memory* %3020, %struct.Memory** %MEMORY
  %loadMem_4451e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 1
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %3026 to i32*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 5
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RCX.i523
  %3031 = load i32, i32* %EAX.i522
  %3032 = zext i32 %3031 to i64
  %3033 = load i64, i64* %PC.i521
  %3034 = add i64 %3033, 2
  store i64 %3034, i64* %PC.i521
  %3035 = trunc i64 %3030 to i32
  %3036 = add i32 %3031, %3035
  %3037 = zext i32 %3036 to i64
  store i64 %3037, i64* %RCX.i523, align 8
  %3038 = icmp ult i32 %3036, %3035
  %3039 = icmp ult i32 %3036, %3031
  %3040 = or i1 %3038, %3039
  %3041 = zext i1 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3041, i8* %3042, align 1
  %3043 = and i32 %3036, 255
  %3044 = call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3047, i8* %3048, align 1
  %3049 = xor i64 %3032, %3030
  %3050 = trunc i64 %3049 to i32
  %3051 = xor i32 %3050, %3036
  %3052 = lshr i32 %3051, 4
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3054, i8* %3055, align 1
  %3056 = icmp eq i32 %3036, 0
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3057, i8* %3058, align 1
  %3059 = lshr i32 %3036, 31
  %3060 = trunc i32 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3060, i8* %3061, align 1
  %3062 = lshr i32 %3035, 31
  %3063 = lshr i32 %3031, 31
  %3064 = xor i32 %3059, %3062
  %3065 = xor i32 %3059, %3063
  %3066 = add i32 %3064, %3065
  %3067 = icmp eq i32 %3066, 2
  %3068 = zext i1 %3067 to i8
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3068, i8* %3069, align 1
  store %struct.Memory* %loadMem_4451e2, %struct.Memory** %MEMORY
  %loadMem_4451e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 5
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %ECX.i519 = bitcast %union.anon* %3075 to i32*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 15
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RBP.i520
  %3080 = sub i64 %3079, 4
  %3081 = load i32, i32* %ECX.i519
  %3082 = zext i32 %3081 to i64
  %3083 = load i64, i64* %PC.i518
  %3084 = add i64 %3083, 3
  store i64 %3084, i64* %PC.i518
  %3085 = inttoptr i64 %3080 to i32*
  store i32 %3081, i32* %3085
  store %struct.Memory* %loadMem_4451e4, %struct.Memory** %MEMORY
  %loadMem_4451e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 11
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RDI.i516 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 15
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RBP.i517
  %3096 = sub i64 %3095, 24
  %3097 = load i64, i64* %PC.i515
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %PC.i515
  %3099 = inttoptr i64 %3096 to i64*
  %3100 = load i64, i64* %3099
  store i64 %3100, i64* %RDI.i516, align 8
  store %struct.Memory* %loadMem_4451e7, %struct.Memory** %MEMORY
  %loadMem_4451eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 17
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %R8.i514 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RBP.i513
  %3111 = sub i64 %3110, 4
  %3112 = load i64, i64* %PC.i512
  %3113 = add i64 %3112, 4
  store i64 %3113, i64* %PC.i512
  %3114 = inttoptr i64 %3111 to i32*
  %3115 = load i32, i32* %3114
  %3116 = sext i32 %3115 to i64
  store i64 %3116, i64* %R8.i514, align 8
  store %struct.Memory* %loadMem_4451eb, %struct.Memory** %MEMORY
  %loadMem_4451ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 11
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RDI.i510 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 17
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %R8.i511 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RDI.i510
  %3127 = load i64, i64* %R8.i511
  %3128 = mul i64 %3127, 4
  %3129 = add i64 %3126, 488
  %3130 = add i64 %3129, %3128
  %3131 = load i64, i64* %PC.i509
  %3132 = add i64 %3131, 9
  store i64 %3132, i64* %PC.i509
  %3133 = inttoptr i64 %3130 to i32*
  %3134 = load i32, i32* %3133
  %3135 = sub i32 %3134, 1
  %3136 = icmp ult i32 %3134, 1
  %3137 = zext i1 %3136 to i8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3137, i8* %3138, align 1
  %3139 = and i32 %3135, 255
  %3140 = call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3143, i8* %3144, align 1
  %3145 = xor i32 %3134, 1
  %3146 = xor i32 %3145, %3135
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3149, i8* %3150, align 1
  %3151 = icmp eq i32 %3135, 0
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3152, i8* %3153, align 1
  %3154 = lshr i32 %3135, 31
  %3155 = trunc i32 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3155, i8* %3156, align 1
  %3157 = lshr i32 %3134, 31
  %3158 = xor i32 %3154, %3157
  %3159 = add i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3161, i8* %3162, align 1
  store %struct.Memory* %loadMem_4451ef, %struct.Memory** %MEMORY
  %loadMem_4451f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i508
  %3167 = add i64 %3166, 28
  %3168 = load i64, i64* %PC.i508
  %3169 = add i64 %3168, 6
  %3170 = load i64, i64* %PC.i508
  %3171 = add i64 %3170, 6
  store i64 %3171, i64* %PC.i508
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3173 = load i8, i8* %3172, align 1
  store i8 %3173, i8* %BRANCH_TAKEN, align 1
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3175 = icmp ne i8 %3173, 0
  %3176 = select i1 %3175, i64 %3167, i64 %3169
  store i64 %3176, i64* %3174, align 8
  store %struct.Memory* %loadMem_4451f8, %struct.Memory** %MEMORY
  %loadBr_4451f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4451f8 = icmp eq i8 %loadBr_4451f8, 1
  br i1 %cmpBr_4451f8, label %block_.L_445214, label %block_4451fe

block_4451fe:                                     ; preds = %routine_idivl__esi.exit526
  %loadMem_4451fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 1
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i507
  %3187 = sub i64 %3186, 24
  %3188 = load i64, i64* %PC.i505
  %3189 = add i64 %3188, 4
  store i64 %3189, i64* %PC.i505
  %3190 = inttoptr i64 %3187 to i64*
  %3191 = load i64, i64* %3190
  store i64 %3191, i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_4451fe, %struct.Memory** %MEMORY
  %loadMem_445202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 5
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 15
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RBP.i504
  %3202 = sub i64 %3201, 4
  %3203 = load i64, i64* %PC.i502
  %3204 = add i64 %3203, 4
  store i64 %3204, i64* %PC.i502
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205
  %3207 = sext i32 %3206 to i64
  store i64 %3207, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_445202, %struct.Memory** %MEMORY
  %loadMem_445206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 1
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 5
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RAX.i500
  %3218 = load i64, i64* %RCX.i501
  %3219 = mul i64 %3218, 4
  %3220 = add i64 %3217, 488
  %3221 = add i64 %3220, %3219
  %3222 = load i64, i64* %PC.i499
  %3223 = add i64 %3222, 8
  store i64 %3223, i64* %PC.i499
  %3224 = inttoptr i64 %3221 to i32*
  %3225 = load i32, i32* %3224
  %3226 = sub i32 %3225, 2
  %3227 = icmp ult i32 %3225, 2
  %3228 = zext i1 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3228, i8* %3229, align 1
  %3230 = and i32 %3226, 255
  %3231 = call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3234, i8* %3235, align 1
  %3236 = xor i32 %3225, 2
  %3237 = xor i32 %3236, %3226
  %3238 = lshr i32 %3237, 4
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3240, i8* %3241, align 1
  %3242 = icmp eq i32 %3226, 0
  %3243 = zext i1 %3242 to i8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3243, i8* %3244, align 1
  %3245 = lshr i32 %3226, 31
  %3246 = trunc i32 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3246, i8* %3247, align 1
  %3248 = lshr i32 %3225, 31
  %3249 = xor i32 %3245, %3248
  %3250 = add i32 %3249, %3248
  %3251 = icmp eq i32 %3250, 2
  %3252 = zext i1 %3251 to i8
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3252, i8* %3253, align 1
  store %struct.Memory* %loadMem_445206, %struct.Memory** %MEMORY
  %loadMem_44520e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i498
  %3258 = add i64 %3257, 134
  %3259 = load i64, i64* %PC.i498
  %3260 = add i64 %3259, 6
  %3261 = load i64, i64* %PC.i498
  %3262 = add i64 %3261, 6
  store i64 %3262, i64* %PC.i498
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3264 = load i8, i8* %3263, align 1
  %3265 = icmp eq i8 %3264, 0
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %BRANCH_TAKEN, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3268 = select i1 %3265, i64 %3258, i64 %3260
  store i64 %3268, i64* %3267, align 8
  store %struct.Memory* %loadMem_44520e, %struct.Memory** %MEMORY
  %loadBr_44520e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44520e = icmp eq i8 %loadBr_44520e, 1
  br i1 %cmpBr_44520e, label %block_.L_445294, label %block_.L_445214

block_.L_445214:                                  ; preds = %block_4451fe, %routine_idivl__esi.exit526
  %loadMem_445214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 1
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i497
  %3279 = sub i64 %3278, 24
  %3280 = load i64, i64* %PC.i495
  %3281 = add i64 %3280, 4
  store i64 %3281, i64* %PC.i495
  %3282 = inttoptr i64 %3279 to i64*
  %3283 = load i64, i64* %3282
  store i64 %3283, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_445214, %struct.Memory** %MEMORY
  %loadMem_445218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 5
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %3289 to i64*
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 15
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3292 to i64*
  %3293 = load i64, i64* %RBP.i494
  %3294 = sub i64 %3293, 4
  %3295 = load i64, i64* %PC.i492
  %3296 = add i64 %3295, 4
  store i64 %3296, i64* %PC.i492
  %3297 = inttoptr i64 %3294 to i32*
  %3298 = load i32, i32* %3297
  %3299 = sext i32 %3298 to i64
  store i64 %3299, i64* %RCX.i493, align 8
  store %struct.Memory* %loadMem_445218, %struct.Memory** %MEMORY
  %loadMem_44521c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 1
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 5
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %RAX.i490
  %3310 = load i64, i64* %RCX.i491
  %3311 = mul i64 %3310, 4
  %3312 = add i64 %3309, 472
  %3313 = add i64 %3312, %3311
  %3314 = load i64, i64* %PC.i489
  %3315 = add i64 %3314, 8
  store i64 %3315, i64* %PC.i489
  %3316 = inttoptr i64 %3313 to i32*
  %3317 = load i32, i32* %3316
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3318, align 1
  %3319 = and i32 %3317, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3325, align 1
  %3326 = icmp eq i32 %3317, 0
  %3327 = zext i1 %3326 to i8
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3327, i8* %3328, align 1
  %3329 = lshr i32 %3317, 31
  %3330 = trunc i32 %3329 to i8
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3330, i8* %3331, align 1
  %3332 = lshr i32 %3317, 31
  %3333 = xor i32 %3329, %3332
  %3334 = add i32 %3333, %3332
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3336, i8* %3337, align 1
  store %struct.Memory* %loadMem_44521c, %struct.Memory** %MEMORY
  %loadMem_445224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3340 to i64*
  %3341 = load i64, i64* %PC.i488
  %3342 = add i64 %3341, 112
  %3343 = load i64, i64* %PC.i488
  %3344 = add i64 %3343, 6
  %3345 = load i64, i64* %PC.i488
  %3346 = add i64 %3345, 6
  store i64 %3346, i64* %PC.i488
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3348 = load i8, i8* %3347, align 1
  store i8 %3348, i8* %BRANCH_TAKEN, align 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3350 = icmp ne i8 %3348, 0
  %3351 = select i1 %3350, i64 %3342, i64 %3344
  store i64 %3351, i64* %3349, align 8
  store %struct.Memory* %loadMem_445224, %struct.Memory** %MEMORY
  %loadBr_445224 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445224 = icmp eq i8 %loadBr_445224, 1
  br i1 %cmpBr_445224, label %block_.L_445294, label %block_44522a

block_44522a:                                     ; preds = %block_.L_445214
  %loadMem_44522a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 5
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %ECX.i486 = bitcast %union.anon* %3357 to i32*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 5
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %3360 to i64*
  %3361 = load i64, i64* %RCX.i487
  %3362 = load i32, i32* %ECX.i486
  %3363 = zext i32 %3362 to i64
  %3364 = load i64, i64* %PC.i485
  %3365 = add i64 %3364, 2
  store i64 %3365, i64* %PC.i485
  %3366 = xor i64 %3363, %3361
  %3367 = trunc i64 %3366 to i32
  %3368 = and i64 %3366, 4294967295
  store i64 %3368, i64* %RCX.i487, align 8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3369, align 1
  %3370 = and i32 %3367, 255
  %3371 = call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3374, i8* %3375, align 1
  %3376 = icmp eq i32 %3367, 0
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3377, i8* %3378, align 1
  %3379 = lshr i32 %3367, 31
  %3380 = trunc i32 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3380, i8* %3381, align 1
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3382, align 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3383, align 1
  store %struct.Memory* %loadMem_44522a, %struct.Memory** %MEMORY
  %loadMem_44522c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 1
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 15
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3392 to i64*
  %3393 = load i64, i64* %RBP.i484
  %3394 = sub i64 %3393, 24
  %3395 = load i64, i64* %PC.i482
  %3396 = add i64 %3395, 4
  store i64 %3396, i64* %PC.i482
  %3397 = inttoptr i64 %3394 to i64*
  %3398 = load i64, i64* %3397
  store i64 %3398, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_44522c, %struct.Memory** %MEMORY
  %loadMem_445230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 7
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 15
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RBP.i481
  %3409 = sub i64 %3408, 4
  %3410 = load i64, i64* %PC.i479
  %3411 = add i64 %3410, 4
  store i64 %3411, i64* %PC.i479
  %3412 = inttoptr i64 %3409 to i32*
  %3413 = load i32, i32* %3412
  %3414 = sext i32 %3413 to i64
  store i64 %3414, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_445230, %struct.Memory** %MEMORY
  %loadMem_445234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 1
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 7
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 11
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RDI.i478 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RAX.i476
  %3428 = load i64, i64* %RDX.i477
  %3429 = mul i64 %3428, 4
  %3430 = add i64 %3427, 472
  %3431 = add i64 %3430, %3429
  %3432 = load i64, i64* %PC.i475
  %3433 = add i64 %3432, 7
  store i64 %3433, i64* %PC.i475
  %3434 = inttoptr i64 %3431 to i32*
  %3435 = load i32, i32* %3434
  %3436 = zext i32 %3435 to i64
  store i64 %3436, i64* %RDI.i478, align 8
  store %struct.Memory* %loadMem_445234, %struct.Memory** %MEMORY
  %loadMem_44523b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 9
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RSI.i473 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 15
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RBP.i474
  %3447 = sub i64 %3446, 12
  %3448 = load i64, i64* %PC.i472
  %3449 = add i64 %3448, 3
  store i64 %3449, i64* %PC.i472
  %3450 = inttoptr i64 %3447 to i32*
  %3451 = load i32, i32* %3450
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RSI.i473, align 8
  store %struct.Memory* %loadMem_44523b, %struct.Memory** %MEMORY
  %loadMem_44523e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 7
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RBP.i471
  %3463 = sub i64 %3462, 8
  %3464 = load i64, i64* %PC.i469
  %3465 = add i64 %3464, 3
  store i64 %3465, i64* %PC.i469
  %3466 = inttoptr i64 %3463 to i32*
  %3467 = load i32, i32* %3466
  %3468 = zext i32 %3467 to i64
  store i64 %3468, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_44523e, %struct.Memory** %MEMORY
  %loadMem_445241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 1
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %PC.i467
  %3476 = add i64 %3475, 8
  store i64 %3476, i64* %PC.i467
  %3477 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %3477, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_445241, %struct.Memory** %MEMORY
  %loadMem_445249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RAX.i466
  %3485 = add i64 %3484, 6480
  %3486 = load i64, i64* %PC.i465
  %3487 = add i64 %3486, 7
  store i64 %3487, i64* %PC.i465
  %3488 = inttoptr i64 %3485 to i64*
  %3489 = load i64, i64* %3488
  store i64 %3489, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_445249, %struct.Memory** %MEMORY
  %loadMem_445250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RAX.i464
  %3497 = add i64 %3496, 8
  %3498 = load i64, i64* %PC.i463
  %3499 = add i64 %3498, 4
  store i64 %3499, i64* %PC.i463
  %3500 = inttoptr i64 %3497 to i64*
  %3501 = load i64, i64* %3500
  store i64 %3501, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_445250, %struct.Memory** %MEMORY
  %loadMem_445254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 17
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %R8.i462 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %PC.i461
  %3509 = add i64 %3508, 8
  store i64 %3509, i64* %PC.i461
  %3510 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3510, i64* %R8.i462, align 8
  store %struct.Memory* %loadMem_445254, %struct.Memory** %MEMORY
  %loadMem_44525c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 19
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %R9D.i459 = bitcast %union.anon* %3516 to i32*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 17
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %R8.i460 = bitcast %union.anon* %3519 to i64*
  %3520 = bitcast i32* %R9D.i459 to i64*
  %3521 = load i64, i64* %R8.i460
  %3522 = add i64 %3521, 144
  %3523 = load i64, i64* %PC.i458
  %3524 = add i64 %3523, 7
  store i64 %3524, i64* %PC.i458
  %3525 = inttoptr i64 %3522 to i32*
  %3526 = load i32, i32* %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %3520, align 8
  store %struct.Memory* %loadMem_44525c, %struct.Memory** %MEMORY
  %loadMem_445263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 19
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %R9D.i456 = bitcast %union.anon* %3533 to i32*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %3536 to i64*
  %3537 = bitcast i32* %R9D.i456 to i64*
  %3538 = load i32, i32* %R9D.i456
  %3539 = zext i32 %3538 to i64
  %3540 = load i64, i64* %RBP.i457
  %3541 = sub i64 %3540, 12
  %3542 = load i64, i64* %PC.i455
  %3543 = add i64 %3542, 4
  store i64 %3543, i64* %PC.i455
  %3544 = inttoptr i64 %3541 to i32*
  %3545 = load i32, i32* %3544
  %3546 = add i32 %3545, %3538
  %3547 = zext i32 %3546 to i64
  store i64 %3547, i64* %3537, align 8
  %3548 = icmp ult i32 %3546, %3538
  %3549 = icmp ult i32 %3546, %3545
  %3550 = or i1 %3548, %3549
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3551, i8* %3552, align 1
  %3553 = and i32 %3546, 255
  %3554 = call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3557, i8* %3558, align 1
  %3559 = xor i32 %3545, %3538
  %3560 = xor i32 %3559, %3546
  %3561 = lshr i32 %3560, 4
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3563, i8* %3564, align 1
  %3565 = icmp eq i32 %3546, 0
  %3566 = zext i1 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3566, i8* %3567, align 1
  %3568 = lshr i32 %3546, 31
  %3569 = trunc i32 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3569, i8* %3570, align 1
  %3571 = lshr i32 %3538, 31
  %3572 = lshr i32 %3545, 31
  %3573 = xor i32 %3568, %3571
  %3574 = xor i32 %3568, %3572
  %3575 = add i32 %3573, %3574
  %3576 = icmp eq i32 %3575, 2
  %3577 = zext i1 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3577, i8* %3578, align 1
  store %struct.Memory* %loadMem_445263, %struct.Memory** %MEMORY
  %loadMem_445267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 19
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %R9D.i453 = bitcast %union.anon* %3584 to i32*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 17
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %R8.i454 = bitcast %union.anon* %3587 to i64*
  %3588 = load i32, i32* %R9D.i453
  %3589 = zext i32 %3588 to i64
  %3590 = load i64, i64* %PC.i452
  %3591 = add i64 %3590, 3
  store i64 %3591, i64* %PC.i452
  %3592 = shl i64 %3589, 32
  %3593 = ashr exact i64 %3592, 32
  store i64 %3593, i64* %R8.i454, align 8
  store %struct.Memory* %loadMem_445267, %struct.Memory** %MEMORY
  %loadMem_44526a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 1
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 17
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %R8.i451 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RAX.i450
  %3604 = load i64, i64* %R8.i451
  %3605 = mul i64 %3604, 8
  %3606 = add i64 %3605, %3603
  %3607 = load i64, i64* %PC.i449
  %3608 = add i64 %3607, 4
  store i64 %3608, i64* %PC.i449
  %3609 = inttoptr i64 %3606 to i64*
  %3610 = load i64, i64* %3609
  store i64 %3610, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_44526a, %struct.Memory** %MEMORY
  %loadMem_44526e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 17
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %R8.i448 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %PC.i447
  %3618 = add i64 %3617, 8
  store i64 %3618, i64* %PC.i447
  %3619 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3619, i64* %R8.i448, align 8
  store %struct.Memory* %loadMem_44526e, %struct.Memory** %MEMORY
  %loadMem_445276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 19
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %R9D.i445 = bitcast %union.anon* %3625 to i32*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 17
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %R8.i446 = bitcast %union.anon* %3628 to i64*
  %3629 = bitcast i32* %R9D.i445 to i64*
  %3630 = load i64, i64* %R8.i446
  %3631 = add i64 %3630, 148
  %3632 = load i64, i64* %PC.i444
  %3633 = add i64 %3632, 7
  store i64 %3633, i64* %PC.i444
  %3634 = inttoptr i64 %3631 to i32*
  %3635 = load i32, i32* %3634
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %3629, align 8
  store %struct.Memory* %loadMem_445276, %struct.Memory** %MEMORY
  %loadMem_44527d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 19
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %R9D.i442 = bitcast %union.anon* %3642 to i32*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 15
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3645 to i64*
  %3646 = bitcast i32* %R9D.i442 to i64*
  %3647 = load i32, i32* %R9D.i442
  %3648 = zext i32 %3647 to i64
  %3649 = load i64, i64* %RBP.i443
  %3650 = sub i64 %3649, 8
  %3651 = load i64, i64* %PC.i441
  %3652 = add i64 %3651, 4
  store i64 %3652, i64* %PC.i441
  %3653 = inttoptr i64 %3650 to i32*
  %3654 = load i32, i32* %3653
  %3655 = add i32 %3654, %3647
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %3646, align 8
  %3657 = icmp ult i32 %3655, %3647
  %3658 = icmp ult i32 %3655, %3654
  %3659 = or i1 %3657, %3658
  %3660 = zext i1 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3660, i8* %3661, align 1
  %3662 = and i32 %3655, 255
  %3663 = call i32 @llvm.ctpop.i32(i32 %3662)
  %3664 = trunc i32 %3663 to i8
  %3665 = and i8 %3664, 1
  %3666 = xor i8 %3665, 1
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3666, i8* %3667, align 1
  %3668 = xor i32 %3654, %3647
  %3669 = xor i32 %3668, %3655
  %3670 = lshr i32 %3669, 4
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3672, i8* %3673, align 1
  %3674 = icmp eq i32 %3655, 0
  %3675 = zext i1 %3674 to i8
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3675, i8* %3676, align 1
  %3677 = lshr i32 %3655, 31
  %3678 = trunc i32 %3677 to i8
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3678, i8* %3679, align 1
  %3680 = lshr i32 %3647, 31
  %3681 = lshr i32 %3654, 31
  %3682 = xor i32 %3677, %3680
  %3683 = xor i32 %3677, %3681
  %3684 = add i32 %3682, %3683
  %3685 = icmp eq i32 %3684, 2
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3686, i8* %3687, align 1
  store %struct.Memory* %loadMem_44527d, %struct.Memory** %MEMORY
  %loadMem_445281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 19
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %R9D.i439 = bitcast %union.anon* %3693 to i32*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 17
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %R8.i440 = bitcast %union.anon* %3696 to i64*
  %3697 = load i32, i32* %R9D.i439
  %3698 = zext i32 %3697 to i64
  %3699 = load i64, i64* %PC.i438
  %3700 = add i64 %3699, 3
  store i64 %3700, i64* %PC.i438
  %3701 = shl i64 %3698, 32
  %3702 = ashr exact i64 %3701, 32
  store i64 %3702, i64* %R8.i440, align 8
  store %struct.Memory* %loadMem_445281, %struct.Memory** %MEMORY
  %loadMem_445284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 17
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %R8D.i435 = bitcast %union.anon* %3708 to i32*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 1
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 17
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %R8.i437 = bitcast %union.anon* %3714 to i64*
  %3715 = bitcast i32* %R8D.i435 to i64*
  %3716 = load i64, i64* %RAX.i436
  %3717 = load i64, i64* %R8.i437
  %3718 = mul i64 %3717, 2
  %3719 = add i64 %3718, %3716
  %3720 = load i64, i64* %PC.i434
  %3721 = add i64 %3720, 5
  store i64 %3721, i64* %PC.i434
  %3722 = inttoptr i64 %3719 to i16*
  %3723 = load i16, i16* %3722
  %3724 = sext i16 %3723 to i64
  %3725 = and i64 %3724, 4294967295
  store i64 %3725, i64* %3715, align 8
  store %struct.Memory* %loadMem_445284, %struct.Memory** %MEMORY
  %loadMem1_445289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %PC.i433
  %3730 = add i64 %3729, 12391
  %3731 = load i64, i64* %PC.i433
  %3732 = add i64 %3731, 5
  %3733 = load i64, i64* %PC.i433
  %3734 = add i64 %3733, 5
  store i64 %3734, i64* %PC.i433
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3736 = load i64, i64* %3735, align 8
  %3737 = add i64 %3736, -8
  %3738 = inttoptr i64 %3737 to i64*
  store i64 %3732, i64* %3738
  store i64 %3737, i64* %3735, align 8
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3730, i64* %3739, align 8
  store %struct.Memory* %loadMem1_445289, %struct.Memory** %MEMORY
  %loadMem2_445289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_445289 = load i64, i64* %3
  %call2_445289 = call %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* %0, i64 %loadPC_445289, %struct.Memory* %loadMem2_445289)
  store %struct.Memory* %call2_445289, %struct.Memory** %MEMORY
  %loadMem_44528e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 1
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 15
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RAX.i431
  %3750 = load i64, i64* %RBP.i432
  %3751 = sub i64 %3750, 28
  %3752 = load i64, i64* %PC.i430
  %3753 = add i64 %3752, 3
  store i64 %3753, i64* %PC.i430
  %3754 = trunc i64 %3749 to i32
  %3755 = inttoptr i64 %3751 to i32*
  %3756 = load i32, i32* %3755
  %3757 = add i32 %3756, %3754
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RAX.i431, align 8
  %3759 = icmp ult i32 %3757, %3754
  %3760 = icmp ult i32 %3757, %3756
  %3761 = or i1 %3759, %3760
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3762, i8* %3763, align 1
  %3764 = and i32 %3757, 255
  %3765 = call i32 @llvm.ctpop.i32(i32 %3764)
  %3766 = trunc i32 %3765 to i8
  %3767 = and i8 %3766, 1
  %3768 = xor i8 %3767, 1
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3768, i8* %3769, align 1
  %3770 = xor i32 %3756, %3754
  %3771 = xor i32 %3770, %3757
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3774, i8* %3775, align 1
  %3776 = icmp eq i32 %3757, 0
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3777, i8* %3778, align 1
  %3779 = lshr i32 %3757, 31
  %3780 = trunc i32 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3754, 31
  %3783 = lshr i32 %3756, 31
  %3784 = xor i32 %3779, %3782
  %3785 = xor i32 %3779, %3783
  %3786 = add i32 %3784, %3785
  %3787 = icmp eq i32 %3786, 2
  %3788 = zext i1 %3787 to i8
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3788, i8* %3789, align 1
  store %struct.Memory* %loadMem_44528e, %struct.Memory** %MEMORY
  %loadMem_445291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 1
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %3795 to i32*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 15
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3798 to i64*
  %3799 = load i64, i64* %RBP.i429
  %3800 = sub i64 %3799, 28
  %3801 = load i32, i32* %EAX.i428
  %3802 = zext i32 %3801 to i64
  %3803 = load i64, i64* %PC.i427
  %3804 = add i64 %3803, 3
  store i64 %3804, i64* %PC.i427
  %3805 = inttoptr i64 %3800 to i32*
  store i32 %3801, i32* %3805
  store %struct.Memory* %loadMem_445291, %struct.Memory** %MEMORY
  br label %block_.L_445294

block_.L_445294:                                  ; preds = %block_44522a, %block_.L_445214, %block_4451fe
  %loadMem_445294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %PC.i426
  %3810 = add i64 %3809, 5
  %3811 = load i64, i64* %PC.i426
  %3812 = add i64 %3811, 5
  store i64 %3812, i64* %PC.i426
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3810, i64* %3813, align 8
  store %struct.Memory* %loadMem_445294, %struct.Memory** %MEMORY
  br label %block_.L_445299

block_.L_445299:                                  ; preds = %block_.L_445294
  %loadMem_445299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 15
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RBP.i425
  %3824 = sub i64 %3823, 36
  %3825 = load i64, i64* %PC.i423
  %3826 = add i64 %3825, 3
  store i64 %3826, i64* %PC.i423
  %3827 = inttoptr i64 %3824 to i32*
  %3828 = load i32, i32* %3827
  %3829 = zext i32 %3828 to i64
  store i64 %3829, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_445299, %struct.Memory** %MEMORY
  %loadMem_44529c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 1
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %RAX.i421
  %3840 = load i64, i64* %RBP.i422
  %3841 = sub i64 %3840, 12
  %3842 = load i64, i64* %PC.i420
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i420
  %3844 = trunc i64 %3839 to i32
  %3845 = inttoptr i64 %3841 to i32*
  %3846 = load i32, i32* %3845
  %3847 = add i32 %3846, %3844
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RAX.i421, align 8
  %3849 = icmp ult i32 %3847, %3844
  %3850 = icmp ult i32 %3847, %3846
  %3851 = or i1 %3849, %3850
  %3852 = zext i1 %3851 to i8
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3852, i8* %3853, align 1
  %3854 = and i32 %3847, 255
  %3855 = call i32 @llvm.ctpop.i32(i32 %3854)
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  %3858 = xor i8 %3857, 1
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3858, i8* %3859, align 1
  %3860 = xor i32 %3846, %3844
  %3861 = xor i32 %3860, %3847
  %3862 = lshr i32 %3861, 4
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3864, i8* %3865, align 1
  %3866 = icmp eq i32 %3847, 0
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3867, i8* %3868, align 1
  %3869 = lshr i32 %3847, 31
  %3870 = trunc i32 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i32 %3844, 31
  %3873 = lshr i32 %3846, 31
  %3874 = xor i32 %3869, %3872
  %3875 = xor i32 %3869, %3873
  %3876 = add i32 %3874, %3875
  %3877 = icmp eq i32 %3876, 2
  %3878 = zext i1 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3878, i8* %3879, align 1
  store %struct.Memory* %loadMem_44529c, %struct.Memory** %MEMORY
  %loadMem_44529f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %3885 to i32*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i419
  %3890 = sub i64 %3889, 12
  %3891 = load i32, i32* %EAX.i418
  %3892 = zext i32 %3891 to i64
  %3893 = load i64, i64* %PC.i417
  %3894 = add i64 %3893, 3
  store i64 %3894, i64* %PC.i417
  %3895 = inttoptr i64 %3890 to i32*
  store i32 %3891, i32* %3895
  store %struct.Memory* %loadMem_44529f, %struct.Memory** %MEMORY
  %loadMem_4452a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %PC.i416
  %3900 = add i64 %3899, -224
  %3901 = load i64, i64* %PC.i416
  %3902 = add i64 %3901, 5
  store i64 %3902, i64* %PC.i416
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3900, i64* %3903, align 8
  store %struct.Memory* %loadMem_4452a2, %struct.Memory** %MEMORY
  br label %block_.L_4451c2

block_.L_4452a7:                                  ; preds = %block_.L_4451c2
  %loadMem_4452a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %PC.i415
  %3908 = add i64 %3907, 5
  %3909 = load i64, i64* %PC.i415
  %3910 = add i64 %3909, 5
  store i64 %3910, i64* %PC.i415
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3908, i64* %3911, align 8
  store %struct.Memory* %loadMem_4452a7, %struct.Memory** %MEMORY
  br label %block_.L_4452ac

block_.L_4452ac:                                  ; preds = %block_.L_4452a7
  %loadMem_4452ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3917 to i64*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 15
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %RBP.i414
  %3922 = sub i64 %3921, 40
  %3923 = load i64, i64* %PC.i412
  %3924 = add i64 %3923, 3
  store i64 %3924, i64* %PC.i412
  %3925 = inttoptr i64 %3922 to i32*
  %3926 = load i32, i32* %3925
  %3927 = zext i32 %3926 to i64
  store i64 %3927, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_4452ac, %struct.Memory** %MEMORY
  %loadMem_4452af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 1
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 15
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RAX.i410
  %3938 = load i64, i64* %RBP.i411
  %3939 = sub i64 %3938, 8
  %3940 = load i64, i64* %PC.i409
  %3941 = add i64 %3940, 3
  store i64 %3941, i64* %PC.i409
  %3942 = trunc i64 %3937 to i32
  %3943 = inttoptr i64 %3939 to i32*
  %3944 = load i32, i32* %3943
  %3945 = add i32 %3944, %3942
  %3946 = zext i32 %3945 to i64
  store i64 %3946, i64* %RAX.i410, align 8
  %3947 = icmp ult i32 %3945, %3942
  %3948 = icmp ult i32 %3945, %3944
  %3949 = or i1 %3947, %3948
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3950, i8* %3951, align 1
  %3952 = and i32 %3945, 255
  %3953 = call i32 @llvm.ctpop.i32(i32 %3952)
  %3954 = trunc i32 %3953 to i8
  %3955 = and i8 %3954, 1
  %3956 = xor i8 %3955, 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3956, i8* %3957, align 1
  %3958 = xor i32 %3944, %3942
  %3959 = xor i32 %3958, %3945
  %3960 = lshr i32 %3959, 4
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3962, i8* %3963, align 1
  %3964 = icmp eq i32 %3945, 0
  %3965 = zext i1 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3965, i8* %3966, align 1
  %3967 = lshr i32 %3945, 31
  %3968 = trunc i32 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3968, i8* %3969, align 1
  %3970 = lshr i32 %3942, 31
  %3971 = lshr i32 %3944, 31
  %3972 = xor i32 %3967, %3970
  %3973 = xor i32 %3967, %3971
  %3974 = add i32 %3972, %3973
  %3975 = icmp eq i32 %3974, 2
  %3976 = zext i1 %3975 to i8
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3976, i8* %3977, align 1
  store %struct.Memory* %loadMem_4452af, %struct.Memory** %MEMORY
  %loadMem_4452b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 1
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %3983 to i32*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 15
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %3986 to i64*
  %3987 = load i64, i64* %RBP.i408
  %3988 = sub i64 %3987, 8
  %3989 = load i32, i32* %EAX.i407
  %3990 = zext i32 %3989 to i64
  %3991 = load i64, i64* %PC.i406
  %3992 = add i64 %3991, 3
  store i64 %3992, i64* %PC.i406
  %3993 = inttoptr i64 %3988 to i32*
  store i32 %3989, i32* %3993
  store %struct.Memory* %loadMem_4452b2, %struct.Memory** %MEMORY
  %loadMem_4452b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 33
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %PC.i405
  %3998 = add i64 %3997, -260
  %3999 = load i64, i64* %PC.i405
  %4000 = add i64 %3999, 5
  store i64 %4000, i64* %PC.i405
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3998, i64* %4001, align 8
  store %struct.Memory* %loadMem_4452b5, %struct.Memory** %MEMORY
  br label %block_.L_4451b1

block_.L_4452ba:                                  ; preds = %block_.L_4451b1
  %loadMem_4452ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 33
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %PC.i404
  %4006 = add i64 %4005, 5
  %4007 = load i64, i64* %PC.i404
  %4008 = add i64 %4007, 5
  store i64 %4008, i64* %PC.i404
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4006, i64* %4009, align 8
  store %struct.Memory* %loadMem_4452ba, %struct.Memory** %MEMORY
  br label %block_.L_4452bf

block_.L_4452bf:                                  ; preds = %block_.L_4452ba, %block_44508e
  %loadMem_4452bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %PC.i403
  %4014 = add i64 %4013, 5
  %4015 = load i64, i64* %PC.i403
  %4016 = add i64 %4015, 5
  store i64 %4016, i64* %PC.i403
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4014, i64* %4017, align 8
  store %struct.Memory* %loadMem_4452bf, %struct.Memory** %MEMORY
  br label %block_.L_4452c4

block_.L_4452c4:                                  ; preds = %block_.L_4452bf, %block_44504b, %block_44503d, %block_44502f, %block_.L_44500d
  %loadMem_4452c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i402
  %4028 = sub i64 %4027, 24
  %4029 = load i64, i64* %PC.i400
  %4030 = add i64 %4029, 4
  store i64 %4030, i64* %PC.i400
  %4031 = inttoptr i64 %4028 to i64*
  %4032 = load i64, i64* %4031
  store i64 %4032, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_4452c4, %struct.Memory** %MEMORY
  %loadMem_4452c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 1
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RAX.i399
  %4040 = add i64 %4039, 72
  %4041 = load i64, i64* %PC.i398
  %4042 = add i64 %4041, 4
  store i64 %4042, i64* %PC.i398
  %4043 = inttoptr i64 %4040 to i32*
  %4044 = load i32, i32* %4043
  %4045 = sub i32 %4044, 9
  %4046 = icmp ult i32 %4044, 9
  %4047 = zext i1 %4046 to i8
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4047, i8* %4048, align 1
  %4049 = and i32 %4045, 255
  %4050 = call i32 @llvm.ctpop.i32(i32 %4049)
  %4051 = trunc i32 %4050 to i8
  %4052 = and i8 %4051, 1
  %4053 = xor i8 %4052, 1
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4053, i8* %4054, align 1
  %4055 = xor i32 %4044, 9
  %4056 = xor i32 %4055, %4045
  %4057 = lshr i32 %4056, 4
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4059, i8* %4060, align 1
  %4061 = icmp eq i32 %4045, 0
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4062, i8* %4063, align 1
  %4064 = lshr i32 %4045, 31
  %4065 = trunc i32 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4065, i8* %4066, align 1
  %4067 = lshr i32 %4044, 31
  %4068 = xor i32 %4064, %4067
  %4069 = add i32 %4068, %4067
  %4070 = icmp eq i32 %4069, 2
  %4071 = zext i1 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4071, i8* %4072, align 1
  store %struct.Memory* %loadMem_4452c8, %struct.Memory** %MEMORY
  %loadMem_4452cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %PC.i397
  %4077 = add i64 %4076, 352
  %4078 = load i64, i64* %PC.i397
  %4079 = add i64 %4078, 6
  %4080 = load i64, i64* %PC.i397
  %4081 = add i64 %4080, 6
  store i64 %4081, i64* %PC.i397
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4083 = load i8, i8* %4082, align 1
  store i8 %4083, i8* %BRANCH_TAKEN, align 1
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4085 = icmp ne i8 %4083, 0
  %4086 = select i1 %4085, i64 %4077, i64 %4079
  store i64 %4086, i64* %4084, align 8
  store %struct.Memory* %loadMem_4452cc, %struct.Memory** %MEMORY
  %loadBr_4452cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4452cc = icmp eq i8 %loadBr_4452cc, 1
  br i1 %cmpBr_4452cc, label %block_.L_44542c, label %block_4452d2

block_4452d2:                                     ; preds = %block_.L_4452c4
  %loadMem_4452d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 1
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 15
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RBP.i396
  %4097 = sub i64 %4096, 24
  %4098 = load i64, i64* %PC.i394
  %4099 = add i64 %4098, 4
  store i64 %4099, i64* %PC.i394
  %4100 = inttoptr i64 %4097 to i64*
  %4101 = load i64, i64* %4100
  store i64 %4101, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_4452d2, %struct.Memory** %MEMORY
  %loadMem_4452d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 1
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %4107 to i64*
  %4108 = load i64, i64* %RAX.i393
  %4109 = add i64 %4108, 72
  %4110 = load i64, i64* %PC.i392
  %4111 = add i64 %4110, 4
  store i64 %4111, i64* %PC.i392
  %4112 = inttoptr i64 %4109 to i32*
  %4113 = load i32, i32* %4112
  %4114 = sub i32 %4113, 10
  %4115 = icmp ult i32 %4113, 10
  %4116 = zext i1 %4115 to i8
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4116, i8* %4117, align 1
  %4118 = and i32 %4114, 255
  %4119 = call i32 @llvm.ctpop.i32(i32 %4118)
  %4120 = trunc i32 %4119 to i8
  %4121 = and i8 %4120, 1
  %4122 = xor i8 %4121, 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4122, i8* %4123, align 1
  %4124 = xor i32 %4113, 10
  %4125 = xor i32 %4124, %4114
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4128, i8* %4129, align 1
  %4130 = icmp eq i32 %4114, 0
  %4131 = zext i1 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4131, i8* %4132, align 1
  %4133 = lshr i32 %4114, 31
  %4134 = trunc i32 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4134, i8* %4135, align 1
  %4136 = lshr i32 %4113, 31
  %4137 = xor i32 %4133, %4136
  %4138 = add i32 %4137, %4136
  %4139 = icmp eq i32 %4138, 2
  %4140 = zext i1 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4140, i8* %4141, align 1
  store %struct.Memory* %loadMem_4452d6, %struct.Memory** %MEMORY
  %loadMem_4452da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %PC.i391
  %4146 = add i64 %4145, 338
  %4147 = load i64, i64* %PC.i391
  %4148 = add i64 %4147, 6
  %4149 = load i64, i64* %PC.i391
  %4150 = add i64 %4149, 6
  store i64 %4150, i64* %PC.i391
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4152 = load i8, i8* %4151, align 1
  store i8 %4152, i8* %BRANCH_TAKEN, align 1
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4154 = icmp ne i8 %4152, 0
  %4155 = select i1 %4154, i64 %4146, i64 %4148
  store i64 %4155, i64* %4153, align 8
  store %struct.Memory* %loadMem_4452da, %struct.Memory** %MEMORY
  %loadBr_4452da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4452da = icmp eq i8 %loadBr_4452da, 1
  br i1 %cmpBr_4452da, label %block_.L_44542c, label %block_4452e0

block_4452e0:                                     ; preds = %block_4452d2
  %loadMem_4452e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 15
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RBP.i390
  %4166 = sub i64 %4165, 24
  %4167 = load i64, i64* %PC.i388
  %4168 = add i64 %4167, 4
  store i64 %4168, i64* %PC.i388
  %4169 = inttoptr i64 %4166 to i64*
  %4170 = load i64, i64* %4169
  store i64 %4170, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_4452e0, %struct.Memory** %MEMORY
  %loadMem_4452e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 1
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RAX.i387
  %4178 = add i64 %4177, 72
  %4179 = load i64, i64* %PC.i386
  %4180 = add i64 %4179, 4
  store i64 %4180, i64* %PC.i386
  %4181 = inttoptr i64 %4178 to i32*
  %4182 = load i32, i32* %4181
  %4183 = sub i32 %4182, 13
  %4184 = icmp ult i32 %4182, 13
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4185, i8* %4186, align 1
  %4187 = and i32 %4183, 255
  %4188 = call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4191, i8* %4192, align 1
  %4193 = xor i32 %4182, 13
  %4194 = xor i32 %4193, %4183
  %4195 = lshr i32 %4194, 4
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4197, i8* %4198, align 1
  %4199 = icmp eq i32 %4183, 0
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4200, i8* %4201, align 1
  %4202 = lshr i32 %4183, 31
  %4203 = trunc i32 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4203, i8* %4204, align 1
  %4205 = lshr i32 %4182, 31
  %4206 = xor i32 %4202, %4205
  %4207 = add i32 %4206, %4205
  %4208 = icmp eq i32 %4207, 2
  %4209 = zext i1 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4209, i8* %4210, align 1
  store %struct.Memory* %loadMem_4452e4, %struct.Memory** %MEMORY
  %loadMem_4452e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4213 to i64*
  %4214 = load i64, i64* %PC.i385
  %4215 = add i64 %4214, 324
  %4216 = load i64, i64* %PC.i385
  %4217 = add i64 %4216, 6
  %4218 = load i64, i64* %PC.i385
  %4219 = add i64 %4218, 6
  store i64 %4219, i64* %PC.i385
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4221 = load i8, i8* %4220, align 1
  store i8 %4221, i8* %BRANCH_TAKEN, align 1
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4223 = icmp ne i8 %4221, 0
  %4224 = select i1 %4223, i64 %4215, i64 %4217
  store i64 %4224, i64* %4222, align 8
  store %struct.Memory* %loadMem_4452e8, %struct.Memory** %MEMORY
  %loadBr_4452e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4452e8 = icmp eq i8 %loadBr_4452e8, 1
  br i1 %cmpBr_4452e8, label %block_.L_44542c, label %block_4452ee

block_4452ee:                                     ; preds = %block_4452e0
  %loadMem_4452ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 33
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 1
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 15
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %RBP.i384
  %4235 = sub i64 %4234, 24
  %4236 = load i64, i64* %PC.i382
  %4237 = add i64 %4236, 4
  store i64 %4237, i64* %PC.i382
  %4238 = inttoptr i64 %4235 to i64*
  %4239 = load i64, i64* %4238
  store i64 %4239, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_4452ee, %struct.Memory** %MEMORY
  %loadMem_4452f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 1
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %RAX.i381
  %4247 = add i64 %4246, 72
  %4248 = load i64, i64* %PC.i380
  %4249 = add i64 %4248, 4
  store i64 %4249, i64* %PC.i380
  %4250 = inttoptr i64 %4247 to i32*
  %4251 = load i32, i32* %4250
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4252, align 1
  %4253 = and i32 %4251, 255
  %4254 = call i32 @llvm.ctpop.i32(i32 %4253)
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4257, i8* %4258, align 1
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4259, align 1
  %4260 = icmp eq i32 %4251, 0
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4261, i8* %4262, align 1
  %4263 = lshr i32 %4251, 31
  %4264 = trunc i32 %4263 to i8
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4264, i8* %4265, align 1
  %4266 = lshr i32 %4251, 31
  %4267 = xor i32 %4263, %4266
  %4268 = add i32 %4267, %4266
  %4269 = icmp eq i32 %4268, 2
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4270, i8* %4271, align 1
  store %struct.Memory* %loadMem_4452f2, %struct.Memory** %MEMORY
  %loadMem_4452f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4274 to i64*
  %4275 = load i64, i64* %PC.i379
  %4276 = add i64 %4275, 310
  %4277 = load i64, i64* %PC.i379
  %4278 = add i64 %4277, 6
  %4279 = load i64, i64* %PC.i379
  %4280 = add i64 %4279, 6
  store i64 %4280, i64* %PC.i379
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4282 = load i8, i8* %4281, align 1
  store i8 %4282, i8* %BRANCH_TAKEN, align 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4284 = icmp ne i8 %4282, 0
  %4285 = select i1 %4284, i64 %4276, i64 %4278
  store i64 %4285, i64* %4283, align 8
  store %struct.Memory* %loadMem_4452f6, %struct.Memory** %MEMORY
  %loadBr_4452f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4452f6 = icmp eq i8 %loadBr_4452f6, 1
  br i1 %cmpBr_4452f6, label %block_.L_44542c, label %block_4452fc

block_4452fc:                                     ; preds = %block_4452ee
  %loadMem_4452fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 15
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %4291 to i64*
  %4292 = load i64, i64* %RBP.i378
  %4293 = sub i64 %4292, 8
  %4294 = load i64, i64* %PC.i377
  %4295 = add i64 %4294, 7
  store i64 %4295, i64* %PC.i377
  %4296 = inttoptr i64 %4293 to i32*
  store i32 0, i32* %4296
  store %struct.Memory* %loadMem_4452fc, %struct.Memory** %MEMORY
  br label %block_.L_445303

block_.L_445303:                                  ; preds = %block_.L_445419, %block_4452fc
  %loadMem_445303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 15
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %RBP.i376
  %4304 = sub i64 %4303, 8
  %4305 = load i64, i64* %PC.i375
  %4306 = add i64 %4305, 4
  store i64 %4306, i64* %PC.i375
  %4307 = inttoptr i64 %4304 to i32*
  %4308 = load i32, i32* %4307
  %4309 = sub i32 %4308, 4
  %4310 = icmp ult i32 %4308, 4
  %4311 = zext i1 %4310 to i8
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4311, i8* %4312, align 1
  %4313 = and i32 %4309, 255
  %4314 = call i32 @llvm.ctpop.i32(i32 %4313)
  %4315 = trunc i32 %4314 to i8
  %4316 = and i8 %4315, 1
  %4317 = xor i8 %4316, 1
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4317, i8* %4318, align 1
  %4319 = xor i32 %4308, 4
  %4320 = xor i32 %4319, %4309
  %4321 = lshr i32 %4320, 4
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4323, i8* %4324, align 1
  %4325 = icmp eq i32 %4309, 0
  %4326 = zext i1 %4325 to i8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4326, i8* %4327, align 1
  %4328 = lshr i32 %4309, 31
  %4329 = trunc i32 %4328 to i8
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4329, i8* %4330, align 1
  %4331 = lshr i32 %4308, 31
  %4332 = xor i32 %4328, %4331
  %4333 = add i32 %4332, %4331
  %4334 = icmp eq i32 %4333, 2
  %4335 = zext i1 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4335, i8* %4336, align 1
  store %struct.Memory* %loadMem_445303, %struct.Memory** %MEMORY
  %loadMem_445307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4339 to i64*
  %4340 = load i64, i64* %PC.i374
  %4341 = add i64 %4340, 288
  %4342 = load i64, i64* %PC.i374
  %4343 = add i64 %4342, 6
  %4344 = load i64, i64* %PC.i374
  %4345 = add i64 %4344, 6
  store i64 %4345, i64* %PC.i374
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4347 = load i8, i8* %4346, align 1
  %4348 = icmp ne i8 %4347, 0
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4350 = load i8, i8* %4349, align 1
  %4351 = icmp ne i8 %4350, 0
  %4352 = xor i1 %4348, %4351
  %4353 = xor i1 %4352, true
  %4354 = zext i1 %4353 to i8
  store i8 %4354, i8* %BRANCH_TAKEN, align 1
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4356 = select i1 %4352, i64 %4343, i64 %4341
  store i64 %4356, i64* %4355, align 8
  store %struct.Memory* %loadMem_445307, %struct.Memory** %MEMORY
  %loadBr_445307 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445307 = icmp eq i8 %loadBr_445307, 1
  br i1 %cmpBr_445307, label %block_.L_445427, label %block_44530d

block_44530d:                                     ; preds = %block_.L_445303
  %loadMem_44530d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i373
  %4364 = sub i64 %4363, 12
  %4365 = load i64, i64* %PC.i372
  %4366 = add i64 %4365, 7
  store i64 %4366, i64* %PC.i372
  %4367 = inttoptr i64 %4364 to i32*
  store i32 0, i32* %4367
  store %struct.Memory* %loadMem_44530d, %struct.Memory** %MEMORY
  br label %block_.L_445314

block_.L_445314:                                  ; preds = %block_.L_445406, %block_44530d
  %loadMem_445314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 15
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RBP.i371
  %4375 = sub i64 %4374, 12
  %4376 = load i64, i64* %PC.i370
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i370
  %4378 = inttoptr i64 %4375 to i32*
  %4379 = load i32, i32* %4378
  %4380 = sub i32 %4379, 4
  %4381 = icmp ult i32 %4379, 4
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4382, i8* %4383, align 1
  %4384 = and i32 %4380, 255
  %4385 = call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4388, i8* %4389, align 1
  %4390 = xor i32 %4379, 4
  %4391 = xor i32 %4390, %4380
  %4392 = lshr i32 %4391, 4
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4394, i8* %4395, align 1
  %4396 = icmp eq i32 %4380, 0
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4397, i8* %4398, align 1
  %4399 = lshr i32 %4380, 31
  %4400 = trunc i32 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4400, i8* %4401, align 1
  %4402 = lshr i32 %4379, 31
  %4403 = xor i32 %4399, %4402
  %4404 = add i32 %4403, %4402
  %4405 = icmp eq i32 %4404, 2
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4406, i8* %4407, align 1
  store %struct.Memory* %loadMem_445314, %struct.Memory** %MEMORY
  %loadMem_445318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4410 to i64*
  %4411 = load i64, i64* %PC.i369
  %4412 = add i64 %4411, 252
  %4413 = load i64, i64* %PC.i369
  %4414 = add i64 %4413, 6
  %4415 = load i64, i64* %PC.i369
  %4416 = add i64 %4415, 6
  store i64 %4416, i64* %PC.i369
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4418 = load i8, i8* %4417, align 1
  %4419 = icmp ne i8 %4418, 0
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4421 = load i8, i8* %4420, align 1
  %4422 = icmp ne i8 %4421, 0
  %4423 = xor i1 %4419, %4422
  %4424 = xor i1 %4423, true
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %BRANCH_TAKEN, align 1
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4427 = select i1 %4423, i64 %4414, i64 %4412
  store i64 %4427, i64* %4426, align 8
  store %struct.Memory* %loadMem_445318, %struct.Memory** %MEMORY
  %loadBr_445318 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445318 = icmp eq i8 %loadBr_445318, 1
  br i1 %cmpBr_445318, label %block_.L_445414, label %block_44531e

block_44531e:                                     ; preds = %block_.L_445314
  %loadMem_44531e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 33
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 1
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %PC.i367
  %4435 = add i64 %4434, 5
  store i64 %4435, i64* %PC.i367
  store i64 2, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_44531e, %struct.Memory** %MEMORY
  %loadMem_445323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 5
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i366
  %4446 = sub i64 %4445, 8
  %4447 = load i64, i64* %PC.i364
  %4448 = add i64 %4447, 3
  store i64 %4448, i64* %PC.i364
  %4449 = inttoptr i64 %4446 to i32*
  %4450 = load i32, i32* %4449
  %4451 = zext i32 %4450 to i64
  store i64 %4451, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_445323, %struct.Memory** %MEMORY
  %loadMem_445326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 7
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 15
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4460 to i64*
  %4461 = load i64, i64* %RBP.i363
  %4462 = sub i64 %4461, 12
  %4463 = load i64, i64* %PC.i361
  %4464 = add i64 %4463, 3
  store i64 %4464, i64* %PC.i361
  %4465 = inttoptr i64 %4462 to i32*
  %4466 = load i32, i32* %4465
  %4467 = zext i32 %4466 to i64
  store i64 %4467, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_445326, %struct.Memory** %MEMORY
  %loadMem_445329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 1
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %EAX.i359 = bitcast %union.anon* %4473 to i32*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 15
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %4476 to i64*
  %4477 = load i64, i64* %RBP.i360
  %4478 = sub i64 %4477, 80
  %4479 = load i32, i32* %EAX.i359
  %4480 = zext i32 %4479 to i64
  %4481 = load i64, i64* %PC.i358
  %4482 = add i64 %4481, 3
  store i64 %4482, i64* %PC.i358
  %4483 = inttoptr i64 %4478 to i32*
  store i32 %4479, i32* %4483
  store %struct.Memory* %loadMem_445329, %struct.Memory** %MEMORY
  %loadMem_44532c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 7
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %EDX.i356 = bitcast %union.anon* %4489 to i32*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 1
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %4492 to i64*
  %4493 = load i32, i32* %EDX.i356
  %4494 = zext i32 %4493 to i64
  %4495 = load i64, i64* %PC.i355
  %4496 = add i64 %4495, 2
  store i64 %4496, i64* %PC.i355
  %4497 = and i64 %4494, 4294967295
  store i64 %4497, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_44532c, %struct.Memory** %MEMORY
  %loadMem_44532e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4500 to i64*
  %4501 = load i64, i64* %PC.i354
  %4502 = add i64 %4501, 1
  store i64 %4502, i64* %PC.i354
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4505 = bitcast %union.anon* %4504 to i32*
  %4506 = load i32, i32* %4505, align 8
  %4507 = sext i32 %4506 to i64
  %4508 = lshr i64 %4507, 32
  store i64 %4508, i64* %4503, align 8
  store %struct.Memory* %loadMem_44532e, %struct.Memory** %MEMORY
  %loadMem_44532f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 9
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RSI.i352 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 15
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RBP.i353
  %4519 = sub i64 %4518, 80
  %4520 = load i64, i64* %PC.i351
  %4521 = add i64 %4520, 3
  store i64 %4521, i64* %PC.i351
  %4522 = inttoptr i64 %4519 to i32*
  %4523 = load i32, i32* %4522
  %4524 = zext i32 %4523 to i64
  store i64 %4524, i64* %RSI.i352, align 8
  store %struct.Memory* %loadMem_44532f, %struct.Memory** %MEMORY
  %loadMem_445332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 33
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 9
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %ESI.i347 = bitcast %union.anon* %4530 to i32*
  %4531 = load i32, i32* %ESI.i347
  %4532 = zext i32 %4531 to i64
  %4533 = load i64, i64* %PC.i346
  %4534 = add i64 %4533, 2
  store i64 %4534, i64* %PC.i346
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4536 = bitcast %union.anon* %4535 to i32*
  %4537 = load i32, i32* %4536, align 8
  %4538 = zext i32 %4537 to i64
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4540 = bitcast %union.anon* %4539 to i32*
  %4541 = load i32, i32* %4540, align 8
  %4542 = zext i32 %4541 to i64
  %4543 = shl i64 %4532, 32
  %4544 = ashr exact i64 %4543, 32
  %4545 = shl i64 %4542, 32
  %4546 = or i64 %4545, %4538
  %4547 = sdiv i64 %4546, %4544
  %4548 = shl i64 %4547, 32
  %4549 = ashr exact i64 %4548, 32
  %4550 = icmp eq i64 %4547, %4549
  br i1 %4550, label %4555, label %4551

; <label>:4551:                                   ; preds = %block_44531e
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4553 = load i64, i64* %4552, align 8
  %4554 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4553, %struct.Memory* %loadMem_445332)
  br label %routine_idivl__esi.exit348

; <label>:4555:                                   ; preds = %block_44531e
  %4556 = srem i64 %4546, %4544
  %4557 = getelementptr inbounds %union.anon, %union.anon* %4535, i64 0, i32 0
  %4558 = and i64 %4547, 4294967295
  store i64 %4558, i64* %4557, align 8
  %4559 = getelementptr inbounds %union.anon, %union.anon* %4539, i64 0, i32 0
  %4560 = and i64 %4556, 4294967295
  store i64 %4560, i64* %4559, align 8
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4561, align 1
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4562, align 1
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4563, align 1
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4564, align 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4565, align 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4566, align 1
  br label %routine_idivl__esi.exit348

routine_idivl__esi.exit348:                       ; preds = %4551, %4555
  %4567 = phi %struct.Memory* [ %4554, %4551 ], [ %loadMem_445332, %4555 ]
  store %struct.Memory* %4567, %struct.Memory** %MEMORY
  %loadMem_445334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %4573 to i32*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 5
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %4576 to i64*
  %4577 = load i64, i64* %RCX.i345
  %4578 = load i32, i32* %EAX.i344
  %4579 = zext i32 %4578 to i64
  %4580 = load i64, i64* %PC.i343
  %4581 = add i64 %4580, 2
  store i64 %4581, i64* %PC.i343
  %4582 = trunc i64 %4577 to i32
  %4583 = add i32 %4578, %4582
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RCX.i345, align 8
  %4585 = icmp ult i32 %4583, %4582
  %4586 = icmp ult i32 %4583, %4578
  %4587 = or i1 %4585, %4586
  %4588 = zext i1 %4587 to i8
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4588, i8* %4589, align 1
  %4590 = and i32 %4583, 255
  %4591 = call i32 @llvm.ctpop.i32(i32 %4590)
  %4592 = trunc i32 %4591 to i8
  %4593 = and i8 %4592, 1
  %4594 = xor i8 %4593, 1
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4594, i8* %4595, align 1
  %4596 = xor i64 %4579, %4577
  %4597 = trunc i64 %4596 to i32
  %4598 = xor i32 %4597, %4583
  %4599 = lshr i32 %4598, 4
  %4600 = trunc i32 %4599 to i8
  %4601 = and i8 %4600, 1
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4601, i8* %4602, align 1
  %4603 = icmp eq i32 %4583, 0
  %4604 = zext i1 %4603 to i8
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4604, i8* %4605, align 1
  %4606 = lshr i32 %4583, 31
  %4607 = trunc i32 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4607, i8* %4608, align 1
  %4609 = lshr i32 %4582, 31
  %4610 = lshr i32 %4578, 31
  %4611 = xor i32 %4606, %4609
  %4612 = xor i32 %4606, %4610
  %4613 = add i32 %4611, %4612
  %4614 = icmp eq i32 %4613, 2
  %4615 = zext i1 %4614 to i8
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4615, i8* %4616, align 1
  store %struct.Memory* %loadMem_445334, %struct.Memory** %MEMORY
  %loadMem_445336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 5
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %ECX.i341 = bitcast %union.anon* %4622 to i32*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 15
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RBP.i342
  %4627 = sub i64 %4626, 4
  %4628 = load i32, i32* %ECX.i341
  %4629 = zext i32 %4628 to i64
  %4630 = load i64, i64* %PC.i340
  %4631 = add i64 %4630, 3
  store i64 %4631, i64* %PC.i340
  %4632 = inttoptr i64 %4627 to i32*
  store i32 %4628, i32* %4632
  store %struct.Memory* %loadMem_445336, %struct.Memory** %MEMORY
  %loadMem_445339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 11
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 15
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4641 to i64*
  %4642 = load i64, i64* %RBP.i339
  %4643 = sub i64 %4642, 24
  %4644 = load i64, i64* %PC.i337
  %4645 = add i64 %4644, 4
  store i64 %4645, i64* %PC.i337
  %4646 = inttoptr i64 %4643 to i64*
  %4647 = load i64, i64* %4646
  store i64 %4647, i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_445339, %struct.Memory** %MEMORY
  %loadMem_44533d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 33
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 17
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %R8.i336 = bitcast %union.anon* %4656 to i64*
  %4657 = load i64, i64* %RBP.i335
  %4658 = sub i64 %4657, 4
  %4659 = load i64, i64* %PC.i334
  %4660 = add i64 %4659, 4
  store i64 %4660, i64* %PC.i334
  %4661 = inttoptr i64 %4658 to i32*
  %4662 = load i32, i32* %4661
  %4663 = sext i32 %4662 to i64
  store i64 %4663, i64* %R8.i336, align 8
  store %struct.Memory* %loadMem_44533d, %struct.Memory** %MEMORY
  %loadMem_445341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 33
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 11
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RDI.i332 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 17
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %R8.i333 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %RDI.i332
  %4674 = load i64, i64* %R8.i333
  %4675 = mul i64 %4674, 4
  %4676 = add i64 %4673, 488
  %4677 = add i64 %4676, %4675
  %4678 = load i64, i64* %PC.i331
  %4679 = add i64 %4678, 9
  store i64 %4679, i64* %PC.i331
  %4680 = inttoptr i64 %4677 to i32*
  %4681 = load i32, i32* %4680
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4682, align 1
  %4683 = and i32 %4681, 255
  %4684 = call i32 @llvm.ctpop.i32(i32 %4683)
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = xor i8 %4686, 1
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4687, i8* %4688, align 1
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4689, align 1
  %4690 = icmp eq i32 %4681, 0
  %4691 = zext i1 %4690 to i8
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4691, i8* %4692, align 1
  %4693 = lshr i32 %4681, 31
  %4694 = trunc i32 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4694, i8* %4695, align 1
  %4696 = lshr i32 %4681, 31
  %4697 = xor i32 %4693, %4696
  %4698 = add i32 %4697, %4696
  %4699 = icmp eq i32 %4698, 2
  %4700 = zext i1 %4699 to i8
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4700, i8* %4701, align 1
  store %struct.Memory* %loadMem_445341, %struct.Memory** %MEMORY
  %loadMem_44534a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %PC.i330
  %4706 = add i64 %4705, 28
  %4707 = load i64, i64* %PC.i330
  %4708 = add i64 %4707, 6
  %4709 = load i64, i64* %PC.i330
  %4710 = add i64 %4709, 6
  store i64 %4710, i64* %PC.i330
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4712 = load i8, i8* %4711, align 1
  store i8 %4712, i8* %BRANCH_TAKEN, align 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4714 = icmp ne i8 %4712, 0
  %4715 = select i1 %4714, i64 %4706, i64 %4708
  store i64 %4715, i64* %4713, align 8
  store %struct.Memory* %loadMem_44534a, %struct.Memory** %MEMORY
  %loadBr_44534a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44534a = icmp eq i8 %loadBr_44534a, 1
  br i1 %cmpBr_44534a, label %block_.L_445366, label %block_445350

block_445350:                                     ; preds = %routine_idivl__esi.exit348
  %loadMem_445350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 15
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %4724 to i64*
  %4725 = load i64, i64* %RBP.i329
  %4726 = sub i64 %4725, 24
  %4727 = load i64, i64* %PC.i327
  %4728 = add i64 %4727, 4
  store i64 %4728, i64* %PC.i327
  %4729 = inttoptr i64 %4726 to i64*
  %4730 = load i64, i64* %4729
  store i64 %4730, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_445350, %struct.Memory** %MEMORY
  %loadMem_445354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 5
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 15
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RBP.i326
  %4741 = sub i64 %4740, 4
  %4742 = load i64, i64* %PC.i324
  %4743 = add i64 %4742, 4
  store i64 %4743, i64* %PC.i324
  %4744 = inttoptr i64 %4741 to i32*
  %4745 = load i32, i32* %4744
  %4746 = sext i32 %4745 to i64
  store i64 %4746, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_445354, %struct.Memory** %MEMORY
  %loadMem_445358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 33
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 1
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %4752 to i64*
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 5
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %4755 to i64*
  %4756 = load i64, i64* %RAX.i322
  %4757 = load i64, i64* %RCX.i323
  %4758 = mul i64 %4757, 4
  %4759 = add i64 %4756, 488
  %4760 = add i64 %4759, %4758
  %4761 = load i64, i64* %PC.i321
  %4762 = add i64 %4761, 8
  store i64 %4762, i64* %PC.i321
  %4763 = inttoptr i64 %4760 to i32*
  %4764 = load i32, i32* %4763
  %4765 = sub i32 %4764, 2
  %4766 = icmp ult i32 %4764, 2
  %4767 = zext i1 %4766 to i8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4767, i8* %4768, align 1
  %4769 = and i32 %4765, 255
  %4770 = call i32 @llvm.ctpop.i32(i32 %4769)
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  %4773 = xor i8 %4772, 1
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4773, i8* %4774, align 1
  %4775 = xor i32 %4764, 2
  %4776 = xor i32 %4775, %4765
  %4777 = lshr i32 %4776, 4
  %4778 = trunc i32 %4777 to i8
  %4779 = and i8 %4778, 1
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4779, i8* %4780, align 1
  %4781 = icmp eq i32 %4765, 0
  %4782 = zext i1 %4781 to i8
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4782, i8* %4783, align 1
  %4784 = lshr i32 %4765, 31
  %4785 = trunc i32 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4785, i8* %4786, align 1
  %4787 = lshr i32 %4764, 31
  %4788 = xor i32 %4784, %4787
  %4789 = add i32 %4788, %4787
  %4790 = icmp eq i32 %4789, 2
  %4791 = zext i1 %4790 to i8
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4791, i8* %4792, align 1
  store %struct.Memory* %loadMem_445358, %struct.Memory** %MEMORY
  %loadMem_445360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 33
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4795 to i64*
  %4796 = load i64, i64* %PC.i320
  %4797 = add i64 %4796, 161
  %4798 = load i64, i64* %PC.i320
  %4799 = add i64 %4798, 6
  %4800 = load i64, i64* %PC.i320
  %4801 = add i64 %4800, 6
  store i64 %4801, i64* %PC.i320
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4803 = load i8, i8* %4802, align 1
  %4804 = icmp eq i8 %4803, 0
  %4805 = zext i1 %4804 to i8
  store i8 %4805, i8* %BRANCH_TAKEN, align 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4807 = select i1 %4804, i64 %4797, i64 %4799
  store i64 %4807, i64* %4806, align 8
  store %struct.Memory* %loadMem_445360, %struct.Memory** %MEMORY
  %loadBr_445360 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445360 = icmp eq i8 %loadBr_445360, 1
  br i1 %cmpBr_445360, label %block_.L_445401, label %block_.L_445366

block_.L_445366:                                  ; preds = %block_445350, %routine_idivl__esi.exit348
  %loadMem_445366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 1
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 15
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %RBP.i319
  %4818 = sub i64 %4817, 24
  %4819 = load i64, i64* %PC.i317
  %4820 = add i64 %4819, 4
  store i64 %4820, i64* %PC.i317
  %4821 = inttoptr i64 %4818 to i64*
  %4822 = load i64, i64* %4821
  store i64 %4822, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_445366, %struct.Memory** %MEMORY
  %loadMem_44536a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 5
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 15
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %4831 to i64*
  %4832 = load i64, i64* %RBP.i316
  %4833 = sub i64 %4832, 4
  %4834 = load i64, i64* %PC.i314
  %4835 = add i64 %4834, 4
  store i64 %4835, i64* %PC.i314
  %4836 = inttoptr i64 %4833 to i32*
  %4837 = load i32, i32* %4836
  %4838 = sext i32 %4837 to i64
  store i64 %4838, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_44536a, %struct.Memory** %MEMORY
  %loadMem_44536e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 1
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 5
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RAX.i312
  %4849 = load i64, i64* %RCX.i313
  %4850 = mul i64 %4849, 4
  %4851 = add i64 %4848, 472
  %4852 = add i64 %4851, %4850
  %4853 = load i64, i64* %PC.i311
  %4854 = add i64 %4853, 8
  store i64 %4854, i64* %PC.i311
  %4855 = inttoptr i64 %4852 to i32*
  %4856 = load i32, i32* %4855
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4857, align 1
  %4858 = and i32 %4856, 255
  %4859 = call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4862, i8* %4863, align 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4864, align 1
  %4865 = icmp eq i32 %4856, 0
  %4866 = zext i1 %4865 to i8
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4866, i8* %4867, align 1
  %4868 = lshr i32 %4856, 31
  %4869 = trunc i32 %4868 to i8
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4869, i8* %4870, align 1
  %4871 = lshr i32 %4856, 31
  %4872 = xor i32 %4868, %4871
  %4873 = add i32 %4872, %4871
  %4874 = icmp eq i32 %4873, 2
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4875, i8* %4876, align 1
  store %struct.Memory* %loadMem_44536e, %struct.Memory** %MEMORY
  %loadMem_445376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4879 to i64*
  %4880 = load i64, i64* %PC.i310
  %4881 = add i64 %4880, 139
  %4882 = load i64, i64* %PC.i310
  %4883 = add i64 %4882, 6
  %4884 = load i64, i64* %PC.i310
  %4885 = add i64 %4884, 6
  store i64 %4885, i64* %PC.i310
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4887 = load i8, i8* %4886, align 1
  store i8 %4887, i8* %BRANCH_TAKEN, align 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4889 = icmp ne i8 %4887, 0
  %4890 = select i1 %4889, i64 %4881, i64 %4883
  store i64 %4890, i64* %4888, align 8
  store %struct.Memory* %loadMem_445376, %struct.Memory** %MEMORY
  %loadBr_445376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445376 = icmp eq i8 %loadBr_445376, 1
  br i1 %cmpBr_445376, label %block_.L_445401, label %block_44537c

block_44537c:                                     ; preds = %block_.L_445366
  %loadMem_44537c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 19
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %R9D.i309 = bitcast %union.anon* %4896 to i32*
  %4897 = bitcast i32* %R9D.i309 to i64*
  %4898 = load i32, i32* %R9D.i309
  %4899 = zext i32 %4898 to i64
  %4900 = load i32, i32* %R9D.i309
  %4901 = zext i32 %4900 to i64
  %4902 = load i64, i64* %PC.i308
  %4903 = add i64 %4902, 3
  store i64 %4903, i64* %PC.i308
  %4904 = xor i64 %4901, %4899
  %4905 = trunc i64 %4904 to i32
  %4906 = and i64 %4904, 4294967295
  store i64 %4906, i64* %4897, align 8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4907, align 1
  %4908 = and i32 %4905, 255
  %4909 = call i32 @llvm.ctpop.i32(i32 %4908)
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4912, i8* %4913, align 1
  %4914 = icmp eq i32 %4905, 0
  %4915 = zext i1 %4914 to i8
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4915, i8* %4916, align 1
  %4917 = lshr i32 %4905, 31
  %4918 = trunc i32 %4917 to i8
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4918, i8* %4919, align 1
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4920, align 1
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4921, align 1
  store %struct.Memory* %loadMem_44537c, %struct.Memory** %MEMORY
  %loadMem_44537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %PC.i306
  %4929 = add i64 %4928, 8
  store i64 %4929, i64* %PC.i306
  %4930 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %4930, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_44537f, %struct.Memory** %MEMORY
  %loadMem_445387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4933 to i64*
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 1
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4936 to i64*
  %4937 = load i64, i64* %RAX.i305
  %4938 = add i64 %4937, 6480
  %4939 = load i64, i64* %PC.i304
  %4940 = add i64 %4939, 7
  store i64 %4940, i64* %PC.i304
  %4941 = inttoptr i64 %4938 to i64*
  %4942 = load i64, i64* %4941
  store i64 %4942, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_445387, %struct.Memory** %MEMORY
  %loadMem_44538e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 33
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4945 to i64*
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 1
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %4948 to i64*
  %4949 = load i64, i64* %RAX.i303
  %4950 = load i64, i64* %PC.i302
  %4951 = add i64 %4950, 3
  store i64 %4951, i64* %PC.i302
  %4952 = inttoptr i64 %4949 to i64*
  %4953 = load i64, i64* %4952
  store i64 %4953, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_44538e, %struct.Memory** %MEMORY
  %loadMem_445391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 5
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %PC.i300
  %4961 = add i64 %4960, 8
  store i64 %4961, i64* %PC.i300
  %4962 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4962, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_445391, %struct.Memory** %MEMORY
  %loadMem_445399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 5
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 7
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %4971 to i64*
  %4972 = load i64, i64* %RCX.i298
  %4973 = add i64 %4972, 144
  %4974 = load i64, i64* %PC.i297
  %4975 = add i64 %4974, 6
  store i64 %4975, i64* %PC.i297
  %4976 = inttoptr i64 %4973 to i32*
  %4977 = load i32, i32* %4976
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_445399, %struct.Memory** %MEMORY
  %loadMem_44539f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 7
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 15
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %4987 to i64*
  %4988 = load i64, i64* %RDX.i295
  %4989 = load i64, i64* %RBP.i296
  %4990 = sub i64 %4989, 12
  %4991 = load i64, i64* %PC.i294
  %4992 = add i64 %4991, 3
  store i64 %4992, i64* %PC.i294
  %4993 = trunc i64 %4988 to i32
  %4994 = inttoptr i64 %4990 to i32*
  %4995 = load i32, i32* %4994
  %4996 = add i32 %4995, %4993
  %4997 = zext i32 %4996 to i64
  store i64 %4997, i64* %RDX.i295, align 8
  %4998 = icmp ult i32 %4996, %4993
  %4999 = icmp ult i32 %4996, %4995
  %5000 = or i1 %4998, %4999
  %5001 = zext i1 %5000 to i8
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5001, i8* %5002, align 1
  %5003 = and i32 %4996, 255
  %5004 = call i32 @llvm.ctpop.i32(i32 %5003)
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  %5007 = xor i8 %5006, 1
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5007, i8* %5008, align 1
  %5009 = xor i32 %4995, %4993
  %5010 = xor i32 %5009, %4996
  %5011 = lshr i32 %5010, 4
  %5012 = trunc i32 %5011 to i8
  %5013 = and i8 %5012, 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5013, i8* %5014, align 1
  %5015 = icmp eq i32 %4996, 0
  %5016 = zext i1 %5015 to i8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5016, i8* %5017, align 1
  %5018 = lshr i32 %4996, 31
  %5019 = trunc i32 %5018 to i8
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5019, i8* %5020, align 1
  %5021 = lshr i32 %4993, 31
  %5022 = lshr i32 %4995, 31
  %5023 = xor i32 %5018, %5021
  %5024 = xor i32 %5018, %5022
  %5025 = add i32 %5023, %5024
  %5026 = icmp eq i32 %5025, 2
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5027, i8* %5028, align 1
  store %struct.Memory* %loadMem_44539f, %struct.Memory** %MEMORY
  %loadMem_4453a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 7
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %EDX.i292 = bitcast %union.anon* %5034 to i32*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 5
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %5037 to i64*
  %5038 = load i32, i32* %EDX.i292
  %5039 = zext i32 %5038 to i64
  %5040 = load i64, i64* %PC.i291
  %5041 = add i64 %5040, 3
  store i64 %5041, i64* %PC.i291
  %5042 = shl i64 %5039, 32
  %5043 = ashr exact i64 %5042, 32
  store i64 %5043, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_4453a2, %struct.Memory** %MEMORY
  %loadMem_4453a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 1
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 5
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %RAX.i289
  %5054 = load i64, i64* %RCX.i290
  %5055 = mul i64 %5054, 8
  %5056 = add i64 %5055, %5053
  %5057 = load i64, i64* %PC.i288
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i288
  %5059 = inttoptr i64 %5056 to i64*
  %5060 = load i64, i64* %5059
  store i64 %5060, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_4453a5, %struct.Memory** %MEMORY
  %loadMem_4453a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 5
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5066 to i64*
  %5067 = load i64, i64* %PC.i286
  %5068 = add i64 %5067, 8
  store i64 %5068, i64* %PC.i286
  %5069 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5069, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_4453a9, %struct.Memory** %MEMORY
  %loadMem_4453b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 5
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 7
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RDX.i285 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %RCX.i284
  %5080 = add i64 %5079, 148
  %5081 = load i64, i64* %PC.i283
  %5082 = add i64 %5081, 6
  store i64 %5082, i64* %PC.i283
  %5083 = inttoptr i64 %5080 to i32*
  %5084 = load i32, i32* %5083
  %5085 = zext i32 %5084 to i64
  store i64 %5085, i64* %RDX.i285, align 8
  store %struct.Memory* %loadMem_4453b1, %struct.Memory** %MEMORY
  %loadMem_4453b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 33
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 7
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 15
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %5094 to i64*
  %5095 = load i64, i64* %RDX.i281
  %5096 = load i64, i64* %RBP.i282
  %5097 = sub i64 %5096, 8
  %5098 = load i64, i64* %PC.i280
  %5099 = add i64 %5098, 3
  store i64 %5099, i64* %PC.i280
  %5100 = trunc i64 %5095 to i32
  %5101 = inttoptr i64 %5097 to i32*
  %5102 = load i32, i32* %5101
  %5103 = add i32 %5102, %5100
  %5104 = zext i32 %5103 to i64
  store i64 %5104, i64* %RDX.i281, align 8
  %5105 = icmp ult i32 %5103, %5100
  %5106 = icmp ult i32 %5103, %5102
  %5107 = or i1 %5105, %5106
  %5108 = zext i1 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5108, i8* %5109, align 1
  %5110 = and i32 %5103, 255
  %5111 = call i32 @llvm.ctpop.i32(i32 %5110)
  %5112 = trunc i32 %5111 to i8
  %5113 = and i8 %5112, 1
  %5114 = xor i8 %5113, 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5114, i8* %5115, align 1
  %5116 = xor i32 %5102, %5100
  %5117 = xor i32 %5116, %5103
  %5118 = lshr i32 %5117, 4
  %5119 = trunc i32 %5118 to i8
  %5120 = and i8 %5119, 1
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5120, i8* %5121, align 1
  %5122 = icmp eq i32 %5103, 0
  %5123 = zext i1 %5122 to i8
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5123, i8* %5124, align 1
  %5125 = lshr i32 %5103, 31
  %5126 = trunc i32 %5125 to i8
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5126, i8* %5127, align 1
  %5128 = lshr i32 %5100, 31
  %5129 = lshr i32 %5102, 31
  %5130 = xor i32 %5125, %5128
  %5131 = xor i32 %5125, %5129
  %5132 = add i32 %5130, %5131
  %5133 = icmp eq i32 %5132, 2
  %5134 = zext i1 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5134, i8* %5135, align 1
  store %struct.Memory* %loadMem_4453b7, %struct.Memory** %MEMORY
  %loadMem_4453ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 7
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %EDX.i278 = bitcast %union.anon* %5141 to i32*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 5
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5144 to i64*
  %5145 = load i32, i32* %EDX.i278
  %5146 = zext i32 %5145 to i64
  %5147 = load i64, i64* %PC.i277
  %5148 = add i64 %5147, 3
  store i64 %5148, i64* %PC.i277
  %5149 = shl i64 %5146, 32
  %5150 = ashr exact i64 %5149, 32
  store i64 %5150, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_4453ba, %struct.Memory** %MEMORY
  %loadMem_4453bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 1
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 5
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 7
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %5162 to i64*
  %5163 = load i64, i64* %RAX.i274
  %5164 = load i64, i64* %RCX.i275
  %5165 = mul i64 %5164, 2
  %5166 = add i64 %5165, %5163
  %5167 = load i64, i64* %PC.i273
  %5168 = add i64 %5167, 4
  store i64 %5168, i64* %PC.i273
  %5169 = inttoptr i64 %5166 to i16*
  %5170 = load i16, i16* %5169
  %5171 = sext i16 %5170 to i64
  %5172 = and i64 %5171, 4294967295
  store i64 %5172, i64* %RDX.i276, align 8
  store %struct.Memory* %loadMem_4453bd, %struct.Memory** %MEMORY
  %loadMem_4453c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 7
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %EDX.i271 = bitcast %union.anon* %5178 to i32*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 15
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5181 to i64*
  %5182 = load i64, i64* %RBP.i272
  %5183 = sub i64 %5182, 16
  %5184 = load i32, i32* %EDX.i271
  %5185 = zext i32 %5184 to i64
  %5186 = load i64, i64* %PC.i270
  %5187 = add i64 %5186, 3
  store i64 %5187, i64* %PC.i270
  %5188 = inttoptr i64 %5183 to i32*
  store i32 %5184, i32* %5188
  store %struct.Memory* %loadMem_4453c1, %struct.Memory** %MEMORY
  %loadMem_4453c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 11
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RDI.i268 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i269
  %5199 = sub i64 %5198, 12
  %5200 = load i64, i64* %PC.i267
  %5201 = add i64 %5200, 3
  store i64 %5201, i64* %PC.i267
  %5202 = inttoptr i64 %5199 to i32*
  %5203 = load i32, i32* %5202
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RDI.i268, align 8
  store %struct.Memory* %loadMem_4453c4, %struct.Memory** %MEMORY
  %loadMem_4453c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 9
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 15
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5213 to i64*
  %5214 = load i64, i64* %RBP.i266
  %5215 = sub i64 %5214, 8
  %5216 = load i64, i64* %PC.i264
  %5217 = add i64 %5216, 3
  store i64 %5217, i64* %PC.i264
  %5218 = inttoptr i64 %5215 to i32*
  %5219 = load i32, i32* %5218
  %5220 = zext i32 %5219 to i64
  store i64 %5220, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_4453c7, %struct.Memory** %MEMORY
  %loadMem_4453ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 33
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 7
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 15
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RBP.i263
  %5231 = sub i64 %5230, 12
  %5232 = load i64, i64* %PC.i261
  %5233 = add i64 %5232, 3
  store i64 %5233, i64* %PC.i261
  %5234 = inttoptr i64 %5231 to i32*
  %5235 = load i32, i32* %5234
  %5236 = zext i32 %5235 to i64
  store i64 %5236, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_4453ca, %struct.Memory** %MEMORY
  %loadMem_4453cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 7
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 15
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5245 to i64*
  %5246 = load i64, i64* %RDX.i259
  %5247 = load i64, i64* %RBP.i260
  %5248 = sub i64 %5247, 36
  %5249 = load i64, i64* %PC.i258
  %5250 = add i64 %5249, 3
  store i64 %5250, i64* %PC.i258
  %5251 = trunc i64 %5246 to i32
  %5252 = inttoptr i64 %5248 to i32*
  %5253 = load i32, i32* %5252
  %5254 = add i32 %5253, %5251
  %5255 = zext i32 %5254 to i64
  store i64 %5255, i64* %RDX.i259, align 8
  %5256 = icmp ult i32 %5254, %5251
  %5257 = icmp ult i32 %5254, %5253
  %5258 = or i1 %5256, %5257
  %5259 = zext i1 %5258 to i8
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5259, i8* %5260, align 1
  %5261 = and i32 %5254, 255
  %5262 = call i32 @llvm.ctpop.i32(i32 %5261)
  %5263 = trunc i32 %5262 to i8
  %5264 = and i8 %5263, 1
  %5265 = xor i8 %5264, 1
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5265, i8* %5266, align 1
  %5267 = xor i32 %5253, %5251
  %5268 = xor i32 %5267, %5254
  %5269 = lshr i32 %5268, 4
  %5270 = trunc i32 %5269 to i8
  %5271 = and i8 %5270, 1
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5271, i8* %5272, align 1
  %5273 = icmp eq i32 %5254, 0
  %5274 = zext i1 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5274, i8* %5275, align 1
  %5276 = lshr i32 %5254, 31
  %5277 = trunc i32 %5276 to i8
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5277, i8* %5278, align 1
  %5279 = lshr i32 %5251, 31
  %5280 = lshr i32 %5253, 31
  %5281 = xor i32 %5276, %5279
  %5282 = xor i32 %5276, %5280
  %5283 = add i32 %5281, %5282
  %5284 = icmp eq i32 %5283, 2
  %5285 = zext i1 %5284 to i8
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5285, i8* %5286, align 1
  store %struct.Memory* %loadMem_4453cd, %struct.Memory** %MEMORY
  %loadMem_4453d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 17
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %R8D.i256 = bitcast %union.anon* %5292 to i32*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5295 to i64*
  %5296 = bitcast i32* %R8D.i256 to i64*
  %5297 = load i64, i64* %RBP.i257
  %5298 = sub i64 %5297, 8
  %5299 = load i64, i64* %PC.i255
  %5300 = add i64 %5299, 4
  store i64 %5300, i64* %PC.i255
  %5301 = inttoptr i64 %5298 to i32*
  %5302 = load i32, i32* %5301
  %5303 = zext i32 %5302 to i64
  store i64 %5303, i64* %5296, align 8
  store %struct.Memory* %loadMem_4453d0, %struct.Memory** %MEMORY
  %loadMem_4453d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 17
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %R8D.i253 = bitcast %union.anon* %5309 to i32*
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 15
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %5312 to i64*
  %5313 = bitcast i32* %R8D.i253 to i64*
  %5314 = load i32, i32* %R8D.i253
  %5315 = zext i32 %5314 to i64
  %5316 = load i64, i64* %RBP.i254
  %5317 = sub i64 %5316, 40
  %5318 = load i64, i64* %PC.i252
  %5319 = add i64 %5318, 4
  store i64 %5319, i64* %PC.i252
  %5320 = inttoptr i64 %5317 to i32*
  %5321 = load i32, i32* %5320
  %5322 = add i32 %5321, %5314
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %5313, align 8
  %5324 = icmp ult i32 %5322, %5314
  %5325 = icmp ult i32 %5322, %5321
  %5326 = or i1 %5324, %5325
  %5327 = zext i1 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5327, i8* %5328, align 1
  %5329 = and i32 %5322, 255
  %5330 = call i32 @llvm.ctpop.i32(i32 %5329)
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5333, i8* %5334, align 1
  %5335 = xor i32 %5321, %5314
  %5336 = xor i32 %5335, %5322
  %5337 = lshr i32 %5336, 4
  %5338 = trunc i32 %5337 to i8
  %5339 = and i8 %5338, 1
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5339, i8* %5340, align 1
  %5341 = icmp eq i32 %5322, 0
  %5342 = zext i1 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5342, i8* %5343, align 1
  %5344 = lshr i32 %5322, 31
  %5345 = trunc i32 %5344 to i8
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5345, i8* %5346, align 1
  %5347 = lshr i32 %5314, 31
  %5348 = lshr i32 %5321, 31
  %5349 = xor i32 %5344, %5347
  %5350 = xor i32 %5344, %5348
  %5351 = add i32 %5349, %5350
  %5352 = icmp eq i32 %5351, 2
  %5353 = zext i1 %5352 to i8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5353, i8* %5354, align 1
  store %struct.Memory* %loadMem_4453d4, %struct.Memory** %MEMORY
  %loadMem_4453d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 21
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %R10D.i250 = bitcast %union.anon* %5360 to i32*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 15
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %5363 to i64*
  %5364 = bitcast i32* %R10D.i250 to i64*
  %5365 = load i64, i64* %RBP.i251
  %5366 = sub i64 %5365, 16
  %5367 = load i64, i64* %PC.i249
  %5368 = add i64 %5367, 4
  store i64 %5368, i64* %PC.i249
  %5369 = inttoptr i64 %5366 to i32*
  %5370 = load i32, i32* %5369
  %5371 = zext i32 %5370 to i64
  store i64 %5371, i64* %5364, align 8
  store %struct.Memory* %loadMem_4453d8, %struct.Memory** %MEMORY
  %loadMem_4453dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 33
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 1
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5377 to i64*
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 15
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5380 to i64*
  %5381 = load i64, i64* %RBP.i248
  %5382 = sub i64 %5381, 24
  %5383 = load i64, i64* %PC.i246
  %5384 = add i64 %5383, 4
  store i64 %5384, i64* %PC.i246
  %5385 = inttoptr i64 %5382 to i64*
  %5386 = load i64, i64* %5385
  store i64 %5386, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_4453dc, %struct.Memory** %MEMORY
  %loadMem_4453e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5389 to i64*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 5
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %5392 to i64*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 15
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %RBP.i245
  %5397 = sub i64 %5396, 4
  %5398 = load i64, i64* %PC.i243
  %5399 = add i64 %5398, 4
  store i64 %5399, i64* %PC.i243
  %5400 = inttoptr i64 %5397 to i32*
  %5401 = load i32, i32* %5400
  %5402 = sext i32 %5401 to i64
  store i64 %5402, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_4453e0, %struct.Memory** %MEMORY
  %loadMem_4453e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 23
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %R11D.i240 = bitcast %union.anon* %5408 to i32*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 1
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 5
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %5414 to i64*
  %5415 = bitcast i32* %R11D.i240 to i64*
  %5416 = load i64, i64* %RAX.i241
  %5417 = load i64, i64* %RCX.i242
  %5418 = mul i64 %5417, 4
  %5419 = add i64 %5416, 472
  %5420 = add i64 %5419, %5418
  %5421 = load i64, i64* %PC.i239
  %5422 = add i64 %5421, 8
  store i64 %5422, i64* %PC.i239
  %5423 = inttoptr i64 %5420 to i32*
  %5424 = load i32, i32* %5423
  %5425 = zext i32 %5424 to i64
  store i64 %5425, i64* %5415, align 8
  store %struct.Memory* %loadMem_4453e4, %struct.Memory** %MEMORY
  %loadMem_4453ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 33
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 17
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %R8D.i237 = bitcast %union.anon* %5431 to i32*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 5
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %5434 to i64*
  %5435 = load i32, i32* %R8D.i237
  %5436 = zext i32 %5435 to i64
  %5437 = load i64, i64* %PC.i236
  %5438 = add i64 %5437, 3
  store i64 %5438, i64* %PC.i236
  %5439 = and i64 %5436, 4294967295
  store i64 %5439, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_4453ec, %struct.Memory** %MEMORY
  %loadMem_4453ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 33
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 17
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %R8D.i234 = bitcast %union.anon* %5445 to i32*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 21
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %R10D.i235 = bitcast %union.anon* %5448 to i32*
  %5449 = bitcast i32* %R8D.i234 to i64*
  %5450 = load i32, i32* %R10D.i235
  %5451 = zext i32 %5450 to i64
  %5452 = load i64, i64* %PC.i233
  %5453 = add i64 %5452, 3
  store i64 %5453, i64* %PC.i233
  %5454 = and i64 %5451, 4294967295
  store i64 %5454, i64* %5449, align 8
  store %struct.Memory* %loadMem_4453ef, %struct.Memory** %MEMORY
  %loadMem_4453f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 33
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 23
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %R11D.i231 = bitcast %union.anon* %5460 to i32*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 13
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RSP.i232 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RSP.i232
  %5465 = load i32, i32* %R11D.i231
  %5466 = zext i32 %5465 to i64
  %5467 = load i64, i64* %PC.i230
  %5468 = add i64 %5467, 4
  store i64 %5468, i64* %PC.i230
  %5469 = inttoptr i64 %5464 to i32*
  store i32 %5465, i32* %5469
  store %struct.Memory* %loadMem_4453f2, %struct.Memory** %MEMORY
  %loadMem1_4453f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5472 to i64*
  %5473 = load i64, i64* %PC.i229
  %5474 = add i64 %5473, 12778
  %5475 = load i64, i64* %PC.i229
  %5476 = add i64 %5475, 5
  %5477 = load i64, i64* %PC.i229
  %5478 = add i64 %5477, 5
  store i64 %5478, i64* %PC.i229
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5480 = load i64, i64* %5479, align 8
  %5481 = add i64 %5480, -8
  %5482 = inttoptr i64 %5481 to i64*
  store i64 %5476, i64* %5482
  store i64 %5481, i64* %5479, align 8
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5474, i64* %5483, align 8
  store %struct.Memory* %loadMem1_4453f6, %struct.Memory** %MEMORY
  %loadMem2_4453f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4453f6 = load i64, i64* %3
  %call2_4453f6 = call %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* %0, i64 %loadPC_4453f6, %struct.Memory* %loadMem2_4453f6)
  store %struct.Memory* %call2_4453f6, %struct.Memory** %MEMORY
  %loadMem_4453fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 33
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 1
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5489 to i64*
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 15
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %RAX.i227
  %5494 = load i64, i64* %RBP.i228
  %5495 = sub i64 %5494, 28
  %5496 = load i64, i64* %PC.i226
  %5497 = add i64 %5496, 3
  store i64 %5497, i64* %PC.i226
  %5498 = trunc i64 %5493 to i32
  %5499 = inttoptr i64 %5495 to i32*
  %5500 = load i32, i32* %5499
  %5501 = add i32 %5500, %5498
  %5502 = zext i32 %5501 to i64
  store i64 %5502, i64* %RAX.i227, align 8
  %5503 = icmp ult i32 %5501, %5498
  %5504 = icmp ult i32 %5501, %5500
  %5505 = or i1 %5503, %5504
  %5506 = zext i1 %5505 to i8
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5506, i8* %5507, align 1
  %5508 = and i32 %5501, 255
  %5509 = call i32 @llvm.ctpop.i32(i32 %5508)
  %5510 = trunc i32 %5509 to i8
  %5511 = and i8 %5510, 1
  %5512 = xor i8 %5511, 1
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5512, i8* %5513, align 1
  %5514 = xor i32 %5500, %5498
  %5515 = xor i32 %5514, %5501
  %5516 = lshr i32 %5515, 4
  %5517 = trunc i32 %5516 to i8
  %5518 = and i8 %5517, 1
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5518, i8* %5519, align 1
  %5520 = icmp eq i32 %5501, 0
  %5521 = zext i1 %5520 to i8
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5521, i8* %5522, align 1
  %5523 = lshr i32 %5501, 31
  %5524 = trunc i32 %5523 to i8
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5524, i8* %5525, align 1
  %5526 = lshr i32 %5498, 31
  %5527 = lshr i32 %5500, 31
  %5528 = xor i32 %5523, %5526
  %5529 = xor i32 %5523, %5527
  %5530 = add i32 %5528, %5529
  %5531 = icmp eq i32 %5530, 2
  %5532 = zext i1 %5531 to i8
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5532, i8* %5533, align 1
  store %struct.Memory* %loadMem_4453fb, %struct.Memory** %MEMORY
  %loadMem_4453fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 33
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5536 to i64*
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5538 = getelementptr inbounds %struct.GPR, %struct.GPR* %5537, i32 0, i32 1
  %5539 = getelementptr inbounds %struct.Reg, %struct.Reg* %5538, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %5539 to i32*
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 15
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5542 to i64*
  %5543 = load i64, i64* %RBP.i225
  %5544 = sub i64 %5543, 28
  %5545 = load i32, i32* %EAX.i224
  %5546 = zext i32 %5545 to i64
  %5547 = load i64, i64* %PC.i223
  %5548 = add i64 %5547, 3
  store i64 %5548, i64* %PC.i223
  %5549 = inttoptr i64 %5544 to i32*
  store i32 %5545, i32* %5549
  store %struct.Memory* %loadMem_4453fe, %struct.Memory** %MEMORY
  br label %block_.L_445401

block_.L_445401:                                  ; preds = %block_44537c, %block_.L_445366, %block_445350
  %loadMem_445401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 33
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5552 to i64*
  %5553 = load i64, i64* %PC.i222
  %5554 = add i64 %5553, 5
  %5555 = load i64, i64* %PC.i222
  %5556 = add i64 %5555, 5
  store i64 %5556, i64* %PC.i222
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5554, i64* %5557, align 8
  store %struct.Memory* %loadMem_445401, %struct.Memory** %MEMORY
  br label %block_.L_445406

block_.L_445406:                                  ; preds = %block_.L_445401
  %loadMem_445406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 33
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 1
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 15
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %5566 to i64*
  %5567 = load i64, i64* %RBP.i221
  %5568 = sub i64 %5567, 36
  %5569 = load i64, i64* %PC.i219
  %5570 = add i64 %5569, 3
  store i64 %5570, i64* %PC.i219
  %5571 = inttoptr i64 %5568 to i32*
  %5572 = load i32, i32* %5571
  %5573 = zext i32 %5572 to i64
  store i64 %5573, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_445406, %struct.Memory** %MEMORY
  %loadMem_445409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 33
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5576 to i64*
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 1
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 15
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %5582 to i64*
  %5583 = load i64, i64* %RAX.i217
  %5584 = load i64, i64* %RBP.i218
  %5585 = sub i64 %5584, 12
  %5586 = load i64, i64* %PC.i216
  %5587 = add i64 %5586, 3
  store i64 %5587, i64* %PC.i216
  %5588 = trunc i64 %5583 to i32
  %5589 = inttoptr i64 %5585 to i32*
  %5590 = load i32, i32* %5589
  %5591 = add i32 %5590, %5588
  %5592 = zext i32 %5591 to i64
  store i64 %5592, i64* %RAX.i217, align 8
  %5593 = icmp ult i32 %5591, %5588
  %5594 = icmp ult i32 %5591, %5590
  %5595 = or i1 %5593, %5594
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5596, i8* %5597, align 1
  %5598 = and i32 %5591, 255
  %5599 = call i32 @llvm.ctpop.i32(i32 %5598)
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  %5602 = xor i8 %5601, 1
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5602, i8* %5603, align 1
  %5604 = xor i32 %5590, %5588
  %5605 = xor i32 %5604, %5591
  %5606 = lshr i32 %5605, 4
  %5607 = trunc i32 %5606 to i8
  %5608 = and i8 %5607, 1
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5608, i8* %5609, align 1
  %5610 = icmp eq i32 %5591, 0
  %5611 = zext i1 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5611, i8* %5612, align 1
  %5613 = lshr i32 %5591, 31
  %5614 = trunc i32 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5614, i8* %5615, align 1
  %5616 = lshr i32 %5588, 31
  %5617 = lshr i32 %5590, 31
  %5618 = xor i32 %5613, %5616
  %5619 = xor i32 %5613, %5617
  %5620 = add i32 %5618, %5619
  %5621 = icmp eq i32 %5620, 2
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5622, i8* %5623, align 1
  store %struct.Memory* %loadMem_445409, %struct.Memory** %MEMORY
  %loadMem_44540c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 1
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %5629 to i32*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 15
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %5632 to i64*
  %5633 = load i64, i64* %RBP.i215
  %5634 = sub i64 %5633, 12
  %5635 = load i32, i32* %EAX.i214
  %5636 = zext i32 %5635 to i64
  %5637 = load i64, i64* %PC.i213
  %5638 = add i64 %5637, 3
  store i64 %5638, i64* %PC.i213
  %5639 = inttoptr i64 %5634 to i32*
  store i32 %5635, i32* %5639
  store %struct.Memory* %loadMem_44540c, %struct.Memory** %MEMORY
  %loadMem_44540f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 33
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5642 to i64*
  %5643 = load i64, i64* %PC.i212
  %5644 = add i64 %5643, -251
  %5645 = load i64, i64* %PC.i212
  %5646 = add i64 %5645, 5
  store i64 %5646, i64* %PC.i212
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5644, i64* %5647, align 8
  store %struct.Memory* %loadMem_44540f, %struct.Memory** %MEMORY
  br label %block_.L_445314

block_.L_445414:                                  ; preds = %block_.L_445314
  %loadMem_445414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 33
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5650 to i64*
  %5651 = load i64, i64* %PC.i211
  %5652 = add i64 %5651, 5
  %5653 = load i64, i64* %PC.i211
  %5654 = add i64 %5653, 5
  store i64 %5654, i64* %PC.i211
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5652, i64* %5655, align 8
  store %struct.Memory* %loadMem_445414, %struct.Memory** %MEMORY
  br label %block_.L_445419

block_.L_445419:                                  ; preds = %block_.L_445414
  %loadMem_445419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 1
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 15
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5664 to i64*
  %5665 = load i64, i64* %RBP.i210
  %5666 = sub i64 %5665, 40
  %5667 = load i64, i64* %PC.i208
  %5668 = add i64 %5667, 3
  store i64 %5668, i64* %PC.i208
  %5669 = inttoptr i64 %5666 to i32*
  %5670 = load i32, i32* %5669
  %5671 = zext i32 %5670 to i64
  store i64 %5671, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_445419, %struct.Memory** %MEMORY
  %loadMem_44541c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 1
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %5677 to i64*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 15
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5680 to i64*
  %5681 = load i64, i64* %RAX.i206
  %5682 = load i64, i64* %RBP.i207
  %5683 = sub i64 %5682, 8
  %5684 = load i64, i64* %PC.i205
  %5685 = add i64 %5684, 3
  store i64 %5685, i64* %PC.i205
  %5686 = trunc i64 %5681 to i32
  %5687 = inttoptr i64 %5683 to i32*
  %5688 = load i32, i32* %5687
  %5689 = add i32 %5688, %5686
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RAX.i206, align 8
  %5691 = icmp ult i32 %5689, %5686
  %5692 = icmp ult i32 %5689, %5688
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5694, i8* %5695, align 1
  %5696 = and i32 %5689, 255
  %5697 = call i32 @llvm.ctpop.i32(i32 %5696)
  %5698 = trunc i32 %5697 to i8
  %5699 = and i8 %5698, 1
  %5700 = xor i8 %5699, 1
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5700, i8* %5701, align 1
  %5702 = xor i32 %5688, %5686
  %5703 = xor i32 %5702, %5689
  %5704 = lshr i32 %5703, 4
  %5705 = trunc i32 %5704 to i8
  %5706 = and i8 %5705, 1
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5706, i8* %5707, align 1
  %5708 = icmp eq i32 %5689, 0
  %5709 = zext i1 %5708 to i8
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5709, i8* %5710, align 1
  %5711 = lshr i32 %5689, 31
  %5712 = trunc i32 %5711 to i8
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5712, i8* %5713, align 1
  %5714 = lshr i32 %5686, 31
  %5715 = lshr i32 %5688, 31
  %5716 = xor i32 %5711, %5714
  %5717 = xor i32 %5711, %5715
  %5718 = add i32 %5716, %5717
  %5719 = icmp eq i32 %5718, 2
  %5720 = zext i1 %5719 to i8
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5720, i8* %5721, align 1
  store %struct.Memory* %loadMem_44541c, %struct.Memory** %MEMORY
  %loadMem_44541f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 1
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %5727 to i32*
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 15
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %RBP.i204
  %5732 = sub i64 %5731, 8
  %5733 = load i32, i32* %EAX.i203
  %5734 = zext i32 %5733 to i64
  %5735 = load i64, i64* %PC.i202
  %5736 = add i64 %5735, 3
  store i64 %5736, i64* %PC.i202
  %5737 = inttoptr i64 %5732 to i32*
  store i32 %5733, i32* %5737
  store %struct.Memory* %loadMem_44541f, %struct.Memory** %MEMORY
  %loadMem_445422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %PC.i201
  %5742 = add i64 %5741, -287
  %5743 = load i64, i64* %PC.i201
  %5744 = add i64 %5743, 5
  store i64 %5744, i64* %PC.i201
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5742, i64* %5745, align 8
  store %struct.Memory* %loadMem_445422, %struct.Memory** %MEMORY
  br label %block_.L_445303

block_.L_445427:                                  ; preds = %block_.L_445303
  %loadMem_445427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %PC.i200
  %5750 = add i64 %5749, 5
  %5751 = load i64, i64* %PC.i200
  %5752 = add i64 %5751, 5
  store i64 %5752, i64* %PC.i200
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5750, i64* %5753, align 8
  store %struct.Memory* %loadMem_445427, %struct.Memory** %MEMORY
  br label %block_.L_44542c

block_.L_44542c:                                  ; preds = %block_.L_445427, %block_4452ee, %block_4452e0, %block_4452d2, %block_.L_4452c4
  %loadMem_44542c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 1
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %5759 to i64*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 15
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RBP.i199
  %5764 = sub i64 %5763, 24
  %5765 = load i64, i64* %PC.i197
  %5766 = add i64 %5765, 4
  store i64 %5766, i64* %PC.i197
  %5767 = inttoptr i64 %5764 to i64*
  %5768 = load i64, i64* %5767
  store i64 %5768, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_44542c, %struct.Memory** %MEMORY
  %loadMem_445430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 33
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5771 to i64*
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 1
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %5774 to i64*
  %5775 = load i64, i64* %RAX.i196
  %5776 = add i64 %5775, 72
  %5777 = load i64, i64* %PC.i195
  %5778 = add i64 %5777, 4
  store i64 %5778, i64* %PC.i195
  %5779 = inttoptr i64 %5776 to i32*
  %5780 = load i32, i32* %5779
  %5781 = sub i32 %5780, 9
  %5782 = icmp ult i32 %5780, 9
  %5783 = zext i1 %5782 to i8
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5783, i8* %5784, align 1
  %5785 = and i32 %5781, 255
  %5786 = call i32 @llvm.ctpop.i32(i32 %5785)
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  %5789 = xor i8 %5788, 1
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5789, i8* %5790, align 1
  %5791 = xor i32 %5780, 9
  %5792 = xor i32 %5791, %5781
  %5793 = lshr i32 %5792, 4
  %5794 = trunc i32 %5793 to i8
  %5795 = and i8 %5794, 1
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5795, i8* %5796, align 1
  %5797 = icmp eq i32 %5781, 0
  %5798 = zext i1 %5797 to i8
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5798, i8* %5799, align 1
  %5800 = lshr i32 %5781, 31
  %5801 = trunc i32 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5801, i8* %5802, align 1
  %5803 = lshr i32 %5780, 31
  %5804 = xor i32 %5800, %5803
  %5805 = add i32 %5804, %5803
  %5806 = icmp eq i32 %5805, 2
  %5807 = zext i1 %5806 to i8
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5807, i8* %5808, align 1
  store %struct.Memory* %loadMem_445430, %struct.Memory** %MEMORY
  %loadMem_445434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5810 = getelementptr inbounds %struct.GPR, %struct.GPR* %5809, i32 0, i32 33
  %5811 = getelementptr inbounds %struct.Reg, %struct.Reg* %5810, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5811 to i64*
  %5812 = load i64, i64* %PC.i194
  %5813 = add i64 %5812, 366
  %5814 = load i64, i64* %PC.i194
  %5815 = add i64 %5814, 6
  %5816 = load i64, i64* %PC.i194
  %5817 = add i64 %5816, 6
  store i64 %5817, i64* %PC.i194
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5819 = load i8, i8* %5818, align 1
  store i8 %5819, i8* %BRANCH_TAKEN, align 1
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5821 = icmp ne i8 %5819, 0
  %5822 = select i1 %5821, i64 %5813, i64 %5815
  store i64 %5822, i64* %5820, align 8
  store %struct.Memory* %loadMem_445434, %struct.Memory** %MEMORY
  %loadBr_445434 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445434 = icmp eq i8 %loadBr_445434, 1
  br i1 %cmpBr_445434, label %block_.L_4455a2, label %block_44543a

block_44543a:                                     ; preds = %block_.L_44542c
  %loadMem_44543a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 1
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %5828 to i64*
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 15
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5831 to i64*
  %5832 = load i64, i64* %RBP.i193
  %5833 = sub i64 %5832, 24
  %5834 = load i64, i64* %PC.i191
  %5835 = add i64 %5834, 4
  store i64 %5835, i64* %PC.i191
  %5836 = inttoptr i64 %5833 to i64*
  %5837 = load i64, i64* %5836
  store i64 %5837, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_44543a, %struct.Memory** %MEMORY
  %loadMem_44543e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 33
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5840 to i64*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 1
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5843 to i64*
  %5844 = load i64, i64* %RAX.i190
  %5845 = add i64 %5844, 72
  %5846 = load i64, i64* %PC.i189
  %5847 = add i64 %5846, 4
  store i64 %5847, i64* %PC.i189
  %5848 = inttoptr i64 %5845 to i32*
  %5849 = load i32, i32* %5848
  %5850 = sub i32 %5849, 10
  %5851 = icmp ult i32 %5849, 10
  %5852 = zext i1 %5851 to i8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5852, i8* %5853, align 1
  %5854 = and i32 %5850, 255
  %5855 = call i32 @llvm.ctpop.i32(i32 %5854)
  %5856 = trunc i32 %5855 to i8
  %5857 = and i8 %5856, 1
  %5858 = xor i8 %5857, 1
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5858, i8* %5859, align 1
  %5860 = xor i32 %5849, 10
  %5861 = xor i32 %5860, %5850
  %5862 = lshr i32 %5861, 4
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5864, i8* %5865, align 1
  %5866 = icmp eq i32 %5850, 0
  %5867 = zext i1 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i32 %5850, 31
  %5870 = trunc i32 %5869 to i8
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5870, i8* %5871, align 1
  %5872 = lshr i32 %5849, 31
  %5873 = xor i32 %5869, %5872
  %5874 = add i32 %5873, %5872
  %5875 = icmp eq i32 %5874, 2
  %5876 = zext i1 %5875 to i8
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5876, i8* %5877, align 1
  store %struct.Memory* %loadMem_44543e, %struct.Memory** %MEMORY
  %loadMem_445442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 33
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5880 to i64*
  %5881 = load i64, i64* %PC.i188
  %5882 = add i64 %5881, 352
  %5883 = load i64, i64* %PC.i188
  %5884 = add i64 %5883, 6
  %5885 = load i64, i64* %PC.i188
  %5886 = add i64 %5885, 6
  store i64 %5886, i64* %PC.i188
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5888 = load i8, i8* %5887, align 1
  store i8 %5888, i8* %BRANCH_TAKEN, align 1
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5890 = icmp ne i8 %5888, 0
  %5891 = select i1 %5890, i64 %5882, i64 %5884
  store i64 %5891, i64* %5889, align 8
  store %struct.Memory* %loadMem_445442, %struct.Memory** %MEMORY
  %loadBr_445442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445442 = icmp eq i8 %loadBr_445442, 1
  br i1 %cmpBr_445442, label %block_.L_4455a2, label %block_445448

block_445448:                                     ; preds = %block_44543a
  %loadMem_445448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 33
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 1
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %5897 to i64*
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 15
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5900 to i64*
  %5901 = load i64, i64* %RBP.i187
  %5902 = sub i64 %5901, 24
  %5903 = load i64, i64* %PC.i185
  %5904 = add i64 %5903, 4
  store i64 %5904, i64* %PC.i185
  %5905 = inttoptr i64 %5902 to i64*
  %5906 = load i64, i64* %5905
  store i64 %5906, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_445448, %struct.Memory** %MEMORY
  %loadMem_44544c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 33
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 1
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %RAX.i184
  %5914 = add i64 %5913, 72
  %5915 = load i64, i64* %PC.i183
  %5916 = add i64 %5915, 4
  store i64 %5916, i64* %PC.i183
  %5917 = inttoptr i64 %5914 to i32*
  %5918 = load i32, i32* %5917
  %5919 = sub i32 %5918, 13
  %5920 = icmp ult i32 %5918, 13
  %5921 = zext i1 %5920 to i8
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5921, i8* %5922, align 1
  %5923 = and i32 %5919, 255
  %5924 = call i32 @llvm.ctpop.i32(i32 %5923)
  %5925 = trunc i32 %5924 to i8
  %5926 = and i8 %5925, 1
  %5927 = xor i8 %5926, 1
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5927, i8* %5928, align 1
  %5929 = xor i32 %5918, 13
  %5930 = xor i32 %5929, %5919
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5933, i8* %5934, align 1
  %5935 = icmp eq i32 %5919, 0
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5936, i8* %5937, align 1
  %5938 = lshr i32 %5919, 31
  %5939 = trunc i32 %5938 to i8
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5939, i8* %5940, align 1
  %5941 = lshr i32 %5918, 31
  %5942 = xor i32 %5938, %5941
  %5943 = add i32 %5942, %5941
  %5944 = icmp eq i32 %5943, 2
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5945, i8* %5946, align 1
  store %struct.Memory* %loadMem_44544c, %struct.Memory** %MEMORY
  %loadMem_445450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %PC.i182
  %5951 = add i64 %5950, 338
  %5952 = load i64, i64* %PC.i182
  %5953 = add i64 %5952, 6
  %5954 = load i64, i64* %PC.i182
  %5955 = add i64 %5954, 6
  store i64 %5955, i64* %PC.i182
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5957 = load i8, i8* %5956, align 1
  store i8 %5957, i8* %BRANCH_TAKEN, align 1
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5959 = icmp ne i8 %5957, 0
  %5960 = select i1 %5959, i64 %5951, i64 %5953
  store i64 %5960, i64* %5958, align 8
  store %struct.Memory* %loadMem_445450, %struct.Memory** %MEMORY
  %loadBr_445450 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445450 = icmp eq i8 %loadBr_445450, 1
  br i1 %cmpBr_445450, label %block_.L_4455a2, label %block_445456

block_445456:                                     ; preds = %block_445448
  %loadMem_445456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 1
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 15
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %RBP.i181
  %5971 = sub i64 %5970, 24
  %5972 = load i64, i64* %PC.i179
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC.i179
  %5974 = inttoptr i64 %5971 to i64*
  %5975 = load i64, i64* %5974
  store i64 %5975, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_445456, %struct.Memory** %MEMORY
  %loadMem_44545a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %5981 to i64*
  %5982 = load i64, i64* %RAX.i178
  %5983 = add i64 %5982, 72
  %5984 = load i64, i64* %PC.i177
  %5985 = add i64 %5984, 4
  store i64 %5985, i64* %PC.i177
  %5986 = inttoptr i64 %5983 to i32*
  %5987 = load i32, i32* %5986
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5988, align 1
  %5989 = and i32 %5987, 255
  %5990 = call i32 @llvm.ctpop.i32(i32 %5989)
  %5991 = trunc i32 %5990 to i8
  %5992 = and i8 %5991, 1
  %5993 = xor i8 %5992, 1
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5993, i8* %5994, align 1
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5995, align 1
  %5996 = icmp eq i32 %5987, 0
  %5997 = zext i1 %5996 to i8
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5997, i8* %5998, align 1
  %5999 = lshr i32 %5987, 31
  %6000 = trunc i32 %5999 to i8
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6000, i8* %6001, align 1
  %6002 = lshr i32 %5987, 31
  %6003 = xor i32 %5999, %6002
  %6004 = add i32 %6003, %6002
  %6005 = icmp eq i32 %6004, 2
  %6006 = zext i1 %6005 to i8
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6006, i8* %6007, align 1
  store %struct.Memory* %loadMem_44545a, %struct.Memory** %MEMORY
  %loadMem_44545e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 33
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6010 to i64*
  %6011 = load i64, i64* %PC.i176
  %6012 = add i64 %6011, 324
  %6013 = load i64, i64* %PC.i176
  %6014 = add i64 %6013, 6
  %6015 = load i64, i64* %PC.i176
  %6016 = add i64 %6015, 6
  store i64 %6016, i64* %PC.i176
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6018 = load i8, i8* %6017, align 1
  store i8 %6018, i8* %BRANCH_TAKEN, align 1
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6020 = icmp ne i8 %6018, 0
  %6021 = select i1 %6020, i64 %6012, i64 %6014
  store i64 %6021, i64* %6019, align 8
  store %struct.Memory* %loadMem_44545e, %struct.Memory** %MEMORY
  %loadBr_44545e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44545e = icmp eq i8 %loadBr_44545e, 1
  br i1 %cmpBr_44545e, label %block_.L_4455a2, label %block_445464

block_445464:                                     ; preds = %block_445456
  %loadMem_445464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 33
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6024 to i64*
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 15
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6027 to i64*
  %6028 = load i64, i64* %RBP.i175
  %6029 = sub i64 %6028, 32
  %6030 = load i64, i64* %PC.i174
  %6031 = add i64 %6030, 4
  store i64 %6031, i64* %PC.i174
  %6032 = inttoptr i64 %6029 to i32*
  %6033 = load i32, i32* %6032
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6034, align 1
  %6035 = and i32 %6033, 255
  %6036 = call i32 @llvm.ctpop.i32(i32 %6035)
  %6037 = trunc i32 %6036 to i8
  %6038 = and i8 %6037, 1
  %6039 = xor i8 %6038, 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6039, i8* %6040, align 1
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6041, align 1
  %6042 = icmp eq i32 %6033, 0
  %6043 = zext i1 %6042 to i8
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6043, i8* %6044, align 1
  %6045 = lshr i32 %6033, 31
  %6046 = trunc i32 %6045 to i8
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6046, i8* %6047, align 1
  %6048 = lshr i32 %6033, 31
  %6049 = xor i32 %6045, %6048
  %6050 = add i32 %6049, %6048
  %6051 = icmp eq i32 %6050, 2
  %6052 = zext i1 %6051 to i8
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6052, i8* %6053, align 1
  store %struct.Memory* %loadMem_445464, %struct.Memory** %MEMORY
  %loadMem_445468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 33
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6056 to i64*
  %6057 = load i64, i64* %PC.i173
  %6058 = add i64 %6057, 314
  %6059 = load i64, i64* %PC.i173
  %6060 = add i64 %6059, 6
  %6061 = load i64, i64* %PC.i173
  %6062 = add i64 %6061, 6
  store i64 %6062, i64* %PC.i173
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6064 = load i8, i8* %6063, align 1
  store i8 %6064, i8* %BRANCH_TAKEN, align 1
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6066 = icmp ne i8 %6064, 0
  %6067 = select i1 %6066, i64 %6058, i64 %6060
  store i64 %6067, i64* %6065, align 8
  store %struct.Memory* %loadMem_445468, %struct.Memory** %MEMORY
  %loadBr_445468 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445468 = icmp eq i8 %loadBr_445468, 1
  br i1 %cmpBr_445468, label %block_.L_4455a2, label %block_44546e

block_44546e:                                     ; preds = %block_445464
  %loadMem_44546e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 33
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6070 to i64*
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 15
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %6073 to i64*
  %6074 = load i64, i64* %RBP.i172
  %6075 = sub i64 %6074, 8
  %6076 = load i64, i64* %PC.i171
  %6077 = add i64 %6076, 7
  store i64 %6077, i64* %PC.i171
  %6078 = inttoptr i64 %6075 to i32*
  store i32 0, i32* %6078
  store %struct.Memory* %loadMem_44546e, %struct.Memory** %MEMORY
  br label %block_.L_445475

block_.L_445475:                                  ; preds = %block_.L_44558f, %block_44546e
  %loadMem_445475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 33
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6081 to i64*
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 15
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6084 to i64*
  %6085 = load i64, i64* %RBP.i170
  %6086 = sub i64 %6085, 8
  %6087 = load i64, i64* %PC.i169
  %6088 = add i64 %6087, 4
  store i64 %6088, i64* %PC.i169
  %6089 = inttoptr i64 %6086 to i32*
  %6090 = load i32, i32* %6089
  %6091 = sub i32 %6090, 4
  %6092 = icmp ult i32 %6090, 4
  %6093 = zext i1 %6092 to i8
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6093, i8* %6094, align 1
  %6095 = and i32 %6091, 255
  %6096 = call i32 @llvm.ctpop.i32(i32 %6095)
  %6097 = trunc i32 %6096 to i8
  %6098 = and i8 %6097, 1
  %6099 = xor i8 %6098, 1
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6099, i8* %6100, align 1
  %6101 = xor i32 %6090, 4
  %6102 = xor i32 %6101, %6091
  %6103 = lshr i32 %6102, 4
  %6104 = trunc i32 %6103 to i8
  %6105 = and i8 %6104, 1
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6105, i8* %6106, align 1
  %6107 = icmp eq i32 %6091, 0
  %6108 = zext i1 %6107 to i8
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6108, i8* %6109, align 1
  %6110 = lshr i32 %6091, 31
  %6111 = trunc i32 %6110 to i8
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6111, i8* %6112, align 1
  %6113 = lshr i32 %6090, 31
  %6114 = xor i32 %6110, %6113
  %6115 = add i32 %6114, %6113
  %6116 = icmp eq i32 %6115, 2
  %6117 = zext i1 %6116 to i8
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6117, i8* %6118, align 1
  store %struct.Memory* %loadMem_445475, %struct.Memory** %MEMORY
  %loadMem_445479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %PC.i168
  %6123 = add i64 %6122, 292
  %6124 = load i64, i64* %PC.i168
  %6125 = add i64 %6124, 6
  %6126 = load i64, i64* %PC.i168
  %6127 = add i64 %6126, 6
  store i64 %6127, i64* %PC.i168
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6129 = load i8, i8* %6128, align 1
  %6130 = icmp ne i8 %6129, 0
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6132 = load i8, i8* %6131, align 1
  %6133 = icmp ne i8 %6132, 0
  %6134 = xor i1 %6130, %6133
  %6135 = xor i1 %6134, true
  %6136 = zext i1 %6135 to i8
  store i8 %6136, i8* %BRANCH_TAKEN, align 1
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6138 = select i1 %6134, i64 %6125, i64 %6123
  store i64 %6138, i64* %6137, align 8
  store %struct.Memory* %loadMem_445479, %struct.Memory** %MEMORY
  %loadBr_445479 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445479 = icmp eq i8 %loadBr_445479, 1
  br i1 %cmpBr_445479, label %block_.L_44559d, label %block_44547f

block_44547f:                                     ; preds = %block_.L_445475
  %loadMem_44547f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 15
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6144 to i64*
  %6145 = load i64, i64* %RBP.i167
  %6146 = sub i64 %6145, 12
  %6147 = load i64, i64* %PC.i166
  %6148 = add i64 %6147, 7
  store i64 %6148, i64* %PC.i166
  %6149 = inttoptr i64 %6146 to i32*
  store i32 0, i32* %6149
  store %struct.Memory* %loadMem_44547f, %struct.Memory** %MEMORY
  br label %block_.L_445486

block_.L_445486:                                  ; preds = %block_.L_44557c, %block_44547f
  %loadMem_445486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 33
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6152 to i64*
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 15
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %6155 to i64*
  %6156 = load i64, i64* %RBP.i165
  %6157 = sub i64 %6156, 12
  %6158 = load i64, i64* %PC.i164
  %6159 = add i64 %6158, 4
  store i64 %6159, i64* %PC.i164
  %6160 = inttoptr i64 %6157 to i32*
  %6161 = load i32, i32* %6160
  %6162 = sub i32 %6161, 4
  %6163 = icmp ult i32 %6161, 4
  %6164 = zext i1 %6163 to i8
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6164, i8* %6165, align 1
  %6166 = and i32 %6162, 255
  %6167 = call i32 @llvm.ctpop.i32(i32 %6166)
  %6168 = trunc i32 %6167 to i8
  %6169 = and i8 %6168, 1
  %6170 = xor i8 %6169, 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6170, i8* %6171, align 1
  %6172 = xor i32 %6161, 4
  %6173 = xor i32 %6172, %6162
  %6174 = lshr i32 %6173, 4
  %6175 = trunc i32 %6174 to i8
  %6176 = and i8 %6175, 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6176, i8* %6177, align 1
  %6178 = icmp eq i32 %6162, 0
  %6179 = zext i1 %6178 to i8
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6179, i8* %6180, align 1
  %6181 = lshr i32 %6162, 31
  %6182 = trunc i32 %6181 to i8
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6182, i8* %6183, align 1
  %6184 = lshr i32 %6161, 31
  %6185 = xor i32 %6181, %6184
  %6186 = add i32 %6185, %6184
  %6187 = icmp eq i32 %6186, 2
  %6188 = zext i1 %6187 to i8
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6188, i8* %6189, align 1
  store %struct.Memory* %loadMem_445486, %struct.Memory** %MEMORY
  %loadMem_44548a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 33
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6192 to i64*
  %6193 = load i64, i64* %PC.i163
  %6194 = add i64 %6193, 256
  %6195 = load i64, i64* %PC.i163
  %6196 = add i64 %6195, 6
  %6197 = load i64, i64* %PC.i163
  %6198 = add i64 %6197, 6
  store i64 %6198, i64* %PC.i163
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6200 = load i8, i8* %6199, align 1
  %6201 = icmp ne i8 %6200, 0
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6203 = load i8, i8* %6202, align 1
  %6204 = icmp ne i8 %6203, 0
  %6205 = xor i1 %6201, %6204
  %6206 = xor i1 %6205, true
  %6207 = zext i1 %6206 to i8
  store i8 %6207, i8* %BRANCH_TAKEN, align 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6209 = select i1 %6205, i64 %6196, i64 %6194
  store i64 %6209, i64* %6208, align 8
  store %struct.Memory* %loadMem_44548a, %struct.Memory** %MEMORY
  %loadBr_44548a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44548a = icmp eq i8 %loadBr_44548a, 1
  br i1 %cmpBr_44548a, label %block_.L_44558a, label %block_445490

block_445490:                                     ; preds = %block_.L_445486
  %loadMem_445490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 33
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6212 to i64*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 1
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %PC.i161
  %6217 = add i64 %6216, 5
  store i64 %6217, i64* %PC.i161
  store i64 2, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_445490, %struct.Memory** %MEMORY
  %loadMem_445495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 5
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %6223 to i64*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 15
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6226 to i64*
  %6227 = load i64, i64* %RBP.i160
  %6228 = sub i64 %6227, 8
  %6229 = load i64, i64* %PC.i158
  %6230 = add i64 %6229, 3
  store i64 %6230, i64* %PC.i158
  %6231 = inttoptr i64 %6228 to i32*
  %6232 = load i32, i32* %6231
  %6233 = zext i32 %6232 to i64
  store i64 %6233, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_445495, %struct.Memory** %MEMORY
  %loadMem_445498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6236 to i64*
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 7
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %6239 to i64*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 15
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6242 to i64*
  %6243 = load i64, i64* %RBP.i157
  %6244 = sub i64 %6243, 12
  %6245 = load i64, i64* %PC.i155
  %6246 = add i64 %6245, 3
  store i64 %6246, i64* %PC.i155
  %6247 = inttoptr i64 %6244 to i32*
  %6248 = load i32, i32* %6247
  %6249 = zext i32 %6248 to i64
  store i64 %6249, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_445498, %struct.Memory** %MEMORY
  %loadMem_44549b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 33
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6252 to i64*
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 1
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %6255 to i32*
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6257 = getelementptr inbounds %struct.GPR, %struct.GPR* %6256, i32 0, i32 15
  %6258 = getelementptr inbounds %struct.Reg, %struct.Reg* %6257, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6258 to i64*
  %6259 = load i64, i64* %RBP.i154
  %6260 = sub i64 %6259, 84
  %6261 = load i32, i32* %EAX.i153
  %6262 = zext i32 %6261 to i64
  %6263 = load i64, i64* %PC.i152
  %6264 = add i64 %6263, 3
  store i64 %6264, i64* %PC.i152
  %6265 = inttoptr i64 %6260 to i32*
  store i32 %6261, i32* %6265
  store %struct.Memory* %loadMem_44549b, %struct.Memory** %MEMORY
  %loadMem_44549e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 7
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %EDX.i150 = bitcast %union.anon* %6271 to i32*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 1
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %6274 to i64*
  %6275 = load i32, i32* %EDX.i150
  %6276 = zext i32 %6275 to i64
  %6277 = load i64, i64* %PC.i149
  %6278 = add i64 %6277, 2
  store i64 %6278, i64* %PC.i149
  %6279 = and i64 %6276, 4294967295
  store i64 %6279, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_44549e, %struct.Memory** %MEMORY
  %loadMem_4454a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 33
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6282 to i64*
  %6283 = load i64, i64* %PC.i148
  %6284 = add i64 %6283, 1
  store i64 %6284, i64* %PC.i148
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6287 = bitcast %union.anon* %6286 to i32*
  %6288 = load i32, i32* %6287, align 8
  %6289 = sext i32 %6288 to i64
  %6290 = lshr i64 %6289, 32
  store i64 %6290, i64* %6285, align 8
  store %struct.Memory* %loadMem_4454a0, %struct.Memory** %MEMORY
  %loadMem_4454a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 33
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6293 to i64*
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 9
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %RSI.i146 = bitcast %union.anon* %6296 to i64*
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 15
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6299 to i64*
  %6300 = load i64, i64* %RBP.i147
  %6301 = sub i64 %6300, 84
  %6302 = load i64, i64* %PC.i145
  %6303 = add i64 %6302, 3
  store i64 %6303, i64* %PC.i145
  %6304 = inttoptr i64 %6301 to i32*
  %6305 = load i32, i32* %6304
  %6306 = zext i32 %6305 to i64
  store i64 %6306, i64* %RSI.i146, align 8
  store %struct.Memory* %loadMem_4454a1, %struct.Memory** %MEMORY
  %loadMem_4454a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 33
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 9
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6312 to i32*
  %6313 = load i32, i32* %ESI.i
  %6314 = zext i32 %6313 to i64
  %6315 = load i64, i64* %PC.i141
  %6316 = add i64 %6315, 2
  store i64 %6316, i64* %PC.i141
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6318 = bitcast %union.anon* %6317 to i32*
  %6319 = load i32, i32* %6318, align 8
  %6320 = zext i32 %6319 to i64
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6322 = bitcast %union.anon* %6321 to i32*
  %6323 = load i32, i32* %6322, align 8
  %6324 = zext i32 %6323 to i64
  %6325 = shl i64 %6314, 32
  %6326 = ashr exact i64 %6325, 32
  %6327 = shl i64 %6324, 32
  %6328 = or i64 %6327, %6320
  %6329 = sdiv i64 %6328, %6326
  %6330 = shl i64 %6329, 32
  %6331 = ashr exact i64 %6330, 32
  %6332 = icmp eq i64 %6329, %6331
  br i1 %6332, label %6337, label %6333

; <label>:6333:                                   ; preds = %block_445490
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6335 = load i64, i64* %6334, align 8
  %6336 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6335, %struct.Memory* %loadMem_4454a4)
  br label %routine_idivl__esi.exit

; <label>:6337:                                   ; preds = %block_445490
  %6338 = srem i64 %6328, %6326
  %6339 = getelementptr inbounds %union.anon, %union.anon* %6317, i64 0, i32 0
  %6340 = and i64 %6329, 4294967295
  store i64 %6340, i64* %6339, align 8
  %6341 = getelementptr inbounds %union.anon, %union.anon* %6321, i64 0, i32 0
  %6342 = and i64 %6338, 4294967295
  store i64 %6342, i64* %6341, align 8
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6343, align 1
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6344, align 1
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6345, align 1
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6346, align 1
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6347, align 1
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6348, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %6333, %6337
  %6349 = phi %struct.Memory* [ %6336, %6333 ], [ %loadMem_4454a4, %6337 ]
  store %struct.Memory* %6349, %struct.Memory** %MEMORY
  %loadMem_4454a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 33
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6352 to i64*
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6354 = getelementptr inbounds %struct.GPR, %struct.GPR* %6353, i32 0, i32 1
  %6355 = getelementptr inbounds %struct.Reg, %struct.Reg* %6354, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %6355 to i32*
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 5
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %6358 to i64*
  %6359 = load i64, i64* %RCX.i140
  %6360 = load i32, i32* %EAX.i139
  %6361 = zext i32 %6360 to i64
  %6362 = load i64, i64* %PC.i138
  %6363 = add i64 %6362, 2
  store i64 %6363, i64* %PC.i138
  %6364 = trunc i64 %6359 to i32
  %6365 = add i32 %6360, %6364
  %6366 = zext i32 %6365 to i64
  store i64 %6366, i64* %RCX.i140, align 8
  %6367 = icmp ult i32 %6365, %6364
  %6368 = icmp ult i32 %6365, %6360
  %6369 = or i1 %6367, %6368
  %6370 = zext i1 %6369 to i8
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6370, i8* %6371, align 1
  %6372 = and i32 %6365, 255
  %6373 = call i32 @llvm.ctpop.i32(i32 %6372)
  %6374 = trunc i32 %6373 to i8
  %6375 = and i8 %6374, 1
  %6376 = xor i8 %6375, 1
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6376, i8* %6377, align 1
  %6378 = xor i64 %6361, %6359
  %6379 = trunc i64 %6378 to i32
  %6380 = xor i32 %6379, %6365
  %6381 = lshr i32 %6380, 4
  %6382 = trunc i32 %6381 to i8
  %6383 = and i8 %6382, 1
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6383, i8* %6384, align 1
  %6385 = icmp eq i32 %6365, 0
  %6386 = zext i1 %6385 to i8
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6386, i8* %6387, align 1
  %6388 = lshr i32 %6365, 31
  %6389 = trunc i32 %6388 to i8
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6389, i8* %6390, align 1
  %6391 = lshr i32 %6364, 31
  %6392 = lshr i32 %6360, 31
  %6393 = xor i32 %6388, %6391
  %6394 = xor i32 %6388, %6392
  %6395 = add i32 %6393, %6394
  %6396 = icmp eq i32 %6395, 2
  %6397 = zext i1 %6396 to i8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6397, i8* %6398, align 1
  store %struct.Memory* %loadMem_4454a6, %struct.Memory** %MEMORY
  %loadMem_4454a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 33
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6401 to i64*
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 5
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6404 to i32*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 15
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %6407 to i64*
  %6408 = load i64, i64* %RBP.i137
  %6409 = sub i64 %6408, 4
  %6410 = load i32, i32* %ECX.i
  %6411 = zext i32 %6410 to i64
  %6412 = load i64, i64* %PC.i136
  %6413 = add i64 %6412, 3
  store i64 %6413, i64* %PC.i136
  %6414 = inttoptr i64 %6409 to i32*
  store i32 %6410, i32* %6414
  store %struct.Memory* %loadMem_4454a8, %struct.Memory** %MEMORY
  %loadMem_4454ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 33
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6417 to i64*
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 11
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 15
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %6423 to i64*
  %6424 = load i64, i64* %RBP.i135
  %6425 = sub i64 %6424, 24
  %6426 = load i64, i64* %PC.i133
  %6427 = add i64 %6426, 4
  store i64 %6427, i64* %PC.i133
  %6428 = inttoptr i64 %6425 to i64*
  %6429 = load i64, i64* %6428
  store i64 %6429, i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_4454ab, %struct.Memory** %MEMORY
  %loadMem_4454af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6431 = getelementptr inbounds %struct.GPR, %struct.GPR* %6430, i32 0, i32 33
  %6432 = getelementptr inbounds %struct.Reg, %struct.Reg* %6431, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6432 to i64*
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 15
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %6435 to i64*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 17
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %R8.i132 = bitcast %union.anon* %6438 to i64*
  %6439 = load i64, i64* %RBP.i131
  %6440 = sub i64 %6439, 4
  %6441 = load i64, i64* %PC.i130
  %6442 = add i64 %6441, 4
  store i64 %6442, i64* %PC.i130
  %6443 = inttoptr i64 %6440 to i32*
  %6444 = load i32, i32* %6443
  %6445 = sext i32 %6444 to i64
  store i64 %6445, i64* %R8.i132, align 8
  store %struct.Memory* %loadMem_4454af, %struct.Memory** %MEMORY
  %loadMem_4454b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 11
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %RDI.i129 = bitcast %union.anon* %6451 to i64*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 17
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %R8.i = bitcast %union.anon* %6454 to i64*
  %6455 = load i64, i64* %RDI.i129
  %6456 = load i64, i64* %R8.i
  %6457 = mul i64 %6456, 4
  %6458 = add i64 %6455, 488
  %6459 = add i64 %6458, %6457
  %6460 = load i64, i64* %PC.i128
  %6461 = add i64 %6460, 9
  store i64 %6461, i64* %PC.i128
  %6462 = inttoptr i64 %6459 to i32*
  %6463 = load i32, i32* %6462
  %6464 = sub i32 %6463, 1
  %6465 = icmp ult i32 %6463, 1
  %6466 = zext i1 %6465 to i8
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6466, i8* %6467, align 1
  %6468 = and i32 %6464, 255
  %6469 = call i32 @llvm.ctpop.i32(i32 %6468)
  %6470 = trunc i32 %6469 to i8
  %6471 = and i8 %6470, 1
  %6472 = xor i8 %6471, 1
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6472, i8* %6473, align 1
  %6474 = xor i32 %6463, 1
  %6475 = xor i32 %6474, %6464
  %6476 = lshr i32 %6475, 4
  %6477 = trunc i32 %6476 to i8
  %6478 = and i8 %6477, 1
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6478, i8* %6479, align 1
  %6480 = icmp eq i32 %6464, 0
  %6481 = zext i1 %6480 to i8
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6481, i8* %6482, align 1
  %6483 = lshr i32 %6464, 31
  %6484 = trunc i32 %6483 to i8
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6484, i8* %6485, align 1
  %6486 = lshr i32 %6463, 31
  %6487 = xor i32 %6483, %6486
  %6488 = add i32 %6487, %6486
  %6489 = icmp eq i32 %6488, 2
  %6490 = zext i1 %6489 to i8
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6490, i8* %6491, align 1
  store %struct.Memory* %loadMem_4454b3, %struct.Memory** %MEMORY
  %loadMem_4454bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6494 to i64*
  %6495 = load i64, i64* %PC.i127
  %6496 = add i64 %6495, 28
  %6497 = load i64, i64* %PC.i127
  %6498 = add i64 %6497, 6
  %6499 = load i64, i64* %PC.i127
  %6500 = add i64 %6499, 6
  store i64 %6500, i64* %PC.i127
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6502 = load i8, i8* %6501, align 1
  store i8 %6502, i8* %BRANCH_TAKEN, align 1
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6504 = icmp ne i8 %6502, 0
  %6505 = select i1 %6504, i64 %6496, i64 %6498
  store i64 %6505, i64* %6503, align 8
  store %struct.Memory* %loadMem_4454bc, %struct.Memory** %MEMORY
  %loadBr_4454bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4454bc = icmp eq i8 %loadBr_4454bc, 1
  br i1 %cmpBr_4454bc, label %block_.L_4454d8, label %block_4454c2

block_4454c2:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_4454c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 33
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6508 to i64*
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 1
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 15
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %6514 to i64*
  %6515 = load i64, i64* %RBP.i126
  %6516 = sub i64 %6515, 24
  %6517 = load i64, i64* %PC.i124
  %6518 = add i64 %6517, 4
  store i64 %6518, i64* %PC.i124
  %6519 = inttoptr i64 %6516 to i64*
  %6520 = load i64, i64* %6519
  store i64 %6520, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_4454c2, %struct.Memory** %MEMORY
  %loadMem_4454c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 5
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 15
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %6529 to i64*
  %6530 = load i64, i64* %RBP.i123
  %6531 = sub i64 %6530, 4
  %6532 = load i64, i64* %PC.i121
  %6533 = add i64 %6532, 4
  store i64 %6533, i64* %PC.i121
  %6534 = inttoptr i64 %6531 to i32*
  %6535 = load i32, i32* %6534
  %6536 = sext i32 %6535 to i64
  store i64 %6536, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_4454c6, %struct.Memory** %MEMORY
  %loadMem_4454ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 1
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6542 to i64*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 5
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %6545 to i64*
  %6546 = load i64, i64* %RAX.i119
  %6547 = load i64, i64* %RCX.i120
  %6548 = mul i64 %6547, 4
  %6549 = add i64 %6546, 488
  %6550 = add i64 %6549, %6548
  %6551 = load i64, i64* %PC.i118
  %6552 = add i64 %6551, 8
  store i64 %6552, i64* %PC.i118
  %6553 = inttoptr i64 %6550 to i32*
  %6554 = load i32, i32* %6553
  %6555 = sub i32 %6554, 2
  %6556 = icmp ult i32 %6554, 2
  %6557 = zext i1 %6556 to i8
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6557, i8* %6558, align 1
  %6559 = and i32 %6555, 255
  %6560 = call i32 @llvm.ctpop.i32(i32 %6559)
  %6561 = trunc i32 %6560 to i8
  %6562 = and i8 %6561, 1
  %6563 = xor i8 %6562, 1
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6563, i8* %6564, align 1
  %6565 = xor i32 %6554, 2
  %6566 = xor i32 %6565, %6555
  %6567 = lshr i32 %6566, 4
  %6568 = trunc i32 %6567 to i8
  %6569 = and i8 %6568, 1
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6569, i8* %6570, align 1
  %6571 = icmp eq i32 %6555, 0
  %6572 = zext i1 %6571 to i8
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6572, i8* %6573, align 1
  %6574 = lshr i32 %6555, 31
  %6575 = trunc i32 %6574 to i8
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6575, i8* %6576, align 1
  %6577 = lshr i32 %6554, 31
  %6578 = xor i32 %6574, %6577
  %6579 = add i32 %6578, %6577
  %6580 = icmp eq i32 %6579, 2
  %6581 = zext i1 %6580 to i8
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6581, i8* %6582, align 1
  store %struct.Memory* %loadMem_4454ca, %struct.Memory** %MEMORY
  %loadMem_4454d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 33
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6585 to i64*
  %6586 = load i64, i64* %PC.i117
  %6587 = add i64 %6586, 165
  %6588 = load i64, i64* %PC.i117
  %6589 = add i64 %6588, 6
  %6590 = load i64, i64* %PC.i117
  %6591 = add i64 %6590, 6
  store i64 %6591, i64* %PC.i117
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6593 = load i8, i8* %6592, align 1
  %6594 = icmp eq i8 %6593, 0
  %6595 = zext i1 %6594 to i8
  store i8 %6595, i8* %BRANCH_TAKEN, align 1
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6597 = select i1 %6594, i64 %6587, i64 %6589
  store i64 %6597, i64* %6596, align 8
  store %struct.Memory* %loadMem_4454d2, %struct.Memory** %MEMORY
  %loadBr_4454d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4454d2 = icmp eq i8 %loadBr_4454d2, 1
  br i1 %cmpBr_4454d2, label %block_.L_445577, label %block_.L_4454d8

block_.L_4454d8:                                  ; preds = %block_4454c2, %routine_idivl__esi.exit
  %loadMem_4454d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 33
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 1
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 15
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %6606 to i64*
  %6607 = load i64, i64* %RBP.i116
  %6608 = sub i64 %6607, 24
  %6609 = load i64, i64* %PC.i114
  %6610 = add i64 %6609, 4
  store i64 %6610, i64* %PC.i114
  %6611 = inttoptr i64 %6608 to i64*
  %6612 = load i64, i64* %6611
  store i64 %6612, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_4454d8, %struct.Memory** %MEMORY
  %loadMem_4454dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 33
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6615 to i64*
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 5
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %6618 to i64*
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 15
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %6621 to i64*
  %6622 = load i64, i64* %RBP.i113
  %6623 = sub i64 %6622, 4
  %6624 = load i64, i64* %PC.i111
  %6625 = add i64 %6624, 4
  store i64 %6625, i64* %PC.i111
  %6626 = inttoptr i64 %6623 to i32*
  %6627 = load i32, i32* %6626
  %6628 = sext i32 %6627 to i64
  store i64 %6628, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_4454dc, %struct.Memory** %MEMORY
  %loadMem_4454e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 33
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6631 to i64*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 1
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %6634 to i64*
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 5
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %6637 to i64*
  %6638 = load i64, i64* %RAX.i109
  %6639 = load i64, i64* %RCX.i110
  %6640 = mul i64 %6639, 4
  %6641 = add i64 %6638, 472
  %6642 = add i64 %6641, %6640
  %6643 = load i64, i64* %PC.i108
  %6644 = add i64 %6643, 8
  store i64 %6644, i64* %PC.i108
  %6645 = inttoptr i64 %6642 to i32*
  %6646 = load i32, i32* %6645
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6647, align 1
  %6648 = and i32 %6646, 255
  %6649 = call i32 @llvm.ctpop.i32(i32 %6648)
  %6650 = trunc i32 %6649 to i8
  %6651 = and i8 %6650, 1
  %6652 = xor i8 %6651, 1
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6652, i8* %6653, align 1
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6654, align 1
  %6655 = icmp eq i32 %6646, 0
  %6656 = zext i1 %6655 to i8
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6656, i8* %6657, align 1
  %6658 = lshr i32 %6646, 31
  %6659 = trunc i32 %6658 to i8
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6659, i8* %6660, align 1
  %6661 = lshr i32 %6646, 31
  %6662 = xor i32 %6658, %6661
  %6663 = add i32 %6662, %6661
  %6664 = icmp eq i32 %6663, 2
  %6665 = zext i1 %6664 to i8
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6665, i8* %6666, align 1
  store %struct.Memory* %loadMem_4454e0, %struct.Memory** %MEMORY
  %loadMem_4454e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 33
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6669 to i64*
  %6670 = load i64, i64* %PC.i107
  %6671 = add i64 %6670, 143
  %6672 = load i64, i64* %PC.i107
  %6673 = add i64 %6672, 6
  %6674 = load i64, i64* %PC.i107
  %6675 = add i64 %6674, 6
  store i64 %6675, i64* %PC.i107
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6677 = load i8, i8* %6676, align 1
  store i8 %6677, i8* %BRANCH_TAKEN, align 1
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6679 = icmp ne i8 %6677, 0
  %6680 = select i1 %6679, i64 %6671, i64 %6673
  store i64 %6680, i64* %6678, align 8
  store %struct.Memory* %loadMem_4454e8, %struct.Memory** %MEMORY
  %loadBr_4454e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4454e8 = icmp eq i8 %loadBr_4454e8, 1
  br i1 %cmpBr_4454e8, label %block_.L_445577, label %block_4454ee

block_4454ee:                                     ; preds = %block_.L_4454d8
  %loadMem_4454ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 33
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 19
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %6686 to i32*
  %6687 = bitcast i32* %R9D.i to i64*
  %6688 = load i64, i64* %PC.i106
  %6689 = add i64 %6688, 6
  store i64 %6689, i64* %PC.i106
  store i64 1, i64* %6687, align 8
  store %struct.Memory* %loadMem_4454ee, %struct.Memory** %MEMORY
  %loadMem_4454f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 33
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6692 to i64*
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 1
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %6695 to i64*
  %6696 = load i64, i64* %PC.i104
  %6697 = add i64 %6696, 8
  store i64 %6697, i64* %PC.i104
  %6698 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %6698, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_4454f4, %struct.Memory** %MEMORY
  %loadMem_4454fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 33
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6701 to i64*
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6703 = getelementptr inbounds %struct.GPR, %struct.GPR* %6702, i32 0, i32 1
  %6704 = getelementptr inbounds %struct.Reg, %struct.Reg* %6703, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6704 to i64*
  %6705 = load i64, i64* %RAX.i103
  %6706 = add i64 %6705, 6480
  %6707 = load i64, i64* %PC.i102
  %6708 = add i64 %6707, 7
  store i64 %6708, i64* %PC.i102
  %6709 = inttoptr i64 %6706 to i64*
  %6710 = load i64, i64* %6709
  store i64 %6710, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4454fc, %struct.Memory** %MEMORY
  %loadMem_445503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 33
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 1
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RAX.i101
  %6718 = add i64 %6717, 8
  %6719 = load i64, i64* %PC.i100
  %6720 = add i64 %6719, 4
  store i64 %6720, i64* %PC.i100
  %6721 = inttoptr i64 %6718 to i64*
  %6722 = load i64, i64* %6721
  store i64 %6722, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_445503, %struct.Memory** %MEMORY
  %loadMem_445507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 33
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 5
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %6728 to i64*
  %6729 = load i64, i64* %PC.i98
  %6730 = add i64 %6729, 8
  store i64 %6730, i64* %PC.i98
  %6731 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6731, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_445507, %struct.Memory** %MEMORY
  %loadMem_44550f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 5
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %6737 to i64*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 7
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %6740 to i64*
  %6741 = load i64, i64* %RCX.i96
  %6742 = add i64 %6741, 144
  %6743 = load i64, i64* %PC.i95
  %6744 = add i64 %6743, 6
  store i64 %6744, i64* %PC.i95
  %6745 = inttoptr i64 %6742 to i32*
  %6746 = load i32, i32* %6745
  %6747 = zext i32 %6746 to i64
  store i64 %6747, i64* %RDX.i97, align 8
  store %struct.Memory* %loadMem_44550f, %struct.Memory** %MEMORY
  %loadMem_445515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 7
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 15
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RDX.i93
  %6758 = load i64, i64* %RBP.i94
  %6759 = sub i64 %6758, 12
  %6760 = load i64, i64* %PC.i92
  %6761 = add i64 %6760, 3
  store i64 %6761, i64* %PC.i92
  %6762 = trunc i64 %6757 to i32
  %6763 = inttoptr i64 %6759 to i32*
  %6764 = load i32, i32* %6763
  %6765 = add i32 %6764, %6762
  %6766 = zext i32 %6765 to i64
  store i64 %6766, i64* %RDX.i93, align 8
  %6767 = icmp ult i32 %6765, %6762
  %6768 = icmp ult i32 %6765, %6764
  %6769 = or i1 %6767, %6768
  %6770 = zext i1 %6769 to i8
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6770, i8* %6771, align 1
  %6772 = and i32 %6765, 255
  %6773 = call i32 @llvm.ctpop.i32(i32 %6772)
  %6774 = trunc i32 %6773 to i8
  %6775 = and i8 %6774, 1
  %6776 = xor i8 %6775, 1
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6776, i8* %6777, align 1
  %6778 = xor i32 %6764, %6762
  %6779 = xor i32 %6778, %6765
  %6780 = lshr i32 %6779, 4
  %6781 = trunc i32 %6780 to i8
  %6782 = and i8 %6781, 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6782, i8* %6783, align 1
  %6784 = icmp eq i32 %6765, 0
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6785, i8* %6786, align 1
  %6787 = lshr i32 %6765, 31
  %6788 = trunc i32 %6787 to i8
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6788, i8* %6789, align 1
  %6790 = lshr i32 %6762, 31
  %6791 = lshr i32 %6764, 31
  %6792 = xor i32 %6787, %6790
  %6793 = xor i32 %6787, %6791
  %6794 = add i32 %6792, %6793
  %6795 = icmp eq i32 %6794, 2
  %6796 = zext i1 %6795 to i8
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6796, i8* %6797, align 1
  store %struct.Memory* %loadMem_445515, %struct.Memory** %MEMORY
  %loadMem_445518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 33
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6800 to i64*
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 7
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %EDX.i90 = bitcast %union.anon* %6803 to i32*
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 5
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6806 to i64*
  %6807 = load i32, i32* %EDX.i90
  %6808 = zext i32 %6807 to i64
  %6809 = load i64, i64* %PC.i89
  %6810 = add i64 %6809, 3
  store i64 %6810, i64* %PC.i89
  %6811 = shl i64 %6808, 32
  %6812 = ashr exact i64 %6811, 32
  store i64 %6812, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_445518, %struct.Memory** %MEMORY
  %loadMem_44551b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6814 = getelementptr inbounds %struct.GPR, %struct.GPR* %6813, i32 0, i32 33
  %6815 = getelementptr inbounds %struct.Reg, %struct.Reg* %6814, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6815 to i64*
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6817 = getelementptr inbounds %struct.GPR, %struct.GPR* %6816, i32 0, i32 1
  %6818 = getelementptr inbounds %struct.Reg, %struct.Reg* %6817, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %6818 to i64*
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6820 = getelementptr inbounds %struct.GPR, %struct.GPR* %6819, i32 0, i32 5
  %6821 = getelementptr inbounds %struct.Reg, %struct.Reg* %6820, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6821 to i64*
  %6822 = load i64, i64* %RAX.i87
  %6823 = load i64, i64* %RCX.i88
  %6824 = mul i64 %6823, 8
  %6825 = add i64 %6824, %6822
  %6826 = load i64, i64* %PC.i86
  %6827 = add i64 %6826, 4
  store i64 %6827, i64* %PC.i86
  %6828 = inttoptr i64 %6825 to i64*
  %6829 = load i64, i64* %6828
  store i64 %6829, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_44551b, %struct.Memory** %MEMORY
  %loadMem_44551f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 33
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 5
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6835 to i64*
  %6836 = load i64, i64* %PC.i84
  %6837 = add i64 %6836, 8
  store i64 %6837, i64* %PC.i84
  %6838 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6838, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_44551f, %struct.Memory** %MEMORY
  %loadMem_445527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6840 = getelementptr inbounds %struct.GPR, %struct.GPR* %6839, i32 0, i32 33
  %6841 = getelementptr inbounds %struct.Reg, %struct.Reg* %6840, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6841 to i64*
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 5
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 7
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %6847 to i64*
  %6848 = load i64, i64* %RCX.i82
  %6849 = add i64 %6848, 148
  %6850 = load i64, i64* %PC.i81
  %6851 = add i64 %6850, 6
  store i64 %6851, i64* %PC.i81
  %6852 = inttoptr i64 %6849 to i32*
  %6853 = load i32, i32* %6852
  %6854 = zext i32 %6853 to i64
  store i64 %6854, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_445527, %struct.Memory** %MEMORY
  %loadMem_44552d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 33
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6857 to i64*
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 7
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 15
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %6863 to i64*
  %6864 = load i64, i64* %RDX.i79
  %6865 = load i64, i64* %RBP.i80
  %6866 = sub i64 %6865, 8
  %6867 = load i64, i64* %PC.i78
  %6868 = add i64 %6867, 3
  store i64 %6868, i64* %PC.i78
  %6869 = trunc i64 %6864 to i32
  %6870 = inttoptr i64 %6866 to i32*
  %6871 = load i32, i32* %6870
  %6872 = add i32 %6871, %6869
  %6873 = zext i32 %6872 to i64
  store i64 %6873, i64* %RDX.i79, align 8
  %6874 = icmp ult i32 %6872, %6869
  %6875 = icmp ult i32 %6872, %6871
  %6876 = or i1 %6874, %6875
  %6877 = zext i1 %6876 to i8
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6877, i8* %6878, align 1
  %6879 = and i32 %6872, 255
  %6880 = call i32 @llvm.ctpop.i32(i32 %6879)
  %6881 = trunc i32 %6880 to i8
  %6882 = and i8 %6881, 1
  %6883 = xor i8 %6882, 1
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6883, i8* %6884, align 1
  %6885 = xor i32 %6871, %6869
  %6886 = xor i32 %6885, %6872
  %6887 = lshr i32 %6886, 4
  %6888 = trunc i32 %6887 to i8
  %6889 = and i8 %6888, 1
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6889, i8* %6890, align 1
  %6891 = icmp eq i32 %6872, 0
  %6892 = zext i1 %6891 to i8
  %6893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6892, i8* %6893, align 1
  %6894 = lshr i32 %6872, 31
  %6895 = trunc i32 %6894 to i8
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6895, i8* %6896, align 1
  %6897 = lshr i32 %6869, 31
  %6898 = lshr i32 %6871, 31
  %6899 = xor i32 %6894, %6897
  %6900 = xor i32 %6894, %6898
  %6901 = add i32 %6899, %6900
  %6902 = icmp eq i32 %6901, 2
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6903, i8* %6904, align 1
  store %struct.Memory* %loadMem_44552d, %struct.Memory** %MEMORY
  %loadMem_445530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 33
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6907 to i64*
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 7
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %EDX.i76 = bitcast %union.anon* %6910 to i32*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 5
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %6913 to i64*
  %6914 = load i32, i32* %EDX.i76
  %6915 = zext i32 %6914 to i64
  %6916 = load i64, i64* %PC.i75
  %6917 = add i64 %6916, 3
  store i64 %6917, i64* %PC.i75
  %6918 = shl i64 %6915, 32
  %6919 = ashr exact i64 %6918, 32
  store i64 %6919, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_445530, %struct.Memory** %MEMORY
  %loadMem_445533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 33
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 1
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 5
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %6928 to i64*
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 7
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %6931 to i64*
  %6932 = load i64, i64* %RAX.i72
  %6933 = load i64, i64* %RCX.i73
  %6934 = mul i64 %6933, 2
  %6935 = add i64 %6934, %6932
  %6936 = load i64, i64* %PC.i71
  %6937 = add i64 %6936, 4
  store i64 %6937, i64* %PC.i71
  %6938 = inttoptr i64 %6935 to i16*
  %6939 = load i16, i16* %6938
  %6940 = sext i16 %6939 to i64
  %6941 = and i64 %6940, 4294967295
  store i64 %6941, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_445533, %struct.Memory** %MEMORY
  %loadMem_445537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 33
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6944 to i64*
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6946 = getelementptr inbounds %struct.GPR, %struct.GPR* %6945, i32 0, i32 7
  %6947 = getelementptr inbounds %struct.Reg, %struct.Reg* %6946, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6947 to i32*
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 15
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %6950 to i64*
  %6951 = load i64, i64* %RBP.i70
  %6952 = sub i64 %6951, 16
  %6953 = load i32, i32* %EDX.i
  %6954 = zext i32 %6953 to i64
  %6955 = load i64, i64* %PC.i69
  %6956 = add i64 %6955, 3
  store i64 %6956, i64* %PC.i69
  %6957 = inttoptr i64 %6952 to i32*
  store i32 %6953, i32* %6957
  store %struct.Memory* %loadMem_445537, %struct.Memory** %MEMORY
  %loadMem_44553a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6959 = getelementptr inbounds %struct.GPR, %struct.GPR* %6958, i32 0, i32 33
  %6960 = getelementptr inbounds %struct.Reg, %struct.Reg* %6959, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6960 to i64*
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6962 = getelementptr inbounds %struct.GPR, %struct.GPR* %6961, i32 0, i32 11
  %6963 = getelementptr inbounds %struct.Reg, %struct.Reg* %6962, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6963 to i64*
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 15
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %6966 to i64*
  %6967 = load i64, i64* %RBP.i68
  %6968 = sub i64 %6967, 12
  %6969 = load i64, i64* %PC.i67
  %6970 = add i64 %6969, 3
  store i64 %6970, i64* %PC.i67
  %6971 = inttoptr i64 %6968 to i32*
  %6972 = load i32, i32* %6971
  %6973 = zext i32 %6972 to i64
  store i64 %6973, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_44553a, %struct.Memory** %MEMORY
  %loadMem_44553d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 9
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 15
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RBP.i66
  %6984 = sub i64 %6983, 8
  %6985 = load i64, i64* %PC.i65
  %6986 = add i64 %6985, 3
  store i64 %6986, i64* %PC.i65
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987
  %6989 = zext i32 %6988 to i64
  store i64 %6989, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_44553d, %struct.Memory** %MEMORY
  %loadMem_445540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 33
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6992 to i64*
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 7
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %6995 to i64*
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 15
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %6998 to i64*
  %6999 = load i64, i64* %RBP.i64
  %7000 = sub i64 %6999, 12
  %7001 = load i64, i64* %PC.i62
  %7002 = add i64 %7001, 3
  store i64 %7002, i64* %PC.i62
  %7003 = inttoptr i64 %7000 to i32*
  %7004 = load i32, i32* %7003
  %7005 = zext i32 %7004 to i64
  store i64 %7005, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_445540, %struct.Memory** %MEMORY
  %loadMem_445543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7007 = getelementptr inbounds %struct.GPR, %struct.GPR* %7006, i32 0, i32 33
  %7008 = getelementptr inbounds %struct.Reg, %struct.Reg* %7007, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7008 to i64*
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 7
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7011 to i64*
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7013 = getelementptr inbounds %struct.GPR, %struct.GPR* %7012, i32 0, i32 15
  %7014 = getelementptr inbounds %struct.Reg, %struct.Reg* %7013, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %7014 to i64*
  %7015 = load i64, i64* %RDX.i
  %7016 = load i64, i64* %RBP.i61
  %7017 = sub i64 %7016, 36
  %7018 = load i64, i64* %PC.i60
  %7019 = add i64 %7018, 3
  store i64 %7019, i64* %PC.i60
  %7020 = trunc i64 %7015 to i32
  %7021 = inttoptr i64 %7017 to i32*
  %7022 = load i32, i32* %7021
  %7023 = add i32 %7022, %7020
  %7024 = zext i32 %7023 to i64
  store i64 %7024, i64* %RDX.i, align 8
  %7025 = icmp ult i32 %7023, %7020
  %7026 = icmp ult i32 %7023, %7022
  %7027 = or i1 %7025, %7026
  %7028 = zext i1 %7027 to i8
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7028, i8* %7029, align 1
  %7030 = and i32 %7023, 255
  %7031 = call i32 @llvm.ctpop.i32(i32 %7030)
  %7032 = trunc i32 %7031 to i8
  %7033 = and i8 %7032, 1
  %7034 = xor i8 %7033, 1
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7034, i8* %7035, align 1
  %7036 = xor i32 %7022, %7020
  %7037 = xor i32 %7036, %7023
  %7038 = lshr i32 %7037, 4
  %7039 = trunc i32 %7038 to i8
  %7040 = and i8 %7039, 1
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7040, i8* %7041, align 1
  %7042 = icmp eq i32 %7023, 0
  %7043 = zext i1 %7042 to i8
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7043, i8* %7044, align 1
  %7045 = lshr i32 %7023, 31
  %7046 = trunc i32 %7045 to i8
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7046, i8* %7047, align 1
  %7048 = lshr i32 %7020, 31
  %7049 = lshr i32 %7022, 31
  %7050 = xor i32 %7045, %7048
  %7051 = xor i32 %7045, %7049
  %7052 = add i32 %7050, %7051
  %7053 = icmp eq i32 %7052, 2
  %7054 = zext i1 %7053 to i8
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7054, i8* %7055, align 1
  store %struct.Memory* %loadMem_445543, %struct.Memory** %MEMORY
  %loadMem_445546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7057 = getelementptr inbounds %struct.GPR, %struct.GPR* %7056, i32 0, i32 33
  %7058 = getelementptr inbounds %struct.Reg, %struct.Reg* %7057, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7058 to i64*
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 17
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %R8D.i58 = bitcast %union.anon* %7061 to i32*
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7063 = getelementptr inbounds %struct.GPR, %struct.GPR* %7062, i32 0, i32 15
  %7064 = getelementptr inbounds %struct.Reg, %struct.Reg* %7063, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7064 to i64*
  %7065 = bitcast i32* %R8D.i58 to i64*
  %7066 = load i64, i64* %RBP.i59
  %7067 = sub i64 %7066, 8
  %7068 = load i64, i64* %PC.i57
  %7069 = add i64 %7068, 4
  store i64 %7069, i64* %PC.i57
  %7070 = inttoptr i64 %7067 to i32*
  %7071 = load i32, i32* %7070
  %7072 = zext i32 %7071 to i64
  store i64 %7072, i64* %7065, align 8
  store %struct.Memory* %loadMem_445546, %struct.Memory** %MEMORY
  %loadMem_44554a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 33
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 17
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %R8D.i55 = bitcast %union.anon* %7078 to i32*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 15
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7081 to i64*
  %7082 = bitcast i32* %R8D.i55 to i64*
  %7083 = load i32, i32* %R8D.i55
  %7084 = zext i32 %7083 to i64
  %7085 = load i64, i64* %RBP.i56
  %7086 = sub i64 %7085, 40
  %7087 = load i64, i64* %PC.i54
  %7088 = add i64 %7087, 4
  store i64 %7088, i64* %PC.i54
  %7089 = inttoptr i64 %7086 to i32*
  %7090 = load i32, i32* %7089
  %7091 = add i32 %7090, %7083
  %7092 = zext i32 %7091 to i64
  store i64 %7092, i64* %7082, align 8
  %7093 = icmp ult i32 %7091, %7083
  %7094 = icmp ult i32 %7091, %7090
  %7095 = or i1 %7093, %7094
  %7096 = zext i1 %7095 to i8
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7096, i8* %7097, align 1
  %7098 = and i32 %7091, 255
  %7099 = call i32 @llvm.ctpop.i32(i32 %7098)
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = xor i8 %7101, 1
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7102, i8* %7103, align 1
  %7104 = xor i32 %7090, %7083
  %7105 = xor i32 %7104, %7091
  %7106 = lshr i32 %7105, 4
  %7107 = trunc i32 %7106 to i8
  %7108 = and i8 %7107, 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7108, i8* %7109, align 1
  %7110 = icmp eq i32 %7091, 0
  %7111 = zext i1 %7110 to i8
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7111, i8* %7112, align 1
  %7113 = lshr i32 %7091, 31
  %7114 = trunc i32 %7113 to i8
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7114, i8* %7115, align 1
  %7116 = lshr i32 %7083, 31
  %7117 = lshr i32 %7090, 31
  %7118 = xor i32 %7113, %7116
  %7119 = xor i32 %7113, %7117
  %7120 = add i32 %7118, %7119
  %7121 = icmp eq i32 %7120, 2
  %7122 = zext i1 %7121 to i8
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7122, i8* %7123, align 1
  store %struct.Memory* %loadMem_44554a, %struct.Memory** %MEMORY
  %loadMem_44554e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 33
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7126 to i64*
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 21
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %R10D.i52 = bitcast %union.anon* %7129 to i32*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 15
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %7132 to i64*
  %7133 = bitcast i32* %R10D.i52 to i64*
  %7134 = load i64, i64* %RBP.i53
  %7135 = sub i64 %7134, 16
  %7136 = load i64, i64* %PC.i51
  %7137 = add i64 %7136, 4
  store i64 %7137, i64* %PC.i51
  %7138 = inttoptr i64 %7135 to i32*
  %7139 = load i32, i32* %7138
  %7140 = zext i32 %7139 to i64
  store i64 %7140, i64* %7133, align 8
  store %struct.Memory* %loadMem_44554e, %struct.Memory** %MEMORY
  %loadMem_445552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 33
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7143 to i64*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 1
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %7146 to i64*
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 15
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7149 to i64*
  %7150 = load i64, i64* %RBP.i50
  %7151 = sub i64 %7150, 24
  %7152 = load i64, i64* %PC.i48
  %7153 = add i64 %7152, 4
  store i64 %7153, i64* %PC.i48
  %7154 = inttoptr i64 %7151 to i64*
  %7155 = load i64, i64* %7154
  store i64 %7155, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_445552, %struct.Memory** %MEMORY
  %loadMem_445556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 5
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 15
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %RBP.i47
  %7166 = sub i64 %7165, 4
  %7167 = load i64, i64* %PC.i45
  %7168 = add i64 %7167, 4
  store i64 %7168, i64* %PC.i45
  %7169 = inttoptr i64 %7166 to i32*
  %7170 = load i32, i32* %7169
  %7171 = sext i32 %7170 to i64
  store i64 %7171, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_445556, %struct.Memory** %MEMORY
  %loadMem_44555a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 33
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7174 to i64*
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 23
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %R11D.i42 = bitcast %union.anon* %7177 to i32*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 1
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7180 to i64*
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7182 = getelementptr inbounds %struct.GPR, %struct.GPR* %7181, i32 0, i32 5
  %7183 = getelementptr inbounds %struct.Reg, %struct.Reg* %7182, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %7183 to i64*
  %7184 = bitcast i32* %R11D.i42 to i64*
  %7185 = load i64, i64* %RAX.i43
  %7186 = load i64, i64* %RCX.i44
  %7187 = mul i64 %7186, 4
  %7188 = add i64 %7185, 472
  %7189 = add i64 %7188, %7187
  %7190 = load i64, i64* %PC.i41
  %7191 = add i64 %7190, 8
  store i64 %7191, i64* %PC.i41
  %7192 = inttoptr i64 %7189 to i32*
  %7193 = load i32, i32* %7192
  %7194 = zext i32 %7193 to i64
  store i64 %7194, i64* %7184, align 8
  store %struct.Memory* %loadMem_44555a, %struct.Memory** %MEMORY
  %loadMem_445562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7196 = getelementptr inbounds %struct.GPR, %struct.GPR* %7195, i32 0, i32 33
  %7197 = getelementptr inbounds %struct.Reg, %struct.Reg* %7196, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7197 to i64*
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 17
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %R8D.i40 = bitcast %union.anon* %7200 to i32*
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 5
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7203 to i64*
  %7204 = load i32, i32* %R8D.i40
  %7205 = zext i32 %7204 to i64
  %7206 = load i64, i64* %PC.i39
  %7207 = add i64 %7206, 3
  store i64 %7207, i64* %PC.i39
  %7208 = and i64 %7205, 4294967295
  store i64 %7208, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_445562, %struct.Memory** %MEMORY
  %loadMem_445565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 33
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7211 to i64*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 17
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %7214 to i32*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 21
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %7217 to i32*
  %7218 = bitcast i32* %R8D.i to i64*
  %7219 = load i32, i32* %R10D.i
  %7220 = zext i32 %7219 to i64
  %7221 = load i64, i64* %PC.i38
  %7222 = add i64 %7221, 3
  store i64 %7222, i64* %PC.i38
  %7223 = and i64 %7220, 4294967295
  store i64 %7223, i64* %7218, align 8
  store %struct.Memory* %loadMem_445565, %struct.Memory** %MEMORY
  %loadMem_445568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 33
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 23
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %7229 to i32*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 13
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RSP.i37 = bitcast %union.anon* %7232 to i64*
  %7233 = load i64, i64* %RSP.i37
  %7234 = load i32, i32* %R11D.i
  %7235 = zext i32 %7234 to i64
  %7236 = load i64, i64* %PC.i36
  %7237 = add i64 %7236, 4
  store i64 %7237, i64* %PC.i36
  %7238 = inttoptr i64 %7233 to i32*
  store i32 %7234, i32* %7238
  store %struct.Memory* %loadMem_445568, %struct.Memory** %MEMORY
  %loadMem1_44556c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 33
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %PC.i35
  %7243 = add i64 %7242, 12404
  %7244 = load i64, i64* %PC.i35
  %7245 = add i64 %7244, 5
  %7246 = load i64, i64* %PC.i35
  %7247 = add i64 %7246, 5
  store i64 %7247, i64* %PC.i35
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7249 = load i64, i64* %7248, align 8
  %7250 = add i64 %7249, -8
  %7251 = inttoptr i64 %7250 to i64*
  store i64 %7245, i64* %7251
  store i64 %7250, i64* %7248, align 8
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7243, i64* %7252, align 8
  store %struct.Memory* %loadMem1_44556c, %struct.Memory** %MEMORY
  %loadMem2_44556c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44556c = load i64, i64* %3
  %call2_44556c = call %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* %0, i64 %loadPC_44556c, %struct.Memory* %loadMem2_44556c)
  store %struct.Memory* %call2_44556c, %struct.Memory** %MEMORY
  %loadMem_445571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 33
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7255 to i64*
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 1
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %7258 to i64*
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 15
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %7261 to i64*
  %7262 = load i64, i64* %RAX.i33
  %7263 = load i64, i64* %RBP.i34
  %7264 = sub i64 %7263, 28
  %7265 = load i64, i64* %PC.i32
  %7266 = add i64 %7265, 3
  store i64 %7266, i64* %PC.i32
  %7267 = trunc i64 %7262 to i32
  %7268 = inttoptr i64 %7264 to i32*
  %7269 = load i32, i32* %7268
  %7270 = add i32 %7269, %7267
  %7271 = zext i32 %7270 to i64
  store i64 %7271, i64* %RAX.i33, align 8
  %7272 = icmp ult i32 %7270, %7267
  %7273 = icmp ult i32 %7270, %7269
  %7274 = or i1 %7272, %7273
  %7275 = zext i1 %7274 to i8
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7275, i8* %7276, align 1
  %7277 = and i32 %7270, 255
  %7278 = call i32 @llvm.ctpop.i32(i32 %7277)
  %7279 = trunc i32 %7278 to i8
  %7280 = and i8 %7279, 1
  %7281 = xor i8 %7280, 1
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7281, i8* %7282, align 1
  %7283 = xor i32 %7269, %7267
  %7284 = xor i32 %7283, %7270
  %7285 = lshr i32 %7284, 4
  %7286 = trunc i32 %7285 to i8
  %7287 = and i8 %7286, 1
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7287, i8* %7288, align 1
  %7289 = icmp eq i32 %7270, 0
  %7290 = zext i1 %7289 to i8
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7290, i8* %7291, align 1
  %7292 = lshr i32 %7270, 31
  %7293 = trunc i32 %7292 to i8
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7293, i8* %7294, align 1
  %7295 = lshr i32 %7267, 31
  %7296 = lshr i32 %7269, 31
  %7297 = xor i32 %7292, %7295
  %7298 = xor i32 %7292, %7296
  %7299 = add i32 %7297, %7298
  %7300 = icmp eq i32 %7299, 2
  %7301 = zext i1 %7300 to i8
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7301, i8* %7302, align 1
  store %struct.Memory* %loadMem_445571, %struct.Memory** %MEMORY
  %loadMem_445574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7304 = getelementptr inbounds %struct.GPR, %struct.GPR* %7303, i32 0, i32 33
  %7305 = getelementptr inbounds %struct.Reg, %struct.Reg* %7304, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7305 to i64*
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7307 = getelementptr inbounds %struct.GPR, %struct.GPR* %7306, i32 0, i32 1
  %7308 = getelementptr inbounds %struct.Reg, %struct.Reg* %7307, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %7308 to i32*
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 15
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7311 to i64*
  %7312 = load i64, i64* %RBP.i31
  %7313 = sub i64 %7312, 28
  %7314 = load i32, i32* %EAX.i30
  %7315 = zext i32 %7314 to i64
  %7316 = load i64, i64* %PC.i29
  %7317 = add i64 %7316, 3
  store i64 %7317, i64* %PC.i29
  %7318 = inttoptr i64 %7313 to i32*
  store i32 %7314, i32* %7318
  store %struct.Memory* %loadMem_445574, %struct.Memory** %MEMORY
  br label %block_.L_445577

block_.L_445577:                                  ; preds = %block_4454ee, %block_.L_4454d8, %block_4454c2
  %loadMem_445577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7320 = getelementptr inbounds %struct.GPR, %struct.GPR* %7319, i32 0, i32 33
  %7321 = getelementptr inbounds %struct.Reg, %struct.Reg* %7320, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7321 to i64*
  %7322 = load i64, i64* %PC.i28
  %7323 = add i64 %7322, 5
  %7324 = load i64, i64* %PC.i28
  %7325 = add i64 %7324, 5
  store i64 %7325, i64* %PC.i28
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7323, i64* %7326, align 8
  store %struct.Memory* %loadMem_445577, %struct.Memory** %MEMORY
  br label %block_.L_44557c

block_.L_44557c:                                  ; preds = %block_.L_445577
  %loadMem_44557c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 33
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 1
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 15
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %7335 to i64*
  %7336 = load i64, i64* %RBP.i27
  %7337 = sub i64 %7336, 36
  %7338 = load i64, i64* %PC.i25
  %7339 = add i64 %7338, 3
  store i64 %7339, i64* %PC.i25
  %7340 = inttoptr i64 %7337 to i32*
  %7341 = load i32, i32* %7340
  %7342 = zext i32 %7341 to i64
  store i64 %7342, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_44557c, %struct.Memory** %MEMORY
  %loadMem_44557f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 33
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7345 to i64*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 1
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 15
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %RAX.i23
  %7353 = load i64, i64* %RBP.i24
  %7354 = sub i64 %7353, 12
  %7355 = load i64, i64* %PC.i22
  %7356 = add i64 %7355, 3
  store i64 %7356, i64* %PC.i22
  %7357 = trunc i64 %7352 to i32
  %7358 = inttoptr i64 %7354 to i32*
  %7359 = load i32, i32* %7358
  %7360 = add i32 %7359, %7357
  %7361 = zext i32 %7360 to i64
  store i64 %7361, i64* %RAX.i23, align 8
  %7362 = icmp ult i32 %7360, %7357
  %7363 = icmp ult i32 %7360, %7359
  %7364 = or i1 %7362, %7363
  %7365 = zext i1 %7364 to i8
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7365, i8* %7366, align 1
  %7367 = and i32 %7360, 255
  %7368 = call i32 @llvm.ctpop.i32(i32 %7367)
  %7369 = trunc i32 %7368 to i8
  %7370 = and i8 %7369, 1
  %7371 = xor i8 %7370, 1
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7371, i8* %7372, align 1
  %7373 = xor i32 %7359, %7357
  %7374 = xor i32 %7373, %7360
  %7375 = lshr i32 %7374, 4
  %7376 = trunc i32 %7375 to i8
  %7377 = and i8 %7376, 1
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7377, i8* %7378, align 1
  %7379 = icmp eq i32 %7360, 0
  %7380 = zext i1 %7379 to i8
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7380, i8* %7381, align 1
  %7382 = lshr i32 %7360, 31
  %7383 = trunc i32 %7382 to i8
  %7384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7383, i8* %7384, align 1
  %7385 = lshr i32 %7357, 31
  %7386 = lshr i32 %7359, 31
  %7387 = xor i32 %7382, %7385
  %7388 = xor i32 %7382, %7386
  %7389 = add i32 %7387, %7388
  %7390 = icmp eq i32 %7389, 2
  %7391 = zext i1 %7390 to i8
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7391, i8* %7392, align 1
  store %struct.Memory* %loadMem_44557f, %struct.Memory** %MEMORY
  %loadMem_445582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7394 = getelementptr inbounds %struct.GPR, %struct.GPR* %7393, i32 0, i32 33
  %7395 = getelementptr inbounds %struct.Reg, %struct.Reg* %7394, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7395 to i64*
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7397 = getelementptr inbounds %struct.GPR, %struct.GPR* %7396, i32 0, i32 1
  %7398 = getelementptr inbounds %struct.Reg, %struct.Reg* %7397, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %7398 to i32*
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 15
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7401 to i64*
  %7402 = load i64, i64* %RBP.i21
  %7403 = sub i64 %7402, 12
  %7404 = load i32, i32* %EAX.i20
  %7405 = zext i32 %7404 to i64
  %7406 = load i64, i64* %PC.i19
  %7407 = add i64 %7406, 3
  store i64 %7407, i64* %PC.i19
  %7408 = inttoptr i64 %7403 to i32*
  store i32 %7404, i32* %7408
  store %struct.Memory* %loadMem_445582, %struct.Memory** %MEMORY
  %loadMem_445585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 33
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %PC.i18
  %7413 = add i64 %7412, -255
  %7414 = load i64, i64* %PC.i18
  %7415 = add i64 %7414, 5
  store i64 %7415, i64* %PC.i18
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7413, i64* %7416, align 8
  store %struct.Memory* %loadMem_445585, %struct.Memory** %MEMORY
  br label %block_.L_445486

block_.L_44558a:                                  ; preds = %block_.L_445486
  %loadMem_44558a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 33
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7419 to i64*
  %7420 = load i64, i64* %PC.i17
  %7421 = add i64 %7420, 5
  %7422 = load i64, i64* %PC.i17
  %7423 = add i64 %7422, 5
  store i64 %7423, i64* %PC.i17
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7421, i64* %7424, align 8
  store %struct.Memory* %loadMem_44558a, %struct.Memory** %MEMORY
  br label %block_.L_44558f

block_.L_44558f:                                  ; preds = %block_.L_44558a
  %loadMem_44558f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 33
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7427 to i64*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 1
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %7430 to i64*
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 15
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7433 to i64*
  %7434 = load i64, i64* %RBP.i16
  %7435 = sub i64 %7434, 40
  %7436 = load i64, i64* %PC.i14
  %7437 = add i64 %7436, 3
  store i64 %7437, i64* %PC.i14
  %7438 = inttoptr i64 %7435 to i32*
  %7439 = load i32, i32* %7438
  %7440 = zext i32 %7439 to i64
  store i64 %7440, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_44558f, %struct.Memory** %MEMORY
  %loadMem_445592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7442 = getelementptr inbounds %struct.GPR, %struct.GPR* %7441, i32 0, i32 33
  %7443 = getelementptr inbounds %struct.Reg, %struct.Reg* %7442, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7443 to i64*
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 1
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %7446 to i64*
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 15
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %7449 to i64*
  %7450 = load i64, i64* %RAX.i12
  %7451 = load i64, i64* %RBP.i13
  %7452 = sub i64 %7451, 8
  %7453 = load i64, i64* %PC.i11
  %7454 = add i64 %7453, 3
  store i64 %7454, i64* %PC.i11
  %7455 = trunc i64 %7450 to i32
  %7456 = inttoptr i64 %7452 to i32*
  %7457 = load i32, i32* %7456
  %7458 = add i32 %7457, %7455
  %7459 = zext i32 %7458 to i64
  store i64 %7459, i64* %RAX.i12, align 8
  %7460 = icmp ult i32 %7458, %7455
  %7461 = icmp ult i32 %7458, %7457
  %7462 = or i1 %7460, %7461
  %7463 = zext i1 %7462 to i8
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7463, i8* %7464, align 1
  %7465 = and i32 %7458, 255
  %7466 = call i32 @llvm.ctpop.i32(i32 %7465)
  %7467 = trunc i32 %7466 to i8
  %7468 = and i8 %7467, 1
  %7469 = xor i8 %7468, 1
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7469, i8* %7470, align 1
  %7471 = xor i32 %7457, %7455
  %7472 = xor i32 %7471, %7458
  %7473 = lshr i32 %7472, 4
  %7474 = trunc i32 %7473 to i8
  %7475 = and i8 %7474, 1
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7475, i8* %7476, align 1
  %7477 = icmp eq i32 %7458, 0
  %7478 = zext i1 %7477 to i8
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7478, i8* %7479, align 1
  %7480 = lshr i32 %7458, 31
  %7481 = trunc i32 %7480 to i8
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7481, i8* %7482, align 1
  %7483 = lshr i32 %7455, 31
  %7484 = lshr i32 %7457, 31
  %7485 = xor i32 %7480, %7483
  %7486 = xor i32 %7480, %7484
  %7487 = add i32 %7485, %7486
  %7488 = icmp eq i32 %7487, 2
  %7489 = zext i1 %7488 to i8
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7489, i8* %7490, align 1
  store %struct.Memory* %loadMem_445592, %struct.Memory** %MEMORY
  %loadMem_445595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 33
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7493 to i64*
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 1
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7496 to i32*
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 15
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %RBP.i10
  %7501 = sub i64 %7500, 8
  %7502 = load i32, i32* %EAX.i
  %7503 = zext i32 %7502 to i64
  %7504 = load i64, i64* %PC.i9
  %7505 = add i64 %7504, 3
  store i64 %7505, i64* %PC.i9
  %7506 = inttoptr i64 %7501 to i32*
  store i32 %7502, i32* %7506
  store %struct.Memory* %loadMem_445595, %struct.Memory** %MEMORY
  %loadMem_445598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7509 to i64*
  %7510 = load i64, i64* %PC.i8
  %7511 = add i64 %7510, -291
  %7512 = load i64, i64* %PC.i8
  %7513 = add i64 %7512, 5
  store i64 %7513, i64* %PC.i8
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7511, i64* %7514, align 8
  store %struct.Memory* %loadMem_445598, %struct.Memory** %MEMORY
  br label %block_.L_445475

block_.L_44559d:                                  ; preds = %block_.L_445475
  %loadMem_44559d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7516 = getelementptr inbounds %struct.GPR, %struct.GPR* %7515, i32 0, i32 33
  %7517 = getelementptr inbounds %struct.Reg, %struct.Reg* %7516, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7517 to i64*
  %7518 = load i64, i64* %PC.i7
  %7519 = add i64 %7518, 5
  %7520 = load i64, i64* %PC.i7
  %7521 = add i64 %7520, 5
  store i64 %7521, i64* %PC.i7
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7519, i64* %7522, align 8
  store %struct.Memory* %loadMem_44559d, %struct.Memory** %MEMORY
  br label %block_.L_4455a2

block_.L_4455a2:                                  ; preds = %block_.L_44559d, %block_445464, %block_445456, %block_445448, %block_44543a, %block_.L_44542c
  %loadMem_4455a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 33
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 1
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7528 to i64*
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 15
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7531 to i64*
  %7532 = load i64, i64* %RBP.i6
  %7533 = sub i64 %7532, 28
  %7534 = load i64, i64* %PC.i5
  %7535 = add i64 %7534, 3
  store i64 %7535, i64* %PC.i5
  %7536 = inttoptr i64 %7533 to i32*
  %7537 = load i32, i32* %7536
  %7538 = zext i32 %7537 to i64
  store i64 %7538, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4455a2, %struct.Memory** %MEMORY
  %loadMem_4455a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 33
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 13
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %RSP.i
  %7546 = load i64, i64* %PC.i4
  %7547 = add i64 %7546, 4
  store i64 %7547, i64* %PC.i4
  %7548 = add i64 96, %7545
  store i64 %7548, i64* %RSP.i, align 8
  %7549 = icmp ult i64 %7548, %7545
  %7550 = icmp ult i64 %7548, 96
  %7551 = or i1 %7549, %7550
  %7552 = zext i1 %7551 to i8
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7552, i8* %7553, align 1
  %7554 = trunc i64 %7548 to i32
  %7555 = and i32 %7554, 255
  %7556 = call i32 @llvm.ctpop.i32(i32 %7555)
  %7557 = trunc i32 %7556 to i8
  %7558 = and i8 %7557, 1
  %7559 = xor i8 %7558, 1
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7559, i8* %7560, align 1
  %7561 = xor i64 96, %7545
  %7562 = xor i64 %7561, %7548
  %7563 = lshr i64 %7562, 4
  %7564 = trunc i64 %7563 to i8
  %7565 = and i8 %7564, 1
  %7566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7565, i8* %7566, align 1
  %7567 = icmp eq i64 %7548, 0
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7568, i8* %7569, align 1
  %7570 = lshr i64 %7548, 63
  %7571 = trunc i64 %7570 to i8
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7571, i8* %7572, align 1
  %7573 = lshr i64 %7545, 63
  %7574 = xor i64 %7570, %7573
  %7575 = add i64 %7574, %7570
  %7576 = icmp eq i64 %7575, 2
  %7577 = zext i1 %7576 to i8
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7577, i8* %7578, align 1
  store %struct.Memory* %loadMem_4455a5, %struct.Memory** %MEMORY
  %loadMem_4455a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 33
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7581 to i64*
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 15
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7584 to i64*
  %7585 = load i64, i64* %PC.i2
  %7586 = add i64 %7585, 1
  store i64 %7586, i64* %PC.i2
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7588 = load i64, i64* %7587, align 8
  %7589 = add i64 %7588, 8
  %7590 = inttoptr i64 %7588 to i64*
  %7591 = load i64, i64* %7590
  store i64 %7591, i64* %RBP.i3, align 8
  store i64 %7589, i64* %7587, align 8
  store %struct.Memory* %loadMem_4455a9, %struct.Memory** %MEMORY
  %loadMem_4455aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 33
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7594 to i64*
  %7595 = load i64, i64* %PC.i1
  %7596 = add i64 %7595, 1
  store i64 %7596, i64* %PC.i1
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7599 = load i64, i64* %7598, align 8
  %7600 = inttoptr i64 %7599 to i64*
  %7601 = load i64, i64* %7600
  store i64 %7601, i64* %7597, align 8
  %7602 = add i64 %7599, 8
  store i64 %7602, i64* %7598, align 8
  store %struct.Memory* %loadMem_4455aa, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4455aa
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_sete__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %13, i8* %DL, align 1
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

define %struct.Memory* @routine_movzbl__dl___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addq__0x50___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_444fbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_444fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__rcx_8____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 1
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x50___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__0x48__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_445003(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44500d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x4__rdx__rcx_8____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x9__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4452c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_445098(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ZeroRef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_445098(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
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

define %struct.Memory* @routine_je_.L_4452bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4451aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_445197(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x1e8__rdi__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 9
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

define %struct.Memory* @routine_je_.L_445102(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x1e8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 488
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

define %struct.Memory* @routine_jne_.L_445184(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_445184(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x1d8__rax__rdx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 472
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x90__r8____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %R8
  %14 = add i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 12
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %13
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %21, %13
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
  %34 = xor i32 %20, %13
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
  %46 = lshr i32 %13, 31
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

define %struct.Memory* @routine_movslq__r9d___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__r8_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0x94__r8____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %R8
  %14 = add i64 %13, 148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %13
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %21, %13
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
  %34 = xor i32 %20, %13
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
  %46 = lshr i32 %13, 31
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

define %struct.Memory* @routine_movswl___rax__r8_2____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i16*
  %23 = load i16, i16* %22
  %24 = sext i16 %23 to i64
  %25 = and i64 %24, 4294967295
  store i64 %25, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.writeReferenceFrame(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_jmpq_.L_445189(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_jmpq_.L_4450b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44519c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44509f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4452ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4452a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__0x1e8__rdi__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 9
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

define %struct.Memory* @routine_je_.L_445214(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_445294(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_445294(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_445299(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4451c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4452ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4451b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4452bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4452c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_44542c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_445427(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_445414(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_445366(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_445401(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_445401(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = sext i16 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 40
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %13
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %21, %13
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
  %34 = xor i32 %20, %13
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
  %46 = lshr i32 %13, 31
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1d8__rax__rcx_4____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R11D to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 472
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R11D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.writeMotionVector8x8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_445406(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445419(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445303(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44542c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4455a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_44559d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_44558a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4454d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_445577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_445577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 1, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44557c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445486(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44558f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445475(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4455a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
