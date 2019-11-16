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
%G_0x6d4690_type = type <{ [8 x i8] }>
%G__0x4b9070_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6d4690 = global %G_0x6d4690_type zeroinitializer
@G__0x4b9070 = global %G__0x4b9070_type zeroinitializer

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

declare %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @predict_nnz_chroma(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_447860 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_447860, %struct.Memory** %MEMORY
  %loadMem_447861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i11
  %27 = load i64, i64* %PC.i10
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i10
  store i64 %26, i64* %RBP.i12, align 8
  store %struct.Memory* %loadMem_447861, %struct.Memory** %MEMORY
  %loadMem_447864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i270 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i270
  %36 = load i64, i64* %PC.i269
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i269
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i270, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_447864, %struct.Memory** %MEMORY
  %loadMem_44786b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i343
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i343
  store i64 ptrtoint (%G__0x4b9070_type* @G__0x4b9070 to i64), i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_44786b, %struct.Memory** %MEMORY
  %loadMem_447875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i408
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i408
  store i64 48, i64* %RCX.i409, align 8
  store %struct.Memory* %loadMem_447875, %struct.Memory** %MEMORY
  %loadMem_44787a = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ECX.i484 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %91 to i64*
  %92 = load i32, i32* %ECX.i484
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC.i483
  %95 = add i64 %94, 2
  store i64 %95, i64* %PC.i483
  %96 = and i64 %93, 4294967295
  store i64 %96, i64* %RDX.i485, align 8
  store %struct.Memory* %loadMem_44787a, %struct.Memory** %MEMORY
  %loadMem_44787c = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 17
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %R8.i = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i527
  %107 = sub i64 %106, 96
  %108 = load i64, i64* %PC.i526
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i526
  store i64 %107, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_44787c, %struct.Memory** %MEMORY
  %loadMem_447880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %115 to i32*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i551
  %120 = sub i64 %119, 4
  %121 = load i32, i32* %EDI.i
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %PC.i550
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC.i550
  %125 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %125
  store %struct.Memory* %loadMem_447880, %struct.Memory** %MEMORY
  %loadMem_447883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %ESI.i548 = bitcast %union.anon* %131 to i32*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i549
  %136 = sub i64 %135, 8
  %137 = load i32, i32* %ESI.i548
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %PC.i547
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC.i547
  %141 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %141
  store %struct.Memory* %loadMem_447883, %struct.Memory** %MEMORY
  %loadMem_447886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i546
  %149 = sub i64 %148, 36
  %150 = load i64, i64* %PC.i545
  %151 = add i64 %150, 7
  store i64 %151, i64* %PC.i545
  %152 = inttoptr i64 %149 to i32*
  store i32 0, i32* %152
  store %struct.Memory* %loadMem_447886, %struct.Memory** %MEMORY
  %loadMem_44788d = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i544
  %160 = sub i64 %159, 40
  %161 = load i64, i64* %PC.i543
  %162 = add i64 %161, 7
  store i64 %162, i64* %PC.i543
  %163 = inttoptr i64 %160 to i32*
  store i32 0, i32* %163
  store %struct.Memory* %loadMem_44788d, %struct.Memory** %MEMORY
  %loadMem_447894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 19
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %R9.i542 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %PC.i541
  %171 = add i64 %170, 8
  store i64 %171, i64* %PC.i541
  %172 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %172, i64* %R9.i542, align 8
  store %struct.Memory* %loadMem_447894, %struct.Memory** %MEMORY
  %loadMem_44789c = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 19
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %R9.i540 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %R9.i540
  %183 = add i64 %182, 12
  %184 = load i64, i64* %PC.i538
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC.i538
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_44789c, %struct.Memory** %MEMORY
  %loadMem_4478a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %ECX.i536 = bitcast %union.anon* %194 to i32*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RBP.i537
  %199 = sub i64 %198, 44
  %200 = load i32, i32* %ECX.i536
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC.i535
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC.i535
  %204 = inttoptr i64 %199 to i32*
  store i32 %200, i32* %204
  store %struct.Memory* %loadMem_4478a0, %struct.Memory** %MEMORY
  %loadMem_4478a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 11
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RDI.i533 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 17
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %R8.i534 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %R8.i534
  %215 = load i64, i64* %PC.i532
  %216 = add i64 %215, 3
  store i64 %216, i64* %PC.i532
  store i64 %214, i64* %RDI.i533, align 8
  store %struct.Memory* %loadMem_4478a3, %struct.Memory** %MEMORY
  %loadMem_4478a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 9
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RAX.i530
  %227 = load i64, i64* %PC.i529
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC.i529
  store i64 %226, i64* %RSI.i531, align 8
  store %struct.Memory* %loadMem_4478a6, %struct.Memory** %MEMORY
  %loadMem1_4478a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %PC.i528
  %233 = add i64 %232, -288633
  %234 = load i64, i64* %PC.i528
  %235 = add i64 %234, 5
  %236 = load i64, i64* %PC.i528
  %237 = add i64 %236, 5
  store i64 %237, i64* %PC.i528
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %235, i64* %241
  store i64 %240, i64* %238, align 8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %233, i64* %242, align 8
  store %struct.Memory* %loadMem1_4478a9, %struct.Memory** %MEMORY
  %loadMem2_4478a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4478a9 = load i64, i64* %3
  %243 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %loadMem2_4478a9)
  store %struct.Memory* %243, %struct.Memory** %MEMORY
  %loadMem_4478ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i525
  %254 = sub i64 %253, 8
  %255 = load i64, i64* %PC.i523
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC.i523
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_4478ae, %struct.Memory** %MEMORY
  %loadMem_4478b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i522
  %273 = load i64, i64* %RAX.i520
  %274 = mul i64 %273, 4
  %275 = add i64 %272, -96
  %276 = add i64 %275, %274
  %277 = load i64, i64* %PC.i519
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC.i519
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_4478b2, %struct.Memory** %MEMORY
  %loadMem_4478b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %ECX.i517 = bitcast %union.anon* %287 to i32*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i518
  %292 = sub i64 %291, 100
  %293 = load i32, i32* %ECX.i517
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC.i516
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC.i516
  %297 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %297
  store %struct.Memory* %loadMem_4478b6, %struct.Memory** %MEMORY
  %loadMem_4478b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i514
  %305 = add i64 %304, 8
  store i64 %305, i64* %PC.i514
  %306 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %306, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_4478b9, %struct.Memory** %MEMORY
  %loadMem_4478c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RAX.i513
  %314 = add i64 %313, 72700
  %315 = load i64, i64* %PC.i512
  %316 = add i64 %315, 7
  store i64 %316, i64* %PC.i512
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317
  %319 = sub i32 %318, 3
  %320 = icmp ult i32 %318, 3
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %321, i8* %322, align 1
  %323 = and i32 %319, 255
  %324 = call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %327, i8* %328, align 1
  %329 = xor i32 %318, 3
  %330 = xor i32 %329, %319
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %333, i8* %334, align 1
  %335 = icmp eq i32 %319, 0
  %336 = zext i1 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %336, i8* %337, align 1
  %338 = lshr i32 %319, 31
  %339 = trunc i32 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %339, i8* %340, align 1
  %341 = lshr i32 %318, 31
  %342 = xor i32 %338, %341
  %343 = add i32 %342, %341
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %345, i8* %346, align 1
  store %struct.Memory* %loadMem_4478c1, %struct.Memory** %MEMORY
  %loadMem_4478c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %PC.i511
  %351 = add i64 %350, 456
  %352 = load i64, i64* %PC.i511
  %353 = add i64 %352, 6
  %354 = load i64, i64* %PC.i511
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC.i511
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %357 = load i8, i8* %356, align 1
  store i8 %357, i8* %BRANCH_TAKEN, align 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %359 = icmp ne i8 %357, 0
  %360 = select i1 %359, i64 %351, i64 %353
  store i64 %360, i64* %358, align 8
  store %struct.Memory* %loadMem_4478c8, %struct.Memory** %MEMORY
  %loadBr_4478c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4478c8 = icmp eq i8 %loadBr_4478c8, 1
  br i1 %cmpBr_4478c8, label %block_.L_447a90, label %block_4478ce

block_4478ce:                                     ; preds = %entry
  %loadMem_4478ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %PC.i509
  %368 = add i64 %367, 5
  store i64 %368, i64* %PC.i509
  store i64 4294967295, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_4478ce, %struct.Memory** %MEMORY
  %loadMem_4478d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 17
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %R8D.i508 = bitcast %union.anon* %374 to i32*
  %375 = bitcast i32* %R8D.i508 to i64*
  %376 = load i32, i32* %R8D.i508
  %377 = zext i32 %376 to i64
  %378 = load i32, i32* %R8D.i508
  %379 = zext i32 %378 to i64
  %380 = load i64, i64* %PC.i507
  %381 = add i64 %380, 3
  store i64 %381, i64* %PC.i507
  %382 = xor i64 %379, %377
  %383 = trunc i64 %382 to i32
  %384 = and i64 %382, 4294967295
  store i64 %384, i64* %375, align 8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %385, align 1
  %386 = and i32 %383, 255
  %387 = call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %390, i8* %391, align 1
  %392 = icmp eq i32 %383, 0
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %393, i8* %394, align 1
  %395 = lshr i32 %383, 31
  %396 = trunc i32 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %396, i8* %397, align 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %398, align 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %399, align 1
  store %struct.Memory* %loadMem_4478d3, %struct.Memory** %MEMORY
  %loadMem_4478d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 15
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 19
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %R9.i506 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i505
  %410 = sub i64 %409, 32
  %411 = load i64, i64* %PC.i504
  %412 = add i64 %411, 4
  store i64 %412, i64* %PC.i504
  store i64 %410, i64* %R9.i506, align 8
  store %struct.Memory* %loadMem_4478d6, %struct.Memory** %MEMORY
  %loadMem_4478da = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %418 to i64*
  %419 = load i64, i64* %PC.i502
  %420 = add i64 %419, 5
  store i64 %420, i64* %PC.i502
  store i64 2, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_4478da, %struct.Memory** %MEMORY
  %loadMem_4478df = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 11
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RDI.i500 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RBP.i501
  %431 = sub i64 %430, 44
  %432 = load i64, i64* %PC.i499
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC.i499
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RDI.i500, align 8
  store %struct.Memory* %loadMem_4478df, %struct.Memory** %MEMORY
  %loadMem_4478e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RBP.i498
  %447 = sub i64 %446, 4
  %448 = load i64, i64* %PC.i496
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC.i496
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RDX.i497, align 8
  store %struct.Memory* %loadMem_4478e2, %struct.Memory** %MEMORY
  %loadMem_4478e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %458 to i32*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 15
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RBP.i495
  %463 = sub i64 %462, 104
  %464 = load i32, i32* %EAX.i494
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %PC.i493
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i493
  %468 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %468
  store %struct.Memory* %loadMem_4478e5, %struct.Memory** %MEMORY
  %loadMem_4478e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %EDX.i491 = bitcast %union.anon* %474 to i32*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %477 to i64*
  %478 = load i32, i32* %EDX.i491
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC.i490
  %481 = add i64 %480, 2
  store i64 %481, i64* %PC.i490
  %482 = and i64 %479, 4294967295
  store i64 %482, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_4478e8, %struct.Memory** %MEMORY
  %loadMem_4478ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %PC.i489
  %487 = add i64 %486, 1
  store i64 %487, i64* %PC.i489
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %490 = bitcast %union.anon* %489 to i32*
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = lshr i64 %492, 32
  store i64 %493, i64* %488, align 8
  store %struct.Memory* %loadMem_4478ea, %struct.Memory** %MEMORY
  %loadMem_4478eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 9
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RSI.i487 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 15
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %RBP.i488
  %504 = sub i64 %503, 104
  %505 = load i64, i64* %PC.i486
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC.i486
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RSI.i487, align 8
  store %struct.Memory* %loadMem_4478eb, %struct.Memory** %MEMORY
  %loadMem_4478ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 9
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %ESI.i481 = bitcast %union.anon* %515 to i32*
  %516 = load i32, i32* %ESI.i481
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC.i480
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC.i480
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %521 = bitcast %union.anon* %520 to i32*
  %522 = load i32, i32* %521, align 8
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %525 = bitcast %union.anon* %524 to i32*
  %526 = load i32, i32* %525, align 8
  %527 = zext i32 %526 to i64
  %528 = shl i64 %517, 32
  %529 = ashr exact i64 %528, 32
  %530 = shl i64 %527, 32
  %531 = or i64 %530, %523
  %532 = sdiv i64 %531, %529
  %533 = shl i64 %532, 32
  %534 = ashr exact i64 %533, 32
  %535 = icmp eq i64 %532, %534
  br i1 %535, label %540, label %536

; <label>:536:                                    ; preds = %block_4478ce
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %538, %struct.Memory* %loadMem_4478ee)
  br label %routine_idivl__esi.exit482

; <label>:540:                                    ; preds = %block_4478ce
  %541 = srem i64 %531, %529
  %542 = getelementptr inbounds %union.anon, %union.anon* %520, i64 0, i32 0
  %543 = and i64 %532, 4294967295
  store i64 %543, i64* %542, align 8
  %544 = getelementptr inbounds %union.anon, %union.anon* %524, i64 0, i32 0
  %545 = and i64 %541, 4294967295
  store i64 %545, i64* %544, align 8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %546, align 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %547, align 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %548, align 1
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %549, align 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %550, align 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %551, align 1
  br label %routine_idivl__esi.exit482

routine_idivl__esi.exit482:                       ; preds = %536, %540
  %552 = phi %struct.Memory* [ %539, %536 ], [ %loadMem_4478ee, %540 ]
  store %struct.Memory* %552, %struct.Memory** %MEMORY
  %loadMem_4478f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 21
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %R10D.i478 = bitcast %union.anon* %558 to i32*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %561 to i64*
  %562 = bitcast i32* %R10D.i478 to i64*
  %563 = load i64, i64* %RBP.i479
  %564 = sub i64 %563, 8
  %565 = load i64, i64* %PC.i477
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC.i477
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %562, align 8
  store %struct.Memory* %loadMem_4478f0, %struct.Memory** %MEMORY
  %loadMem_4478f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 21
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %R10D.i476 = bitcast %union.anon* %575 to i32*
  %576 = bitcast i32* %R10D.i476 to i64*
  %577 = load i32, i32* %R10D.i476
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %PC.i475
  %580 = add i64 %579, 4
  store i64 %580, i64* %PC.i475
  %581 = sub i32 %577, 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %576, align 8
  %583 = icmp ult i32 %577, 4
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %584, i8* %585, align 1
  %586 = and i32 %581, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1
  %592 = xor i64 4, %578
  %593 = trunc i64 %592 to i32
  %594 = xor i32 %593, %581
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i32 %581, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i32 %581, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %577, 31
  %606 = xor i32 %602, %605
  %607 = add i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_4478f4, %struct.Memory** %MEMORY
  %loadMem_4478f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 7
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %EDX.i473 = bitcast %union.anon* %616 to i32*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 9
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RSI.i474 = bitcast %union.anon* %619 to i64*
  %620 = load i32, i32* %EDX.i473
  %621 = zext i32 %620 to i64
  %622 = load i64, i64* %PC.i472
  %623 = add i64 %622, 2
  store i64 %623, i64* %PC.i472
  %624 = and i64 %621, 4294967295
  store i64 %624, i64* %RSI.i474, align 8
  store %struct.Memory* %loadMem_4478f8, %struct.Memory** %MEMORY
  %loadMem_4478fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 21
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %R10D.i470 = bitcast %union.anon* %630 to i32*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 7
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %633 to i64*
  %634 = load i32, i32* %R10D.i470
  %635 = zext i32 %634 to i64
  %636 = load i64, i64* %PC.i469
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC.i469
  %638 = and i64 %635, 4294967295
  store i64 %638, i64* %RDX.i471, align 8
  store %struct.Memory* %loadMem_4478fa, %struct.Memory** %MEMORY
  %loadMem1_4478fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i468
  %643 = add i64 %642, 14819
  %644 = load i64, i64* %PC.i468
  %645 = add i64 %644, 5
  %646 = load i64, i64* %PC.i468
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i468
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %645, i64* %651
  store i64 %650, i64* %648, align 8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %643, i64* %652, align 8
  store %struct.Memory* %loadMem1_4478fd, %struct.Memory** %MEMORY
  %loadMem2_4478fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4478fd = load i64, i64* %3
  %call2_4478fd = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64 %loadPC_4478fd, %struct.Memory* %loadMem2_4478fd)
  store %struct.Memory* %call2_4478fd, %struct.Memory** %MEMORY
  %loadMem_447902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 15
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %RBP.i467
  %660 = sub i64 %659, 32
  %661 = load i64, i64* %PC.i466
  %662 = add i64 %661, 4
  store i64 %662, i64* %PC.i466
  %663 = inttoptr i64 %660 to i32*
  %664 = load i32, i32* %663
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %665, align 1
  %666 = and i32 %664, 255
  %667 = call i32 @llvm.ctpop.i32(i32 %666)
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %670, i8* %671, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %672, align 1
  %673 = icmp eq i32 %664, 0
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %674, i8* %675, align 1
  %676 = lshr i32 %664, 31
  %677 = trunc i32 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %677, i8* %678, align 1
  %679 = lshr i32 %664, 31
  %680 = xor i32 %676, %679
  %681 = add i32 %680, %679
  %682 = icmp eq i32 %681, 2
  %683 = zext i1 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %683, i8* %684, align 1
  store %struct.Memory* %loadMem_447902, %struct.Memory** %MEMORY
  %loadMem_447906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %PC.i465
  %689 = add i64 %688, 76
  %690 = load i64, i64* %PC.i465
  %691 = add i64 %690, 6
  %692 = load i64, i64* %PC.i465
  %693 = add i64 %692, 6
  store i64 %693, i64* %PC.i465
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %695 = load i8, i8* %694, align 1
  store i8 %695, i8* %BRANCH_TAKEN, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %697 = icmp ne i8 %695, 0
  %698 = select i1 %697, i64 %689, i64 %691
  store i64 %698, i64* %696, align 8
  store %struct.Memory* %loadMem_447906, %struct.Memory** %MEMORY
  %loadBr_447906 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447906 = icmp eq i8 %loadBr_447906, 1
  br i1 %cmpBr_447906, label %block_.L_447952, label %block_44790c

block_44790c:                                     ; preds = %routine_idivl__esi.exit482
  %loadMem_44790c = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %PC.i463
  %706 = add i64 %705, 8
  store i64 %706, i64* %PC.i463
  %707 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %707, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_44790c, %struct.Memory** %MEMORY
  %loadMem_447914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 1
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RAX.i462
  %715 = add i64 %714, 224
  %716 = load i64, i64* %PC.i461
  %717 = add i64 %716, 7
  store i64 %717, i64* %PC.i461
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %720, align 1
  %721 = and i32 %719, 255
  %722 = call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %725, i8* %726, align 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %727, align 1
  %728 = icmp eq i32 %719, 0
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %729, i8* %730, align 1
  %731 = lshr i32 %719, 31
  %732 = trunc i32 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %732, i8* %733, align 1
  %734 = lshr i32 %719, 31
  %735 = xor i32 %731, %734
  %736 = add i32 %735, %734
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %738, i8* %739, align 1
  store %struct.Memory* %loadMem_447914, %struct.Memory** %MEMORY
  %loadMem_44791b = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %PC.i460
  %744 = add i64 %743, 55
  %745 = load i64, i64* %PC.i460
  %746 = add i64 %745, 6
  %747 = load i64, i64* %PC.i460
  %748 = add i64 %747, 6
  store i64 %748, i64* %PC.i460
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %750 = load i8, i8* %749, align 1
  store i8 %750, i8* %BRANCH_TAKEN, align 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %752 = icmp ne i8 %750, 0
  %753 = select i1 %752, i64 %744, i64 %746
  store i64 %753, i64* %751, align 8
  store %struct.Memory* %loadMem_44791b, %struct.Memory** %MEMORY
  %loadBr_44791b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44791b = icmp eq i8 %loadBr_44791b, 1
  br i1 %cmpBr_44791b, label %block_.L_447952, label %block_447921

block_447921:                                     ; preds = %block_44790c
  %loadMem_447921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i458
  %761 = add i64 %760, 8
  store i64 %761, i64* %PC.i458
  %762 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %762, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_447921, %struct.Memory** %MEMORY
  %loadMem_447929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %RAX.i457
  %770 = add i64 %769, 2364
  %771 = load i64, i64* %PC.i456
  %772 = add i64 %771, 7
  store i64 %772, i64* %PC.i456
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %775, align 1
  %776 = and i32 %774, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %782, align 1
  %783 = icmp eq i32 %774, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1
  %786 = lshr i32 %774, 31
  %787 = trunc i32 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1
  %789 = lshr i32 %774, 31
  %790 = xor i32 %786, %789
  %791 = add i32 %790, %789
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %793, i8* %794, align 1
  store %struct.Memory* %loadMem_447929, %struct.Memory** %MEMORY
  %loadMem_447930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %PC.i455
  %799 = add i64 %798, 34
  %800 = load i64, i64* %PC.i455
  %801 = add i64 %800, 6
  %802 = load i64, i64* %PC.i455
  %803 = add i64 %802, 6
  store i64 %803, i64* %PC.i455
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %805 = load i8, i8* %804, align 1
  store i8 %805, i8* %BRANCH_TAKEN, align 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %807 = icmp ne i8 %805, 0
  %808 = select i1 %807, i64 %799, i64 %801
  store i64 %808, i64* %806, align 8
  store %struct.Memory* %loadMem_447930, %struct.Memory** %MEMORY
  %loadBr_447930 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447930 = icmp eq i8 %loadBr_447930, 1
  br i1 %cmpBr_447930, label %block_.L_447952, label %block_447936

block_447936:                                     ; preds = %block_447921
  %loadMem_447936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 1
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %814 to i64*
  %815 = load i64, i64* %PC.i453
  %816 = add i64 %815, 8
  store i64 %816, i64* %PC.i453
  %817 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %817, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_447936, %struct.Memory** %MEMORY
  %loadMem_44793e = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %RAX.i452
  %825 = add i64 %824, 71784
  %826 = load i64, i64* %PC.i451
  %827 = add i64 %826, 7
  store i64 %827, i64* %PC.i451
  %828 = inttoptr i64 %825 to i64*
  %829 = load i64, i64* %828
  store i64 %829, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_44793e, %struct.Memory** %MEMORY
  %loadMem_447945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 5
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 15
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RBP.i450
  %840 = sub i64 %839, 28
  %841 = load i64, i64* %PC.i448
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i448
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_447945, %struct.Memory** %MEMORY
  %loadMem_447949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 5
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 7
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RAX.i445
  %859 = load i64, i64* %RCX.i446
  %860 = mul i64 %859, 4
  %861 = add i64 %860, %858
  %862 = load i64, i64* %PC.i444
  %863 = add i64 %862, 3
  store i64 %863, i64* %PC.i444
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RDX.i447, align 8
  store %struct.Memory* %loadMem_447949, %struct.Memory** %MEMORY
  %loadMem_44794c = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 7
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RDX.i442
  %877 = load i64, i64* %RBP.i443
  %878 = sub i64 %877, 32
  %879 = load i64, i64* %PC.i441
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC.i441
  %881 = trunc i64 %876 to i32
  %882 = inttoptr i64 %878 to i32*
  %883 = load i32, i32* %882
  %884 = and i32 %883, %881
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RDX.i442, align 8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %886, align 1
  %887 = and i32 %884, 255
  %888 = call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %891, i8* %892, align 1
  %893 = icmp eq i32 %884, 0
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %894, i8* %895, align 1
  %896 = lshr i32 %884, 31
  %897 = trunc i32 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %897, i8* %898, align 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %899, align 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %900, align 1
  store %struct.Memory* %loadMem_44794c, %struct.Memory** %MEMORY
  %loadMem_44794f = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 7
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %EDX.i439 = bitcast %union.anon* %906 to i32*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RBP.i440
  %911 = sub i64 %910, 32
  %912 = load i32, i32* %EDX.i439
  %913 = zext i32 %912 to i64
  %914 = load i64, i64* %PC.i438
  %915 = add i64 %914, 3
  store i64 %915, i64* %PC.i438
  %916 = inttoptr i64 %911 to i32*
  store i32 %912, i32* %916
  store %struct.Memory* %loadMem_44794f, %struct.Memory** %MEMORY
  br label %block_.L_447952

block_.L_447952:                                  ; preds = %block_447936, %block_447921, %block_44790c, %routine_idivl__esi.exit482
  %loadMem_447952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 15
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RBP.i437
  %924 = sub i64 %923, 32
  %925 = load i64, i64* %PC.i436
  %926 = add i64 %925, 4
  store i64 %926, i64* %PC.i436
  %927 = inttoptr i64 %924 to i32*
  %928 = load i32, i32* %927
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %929, align 1
  %930 = and i32 %928, 255
  %931 = call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %934, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %936, align 1
  %937 = icmp eq i32 %928, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %928, 31
  %941 = trunc i32 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %941, i8* %942, align 1
  %943 = lshr i32 %928, 31
  %944 = xor i32 %940, %943
  %945 = add i32 %944, %943
  %946 = icmp eq i32 %945, 2
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %947, i8* %948, align 1
  store %struct.Memory* %loadMem_447952, %struct.Memory** %MEMORY
  %loadMem_447956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i435
  %953 = add i64 %952, 85
  %954 = load i64, i64* %PC.i435
  %955 = add i64 %954, 6
  %956 = load i64, i64* %PC.i435
  %957 = add i64 %956, 6
  store i64 %957, i64* %PC.i435
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %959 = load i8, i8* %958, align 1
  store i8 %959, i8* %BRANCH_TAKEN, align 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %961 = icmp ne i8 %959, 0
  %962 = select i1 %961, i64 %953, i64 %955
  store i64 %962, i64* %960, align 8
  store %struct.Memory* %loadMem_447956, %struct.Memory** %MEMORY
  %loadBr_447956 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447956 = icmp eq i8 %loadBr_447956, 1
  br i1 %cmpBr_447956, label %block_.L_4479ab, label %block_44795c

block_44795c:                                     ; preds = %block_.L_447952
  %loadMem_44795c = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %PC.i433
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC.i433
  store i64 2, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_44795c, %struct.Memory** %MEMORY
  %loadMem_447961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %PC.i431
  %978 = add i64 %977, 8
  store i64 %978, i64* %PC.i431
  %979 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %979, i64* %RCX.i432, align 8
  store %struct.Memory* %loadMem_447961, %struct.Memory** %MEMORY
  %loadMem_447969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 5
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %985 to i64*
  %986 = load i64, i64* %RCX.i430
  %987 = add i64 %986, 128
  %988 = load i64, i64* %PC.i429
  %989 = add i64 %988, 7
  store i64 %989, i64* %PC.i429
  %990 = inttoptr i64 %987 to i64*
  %991 = load i64, i64* %990
  store i64 %991, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_447969, %struct.Memory** %MEMORY
  %loadMem_447970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 7
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RBP.i428
  %1002 = sub i64 %1001, 28
  %1003 = load i64, i64* %PC.i426
  %1004 = add i64 %1003, 4
  store i64 %1004, i64* %PC.i426
  %1005 = inttoptr i64 %1002 to i32*
  %1006 = load i32, i32* %1005
  %1007 = sext i32 %1006 to i64
  store i64 %1007, i64* %RDX.i427, align 8
  store %struct.Memory* %loadMem_447970, %struct.Memory** %MEMORY
  %loadMem_447974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 5
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 7
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RCX.i424
  %1018 = load i64, i64* %RDX.i425
  %1019 = mul i64 %1018, 8
  %1020 = add i64 %1019, %1017
  %1021 = load i64, i64* %PC.i423
  %1022 = add i64 %1021, 4
  store i64 %1022, i64* %PC.i423
  %1023 = inttoptr i64 %1020 to i64*
  %1024 = load i64, i64* %1023
  store i64 %1024, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_447974, %struct.Memory** %MEMORY
  %loadMem_447978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 9
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RSI.i421 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i422
  %1035 = sub i64 %1034, 4
  %1036 = load i64, i64* %PC.i420
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %PC.i420
  %1038 = inttoptr i64 %1035 to i32*
  %1039 = load i32, i32* %1038
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RSI.i421, align 8
  store %struct.Memory* %loadMem_447978, %struct.Memory** %MEMORY
  %loadMem_44797b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 1
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %1046 to i32*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RBP.i419
  %1051 = sub i64 %1050, 108
  %1052 = load i32, i32* %EAX.i418
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC.i417
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC.i417
  %1056 = inttoptr i64 %1051 to i32*
  store i32 %1052, i32* %1056
  store %struct.Memory* %loadMem_44797b, %struct.Memory** %MEMORY
  %loadMem_44797e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 9
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %ESI.i415 = bitcast %union.anon* %1062 to i32*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 1
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %1065 to i64*
  %1066 = load i32, i32* %ESI.i415
  %1067 = zext i32 %1066 to i64
  %1068 = load i64, i64* %PC.i414
  %1069 = add i64 %1068, 2
  store i64 %1069, i64* %PC.i414
  %1070 = and i64 %1067, 4294967295
  store i64 %1070, i64* %RAX.i416, align 8
  store %struct.Memory* %loadMem_44797e, %struct.Memory** %MEMORY
  %loadMem_447980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %PC.i413
  %1075 = add i64 %1074, 1
  store i64 %1075, i64* %PC.i413
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1078 = bitcast %union.anon* %1077 to i32*
  %1079 = load i32, i32* %1078, align 8
  %1080 = sext i32 %1079 to i64
  %1081 = lshr i64 %1080, 32
  store i64 %1081, i64* %1076, align 8
  store %struct.Memory* %loadMem_447980, %struct.Memory** %MEMORY
  %loadMem_447981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 9
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 15
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %RBP.i412
  %1092 = sub i64 %1091, 108
  %1093 = load i64, i64* %PC.i410
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i410
  %1095 = inttoptr i64 %1092 to i32*
  %1096 = load i32, i32* %1095
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RSI.i411, align 8
  store %struct.Memory* %loadMem_447981, %struct.Memory** %MEMORY
  %loadMem_447984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 9
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %ESI.i406 = bitcast %union.anon* %1103 to i32*
  %1104 = load i32, i32* %ESI.i406
  %1105 = zext i32 %1104 to i64
  %1106 = load i64, i64* %PC.i405
  %1107 = add i64 %1106, 2
  store i64 %1107, i64* %PC.i405
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1109 = bitcast %union.anon* %1108 to i32*
  %1110 = load i32, i32* %1109, align 8
  %1111 = zext i32 %1110 to i64
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1113 = bitcast %union.anon* %1112 to i32*
  %1114 = load i32, i32* %1113, align 8
  %1115 = zext i32 %1114 to i64
  %1116 = shl i64 %1105, 32
  %1117 = ashr exact i64 %1116, 32
  %1118 = shl i64 %1115, 32
  %1119 = or i64 %1118, %1111
  %1120 = sdiv i64 %1119, %1117
  %1121 = shl i64 %1120, 32
  %1122 = ashr exact i64 %1121, 32
  %1123 = icmp eq i64 %1120, %1122
  br i1 %1123, label %1128, label %1124

; <label>:1124:                                   ; preds = %block_44795c
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8
  %1127 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1126, %struct.Memory* %loadMem_447984)
  br label %routine_idivl__esi.exit407

; <label>:1128:                                   ; preds = %block_44795c
  %1129 = srem i64 %1119, %1117
  %1130 = getelementptr inbounds %union.anon, %union.anon* %1108, i64 0, i32 0
  %1131 = and i64 %1120, 4294967295
  store i64 %1131, i64* %1130, align 8
  %1132 = getelementptr inbounds %union.anon, %union.anon* %1112, i64 0, i32 0
  %1133 = and i64 %1129, 4294967295
  store i64 %1133, i64* %1132, align 8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1134, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1135, align 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1136, align 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1137, align 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1138, align 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1139, align 1
  br label %routine_idivl__esi.exit407

routine_idivl__esi.exit407:                       ; preds = %1124, %1128
  %1140 = phi %struct.Memory* [ %1127, %1124 ], [ %loadMem_447984, %1128 ]
  store %struct.Memory* %1140, %struct.Memory** %MEMORY
  %loadMem_447986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 1
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RAX.i404
  %1148 = load i64, i64* %PC.i403
  %1149 = add i64 %1148, 2
  store i64 %1149, i64* %PC.i403
  %1150 = trunc i64 %1147 to i32
  %1151 = shl i32 %1150, 1
  %1152 = icmp slt i32 %1150, 0
  %1153 = icmp slt i32 %1151, 0
  %1154 = xor i1 %1152, %1153
  %1155 = zext i32 %1151 to i64
  store i64 %1155, i64* %RAX.i404, align 8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1157 = zext i1 %1152 to i8
  store i8 %1157, i8* %1156, align 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1159 = and i32 %1151, 254
  %1160 = call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %1158, align 1
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1164, align 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1166 = icmp eq i32 %1151, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %1165, align 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1169 = lshr i32 %1151, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %1168, align 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1172 = zext i1 %1154 to i8
  store i8 %1172, i8* %1171, align 1
  store %struct.Memory* %loadMem_447986, %struct.Memory** %MEMORY
  %loadMem_447989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %1181 to i64*
  %1182 = load i64, i64* %RAX.i401
  %1183 = load i64, i64* %RBP.i402
  %1184 = sub i64 %1183, 24
  %1185 = load i64, i64* %PC.i400
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %PC.i400
  %1187 = trunc i64 %1182 to i32
  %1188 = inttoptr i64 %1184 to i32*
  %1189 = load i32, i32* %1188
  %1190 = add i32 %1189, %1187
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RAX.i401, align 8
  %1192 = icmp ult i32 %1190, %1187
  %1193 = icmp ult i32 %1190, %1189
  %1194 = or i1 %1192, %1193
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1195, i8* %1196, align 1
  %1197 = and i32 %1190, 255
  %1198 = call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1201, i8* %1202, align 1
  %1203 = xor i32 %1189, %1187
  %1204 = xor i32 %1203, %1190
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1207, i8* %1208, align 1
  %1209 = icmp eq i32 %1190, 0
  %1210 = zext i1 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1210, i8* %1211, align 1
  %1212 = lshr i32 %1190, 31
  %1213 = trunc i32 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i32 %1187, 31
  %1216 = lshr i32 %1189, 31
  %1217 = xor i32 %1212, %1215
  %1218 = xor i32 %1212, %1216
  %1219 = add i32 %1217, %1218
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1221, i8* %1222, align 1
  store %struct.Memory* %loadMem_447989, %struct.Memory** %MEMORY
  %loadMem_44798c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 1
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %EAX.i398 = bitcast %union.anon* %1228 to i32*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 11
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RDI.i399 = bitcast %union.anon* %1231 to i64*
  %1232 = load i32, i32* %EAX.i398
  %1233 = zext i32 %1232 to i64
  %1234 = load i64, i64* %PC.i397
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC.i397
  %1236 = shl i64 %1233, 32
  %1237 = ashr exact i64 %1236, 32
  store i64 %1237, i64* %RDI.i399, align 8
  store %struct.Memory* %loadMem_44798c, %struct.Memory** %MEMORY
  %loadMem_44798f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 5
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 11
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %RCX.i395
  %1248 = load i64, i64* %RDI.i396
  %1249 = mul i64 %1248, 8
  %1250 = add i64 %1249, %1247
  %1251 = load i64, i64* %PC.i394
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %PC.i394
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253
  store i64 %1254, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_44798f, %struct.Memory** %MEMORY
  %loadMem_447993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i393
  %1265 = sub i64 %1264, 20
  %1266 = load i64, i64* %PC.i391
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i391
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_447993, %struct.Memory** %MEMORY
  %loadMem_447996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RAX.i390
  %1278 = load i64, i64* %PC.i389
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC.i389
  %1280 = trunc i64 %1277 to i32
  %1281 = add i32 4, %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RAX.i390, align 8
  %1283 = icmp ult i32 %1281, %1280
  %1284 = icmp ult i32 %1281, 4
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1287, align 1
  %1288 = and i32 %1281, 255
  %1289 = call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1292, i8* %1293, align 1
  %1294 = xor i64 4, %1277
  %1295 = trunc i64 %1294 to i32
  %1296 = xor i32 %1295, %1281
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1299, i8* %1300, align 1
  %1301 = icmp eq i32 %1281, 0
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i32 %1281, 31
  %1305 = trunc i32 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = lshr i32 %1280, 31
  %1308 = xor i32 %1304, %1307
  %1309 = add i32 %1308, %1304
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1311, i8* %1312, align 1
  store %struct.Memory* %loadMem_447996, %struct.Memory** %MEMORY
  %loadMem_447999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 1
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %1318 to i32*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 11
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RDI.i388 = bitcast %union.anon* %1321 to i64*
  %1322 = load i32, i32* %EAX.i387
  %1323 = zext i32 %1322 to i64
  %1324 = load i64, i64* %PC.i386
  %1325 = add i64 %1324, 3
  store i64 %1325, i64* %PC.i386
  %1326 = shl i64 %1323, 32
  %1327 = ashr exact i64 %1326, 32
  store i64 %1327, i64* %RDI.i388, align 8
  store %struct.Memory* %loadMem_447999, %struct.Memory** %MEMORY
  %loadMem_44799c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 1
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 5
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 11
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RDI.i385 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %RCX.i384
  %1341 = load i64, i64* %RDI.i385
  %1342 = mul i64 %1341, 4
  %1343 = add i64 %1342, %1340
  %1344 = load i64, i64* %PC.i382
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i382
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_44799c, %struct.Memory** %MEMORY
  %loadMem_44799f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %1354 to i32*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 15
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RBP.i381
  %1359 = sub i64 %1358, 36
  %1360 = load i32, i32* %EAX.i380
  %1361 = zext i32 %1360 to i64
  %1362 = load i64, i64* %PC.i379
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC.i379
  %1364 = inttoptr i64 %1359 to i32*
  store i32 %1360, i32* %1364
  store %struct.Memory* %loadMem_44799f, %struct.Memory** %MEMORY
  %loadMem_4479a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i378
  %1375 = sub i64 %1374, 40
  %1376 = load i64, i64* %PC.i376
  %1377 = add i64 %1376, 3
  store i64 %1377, i64* %PC.i376
  %1378 = inttoptr i64 %1375 to i32*
  %1379 = load i32, i32* %1378
  %1380 = zext i32 %1379 to i64
  store i64 %1380, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_4479a2, %struct.Memory** %MEMORY
  %loadMem_4479a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 1
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RAX.i375
  %1388 = load i64, i64* %PC.i374
  %1389 = add i64 %1388, 3
  store i64 %1389, i64* %PC.i374
  %1390 = trunc i64 %1387 to i32
  %1391 = add i32 1, %1390
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RAX.i375, align 8
  %1393 = icmp ult i32 %1391, %1390
  %1394 = icmp ult i32 %1391, 1
  %1395 = or i1 %1393, %1394
  %1396 = zext i1 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1396, i8* %1397, align 1
  %1398 = and i32 %1391, 255
  %1399 = call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1402, i8* %1403, align 1
  %1404 = xor i64 1, %1387
  %1405 = trunc i64 %1404 to i32
  %1406 = xor i32 %1405, %1391
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1409, i8* %1410, align 1
  %1411 = icmp eq i32 %1391, 0
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1412, i8* %1413, align 1
  %1414 = lshr i32 %1391, 31
  %1415 = trunc i32 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1415, i8* %1416, align 1
  %1417 = lshr i32 %1390, 31
  %1418 = xor i32 %1414, %1417
  %1419 = add i32 %1418, %1414
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1421, i8* %1422, align 1
  store %struct.Memory* %loadMem_4479a5, %struct.Memory** %MEMORY
  %loadMem_4479a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 1
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %EAX.i372 = bitcast %union.anon* %1428 to i32*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 15
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %RBP.i373
  %1433 = sub i64 %1432, 40
  %1434 = load i32, i32* %EAX.i372
  %1435 = zext i32 %1434 to i64
  %1436 = load i64, i64* %PC.i371
  %1437 = add i64 %1436, 3
  store i64 %1437, i64* %PC.i371
  %1438 = inttoptr i64 %1433 to i32*
  store i32 %1434, i32* %1438
  store %struct.Memory* %loadMem_4479a8, %struct.Memory** %MEMORY
  br label %block_.L_4479ab

block_.L_4479ab:                                  ; preds = %routine_idivl__esi.exit407, %block_.L_447952
  %loadMem_4479ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 5
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %ECX.i369 = bitcast %union.anon* %1444 to i32*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 5
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %RCX.i370
  %1449 = load i32, i32* %ECX.i369
  %1450 = zext i32 %1449 to i64
  %1451 = load i64, i64* %PC.i368
  %1452 = add i64 %1451, 2
  store i64 %1452, i64* %PC.i368
  %1453 = xor i64 %1450, %1448
  %1454 = trunc i64 %1453 to i32
  %1455 = and i64 %1453, 4294967295
  store i64 %1455, i64* %RCX.i370, align 8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1456, align 1
  %1457 = and i32 %1454, 255
  %1458 = call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1461, i8* %1462, align 1
  %1463 = icmp eq i32 %1454, 0
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1464, i8* %1465, align 1
  %1466 = lshr i32 %1454, 31
  %1467 = trunc i32 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1467, i8* %1468, align 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1469, align 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1470, align 1
  store %struct.Memory* %loadMem_4479ab, %struct.Memory** %MEMORY
  %loadMem_4479ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 17
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %R8D.i367 = bitcast %union.anon* %1476 to i32*
  %1477 = bitcast i32* %R8D.i367 to i64*
  %1478 = load i64, i64* %PC.i366
  %1479 = add i64 %1478, 6
  store i64 %1479, i64* %PC.i366
  store i64 4294967295, i64* %1477, align 8
  store %struct.Memory* %loadMem_4479ad, %struct.Memory** %MEMORY
  %loadMem_4479b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 15
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 19
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %R9.i365 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %RBP.i364
  %1490 = sub i64 %1489, 32
  %1491 = load i64, i64* %PC.i363
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %PC.i363
  store i64 %1490, i64* %R9.i365, align 8
  store %struct.Memory* %loadMem_4479b3, %struct.Memory** %MEMORY
  %loadMem_4479b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %PC.i361
  %1500 = add i64 %1499, 5
  store i64 %1500, i64* %PC.i361
  store i64 2, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_4479b7, %struct.Memory** %MEMORY
  %loadMem_4479bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 11
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RDI.i359 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 15
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1509 to i64*
  %1510 = load i64, i64* %RBP.i360
  %1511 = sub i64 %1510, 44
  %1512 = load i64, i64* %PC.i358
  %1513 = add i64 %1512, 3
  store i64 %1513, i64* %PC.i358
  %1514 = inttoptr i64 %1511 to i32*
  %1515 = load i32, i32* %1514
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RDI.i359, align 8
  store %struct.Memory* %loadMem_4479bc, %struct.Memory** %MEMORY
  %loadMem_4479bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 7
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i357
  %1527 = sub i64 %1526, 4
  %1528 = load i64, i64* %PC.i355
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC.i355
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RDX.i356, align 8
  store %struct.Memory* %loadMem_4479bf, %struct.Memory** %MEMORY
  %loadMem_4479c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 1
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %1538 to i32*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 15
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %RBP.i354
  %1543 = sub i64 %1542, 112
  %1544 = load i32, i32* %EAX.i353
  %1545 = zext i32 %1544 to i64
  %1546 = load i64, i64* %PC.i352
  %1547 = add i64 %1546, 3
  store i64 %1547, i64* %PC.i352
  %1548 = inttoptr i64 %1543 to i32*
  store i32 %1544, i32* %1548
  store %struct.Memory* %loadMem_4479c2, %struct.Memory** %MEMORY
  %loadMem_4479c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 7
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %EDX.i350 = bitcast %union.anon* %1554 to i32*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %1557 to i64*
  %1558 = load i32, i32* %EDX.i350
  %1559 = zext i32 %1558 to i64
  %1560 = load i64, i64* %PC.i349
  %1561 = add i64 %1560, 2
  store i64 %1561, i64* %PC.i349
  %1562 = and i64 %1559, 4294967295
  store i64 %1562, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_4479c5, %struct.Memory** %MEMORY
  %loadMem_4479c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %PC.i348
  %1567 = add i64 %1566, 1
  store i64 %1567, i64* %PC.i348
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1570 = bitcast %union.anon* %1569 to i32*
  %1571 = load i32, i32* %1570, align 8
  %1572 = sext i32 %1571 to i64
  %1573 = lshr i64 %1572, 32
  store i64 %1573, i64* %1568, align 8
  store %struct.Memory* %loadMem_4479c7, %struct.Memory** %MEMORY
  %loadMem_4479c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 9
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 15
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RBP.i347
  %1584 = sub i64 %1583, 112
  %1585 = load i64, i64* %PC.i345
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i345
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RSI.i346, align 8
  store %struct.Memory* %loadMem_4479c8, %struct.Memory** %MEMORY
  %loadMem_4479cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 9
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %ESI.i341 = bitcast %union.anon* %1595 to i32*
  %1596 = load i32, i32* %ESI.i341
  %1597 = zext i32 %1596 to i64
  %1598 = load i64, i64* %PC.i340
  %1599 = add i64 %1598, 2
  store i64 %1599, i64* %PC.i340
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1601 = bitcast %union.anon* %1600 to i32*
  %1602 = load i32, i32* %1601, align 8
  %1603 = zext i32 %1602 to i64
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1605 = bitcast %union.anon* %1604 to i32*
  %1606 = load i32, i32* %1605, align 8
  %1607 = zext i32 %1606 to i64
  %1608 = shl i64 %1597, 32
  %1609 = ashr exact i64 %1608, 32
  %1610 = shl i64 %1607, 32
  %1611 = or i64 %1610, %1603
  %1612 = sdiv i64 %1611, %1609
  %1613 = shl i64 %1612, 32
  %1614 = ashr exact i64 %1613, 32
  %1615 = icmp eq i64 %1612, %1614
  br i1 %1615, label %1620, label %1616

; <label>:1616:                                   ; preds = %block_.L_4479ab
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1618 = load i64, i64* %1617, align 8
  %1619 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1618, %struct.Memory* %loadMem_4479cb)
  br label %routine_idivl__esi.exit342

; <label>:1620:                                   ; preds = %block_.L_4479ab
  %1621 = srem i64 %1611, %1609
  %1622 = getelementptr inbounds %union.anon, %union.anon* %1600, i64 0, i32 0
  %1623 = and i64 %1612, 4294967295
  store i64 %1623, i64* %1622, align 8
  %1624 = getelementptr inbounds %union.anon, %union.anon* %1604, i64 0, i32 0
  %1625 = and i64 %1621, 4294967295
  store i64 %1625, i64* %1624, align 8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1626, align 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1627, align 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1628, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1629, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1630, align 1
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1631, align 1
  br label %routine_idivl__esi.exit342

routine_idivl__esi.exit342:                       ; preds = %1616, %1620
  %1632 = phi %struct.Memory* [ %1619, %1616 ], [ %loadMem_4479cb, %1620 ]
  store %struct.Memory* %1632, %struct.Memory** %MEMORY
  %loadMem_4479cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 21
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %R10D.i338 = bitcast %union.anon* %1638 to i32*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 15
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1641 to i64*
  %1642 = bitcast i32* %R10D.i338 to i64*
  %1643 = load i64, i64* %RBP.i339
  %1644 = sub i64 %1643, 8
  %1645 = load i64, i64* %PC.i337
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC.i337
  %1647 = inttoptr i64 %1644 to i32*
  %1648 = load i32, i32* %1647
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %1642, align 8
  store %struct.Memory* %loadMem_4479cd, %struct.Memory** %MEMORY
  %loadMem_4479d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 21
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %R10D.i336 = bitcast %union.anon* %1655 to i32*
  %1656 = bitcast i32* %R10D.i336 to i64*
  %1657 = load i32, i32* %R10D.i336
  %1658 = zext i32 %1657 to i64
  %1659 = load i64, i64* %PC.i335
  %1660 = add i64 %1659, 4
  store i64 %1660, i64* %PC.i335
  %1661 = sub i32 %1657, 4
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %1656, align 8
  %1663 = icmp ult i32 %1657, 4
  %1664 = zext i1 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1664, i8* %1665, align 1
  %1666 = and i32 %1661, 255
  %1667 = call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1670, i8* %1671, align 1
  %1672 = xor i64 4, %1658
  %1673 = trunc i64 %1672 to i32
  %1674 = xor i32 %1673, %1661
  %1675 = lshr i32 %1674, 4
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1677, i8* %1678, align 1
  %1679 = icmp eq i32 %1661, 0
  %1680 = zext i1 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1680, i8* %1681, align 1
  %1682 = lshr i32 %1661, 31
  %1683 = trunc i32 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1683, i8* %1684, align 1
  %1685 = lshr i32 %1657, 31
  %1686 = xor i32 %1682, %1685
  %1687 = add i32 %1686, %1685
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1689, i8* %1690, align 1
  store %struct.Memory* %loadMem_4479d1, %struct.Memory** %MEMORY
  %loadMem_4479d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 7
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %EDX.i333 = bitcast %union.anon* %1696 to i32*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 9
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %1699 to i64*
  %1700 = load i32, i32* %EDX.i333
  %1701 = zext i32 %1700 to i64
  %1702 = load i64, i64* %PC.i332
  %1703 = add i64 %1702, 2
  store i64 %1703, i64* %PC.i332
  %1704 = and i64 %1701, 4294967295
  store i64 %1704, i64* %RSI.i334, align 8
  store %struct.Memory* %loadMem_4479d5, %struct.Memory** %MEMORY
  %loadMem_4479d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 21
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %1710 to i32*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 7
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RDX.i331 = bitcast %union.anon* %1713 to i64*
  %1714 = load i32, i32* %R10D.i
  %1715 = zext i32 %1714 to i64
  %1716 = load i64, i64* %PC.i330
  %1717 = add i64 %1716, 3
  store i64 %1717, i64* %PC.i330
  %1718 = and i64 %1715, 4294967295
  store i64 %1718, i64* %RDX.i331, align 8
  store %struct.Memory* %loadMem_4479d7, %struct.Memory** %MEMORY
  %loadMem1_4479da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i329
  %1723 = add i64 %1722, 14598
  %1724 = load i64, i64* %PC.i329
  %1725 = add i64 %1724, 5
  %1726 = load i64, i64* %PC.i329
  %1727 = add i64 %1726, 5
  store i64 %1727, i64* %PC.i329
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1729 = load i64, i64* %1728, align 8
  %1730 = add i64 %1729, -8
  %1731 = inttoptr i64 %1730 to i64*
  store i64 %1725, i64* %1731
  store i64 %1730, i64* %1728, align 8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1723, i64* %1732, align 8
  store %struct.Memory* %loadMem1_4479da, %struct.Memory** %MEMORY
  %loadMem2_4479da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4479da = load i64, i64* %3
  %call2_4479da = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64 %loadPC_4479da, %struct.Memory* %loadMem2_4479da)
  store %struct.Memory* %call2_4479da, %struct.Memory** %MEMORY
  %loadMem_4479df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i328
  %1740 = sub i64 %1739, 32
  %1741 = load i64, i64* %PC.i327
  %1742 = add i64 %1741, 4
  store i64 %1742, i64* %PC.i327
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1745, align 1
  %1746 = and i32 %1744, 255
  %1747 = call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1750, i8* %1751, align 1
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1752, align 1
  %1753 = icmp eq i32 %1744, 0
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1754, i8* %1755, align 1
  %1756 = lshr i32 %1744, 31
  %1757 = trunc i32 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1757, i8* %1758, align 1
  %1759 = lshr i32 %1744, 31
  %1760 = xor i32 %1756, %1759
  %1761 = add i32 %1760, %1759
  %1762 = icmp eq i32 %1761, 2
  %1763 = zext i1 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1763, i8* %1764, align 1
  store %struct.Memory* %loadMem_4479df, %struct.Memory** %MEMORY
  %loadMem_4479e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %PC.i326
  %1769 = add i64 %1768, 76
  %1770 = load i64, i64* %PC.i326
  %1771 = add i64 %1770, 6
  %1772 = load i64, i64* %PC.i326
  %1773 = add i64 %1772, 6
  store i64 %1773, i64* %PC.i326
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1775 = load i8, i8* %1774, align 1
  store i8 %1775, i8* %BRANCH_TAKEN, align 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1777 = icmp ne i8 %1775, 0
  %1778 = select i1 %1777, i64 %1769, i64 %1771
  store i64 %1778, i64* %1776, align 8
  store %struct.Memory* %loadMem_4479e3, %struct.Memory** %MEMORY
  %loadBr_4479e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4479e3 = icmp eq i8 %loadBr_4479e3, 1
  br i1 %cmpBr_4479e3, label %block_.L_447a2f, label %block_4479e9

block_4479e9:                                     ; preds = %routine_idivl__esi.exit342
  %loadMem_4479e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %PC.i324
  %1786 = add i64 %1785, 8
  store i64 %1786, i64* %PC.i324
  %1787 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %1787, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_4479e9, %struct.Memory** %MEMORY
  %loadMem_4479f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 1
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RAX.i323
  %1795 = add i64 %1794, 224
  %1796 = load i64, i64* %PC.i322
  %1797 = add i64 %1796, 7
  store i64 %1797, i64* %PC.i322
  %1798 = inttoptr i64 %1795 to i32*
  %1799 = load i32, i32* %1798
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1800, align 1
  %1801 = and i32 %1799, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1807, align 1
  %1808 = icmp eq i32 %1799, 0
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1799, 31
  %1812 = trunc i32 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1812, i8* %1813, align 1
  %1814 = lshr i32 %1799, 31
  %1815 = xor i32 %1811, %1814
  %1816 = add i32 %1815, %1814
  %1817 = icmp eq i32 %1816, 2
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1818, i8* %1819, align 1
  store %struct.Memory* %loadMem_4479f1, %struct.Memory** %MEMORY
  %loadMem_4479f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %PC.i321
  %1824 = add i64 %1823, 55
  %1825 = load i64, i64* %PC.i321
  %1826 = add i64 %1825, 6
  %1827 = load i64, i64* %PC.i321
  %1828 = add i64 %1827, 6
  store i64 %1828, i64* %PC.i321
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1830 = load i8, i8* %1829, align 1
  store i8 %1830, i8* %BRANCH_TAKEN, align 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1832 = icmp ne i8 %1830, 0
  %1833 = select i1 %1832, i64 %1824, i64 %1826
  store i64 %1833, i64* %1831, align 8
  store %struct.Memory* %loadMem_4479f8, %struct.Memory** %MEMORY
  %loadBr_4479f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4479f8 = icmp eq i8 %loadBr_4479f8, 1
  br i1 %cmpBr_4479f8, label %block_.L_447a2f, label %block_4479fe

block_4479fe:                                     ; preds = %block_4479e9
  %loadMem_4479fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 1
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %PC.i319
  %1841 = add i64 %1840, 8
  store i64 %1841, i64* %PC.i319
  %1842 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1842, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_4479fe, %struct.Memory** %MEMORY
  %loadMem_447a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 1
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RAX.i318
  %1850 = add i64 %1849, 2364
  %1851 = load i64, i64* %PC.i317
  %1852 = add i64 %1851, 7
  store i64 %1852, i64* %PC.i317
  %1853 = inttoptr i64 %1850 to i32*
  %1854 = load i32, i32* %1853
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1855, align 1
  %1856 = and i32 %1854, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1862, align 1
  %1863 = icmp eq i32 %1854, 0
  %1864 = zext i1 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1864, i8* %1865, align 1
  %1866 = lshr i32 %1854, 31
  %1867 = trunc i32 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1867, i8* %1868, align 1
  %1869 = lshr i32 %1854, 31
  %1870 = xor i32 %1866, %1869
  %1871 = add i32 %1870, %1869
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1873, i8* %1874, align 1
  store %struct.Memory* %loadMem_447a06, %struct.Memory** %MEMORY
  %loadMem_447a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %PC.i316
  %1879 = add i64 %1878, 34
  %1880 = load i64, i64* %PC.i316
  %1881 = add i64 %1880, 6
  %1882 = load i64, i64* %PC.i316
  %1883 = add i64 %1882, 6
  store i64 %1883, i64* %PC.i316
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1885 = load i8, i8* %1884, align 1
  store i8 %1885, i8* %BRANCH_TAKEN, align 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1887 = icmp ne i8 %1885, 0
  %1888 = select i1 %1887, i64 %1879, i64 %1881
  store i64 %1888, i64* %1886, align 8
  store %struct.Memory* %loadMem_447a0d, %struct.Memory** %MEMORY
  %loadBr_447a0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447a0d = icmp eq i8 %loadBr_447a0d, 1
  br i1 %cmpBr_447a0d, label %block_.L_447a2f, label %block_447a13

block_447a13:                                     ; preds = %block_4479fe
  %loadMem_447a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i314
  %1896 = add i64 %1895, 8
  store i64 %1896, i64* %PC.i314
  %1897 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1897, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_447a13, %struct.Memory** %MEMORY
  %loadMem_447a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 1
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RAX.i313
  %1905 = add i64 %1904, 71784
  %1906 = load i64, i64* %PC.i312
  %1907 = add i64 %1906, 7
  store i64 %1907, i64* %PC.i312
  %1908 = inttoptr i64 %1905 to i64*
  %1909 = load i64, i64* %1908
  store i64 %1909, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_447a1b, %struct.Memory** %MEMORY
  %loadMem_447a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RBP.i311
  %1920 = sub i64 %1919, 28
  %1921 = load i64, i64* %PC.i309
  %1922 = add i64 %1921, 4
  store i64 %1922, i64* %PC.i309
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = sext i32 %1924 to i64
  store i64 %1925, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_447a22, %struct.Memory** %MEMORY
  %loadMem_447a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 1
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 7
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RAX.i306
  %1939 = load i64, i64* %RCX.i307
  %1940 = mul i64 %1939, 4
  %1941 = add i64 %1940, %1938
  %1942 = load i64, i64* %PC.i305
  %1943 = add i64 %1942, 3
  store i64 %1943, i64* %PC.i305
  %1944 = inttoptr i64 %1941 to i32*
  %1945 = load i32, i32* %1944
  %1946 = zext i32 %1945 to i64
  store i64 %1946, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_447a26, %struct.Memory** %MEMORY
  %loadMem_447a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 7
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 15
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RDX.i303
  %1957 = load i64, i64* %RBP.i304
  %1958 = sub i64 %1957, 32
  %1959 = load i64, i64* %PC.i302
  %1960 = add i64 %1959, 3
  store i64 %1960, i64* %PC.i302
  %1961 = trunc i64 %1956 to i32
  %1962 = inttoptr i64 %1958 to i32*
  %1963 = load i32, i32* %1962
  %1964 = and i32 %1963, %1961
  %1965 = zext i32 %1964 to i64
  store i64 %1965, i64* %RDX.i303, align 8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1966, align 1
  %1967 = and i32 %1964, 255
  %1968 = call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1971, i8* %1972, align 1
  %1973 = icmp eq i32 %1964, 0
  %1974 = zext i1 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1974, i8* %1975, align 1
  %1976 = lshr i32 %1964, 31
  %1977 = trunc i32 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1977, i8* %1978, align 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1979, align 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1980, align 1
  store %struct.Memory* %loadMem_447a29, %struct.Memory** %MEMORY
  %loadMem_447a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 7
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %EDX.i300 = bitcast %union.anon* %1986 to i32*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 15
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1989 to i64*
  %1990 = load i64, i64* %RBP.i301
  %1991 = sub i64 %1990, 32
  %1992 = load i32, i32* %EDX.i300
  %1993 = zext i32 %1992 to i64
  %1994 = load i64, i64* %PC.i299
  %1995 = add i64 %1994, 3
  store i64 %1995, i64* %PC.i299
  %1996 = inttoptr i64 %1991 to i32*
  store i32 %1992, i32* %1996
  store %struct.Memory* %loadMem_447a2c, %struct.Memory** %MEMORY
  br label %block_.L_447a2f

block_.L_447a2f:                                  ; preds = %block_447a13, %block_4479fe, %block_4479e9, %routine_idivl__esi.exit342
  %loadMem_447a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i298
  %2004 = sub i64 %2003, 32
  %2005 = load i64, i64* %PC.i297
  %2006 = add i64 %2005, 4
  store i64 %2006, i64* %PC.i297
  %2007 = inttoptr i64 %2004 to i32*
  %2008 = load i32, i32* %2007
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2009, align 1
  %2010 = and i32 %2008, 255
  %2011 = call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2014, i8* %2015, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2016, align 1
  %2017 = icmp eq i32 %2008, 0
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2018, i8* %2019, align 1
  %2020 = lshr i32 %2008, 31
  %2021 = trunc i32 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2021, i8* %2022, align 1
  %2023 = lshr i32 %2008, 31
  %2024 = xor i32 %2020, %2023
  %2025 = add i32 %2024, %2023
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2027, i8* %2028, align 1
  store %struct.Memory* %loadMem_447a2f, %struct.Memory** %MEMORY
  %loadMem_447a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %PC.i296
  %2033 = add i64 %2032, 88
  %2034 = load i64, i64* %PC.i296
  %2035 = add i64 %2034, 6
  %2036 = load i64, i64* %PC.i296
  %2037 = add i64 %2036, 6
  store i64 %2037, i64* %PC.i296
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2039 = load i8, i8* %2038, align 1
  store i8 %2039, i8* %BRANCH_TAKEN, align 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2041 = icmp ne i8 %2039, 0
  %2042 = select i1 %2041, i64 %2033, i64 %2035
  store i64 %2042, i64* %2040, align 8
  store %struct.Memory* %loadMem_447a33, %struct.Memory** %MEMORY
  %loadBr_447a33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447a33 = icmp eq i8 %loadBr_447a33, 1
  br i1 %cmpBr_447a33, label %block_.L_447a8b, label %block_447a39

block_447a39:                                     ; preds = %block_.L_447a2f
  %loadMem_447a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 1
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %PC.i294
  %2050 = add i64 %2049, 5
  store i64 %2050, i64* %PC.i294
  store i64 2, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_447a39, %struct.Memory** %MEMORY
  %loadMem_447a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 5
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %PC.i292
  %2058 = add i64 %2057, 8
  store i64 %2058, i64* %PC.i292
  %2059 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2059, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_447a3e, %struct.Memory** %MEMORY
  %loadMem_447a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RCX.i291
  %2067 = add i64 %2066, 128
  %2068 = load i64, i64* %PC.i290
  %2069 = add i64 %2068, 7
  store i64 %2069, i64* %PC.i290
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070
  store i64 %2071, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_447a46, %struct.Memory** %MEMORY
  %loadMem_447a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 7
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i289
  %2082 = sub i64 %2081, 28
  %2083 = load i64, i64* %PC.i287
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %PC.i287
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RDX.i288, align 8
  store %struct.Memory* %loadMem_447a4d, %struct.Memory** %MEMORY
  %loadMem_447a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 5
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 7
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %RCX.i285
  %2098 = load i64, i64* %RDX.i286
  %2099 = mul i64 %2098, 8
  %2100 = add i64 %2099, %2097
  %2101 = load i64, i64* %PC.i284
  %2102 = add i64 %2101, 4
  store i64 %2102, i64* %PC.i284
  %2103 = inttoptr i64 %2100 to i64*
  %2104 = load i64, i64* %2103
  store i64 %2104, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_447a51, %struct.Memory** %MEMORY
  %loadMem_447a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 9
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i283
  %2115 = sub i64 %2114, 4
  %2116 = load i64, i64* %PC.i281
  %2117 = add i64 %2116, 3
  store i64 %2117, i64* %PC.i281
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_447a55, %struct.Memory** %MEMORY
  %loadMem_447a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %2126 to i32*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RBP.i280
  %2131 = sub i64 %2130, 116
  %2132 = load i32, i32* %EAX.i279
  %2133 = zext i32 %2132 to i64
  %2134 = load i64, i64* %PC.i278
  %2135 = add i64 %2134, 3
  store i64 %2135, i64* %PC.i278
  %2136 = inttoptr i64 %2131 to i32*
  store i32 %2132, i32* %2136
  store %struct.Memory* %loadMem_447a58, %struct.Memory** %MEMORY
  %loadMem_447a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 9
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %ESI.i276 = bitcast %union.anon* %2142 to i32*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2145 to i64*
  %2146 = load i32, i32* %ESI.i276
  %2147 = zext i32 %2146 to i64
  %2148 = load i64, i64* %PC.i275
  %2149 = add i64 %2148, 2
  store i64 %2149, i64* %PC.i275
  %2150 = and i64 %2147, 4294967295
  store i64 %2150, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_447a5b, %struct.Memory** %MEMORY
  %loadMem_447a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %PC.i274
  %2155 = add i64 %2154, 1
  store i64 %2155, i64* %PC.i274
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2158 = bitcast %union.anon* %2157 to i32*
  %2159 = load i32, i32* %2158, align 8
  %2160 = sext i32 %2159 to i64
  %2161 = lshr i64 %2160, 32
  store i64 %2161, i64* %2156, align 8
  store %struct.Memory* %loadMem_447a5d, %struct.Memory** %MEMORY
  %loadMem_447a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 9
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RSI.i272 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i273
  %2172 = sub i64 %2171, 116
  %2173 = load i64, i64* %PC.i271
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i271
  %2175 = inttoptr i64 %2172 to i32*
  %2176 = load i32, i32* %2175
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RSI.i272, align 8
  store %struct.Memory* %loadMem_447a5e, %struct.Memory** %MEMORY
  %loadMem_447a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 9
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2183 to i32*
  %2184 = load i32, i32* %ESI.i
  %2185 = zext i32 %2184 to i64
  %2186 = load i64, i64* %PC.i268
  %2187 = add i64 %2186, 2
  store i64 %2187, i64* %PC.i268
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2189 = bitcast %union.anon* %2188 to i32*
  %2190 = load i32, i32* %2189, align 8
  %2191 = zext i32 %2190 to i64
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2193 = bitcast %union.anon* %2192 to i32*
  %2194 = load i32, i32* %2193, align 8
  %2195 = zext i32 %2194 to i64
  %2196 = shl i64 %2185, 32
  %2197 = ashr exact i64 %2196, 32
  %2198 = shl i64 %2195, 32
  %2199 = or i64 %2198, %2191
  %2200 = sdiv i64 %2199, %2197
  %2201 = shl i64 %2200, 32
  %2202 = ashr exact i64 %2201, 32
  %2203 = icmp eq i64 %2200, %2202
  br i1 %2203, label %2208, label %2204

; <label>:2204:                                   ; preds = %block_447a39
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2206 = load i64, i64* %2205, align 8
  %2207 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2206, %struct.Memory* %loadMem_447a61)
  br label %routine_idivl__esi.exit

; <label>:2208:                                   ; preds = %block_447a39
  %2209 = srem i64 %2199, %2197
  %2210 = getelementptr inbounds %union.anon, %union.anon* %2188, i64 0, i32 0
  %2211 = and i64 %2200, 4294967295
  store i64 %2211, i64* %2210, align 8
  %2212 = getelementptr inbounds %union.anon, %union.anon* %2192, i64 0, i32 0
  %2213 = and i64 %2209, 4294967295
  store i64 %2213, i64* %2212, align 8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2214, align 1
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2215, align 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2216, align 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2217, align 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2218, align 1
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2219, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2204, %2208
  %2220 = phi %struct.Memory* [ %2207, %2204 ], [ %loadMem_447a61, %2208 ]
  store %struct.Memory* %2220, %struct.Memory** %MEMORY
  %loadMem_447a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 1
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RAX.i267
  %2228 = load i64, i64* %PC.i266
  %2229 = add i64 %2228, 2
  store i64 %2229, i64* %PC.i266
  %2230 = trunc i64 %2227 to i32
  %2231 = shl i32 %2230, 1
  %2232 = icmp slt i32 %2230, 0
  %2233 = icmp slt i32 %2231, 0
  %2234 = xor i1 %2232, %2233
  %2235 = zext i32 %2231 to i64
  store i64 %2235, i64* %RAX.i267, align 8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2237 = zext i1 %2232 to i8
  store i8 %2237, i8* %2236, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2239 = and i32 %2231, 254
  %2240 = call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %2238, align 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2244, align 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2246 = icmp eq i32 %2231, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %2245, align 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2249 = lshr i32 %2231, 31
  %2250 = trunc i32 %2249 to i8
  store i8 %2250, i8* %2248, align 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2252 = zext i1 %2234 to i8
  store i8 %2252, i8* %2251, align 1
  store %struct.Memory* %loadMem_447a63, %struct.Memory** %MEMORY
  %loadMem_447a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 1
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RAX.i264
  %2263 = load i64, i64* %RBP.i265
  %2264 = sub i64 %2263, 24
  %2265 = load i64, i64* %PC.i263
  %2266 = add i64 %2265, 3
  store i64 %2266, i64* %PC.i263
  %2267 = trunc i64 %2262 to i32
  %2268 = inttoptr i64 %2264 to i32*
  %2269 = load i32, i32* %2268
  %2270 = add i32 %2269, %2267
  %2271 = zext i32 %2270 to i64
  store i64 %2271, i64* %RAX.i264, align 8
  %2272 = icmp ult i32 %2270, %2267
  %2273 = icmp ult i32 %2270, %2269
  %2274 = or i1 %2272, %2273
  %2275 = zext i1 %2274 to i8
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2275, i8* %2276, align 1
  %2277 = and i32 %2270, 255
  %2278 = call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2281, i8* %2282, align 1
  %2283 = xor i32 %2269, %2267
  %2284 = xor i32 %2283, %2270
  %2285 = lshr i32 %2284, 4
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2287, i8* %2288, align 1
  %2289 = icmp eq i32 %2270, 0
  %2290 = zext i1 %2289 to i8
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2290, i8* %2291, align 1
  %2292 = lshr i32 %2270, 31
  %2293 = trunc i32 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i32 %2267, 31
  %2296 = lshr i32 %2269, 31
  %2297 = xor i32 %2292, %2295
  %2298 = xor i32 %2292, %2296
  %2299 = add i32 %2297, %2298
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2301, i8* %2302, align 1
  store %struct.Memory* %loadMem_447a66, %struct.Memory** %MEMORY
  %loadMem_447a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 1
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %2308 to i32*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 11
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %2311 to i64*
  %2312 = load i32, i32* %EAX.i261
  %2313 = zext i32 %2312 to i64
  %2314 = load i64, i64* %PC.i260
  %2315 = add i64 %2314, 3
  store i64 %2315, i64* %PC.i260
  %2316 = shl i64 %2313, 32
  %2317 = ashr exact i64 %2316, 32
  store i64 %2317, i64* %RDI.i262, align 8
  store %struct.Memory* %loadMem_447a69, %struct.Memory** %MEMORY
  %loadMem_447a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 5
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 11
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RCX.i258
  %2328 = load i64, i64* %RDI.i259
  %2329 = mul i64 %2328, 8
  %2330 = add i64 %2329, %2327
  %2331 = load i64, i64* %PC.i257
  %2332 = add i64 %2331, 4
  store i64 %2332, i64* %PC.i257
  %2333 = inttoptr i64 %2330 to i64*
  %2334 = load i64, i64* %2333
  store i64 %2334, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_447a6c, %struct.Memory** %MEMORY
  %loadMem_447a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 1
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 15
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %RBP.i256
  %2345 = sub i64 %2344, 20
  %2346 = load i64, i64* %PC.i254
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC.i254
  %2348 = inttoptr i64 %2345 to i32*
  %2349 = load i32, i32* %2348
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_447a70, %struct.Memory** %MEMORY
  %loadMem_447a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 1
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RAX.i253
  %2358 = load i64, i64* %PC.i252
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %PC.i252
  %2360 = trunc i64 %2357 to i32
  %2361 = add i32 4, %2360
  %2362 = zext i32 %2361 to i64
  store i64 %2362, i64* %RAX.i253, align 8
  %2363 = icmp ult i32 %2361, %2360
  %2364 = icmp ult i32 %2361, 4
  %2365 = or i1 %2363, %2364
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2366, i8* %2367, align 1
  %2368 = and i32 %2361, 255
  %2369 = call i32 @llvm.ctpop.i32(i32 %2368)
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2372, i8* %2373, align 1
  %2374 = xor i64 4, %2357
  %2375 = trunc i64 %2374 to i32
  %2376 = xor i32 %2375, %2361
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2379, i8* %2380, align 1
  %2381 = icmp eq i32 %2361, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i32 %2361, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = lshr i32 %2360, 31
  %2388 = xor i32 %2384, %2387
  %2389 = add i32 %2388, %2384
  %2390 = icmp eq i32 %2389, 2
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2391, i8* %2392, align 1
  store %struct.Memory* %loadMem_447a73, %struct.Memory** %MEMORY
  %loadMem_447a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 1
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %2398 to i32*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 11
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RDI.i251 = bitcast %union.anon* %2401 to i64*
  %2402 = load i32, i32* %EAX.i250
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %PC.i249
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i249
  %2406 = shl i64 %2403, 32
  %2407 = ashr exact i64 %2406, 32
  store i64 %2407, i64* %RDI.i251, align 8
  store %struct.Memory* %loadMem_447a76, %struct.Memory** %MEMORY
  %loadMem_447a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 1
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 5
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 11
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RDI.i248 = bitcast %union.anon* %2419 to i64*
  %2420 = load i64, i64* %RCX.i247
  %2421 = load i64, i64* %RDI.i248
  %2422 = mul i64 %2421, 4
  %2423 = add i64 %2422, %2420
  %2424 = load i64, i64* %PC.i245
  %2425 = add i64 %2424, 3
  store i64 %2425, i64* %PC.i245
  %2426 = inttoptr i64 %2423 to i32*
  %2427 = load i32, i32* %2426
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_447a79, %struct.Memory** %MEMORY
  %loadMem_447a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 1
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RAX.i243
  %2439 = load i64, i64* %RBP.i244
  %2440 = sub i64 %2439, 36
  %2441 = load i64, i64* %PC.i242
  %2442 = add i64 %2441, 3
  store i64 %2442, i64* %PC.i242
  %2443 = trunc i64 %2438 to i32
  %2444 = inttoptr i64 %2440 to i32*
  %2445 = load i32, i32* %2444
  %2446 = add i32 %2445, %2443
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RAX.i243, align 8
  %2448 = icmp ult i32 %2446, %2443
  %2449 = icmp ult i32 %2446, %2445
  %2450 = or i1 %2448, %2449
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2451, i8* %2452, align 1
  %2453 = and i32 %2446, 255
  %2454 = call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2457, i8* %2458, align 1
  %2459 = xor i32 %2445, %2443
  %2460 = xor i32 %2459, %2446
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2463, i8* %2464, align 1
  %2465 = icmp eq i32 %2446, 0
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2466, i8* %2467, align 1
  %2468 = lshr i32 %2446, 31
  %2469 = trunc i32 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2469, i8* %2470, align 1
  %2471 = lshr i32 %2443, 31
  %2472 = lshr i32 %2445, 31
  %2473 = xor i32 %2468, %2471
  %2474 = xor i32 %2468, %2472
  %2475 = add i32 %2473, %2474
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2477, i8* %2478, align 1
  store %struct.Memory* %loadMem_447a7c, %struct.Memory** %MEMORY
  %loadMem_447a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 1
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %2484 to i32*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 15
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %RBP.i241
  %2489 = sub i64 %2488, 36
  %2490 = load i32, i32* %EAX.i240
  %2491 = zext i32 %2490 to i64
  %2492 = load i64, i64* %PC.i239
  %2493 = add i64 %2492, 3
  store i64 %2493, i64* %PC.i239
  %2494 = inttoptr i64 %2489 to i32*
  store i32 %2490, i32* %2494
  store %struct.Memory* %loadMem_447a7f, %struct.Memory** %MEMORY
  %loadMem_447a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RBP.i238
  %2505 = sub i64 %2504, 40
  %2506 = load i64, i64* %PC.i236
  %2507 = add i64 %2506, 3
  store i64 %2507, i64* %PC.i236
  %2508 = inttoptr i64 %2505 to i32*
  %2509 = load i32, i32* %2508
  %2510 = zext i32 %2509 to i64
  store i64 %2510, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_447a82, %struct.Memory** %MEMORY
  %loadMem_447a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %RAX.i235
  %2518 = load i64, i64* %PC.i234
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i234
  %2520 = trunc i64 %2517 to i32
  %2521 = add i32 1, %2520
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RAX.i235, align 8
  %2523 = icmp ult i32 %2521, %2520
  %2524 = icmp ult i32 %2521, 1
  %2525 = or i1 %2523, %2524
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2526, i8* %2527, align 1
  %2528 = and i32 %2521, 255
  %2529 = call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2532, i8* %2533, align 1
  %2534 = xor i64 1, %2517
  %2535 = trunc i64 %2534 to i32
  %2536 = xor i32 %2535, %2521
  %2537 = lshr i32 %2536, 4
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2539, i8* %2540, align 1
  %2541 = icmp eq i32 %2521, 0
  %2542 = zext i1 %2541 to i8
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2542, i8* %2543, align 1
  %2544 = lshr i32 %2521, 31
  %2545 = trunc i32 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2545, i8* %2546, align 1
  %2547 = lshr i32 %2520, 31
  %2548 = xor i32 %2544, %2547
  %2549 = add i32 %2548, %2544
  %2550 = icmp eq i32 %2549, 2
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2551, i8* %2552, align 1
  store %struct.Memory* %loadMem_447a85, %struct.Memory** %MEMORY
  %loadMem_447a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %2558 to i32*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i233
  %2563 = sub i64 %2562, 40
  %2564 = load i32, i32* %EAX.i232
  %2565 = zext i32 %2564 to i64
  %2566 = load i64, i64* %PC.i231
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %PC.i231
  %2568 = inttoptr i64 %2563 to i32*
  store i32 %2564, i32* %2568
  store %struct.Memory* %loadMem_447a88, %struct.Memory** %MEMORY
  br label %block_.L_447a8b

block_.L_447a8b:                                  ; preds = %routine_idivl__esi.exit, %block_.L_447a2f
  %loadMem_447a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %PC.i230
  %2573 = add i64 %2572, 365
  %2574 = load i64, i64* %PC.i230
  %2575 = add i64 %2574, 5
  store i64 %2575, i64* %PC.i230
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2573, i64* %2576, align 8
  store %struct.Memory* %loadMem_447a8b, %struct.Memory** %MEMORY
  br label %block_.L_447bf8

block_.L_447a90:                                  ; preds = %entry
  %loadMem_447a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 5
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %PC.i228
  %2584 = add i64 %2583, 5
  store i64 %2584, i64* %PC.i228
  store i64 4294967295, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_447a90, %struct.Memory** %MEMORY
  %loadMem_447a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 17
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %R8D.i227 = bitcast %union.anon* %2590 to i32*
  %2591 = bitcast i32* %R8D.i227 to i64*
  %2592 = load i32, i32* %R8D.i227
  %2593 = zext i32 %2592 to i64
  %2594 = load i32, i32* %R8D.i227
  %2595 = zext i32 %2594 to i64
  %2596 = load i64, i64* %PC.i226
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC.i226
  %2598 = xor i64 %2595, %2593
  %2599 = trunc i64 %2598 to i32
  %2600 = and i64 %2598, 4294967295
  store i64 %2600, i64* %2591, align 8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2601, align 1
  %2602 = and i32 %2599, 255
  %2603 = call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2606, i8* %2607, align 1
  %2608 = icmp eq i32 %2599, 0
  %2609 = zext i1 %2608 to i8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2609, i8* %2610, align 1
  %2611 = lshr i32 %2599, 31
  %2612 = trunc i32 %2611 to i8
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2612, i8* %2613, align 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2614, align 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2615, align 1
  store %struct.Memory* %loadMem_447a95, %struct.Memory** %MEMORY
  %loadMem_447a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 15
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 19
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %R9.i225 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RBP.i224
  %2626 = sub i64 %2625, 32
  %2627 = load i64, i64* %PC.i223
  %2628 = add i64 %2627, 4
  store i64 %2628, i64* %PC.i223
  store i64 %2626, i64* %R9.i225, align 8
  store %struct.Memory* %loadMem_447a98, %struct.Memory** %MEMORY
  %loadMem_447a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 11
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RDI.i221 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 15
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2637 to i64*
  %2638 = load i64, i64* %RBP.i222
  %2639 = sub i64 %2638, 44
  %2640 = load i64, i64* %PC.i220
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC.i220
  %2642 = inttoptr i64 %2639 to i32*
  %2643 = load i32, i32* %2642
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RDI.i221, align 8
  store %struct.Memory* %loadMem_447a9c, %struct.Memory** %MEMORY
  %loadMem_447a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 9
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %RSI.i218 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 15
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RBP.i219
  %2655 = sub i64 %2654, 4
  %2656 = load i64, i64* %PC.i217
  %2657 = add i64 %2656, 3
  store i64 %2657, i64* %PC.i217
  %2658 = inttoptr i64 %2655 to i32*
  %2659 = load i32, i32* %2658
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RSI.i218, align 8
  store %struct.Memory* %loadMem_447a9f, %struct.Memory** %MEMORY
  %loadMem_447aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 1
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 15
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RBP.i216
  %2671 = sub i64 %2670, 8
  %2672 = load i64, i64* %PC.i214
  %2673 = add i64 %2672, 3
  store i64 %2673, i64* %PC.i214
  %2674 = inttoptr i64 %2671 to i32*
  %2675 = load i32, i32* %2674
  %2676 = zext i32 %2675 to i64
  store i64 %2676, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_447aa2, %struct.Memory** %MEMORY
  %loadMem_447aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 1
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 15
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RAX.i212
  %2687 = load i64, i64* %RBP.i213
  %2688 = sub i64 %2687, 100
  %2689 = load i64, i64* %PC.i211
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC.i211
  %2691 = trunc i64 %2686 to i32
  %2692 = inttoptr i64 %2688 to i32*
  %2693 = load i32, i32* %2692
  %2694 = sub i32 %2691, %2693
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i212, align 8
  %2696 = icmp ult i32 %2691, %2693
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2697, i8* %2698, align 1
  %2699 = and i32 %2694, 255
  %2700 = call i32 @llvm.ctpop.i32(i32 %2699)
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2703, i8* %2704, align 1
  %2705 = xor i32 %2693, %2691
  %2706 = xor i32 %2705, %2694
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2709, i8* %2710, align 1
  %2711 = icmp eq i32 %2694, 0
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2694, 31
  %2715 = trunc i32 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2715, i8* %2716, align 1
  %2717 = lshr i32 %2691, 31
  %2718 = lshr i32 %2693, 31
  %2719 = xor i32 %2718, %2717
  %2720 = xor i32 %2714, %2717
  %2721 = add i32 %2720, %2719
  %2722 = icmp eq i32 %2721, 2
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2723, i8* %2724, align 1
  store %struct.Memory* %loadMem_447aa5, %struct.Memory** %MEMORY
  %loadMem_447aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 1
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %2730 to i32*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 7
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %2733 to i64*
  %2734 = load i32, i32* %EAX.i209
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %PC.i208
  %2737 = add i64 %2736, 2
  store i64 %2737, i64* %PC.i208
  %2738 = and i64 %2735, 4294967295
  store i64 %2738, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_447aa8, %struct.Memory** %MEMORY
  %loadMem1_447aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %PC.i207
  %2743 = add i64 %2742, 14390
  %2744 = load i64, i64* %PC.i207
  %2745 = add i64 %2744, 5
  %2746 = load i64, i64* %PC.i207
  %2747 = add i64 %2746, 5
  store i64 %2747, i64* %PC.i207
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2749 = load i64, i64* %2748, align 8
  %2750 = add i64 %2749, -8
  %2751 = inttoptr i64 %2750 to i64*
  store i64 %2745, i64* %2751
  store i64 %2750, i64* %2748, align 8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2743, i64* %2752, align 8
  store %struct.Memory* %loadMem1_447aaa, %struct.Memory** %MEMORY
  %loadMem2_447aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447aaa = load i64, i64* %3
  %call2_447aaa = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64 %loadPC_447aaa, %struct.Memory* %loadMem2_447aaa)
  store %struct.Memory* %call2_447aaa, %struct.Memory** %MEMORY
  %loadMem_447aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 15
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %2758 to i64*
  %2759 = load i64, i64* %RBP.i206
  %2760 = sub i64 %2759, 32
  %2761 = load i64, i64* %PC.i205
  %2762 = add i64 %2761, 4
  store i64 %2762, i64* %PC.i205
  %2763 = inttoptr i64 %2760 to i32*
  %2764 = load i32, i32* %2763
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2765, align 1
  %2766 = and i32 %2764, 255
  %2767 = call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2770, i8* %2771, align 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2772, align 1
  %2773 = icmp eq i32 %2764, 0
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i32 %2764, 31
  %2777 = trunc i32 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2777, i8* %2778, align 1
  %2779 = lshr i32 %2764, 31
  %2780 = xor i32 %2776, %2779
  %2781 = add i32 %2780, %2779
  %2782 = icmp eq i32 %2781, 2
  %2783 = zext i1 %2782 to i8
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2783, i8* %2784, align 1
  store %struct.Memory* %loadMem_447aaf, %struct.Memory** %MEMORY
  %loadMem_447ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %PC.i204
  %2789 = add i64 %2788, 76
  %2790 = load i64, i64* %PC.i204
  %2791 = add i64 %2790, 6
  %2792 = load i64, i64* %PC.i204
  %2793 = add i64 %2792, 6
  store i64 %2793, i64* %PC.i204
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2795 = load i8, i8* %2794, align 1
  store i8 %2795, i8* %BRANCH_TAKEN, align 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2797 = icmp ne i8 %2795, 0
  %2798 = select i1 %2797, i64 %2789, i64 %2791
  store i64 %2798, i64* %2796, align 8
  store %struct.Memory* %loadMem_447ab3, %struct.Memory** %MEMORY
  %loadBr_447ab3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447ab3 = icmp eq i8 %loadBr_447ab3, 1
  br i1 %cmpBr_447ab3, label %block_.L_447aff, label %block_447ab9

block_447ab9:                                     ; preds = %block_.L_447a90
  %loadMem_447ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 1
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %PC.i202
  %2806 = add i64 %2805, 8
  store i64 %2806, i64* %PC.i202
  %2807 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %2807, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_447ab9, %struct.Memory** %MEMORY
  %loadMem_447ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 1
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RAX.i201
  %2815 = add i64 %2814, 224
  %2816 = load i64, i64* %PC.i200
  %2817 = add i64 %2816, 7
  store i64 %2817, i64* %PC.i200
  %2818 = inttoptr i64 %2815 to i32*
  %2819 = load i32, i32* %2818
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2820, align 1
  %2821 = and i32 %2819, 255
  %2822 = call i32 @llvm.ctpop.i32(i32 %2821)
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2825, i8* %2826, align 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2827, align 1
  %2828 = icmp eq i32 %2819, 0
  %2829 = zext i1 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2829, i8* %2830, align 1
  %2831 = lshr i32 %2819, 31
  %2832 = trunc i32 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2819, 31
  %2835 = xor i32 %2831, %2834
  %2836 = add i32 %2835, %2834
  %2837 = icmp eq i32 %2836, 2
  %2838 = zext i1 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2838, i8* %2839, align 1
  store %struct.Memory* %loadMem_447ac1, %struct.Memory** %MEMORY
  %loadMem_447ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2842 to i64*
  %2843 = load i64, i64* %PC.i199
  %2844 = add i64 %2843, 55
  %2845 = load i64, i64* %PC.i199
  %2846 = add i64 %2845, 6
  %2847 = load i64, i64* %PC.i199
  %2848 = add i64 %2847, 6
  store i64 %2848, i64* %PC.i199
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2850 = load i8, i8* %2849, align 1
  store i8 %2850, i8* %BRANCH_TAKEN, align 1
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2852 = icmp ne i8 %2850, 0
  %2853 = select i1 %2852, i64 %2844, i64 %2846
  store i64 %2853, i64* %2851, align 8
  store %struct.Memory* %loadMem_447ac8, %struct.Memory** %MEMORY
  %loadBr_447ac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447ac8 = icmp eq i8 %loadBr_447ac8, 1
  br i1 %cmpBr_447ac8, label %block_.L_447aff, label %block_447ace

block_447ace:                                     ; preds = %block_447ab9
  %loadMem_447ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %PC.i197
  %2861 = add i64 %2860, 8
  store i64 %2861, i64* %PC.i197
  %2862 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2862, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_447ace, %struct.Memory** %MEMORY
  %loadMem_447ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RAX.i196
  %2870 = add i64 %2869, 2364
  %2871 = load i64, i64* %PC.i195
  %2872 = add i64 %2871, 7
  store i64 %2872, i64* %PC.i195
  %2873 = inttoptr i64 %2870 to i32*
  %2874 = load i32, i32* %2873
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2875, align 1
  %2876 = and i32 %2874, 255
  %2877 = call i32 @llvm.ctpop.i32(i32 %2876)
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  %2880 = xor i8 %2879, 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2880, i8* %2881, align 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2882, align 1
  %2883 = icmp eq i32 %2874, 0
  %2884 = zext i1 %2883 to i8
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2884, i8* %2885, align 1
  %2886 = lshr i32 %2874, 31
  %2887 = trunc i32 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2887, i8* %2888, align 1
  %2889 = lshr i32 %2874, 31
  %2890 = xor i32 %2886, %2889
  %2891 = add i32 %2890, %2889
  %2892 = icmp eq i32 %2891, 2
  %2893 = zext i1 %2892 to i8
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2893, i8* %2894, align 1
  store %struct.Memory* %loadMem_447ad6, %struct.Memory** %MEMORY
  %loadMem_447add = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %PC.i194
  %2899 = add i64 %2898, 34
  %2900 = load i64, i64* %PC.i194
  %2901 = add i64 %2900, 6
  %2902 = load i64, i64* %PC.i194
  %2903 = add i64 %2902, 6
  store i64 %2903, i64* %PC.i194
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2905 = load i8, i8* %2904, align 1
  store i8 %2905, i8* %BRANCH_TAKEN, align 1
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2907 = icmp ne i8 %2905, 0
  %2908 = select i1 %2907, i64 %2899, i64 %2901
  store i64 %2908, i64* %2906, align 8
  store %struct.Memory* %loadMem_447add, %struct.Memory** %MEMORY
  %loadBr_447add = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447add = icmp eq i8 %loadBr_447add, 1
  br i1 %cmpBr_447add, label %block_.L_447aff, label %block_447ae3

block_447ae3:                                     ; preds = %block_447ace
  %loadMem_447ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 1
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %PC.i192
  %2916 = add i64 %2915, 8
  store i64 %2916, i64* %PC.i192
  %2917 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2917, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_447ae3, %struct.Memory** %MEMORY
  %loadMem_447aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 1
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RAX.i191
  %2925 = add i64 %2924, 71784
  %2926 = load i64, i64* %PC.i190
  %2927 = add i64 %2926, 7
  store i64 %2927, i64* %PC.i190
  %2928 = inttoptr i64 %2925 to i64*
  %2929 = load i64, i64* %2928
  store i64 %2929, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_447aeb, %struct.Memory** %MEMORY
  %loadMem_447af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 5
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 15
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RBP.i189
  %2940 = sub i64 %2939, 28
  %2941 = load i64, i64* %PC.i187
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %PC.i187
  %2943 = inttoptr i64 %2940 to i32*
  %2944 = load i32, i32* %2943
  %2945 = sext i32 %2944 to i64
  store i64 %2945, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_447af2, %struct.Memory** %MEMORY
  %loadMem_447af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 1
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 5
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 7
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %RAX.i184
  %2959 = load i64, i64* %RCX.i185
  %2960 = mul i64 %2959, 4
  %2961 = add i64 %2960, %2958
  %2962 = load i64, i64* %PC.i183
  %2963 = add i64 %2962, 3
  store i64 %2963, i64* %PC.i183
  %2964 = inttoptr i64 %2961 to i32*
  %2965 = load i32, i32* %2964
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RDX.i186, align 8
  store %struct.Memory* %loadMem_447af6, %struct.Memory** %MEMORY
  %loadMem_447af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 7
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %RDX.i181
  %2977 = load i64, i64* %RBP.i182
  %2978 = sub i64 %2977, 32
  %2979 = load i64, i64* %PC.i180
  %2980 = add i64 %2979, 3
  store i64 %2980, i64* %PC.i180
  %2981 = trunc i64 %2976 to i32
  %2982 = inttoptr i64 %2978 to i32*
  %2983 = load i32, i32* %2982
  %2984 = and i32 %2983, %2981
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RDX.i181, align 8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2986, align 1
  %2987 = and i32 %2984, 255
  %2988 = call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2991, i8* %2992, align 1
  %2993 = icmp eq i32 %2984, 0
  %2994 = zext i1 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i32 %2984, 31
  %2997 = trunc i32 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2997, i8* %2998, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2999, align 1
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3000, align 1
  store %struct.Memory* %loadMem_447af9, %struct.Memory** %MEMORY
  %loadMem_447afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 7
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %EDX.i178 = bitcast %union.anon* %3006 to i32*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 15
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RBP.i179
  %3011 = sub i64 %3010, 32
  %3012 = load i32, i32* %EDX.i178
  %3013 = zext i32 %3012 to i64
  %3014 = load i64, i64* %PC.i177
  %3015 = add i64 %3014, 3
  store i64 %3015, i64* %PC.i177
  %3016 = inttoptr i64 %3011 to i32*
  store i32 %3012, i32* %3016
  store %struct.Memory* %loadMem_447afc, %struct.Memory** %MEMORY
  br label %block_.L_447aff

block_.L_447aff:                                  ; preds = %block_447ae3, %block_447ace, %block_447ab9, %block_.L_447a90
  %loadMem_447aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 15
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RBP.i176
  %3024 = sub i64 %3023, 32
  %3025 = load i64, i64* %PC.i175
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i175
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3029, align 1
  %3030 = and i32 %3028, 255
  %3031 = call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3034, i8* %3035, align 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3036, align 1
  %3037 = icmp eq i32 %3028, 0
  %3038 = zext i1 %3037 to i8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3038, i8* %3039, align 1
  %3040 = lshr i32 %3028, 31
  %3041 = trunc i32 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3041, i8* %3042, align 1
  %3043 = lshr i32 %3028, 31
  %3044 = xor i32 %3040, %3043
  %3045 = add i32 %3044, %3043
  %3046 = icmp eq i32 %3045, 2
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3047, i8* %3048, align 1
  store %struct.Memory* %loadMem_447aff, %struct.Memory** %MEMORY
  %loadMem_447b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3051 to i64*
  %3052 = load i64, i64* %PC.i174
  %3053 = add i64 %3052, 61
  %3054 = load i64, i64* %PC.i174
  %3055 = add i64 %3054, 6
  %3056 = load i64, i64* %PC.i174
  %3057 = add i64 %3056, 6
  store i64 %3057, i64* %PC.i174
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3059 = load i8, i8* %3058, align 1
  store i8 %3059, i8* %BRANCH_TAKEN, align 1
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3061 = icmp ne i8 %3059, 0
  %3062 = select i1 %3061, i64 %3053, i64 %3055
  store i64 %3062, i64* %3060, align 8
  store %struct.Memory* %loadMem_447b03, %struct.Memory** %MEMORY
  %loadBr_447b03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447b03 = icmp eq i8 %loadBr_447b03, 1
  br i1 %cmpBr_447b03, label %block_.L_447b40, label %block_447b09

block_447b09:                                     ; preds = %block_.L_447aff
  %loadMem_447b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 1
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3068 to i64*
  %3069 = load i64, i64* %PC.i172
  %3070 = add i64 %3069, 8
  store i64 %3070, i64* %PC.i172
  %3071 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3071, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_447b09, %struct.Memory** %MEMORY
  %loadMem_447b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %RAX.i171
  %3079 = add i64 %3078, 128
  %3080 = load i64, i64* %PC.i170
  %3081 = add i64 %3080, 7
  store i64 %3081, i64* %PC.i170
  %3082 = inttoptr i64 %3079 to i64*
  %3083 = load i64, i64* %3082
  store i64 %3083, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_447b11, %struct.Memory** %MEMORY
  %loadMem_447b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %RBP.i169
  %3094 = sub i64 %3093, 28
  %3095 = load i64, i64* %PC.i167
  %3096 = add i64 %3095, 4
  store i64 %3096, i64* %PC.i167
  %3097 = inttoptr i64 %3094 to i32*
  %3098 = load i32, i32* %3097
  %3099 = sext i32 %3098 to i64
  store i64 %3099, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_447b18, %struct.Memory** %MEMORY
  %loadMem_447b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 1
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 5
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RAX.i165
  %3110 = load i64, i64* %RCX.i166
  %3111 = mul i64 %3110, 8
  %3112 = add i64 %3111, %3109
  %3113 = load i64, i64* %PC.i164
  %3114 = add i64 %3113, 4
  store i64 %3114, i64* %PC.i164
  %3115 = inttoptr i64 %3112 to i64*
  %3116 = load i64, i64* %3115
  store i64 %3116, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_447b1c, %struct.Memory** %MEMORY
  %loadMem_447b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 5
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RBP.i163
  %3127 = sub i64 %3126, 24
  %3128 = load i64, i64* %PC.i161
  %3129 = add i64 %3128, 4
  store i64 %3129, i64* %PC.i161
  %3130 = inttoptr i64 %3127 to i32*
  %3131 = load i32, i32* %3130
  %3132 = sext i32 %3131 to i64
  store i64 %3132, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_447b20, %struct.Memory** %MEMORY
  %loadMem_447b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 1
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 5
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %3141 to i64*
  %3142 = load i64, i64* %RAX.i159
  %3143 = load i64, i64* %RCX.i160
  %3144 = mul i64 %3143, 8
  %3145 = add i64 %3144, %3142
  %3146 = load i64, i64* %PC.i158
  %3147 = add i64 %3146, 4
  store i64 %3147, i64* %PC.i158
  %3148 = inttoptr i64 %3145 to i64*
  %3149 = load i64, i64* %3148
  store i64 %3149, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_447b24, %struct.Memory** %MEMORY
  %loadMem_447b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 7
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 15
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RBP.i157
  %3160 = sub i64 %3159, 100
  %3161 = load i64, i64* %PC.i155
  %3162 = add i64 %3161, 3
  store i64 %3162, i64* %PC.i155
  %3163 = inttoptr i64 %3160 to i32*
  %3164 = load i32, i32* %3163
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_447b28, %struct.Memory** %MEMORY
  %loadMem_447b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 7
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 15
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %RDX.i153
  %3176 = load i64, i64* %RBP.i154
  %3177 = sub i64 %3176, 20
  %3178 = load i64, i64* %PC.i152
  %3179 = add i64 %3178, 3
  store i64 %3179, i64* %PC.i152
  %3180 = trunc i64 %3175 to i32
  %3181 = inttoptr i64 %3177 to i32*
  %3182 = load i32, i32* %3181
  %3183 = add i32 %3182, %3180
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RDX.i153, align 8
  %3185 = icmp ult i32 %3183, %3180
  %3186 = icmp ult i32 %3183, %3182
  %3187 = or i1 %3185, %3186
  %3188 = zext i1 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3188, i8* %3189, align 1
  %3190 = and i32 %3183, 255
  %3191 = call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3194, i8* %3195, align 1
  %3196 = xor i32 %3182, %3180
  %3197 = xor i32 %3196, %3183
  %3198 = lshr i32 %3197, 4
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3200, i8* %3201, align 1
  %3202 = icmp eq i32 %3183, 0
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3203, i8* %3204, align 1
  %3205 = lshr i32 %3183, 31
  %3206 = trunc i32 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3206, i8* %3207, align 1
  %3208 = lshr i32 %3180, 31
  %3209 = lshr i32 %3182, 31
  %3210 = xor i32 %3205, %3208
  %3211 = xor i32 %3205, %3209
  %3212 = add i32 %3210, %3211
  %3213 = icmp eq i32 %3212, 2
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3214, i8* %3215, align 1
  store %struct.Memory* %loadMem_447b2b, %struct.Memory** %MEMORY
  %loadMem_447b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 7
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %EDX.i150 = bitcast %union.anon* %3221 to i32*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 5
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %3224 to i64*
  %3225 = load i32, i32* %EDX.i150
  %3226 = zext i32 %3225 to i64
  %3227 = load i64, i64* %PC.i149
  %3228 = add i64 %3227, 3
  store i64 %3228, i64* %PC.i149
  %3229 = shl i64 %3226, 32
  %3230 = ashr exact i64 %3229, 32
  store i64 %3230, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_447b2e, %struct.Memory** %MEMORY
  %loadMem_447b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 1
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 5
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 7
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RAX.i146
  %3244 = load i64, i64* %RCX.i147
  %3245 = mul i64 %3244, 4
  %3246 = add i64 %3245, %3243
  %3247 = load i64, i64* %PC.i145
  %3248 = add i64 %3247, 3
  store i64 %3248, i64* %PC.i145
  %3249 = inttoptr i64 %3246 to i32*
  %3250 = load i32, i32* %3249
  %3251 = zext i32 %3250 to i64
  store i64 %3251, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_447b31, %struct.Memory** %MEMORY
  %loadMem_447b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 7
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %EDX.i143 = bitcast %union.anon* %3257 to i32*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 15
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %RBP.i144
  %3262 = sub i64 %3261, 36
  %3263 = load i32, i32* %EDX.i143
  %3264 = zext i32 %3263 to i64
  %3265 = load i64, i64* %PC.i142
  %3266 = add i64 %3265, 3
  store i64 %3266, i64* %PC.i142
  %3267 = inttoptr i64 %3262 to i32*
  store i32 %3263, i32* %3267
  store %struct.Memory* %loadMem_447b34, %struct.Memory** %MEMORY
  %loadMem_447b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 7
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 15
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RBP.i141
  %3278 = sub i64 %3277, 40
  %3279 = load i64, i64* %PC.i139
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC.i139
  %3281 = inttoptr i64 %3278 to i32*
  %3282 = load i32, i32* %3281
  %3283 = zext i32 %3282 to i64
  store i64 %3283, i64* %RDX.i140, align 8
  store %struct.Memory* %loadMem_447b37, %struct.Memory** %MEMORY
  %loadMem_447b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 7
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RDX.i138
  %3291 = load i64, i64* %PC.i137
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i137
  %3293 = trunc i64 %3290 to i32
  %3294 = add i32 1, %3293
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RDX.i138, align 8
  %3296 = icmp ult i32 %3294, %3293
  %3297 = icmp ult i32 %3294, 1
  %3298 = or i1 %3296, %3297
  %3299 = zext i1 %3298 to i8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3299, i8* %3300, align 1
  %3301 = and i32 %3294, 255
  %3302 = call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3305, i8* %3306, align 1
  %3307 = xor i64 1, %3290
  %3308 = trunc i64 %3307 to i32
  %3309 = xor i32 %3308, %3294
  %3310 = lshr i32 %3309, 4
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3312, i8* %3313, align 1
  %3314 = icmp eq i32 %3294, 0
  %3315 = zext i1 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3315, i8* %3316, align 1
  %3317 = lshr i32 %3294, 31
  %3318 = trunc i32 %3317 to i8
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3318, i8* %3319, align 1
  %3320 = lshr i32 %3293, 31
  %3321 = xor i32 %3317, %3320
  %3322 = add i32 %3321, %3317
  %3323 = icmp eq i32 %3322, 2
  %3324 = zext i1 %3323 to i8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3324, i8* %3325, align 1
  store %struct.Memory* %loadMem_447b3a, %struct.Memory** %MEMORY
  %loadMem_447b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 7
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %EDX.i135 = bitcast %union.anon* %3331 to i32*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RBP.i136
  %3336 = sub i64 %3335, 40
  %3337 = load i32, i32* %EDX.i135
  %3338 = zext i32 %3337 to i64
  %3339 = load i64, i64* %PC.i134
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i134
  %3341 = inttoptr i64 %3336 to i32*
  store i32 %3337, i32* %3341
  store %struct.Memory* %loadMem_447b3d, %struct.Memory** %MEMORY
  br label %block_.L_447b40

block_.L_447b40:                                  ; preds = %block_447b09, %block_.L_447aff
  %loadMem_447b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 5
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %ECX.i132 = bitcast %union.anon* %3347 to i32*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 5
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RCX.i133
  %3352 = load i32, i32* %ECX.i132
  %3353 = zext i32 %3352 to i64
  %3354 = load i64, i64* %PC.i131
  %3355 = add i64 %3354, 2
  store i64 %3355, i64* %PC.i131
  %3356 = xor i64 %3353, %3351
  %3357 = trunc i64 %3356 to i32
  %3358 = and i64 %3356, 4294967295
  store i64 %3358, i64* %RCX.i133, align 8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3359, align 1
  %3360 = and i32 %3357, 255
  %3361 = call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3364, i8* %3365, align 1
  %3366 = icmp eq i32 %3357, 0
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i32 %3357, 31
  %3370 = trunc i32 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3370, i8* %3371, align 1
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3372, align 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3373, align 1
  store %struct.Memory* %loadMem_447b40, %struct.Memory** %MEMORY
  %loadMem_447b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 17
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3379 to i32*
  %3380 = bitcast i32* %R8D.i to i64*
  %3381 = load i64, i64* %PC.i130
  %3382 = add i64 %3381, 6
  store i64 %3382, i64* %PC.i130
  store i64 4294967295, i64* %3380, align 8
  store %struct.Memory* %loadMem_447b42, %struct.Memory** %MEMORY
  %loadMem_447b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 19
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RBP.i129
  %3393 = sub i64 %3392, 32
  %3394 = load i64, i64* %PC.i128
  %3395 = add i64 %3394, 4
  store i64 %3395, i64* %PC.i128
  store i64 %3393, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_447b48, %struct.Memory** %MEMORY
  %loadMem_447b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 11
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 15
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RBP.i127
  %3406 = sub i64 %3405, 44
  %3407 = load i64, i64* %PC.i126
  %3408 = add i64 %3407, 3
  store i64 %3408, i64* %PC.i126
  %3409 = inttoptr i64 %3406 to i32*
  %3410 = load i32, i32* %3409
  %3411 = zext i32 %3410 to i64
  store i64 %3411, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_447b4c, %struct.Memory** %MEMORY
  %loadMem_447b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 9
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 15
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RBP.i125
  %3422 = sub i64 %3421, 4
  %3423 = load i64, i64* %PC.i124
  %3424 = add i64 %3423, 3
  store i64 %3424, i64* %PC.i124
  %3425 = inttoptr i64 %3422 to i32*
  %3426 = load i32, i32* %3425
  %3427 = zext i32 %3426 to i64
  store i64 %3427, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_447b4f, %struct.Memory** %MEMORY
  %loadMem_447b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 1
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 15
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3436 to i64*
  %3437 = load i64, i64* %RBP.i123
  %3438 = sub i64 %3437, 8
  %3439 = load i64, i64* %PC.i121
  %3440 = add i64 %3439, 3
  store i64 %3440, i64* %PC.i121
  %3441 = inttoptr i64 %3438 to i32*
  %3442 = load i32, i32* %3441
  %3443 = zext i32 %3442 to i64
  store i64 %3443, i64* %RAX.i122, align 8
  store %struct.Memory* %loadMem_447b52, %struct.Memory** %MEMORY
  %loadMem_447b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 1
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 15
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RAX.i119
  %3454 = load i64, i64* %RBP.i120
  %3455 = sub i64 %3454, 100
  %3456 = load i64, i64* %PC.i118
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i118
  %3458 = trunc i64 %3453 to i32
  %3459 = inttoptr i64 %3455 to i32*
  %3460 = load i32, i32* %3459
  %3461 = sub i32 %3458, %3460
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RAX.i119, align 8
  %3463 = icmp ult i32 %3458, %3460
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3461, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i32 %3460, %3458
  %3473 = xor i32 %3472, %3461
  %3474 = lshr i32 %3473, 4
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3476, i8* %3477, align 1
  %3478 = icmp eq i32 %3461, 0
  %3479 = zext i1 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3461, 31
  %3482 = trunc i32 %3481 to i8
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3482, i8* %3483, align 1
  %3484 = lshr i32 %3458, 31
  %3485 = lshr i32 %3460, 31
  %3486 = xor i32 %3485, %3484
  %3487 = xor i32 %3481, %3484
  %3488 = add i32 %3487, %3486
  %3489 = icmp eq i32 %3488, 2
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3490, i8* %3491, align 1
  store %struct.Memory* %loadMem_447b55, %struct.Memory** %MEMORY
  %loadMem_447b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %3497 to i32*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 7
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %3500 to i64*
  %3501 = load i32, i32* %EAX.i116
  %3502 = zext i32 %3501 to i64
  %3503 = load i64, i64* %PC.i115
  %3504 = add i64 %3503, 2
  store i64 %3504, i64* %PC.i115
  %3505 = and i64 %3502, 4294967295
  store i64 %3505, i64* %RDX.i117, align 8
  store %struct.Memory* %loadMem_447b58, %struct.Memory** %MEMORY
  %loadMem1_447b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %PC.i114
  %3510 = add i64 %3509, 14214
  %3511 = load i64, i64* %PC.i114
  %3512 = add i64 %3511, 5
  %3513 = load i64, i64* %PC.i114
  %3514 = add i64 %3513, 5
  store i64 %3514, i64* %PC.i114
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3516 = load i64, i64* %3515, align 8
  %3517 = add i64 %3516, -8
  %3518 = inttoptr i64 %3517 to i64*
  store i64 %3512, i64* %3518
  store i64 %3517, i64* %3515, align 8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3510, i64* %3519, align 8
  store %struct.Memory* %loadMem1_447b5a, %struct.Memory** %MEMORY
  %loadMem2_447b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447b5a = load i64, i64* %3
  %call2_447b5a = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64 %loadPC_447b5a, %struct.Memory* %loadMem2_447b5a)
  store %struct.Memory* %call2_447b5a, %struct.Memory** %MEMORY
  %loadMem_447b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 15
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %RBP.i113
  %3527 = sub i64 %3526, 32
  %3528 = load i64, i64* %PC.i112
  %3529 = add i64 %3528, 4
  store i64 %3529, i64* %PC.i112
  %3530 = inttoptr i64 %3527 to i32*
  %3531 = load i32, i32* %3530
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3532, align 1
  %3533 = and i32 %3531, 255
  %3534 = call i32 @llvm.ctpop.i32(i32 %3533)
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = xor i8 %3536, 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3537, i8* %3538, align 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3539, align 1
  %3540 = icmp eq i32 %3531, 0
  %3541 = zext i1 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3541, i8* %3542, align 1
  %3543 = lshr i32 %3531, 31
  %3544 = trunc i32 %3543 to i8
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3544, i8* %3545, align 1
  %3546 = lshr i32 %3531, 31
  %3547 = xor i32 %3543, %3546
  %3548 = add i32 %3547, %3546
  %3549 = icmp eq i32 %3548, 2
  %3550 = zext i1 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3550, i8* %3551, align 1
  store %struct.Memory* %loadMem_447b5f, %struct.Memory** %MEMORY
  %loadMem_447b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3554 to i64*
  %3555 = load i64, i64* %PC.i111
  %3556 = add i64 %3555, 76
  %3557 = load i64, i64* %PC.i111
  %3558 = add i64 %3557, 6
  %3559 = load i64, i64* %PC.i111
  %3560 = add i64 %3559, 6
  store i64 %3560, i64* %PC.i111
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3562 = load i8, i8* %3561, align 1
  store i8 %3562, i8* %BRANCH_TAKEN, align 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3564 = icmp ne i8 %3562, 0
  %3565 = select i1 %3564, i64 %3556, i64 %3558
  store i64 %3565, i64* %3563, align 8
  store %struct.Memory* %loadMem_447b63, %struct.Memory** %MEMORY
  %loadBr_447b63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447b63 = icmp eq i8 %loadBr_447b63, 1
  br i1 %cmpBr_447b63, label %block_.L_447baf, label %block_447b69

block_447b69:                                     ; preds = %block_.L_447b40
  %loadMem_447b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 1
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %PC.i109
  %3573 = add i64 %3572, 8
  store i64 %3573, i64* %PC.i109
  %3574 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %3574, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_447b69, %struct.Memory** %MEMORY
  %loadMem_447b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %3580 to i64*
  %3581 = load i64, i64* %RAX.i108
  %3582 = add i64 %3581, 224
  %3583 = load i64, i64* %PC.i107
  %3584 = add i64 %3583, 7
  store i64 %3584, i64* %PC.i107
  %3585 = inttoptr i64 %3582 to i32*
  %3586 = load i32, i32* %3585
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3587, align 1
  %3588 = and i32 %3586, 255
  %3589 = call i32 @llvm.ctpop.i32(i32 %3588)
  %3590 = trunc i32 %3589 to i8
  %3591 = and i8 %3590, 1
  %3592 = xor i8 %3591, 1
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3592, i8* %3593, align 1
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3594, align 1
  %3595 = icmp eq i32 %3586, 0
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3596, i8* %3597, align 1
  %3598 = lshr i32 %3586, 31
  %3599 = trunc i32 %3598 to i8
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3599, i8* %3600, align 1
  %3601 = lshr i32 %3586, 31
  %3602 = xor i32 %3598, %3601
  %3603 = add i32 %3602, %3601
  %3604 = icmp eq i32 %3603, 2
  %3605 = zext i1 %3604 to i8
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3605, i8* %3606, align 1
  store %struct.Memory* %loadMem_447b71, %struct.Memory** %MEMORY
  %loadMem_447b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %PC.i106
  %3611 = add i64 %3610, 55
  %3612 = load i64, i64* %PC.i106
  %3613 = add i64 %3612, 6
  %3614 = load i64, i64* %PC.i106
  %3615 = add i64 %3614, 6
  store i64 %3615, i64* %PC.i106
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3617 = load i8, i8* %3616, align 1
  store i8 %3617, i8* %BRANCH_TAKEN, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3619 = icmp ne i8 %3617, 0
  %3620 = select i1 %3619, i64 %3611, i64 %3613
  store i64 %3620, i64* %3618, align 8
  store %struct.Memory* %loadMem_447b78, %struct.Memory** %MEMORY
  %loadBr_447b78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447b78 = icmp eq i8 %loadBr_447b78, 1
  br i1 %cmpBr_447b78, label %block_.L_447baf, label %block_447b7e

block_447b7e:                                     ; preds = %block_447b69
  %loadMem_447b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 1
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %3626 to i64*
  %3627 = load i64, i64* %PC.i104
  %3628 = add i64 %3627, 8
  store i64 %3628, i64* %PC.i104
  %3629 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3629, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_447b7e, %struct.Memory** %MEMORY
  %loadMem_447b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 1
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %RAX.i103
  %3637 = add i64 %3636, 2364
  %3638 = load i64, i64* %PC.i102
  %3639 = add i64 %3638, 7
  store i64 %3639, i64* %PC.i102
  %3640 = inttoptr i64 %3637 to i32*
  %3641 = load i32, i32* %3640
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3642, align 1
  %3643 = and i32 %3641, 255
  %3644 = call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3647, i8* %3648, align 1
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3649, align 1
  %3650 = icmp eq i32 %3641, 0
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3651, i8* %3652, align 1
  %3653 = lshr i32 %3641, 31
  %3654 = trunc i32 %3653 to i8
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3654, i8* %3655, align 1
  %3656 = lshr i32 %3641, 31
  %3657 = xor i32 %3653, %3656
  %3658 = add i32 %3657, %3656
  %3659 = icmp eq i32 %3658, 2
  %3660 = zext i1 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3660, i8* %3661, align 1
  store %struct.Memory* %loadMem_447b86, %struct.Memory** %MEMORY
  %loadMem_447b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i101
  %3666 = add i64 %3665, 34
  %3667 = load i64, i64* %PC.i101
  %3668 = add i64 %3667, 6
  %3669 = load i64, i64* %PC.i101
  %3670 = add i64 %3669, 6
  store i64 %3670, i64* %PC.i101
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3672 = load i8, i8* %3671, align 1
  store i8 %3672, i8* %BRANCH_TAKEN, align 1
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3674 = icmp ne i8 %3672, 0
  %3675 = select i1 %3674, i64 %3666, i64 %3668
  store i64 %3675, i64* %3673, align 8
  store %struct.Memory* %loadMem_447b8d, %struct.Memory** %MEMORY
  %loadBr_447b8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447b8d = icmp eq i8 %loadBr_447b8d, 1
  br i1 %cmpBr_447b8d, label %block_.L_447baf, label %block_447b93

block_447b93:                                     ; preds = %block_447b7e
  %loadMem_447b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 1
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %PC.i99
  %3683 = add i64 %3682, 8
  store i64 %3683, i64* %PC.i99
  %3684 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3684, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_447b93, %struct.Memory** %MEMORY
  %loadMem_447b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RAX.i98
  %3692 = add i64 %3691, 71784
  %3693 = load i64, i64* %PC.i97
  %3694 = add i64 %3693, 7
  store i64 %3694, i64* %PC.i97
  %3695 = inttoptr i64 %3692 to i64*
  %3696 = load i64, i64* %3695
  store i64 %3696, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_447b9b, %struct.Memory** %MEMORY
  %loadMem_447ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 5
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i96
  %3707 = sub i64 %3706, 28
  %3708 = load i64, i64* %PC.i94
  %3709 = add i64 %3708, 4
  store i64 %3709, i64* %PC.i94
  %3710 = inttoptr i64 %3707 to i32*
  %3711 = load i32, i32* %3710
  %3712 = sext i32 %3711 to i64
  store i64 %3712, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_447ba2, %struct.Memory** %MEMORY
  %loadMem_447ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 1
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 5
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 7
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RAX.i91
  %3726 = load i64, i64* %RCX.i92
  %3727 = mul i64 %3726, 4
  %3728 = add i64 %3727, %3725
  %3729 = load i64, i64* %PC.i90
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %PC.i90
  %3731 = inttoptr i64 %3728 to i32*
  %3732 = load i32, i32* %3731
  %3733 = zext i32 %3732 to i64
  store i64 %3733, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_447ba6, %struct.Memory** %MEMORY
  %loadMem_447ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 7
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 15
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %RDX.i88
  %3744 = load i64, i64* %RBP.i89
  %3745 = sub i64 %3744, 32
  %3746 = load i64, i64* %PC.i87
  %3747 = add i64 %3746, 3
  store i64 %3747, i64* %PC.i87
  %3748 = trunc i64 %3743 to i32
  %3749 = inttoptr i64 %3745 to i32*
  %3750 = load i32, i32* %3749
  %3751 = and i32 %3750, %3748
  %3752 = zext i32 %3751 to i64
  store i64 %3752, i64* %RDX.i88, align 8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3753, align 1
  %3754 = and i32 %3751, 255
  %3755 = call i32 @llvm.ctpop.i32(i32 %3754)
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3758, i8* %3759, align 1
  %3760 = icmp eq i32 %3751, 0
  %3761 = zext i1 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3761, i8* %3762, align 1
  %3763 = lshr i32 %3751, 31
  %3764 = trunc i32 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3764, i8* %3765, align 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3766, align 1
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3767, align 1
  store %struct.Memory* %loadMem_447ba9, %struct.Memory** %MEMORY
  %loadMem_447bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 7
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %EDX.i85 = bitcast %union.anon* %3773 to i32*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RBP.i86
  %3778 = sub i64 %3777, 32
  %3779 = load i32, i32* %EDX.i85
  %3780 = zext i32 %3779 to i64
  %3781 = load i64, i64* %PC.i84
  %3782 = add i64 %3781, 3
  store i64 %3782, i64* %PC.i84
  %3783 = inttoptr i64 %3778 to i32*
  store i32 %3779, i32* %3783
  store %struct.Memory* %loadMem_447bac, %struct.Memory** %MEMORY
  br label %block_.L_447baf

block_.L_447baf:                                  ; preds = %block_447b93, %block_447b7e, %block_447b69, %block_.L_447b40
  %loadMem_447baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 15
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %RBP.i83
  %3791 = sub i64 %3790, 32
  %3792 = load i64, i64* %PC.i82
  %3793 = add i64 %3792, 4
  store i64 %3793, i64* %PC.i82
  %3794 = inttoptr i64 %3791 to i32*
  %3795 = load i32, i32* %3794
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3796, align 1
  %3797 = and i32 %3795, 255
  %3798 = call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3801, i8* %3802, align 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3803, align 1
  %3804 = icmp eq i32 %3795, 0
  %3805 = zext i1 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3805, i8* %3806, align 1
  %3807 = lshr i32 %3795, 31
  %3808 = trunc i32 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3795, 31
  %3811 = xor i32 %3807, %3810
  %3812 = add i32 %3811, %3810
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3814, i8* %3815, align 1
  store %struct.Memory* %loadMem_447baf, %struct.Memory** %MEMORY
  %loadMem_447bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %PC.i81
  %3820 = add i64 %3819, 64
  %3821 = load i64, i64* %PC.i81
  %3822 = add i64 %3821, 6
  %3823 = load i64, i64* %PC.i81
  %3824 = add i64 %3823, 6
  store i64 %3824, i64* %PC.i81
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3826 = load i8, i8* %3825, align 1
  store i8 %3826, i8* %BRANCH_TAKEN, align 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3828 = icmp ne i8 %3826, 0
  %3829 = select i1 %3828, i64 %3820, i64 %3822
  store i64 %3829, i64* %3827, align 8
  store %struct.Memory* %loadMem_447bb3, %struct.Memory** %MEMORY
  %loadBr_447bb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447bb3 = icmp eq i8 %loadBr_447bb3, 1
  br i1 %cmpBr_447bb3, label %block_.L_447bf3, label %block_447bb9

block_447bb9:                                     ; preds = %block_.L_447baf
  %loadMem_447bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 1
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %PC.i79
  %3837 = add i64 %3836, 8
  store i64 %3837, i64* %PC.i79
  %3838 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3838, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_447bb9, %struct.Memory** %MEMORY
  %loadMem_447bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 1
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RAX.i78
  %3846 = add i64 %3845, 128
  %3847 = load i64, i64* %PC.i77
  %3848 = add i64 %3847, 7
  store i64 %3848, i64* %PC.i77
  %3849 = inttoptr i64 %3846 to i64*
  %3850 = load i64, i64* %3849
  store i64 %3850, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_447bc1, %struct.Memory** %MEMORY
  %loadMem_447bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 5
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i76
  %3861 = sub i64 %3860, 28
  %3862 = load i64, i64* %PC.i74
  %3863 = add i64 %3862, 4
  store i64 %3863, i64* %PC.i74
  %3864 = inttoptr i64 %3861 to i32*
  %3865 = load i32, i32* %3864
  %3866 = sext i32 %3865 to i64
  store i64 %3866, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_447bc8, %struct.Memory** %MEMORY
  %loadMem_447bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 1
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %3872 to i64*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 5
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %RAX.i72
  %3877 = load i64, i64* %RCX.i73
  %3878 = mul i64 %3877, 8
  %3879 = add i64 %3878, %3876
  %3880 = load i64, i64* %PC.i71
  %3881 = add i64 %3880, 4
  store i64 %3881, i64* %PC.i71
  %3882 = inttoptr i64 %3879 to i64*
  %3883 = load i64, i64* %3882
  store i64 %3883, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_447bcc, %struct.Memory** %MEMORY
  %loadMem_447bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 33
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 5
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 15
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %RBP.i70
  %3894 = sub i64 %3893, 24
  %3895 = load i64, i64* %PC.i68
  %3896 = add i64 %3895, 4
  store i64 %3896, i64* %PC.i68
  %3897 = inttoptr i64 %3894 to i32*
  %3898 = load i32, i32* %3897
  %3899 = sext i32 %3898 to i64
  store i64 %3899, i64* %RCX.i69, align 8
  store %struct.Memory* %loadMem_447bd0, %struct.Memory** %MEMORY
  %loadMem_447bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 1
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 5
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RAX.i66
  %3910 = load i64, i64* %RCX.i67
  %3911 = mul i64 %3910, 8
  %3912 = add i64 %3911, %3909
  %3913 = load i64, i64* %PC.i65
  %3914 = add i64 %3913, 4
  store i64 %3914, i64* %PC.i65
  %3915 = inttoptr i64 %3912 to i64*
  %3916 = load i64, i64* %3915
  store i64 %3916, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_447bd4, %struct.Memory** %MEMORY
  %loadMem_447bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 7
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 15
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %RBP.i64
  %3927 = sub i64 %3926, 100
  %3928 = load i64, i64* %PC.i62
  %3929 = add i64 %3928, 3
  store i64 %3929, i64* %PC.i62
  %3930 = inttoptr i64 %3927 to i32*
  %3931 = load i32, i32* %3930
  %3932 = zext i32 %3931 to i64
  store i64 %3932, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_447bd8, %struct.Memory** %MEMORY
  %loadMem_447bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 7
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 15
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %RDX.i60
  %3943 = load i64, i64* %RBP.i61
  %3944 = sub i64 %3943, 20
  %3945 = load i64, i64* %PC.i59
  %3946 = add i64 %3945, 3
  store i64 %3946, i64* %PC.i59
  %3947 = trunc i64 %3942 to i32
  %3948 = inttoptr i64 %3944 to i32*
  %3949 = load i32, i32* %3948
  %3950 = add i32 %3949, %3947
  %3951 = zext i32 %3950 to i64
  store i64 %3951, i64* %RDX.i60, align 8
  %3952 = icmp ult i32 %3950, %3947
  %3953 = icmp ult i32 %3950, %3949
  %3954 = or i1 %3952, %3953
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3955, i8* %3956, align 1
  %3957 = and i32 %3950, 255
  %3958 = call i32 @llvm.ctpop.i32(i32 %3957)
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3961, i8* %3962, align 1
  %3963 = xor i32 %3949, %3947
  %3964 = xor i32 %3963, %3950
  %3965 = lshr i32 %3964, 4
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3967, i8* %3968, align 1
  %3969 = icmp eq i32 %3950, 0
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3970, i8* %3971, align 1
  %3972 = lshr i32 %3950, 31
  %3973 = trunc i32 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3973, i8* %3974, align 1
  %3975 = lshr i32 %3947, 31
  %3976 = lshr i32 %3949, 31
  %3977 = xor i32 %3972, %3975
  %3978 = xor i32 %3972, %3976
  %3979 = add i32 %3977, %3978
  %3980 = icmp eq i32 %3979, 2
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3981, i8* %3982, align 1
  store %struct.Memory* %loadMem_447bdb, %struct.Memory** %MEMORY
  %loadMem_447bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 7
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %EDX.i57 = bitcast %union.anon* %3988 to i32*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 5
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %3991 to i64*
  %3992 = load i32, i32* %EDX.i57
  %3993 = zext i32 %3992 to i64
  %3994 = load i64, i64* %PC.i56
  %3995 = add i64 %3994, 3
  store i64 %3995, i64* %PC.i56
  %3996 = shl i64 %3993, 32
  %3997 = ashr exact i64 %3996, 32
  store i64 %3997, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_447bde, %struct.Memory** %MEMORY
  %loadMem_447be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 1
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 5
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 7
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RAX.i53
  %4011 = load i64, i64* %RCX.i54
  %4012 = mul i64 %4011, 4
  %4013 = add i64 %4012, %4010
  %4014 = load i64, i64* %PC.i52
  %4015 = add i64 %4014, 3
  store i64 %4015, i64* %PC.i52
  %4016 = inttoptr i64 %4013 to i32*
  %4017 = load i32, i32* %4016
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_447be1, %struct.Memory** %MEMORY
  %loadMem_447be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 33
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 7
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 15
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %4027 to i64*
  %4028 = load i64, i64* %RDX.i50
  %4029 = load i64, i64* %RBP.i51
  %4030 = sub i64 %4029, 36
  %4031 = load i64, i64* %PC.i49
  %4032 = add i64 %4031, 3
  store i64 %4032, i64* %PC.i49
  %4033 = trunc i64 %4028 to i32
  %4034 = inttoptr i64 %4030 to i32*
  %4035 = load i32, i32* %4034
  %4036 = add i32 %4035, %4033
  %4037 = zext i32 %4036 to i64
  store i64 %4037, i64* %RDX.i50, align 8
  %4038 = icmp ult i32 %4036, %4033
  %4039 = icmp ult i32 %4036, %4035
  %4040 = or i1 %4038, %4039
  %4041 = zext i1 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4041, i8* %4042, align 1
  %4043 = and i32 %4036, 255
  %4044 = call i32 @llvm.ctpop.i32(i32 %4043)
  %4045 = trunc i32 %4044 to i8
  %4046 = and i8 %4045, 1
  %4047 = xor i8 %4046, 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4047, i8* %4048, align 1
  %4049 = xor i32 %4035, %4033
  %4050 = xor i32 %4049, %4036
  %4051 = lshr i32 %4050, 4
  %4052 = trunc i32 %4051 to i8
  %4053 = and i8 %4052, 1
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4053, i8* %4054, align 1
  %4055 = icmp eq i32 %4036, 0
  %4056 = zext i1 %4055 to i8
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4056, i8* %4057, align 1
  %4058 = lshr i32 %4036, 31
  %4059 = trunc i32 %4058 to i8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4059, i8* %4060, align 1
  %4061 = lshr i32 %4033, 31
  %4062 = lshr i32 %4035, 31
  %4063 = xor i32 %4058, %4061
  %4064 = xor i32 %4058, %4062
  %4065 = add i32 %4063, %4064
  %4066 = icmp eq i32 %4065, 2
  %4067 = zext i1 %4066 to i8
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4067, i8* %4068, align 1
  store %struct.Memory* %loadMem_447be4, %struct.Memory** %MEMORY
  %loadMem_447be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 7
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %EDX.i47 = bitcast %union.anon* %4074 to i32*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 15
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %RBP.i48
  %4079 = sub i64 %4078, 36
  %4080 = load i32, i32* %EDX.i47
  %4081 = zext i32 %4080 to i64
  %4082 = load i64, i64* %PC.i46
  %4083 = add i64 %4082, 3
  store i64 %4083, i64* %PC.i46
  %4084 = inttoptr i64 %4079 to i32*
  store i32 %4080, i32* %4084
  store %struct.Memory* %loadMem_447be7, %struct.Memory** %MEMORY
  %loadMem_447bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 33
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4087 to i64*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 7
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RDX.i44 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 15
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %RBP.i45
  %4095 = sub i64 %4094, 40
  %4096 = load i64, i64* %PC.i43
  %4097 = add i64 %4096, 3
  store i64 %4097, i64* %PC.i43
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098
  %4100 = zext i32 %4099 to i64
  store i64 %4100, i64* %RDX.i44, align 8
  store %struct.Memory* %loadMem_447bea, %struct.Memory** %MEMORY
  %loadMem_447bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 7
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4106 to i64*
  %4107 = load i64, i64* %RDX.i
  %4108 = load i64, i64* %PC.i42
  %4109 = add i64 %4108, 3
  store i64 %4109, i64* %PC.i42
  %4110 = trunc i64 %4107 to i32
  %4111 = add i32 1, %4110
  %4112 = zext i32 %4111 to i64
  store i64 %4112, i64* %RDX.i, align 8
  %4113 = icmp ult i32 %4111, %4110
  %4114 = icmp ult i32 %4111, 1
  %4115 = or i1 %4113, %4114
  %4116 = zext i1 %4115 to i8
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4116, i8* %4117, align 1
  %4118 = and i32 %4111, 255
  %4119 = call i32 @llvm.ctpop.i32(i32 %4118)
  %4120 = trunc i32 %4119 to i8
  %4121 = and i8 %4120, 1
  %4122 = xor i8 %4121, 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4122, i8* %4123, align 1
  %4124 = xor i64 1, %4107
  %4125 = trunc i64 %4124 to i32
  %4126 = xor i32 %4125, %4111
  %4127 = lshr i32 %4126, 4
  %4128 = trunc i32 %4127 to i8
  %4129 = and i8 %4128, 1
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4129, i8* %4130, align 1
  %4131 = icmp eq i32 %4111, 0
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4132, i8* %4133, align 1
  %4134 = lshr i32 %4111, 31
  %4135 = trunc i32 %4134 to i8
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4135, i8* %4136, align 1
  %4137 = lshr i32 %4110, 31
  %4138 = xor i32 %4134, %4137
  %4139 = add i32 %4138, %4134
  %4140 = icmp eq i32 %4139, 2
  %4141 = zext i1 %4140 to i8
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4141, i8* %4142, align 1
  store %struct.Memory* %loadMem_447bed, %struct.Memory** %MEMORY
  %loadMem_447bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 33
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 7
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4148 to i32*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 15
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4151 to i64*
  %4152 = load i64, i64* %RBP.i41
  %4153 = sub i64 %4152, 40
  %4154 = load i32, i32* %EDX.i
  %4155 = zext i32 %4154 to i64
  %4156 = load i64, i64* %PC.i40
  %4157 = add i64 %4156, 3
  store i64 %4157, i64* %PC.i40
  %4158 = inttoptr i64 %4153 to i32*
  store i32 %4154, i32* %4158
  store %struct.Memory* %loadMem_447bf0, %struct.Memory** %MEMORY
  br label %block_.L_447bf3

block_.L_447bf3:                                  ; preds = %block_447bb9, %block_.L_447baf
  %loadMem_447bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %PC.i39
  %4163 = add i64 %4162, 5
  %4164 = load i64, i64* %PC.i39
  %4165 = add i64 %4164, 5
  store i64 %4165, i64* %PC.i39
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4163, i64* %4166, align 8
  store %struct.Memory* %loadMem_447bf3, %struct.Memory** %MEMORY
  br label %block_.L_447bf8

block_.L_447bf8:                                  ; preds = %block_.L_447bf3, %block_.L_447a8b
  %loadMem_447bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 33
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 15
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4172 to i64*
  %4173 = load i64, i64* %RBP.i38
  %4174 = sub i64 %4173, 40
  %4175 = load i64, i64* %PC.i37
  %4176 = add i64 %4175, 4
  store i64 %4176, i64* %PC.i37
  %4177 = inttoptr i64 %4174 to i32*
  %4178 = load i32, i32* %4177
  %4179 = sub i32 %4178, 2
  %4180 = icmp ult i32 %4178, 2
  %4181 = zext i1 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4181, i8* %4182, align 1
  %4183 = and i32 %4179, 255
  %4184 = call i32 @llvm.ctpop.i32(i32 %4183)
  %4185 = trunc i32 %4184 to i8
  %4186 = and i8 %4185, 1
  %4187 = xor i8 %4186, 1
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4187, i8* %4188, align 1
  %4189 = xor i32 %4178, 2
  %4190 = xor i32 %4189, %4179
  %4191 = lshr i32 %4190, 4
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4193, i8* %4194, align 1
  %4195 = icmp eq i32 %4179, 0
  %4196 = zext i1 %4195 to i8
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4196, i8* %4197, align 1
  %4198 = lshr i32 %4179, 31
  %4199 = trunc i32 %4198 to i8
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4199, i8* %4200, align 1
  %4201 = lshr i32 %4178, 31
  %4202 = xor i32 %4198, %4201
  %4203 = add i32 %4202, %4201
  %4204 = icmp eq i32 %4203, 2
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4205, i8* %4206, align 1
  store %struct.Memory* %loadMem_447bf8, %struct.Memory** %MEMORY
  %loadMem_447bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 33
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %PC.i36
  %4211 = add i64 %4210, 35
  %4212 = load i64, i64* %PC.i36
  %4213 = add i64 %4212, 6
  %4214 = load i64, i64* %PC.i36
  %4215 = add i64 %4214, 6
  store i64 %4215, i64* %PC.i36
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4217 = load i8, i8* %4216, align 1
  %4218 = icmp eq i8 %4217, 0
  %4219 = zext i1 %4218 to i8
  store i8 %4219, i8* %BRANCH_TAKEN, align 1
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4221 = select i1 %4218, i64 %4211, i64 %4213
  store i64 %4221, i64* %4220, align 8
  store %struct.Memory* %loadMem_447bfc, %struct.Memory** %MEMORY
  %loadBr_447bfc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447bfc = icmp eq i8 %loadBr_447bfc, 1
  br i1 %cmpBr_447bfc, label %block_.L_447c1f, label %block_447c02

block_447c02:                                     ; preds = %block_.L_447bf8
  %loadMem_447c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 1
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 15
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4230 to i64*
  %4231 = load i64, i64* %RBP.i35
  %4232 = sub i64 %4231, 36
  %4233 = load i64, i64* %PC.i33
  %4234 = add i64 %4233, 3
  store i64 %4234, i64* %PC.i33
  %4235 = inttoptr i64 %4232 to i32*
  %4236 = load i32, i32* %4235
  %4237 = zext i32 %4236 to i64
  store i64 %4237, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_447c02, %struct.Memory** %MEMORY
  %loadMem_447c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 1
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RAX.i32
  %4245 = load i64, i64* %PC.i31
  %4246 = add i64 %4245, 3
  store i64 %4246, i64* %PC.i31
  %4247 = trunc i64 %4244 to i32
  %4248 = add i32 1, %4247
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RAX.i32, align 8
  %4250 = icmp ult i32 %4248, %4247
  %4251 = icmp ult i32 %4248, 1
  %4252 = or i1 %4250, %4251
  %4253 = zext i1 %4252 to i8
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4253, i8* %4254, align 1
  %4255 = and i32 %4248, 255
  %4256 = call i32 @llvm.ctpop.i32(i32 %4255)
  %4257 = trunc i32 %4256 to i8
  %4258 = and i8 %4257, 1
  %4259 = xor i8 %4258, 1
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4259, i8* %4260, align 1
  %4261 = xor i64 1, %4244
  %4262 = trunc i64 %4261 to i32
  %4263 = xor i32 %4262, %4248
  %4264 = lshr i32 %4263, 4
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4266, i8* %4267, align 1
  %4268 = icmp eq i32 %4248, 0
  %4269 = zext i1 %4268 to i8
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4269, i8* %4270, align 1
  %4271 = lshr i32 %4248, 31
  %4272 = trunc i32 %4271 to i8
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4272, i8* %4273, align 1
  %4274 = lshr i32 %4247, 31
  %4275 = xor i32 %4271, %4274
  %4276 = add i32 %4275, %4271
  %4277 = icmp eq i32 %4276, 2
  %4278 = zext i1 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4278, i8* %4279, align 1
  store %struct.Memory* %loadMem_447c05, %struct.Memory** %MEMORY
  %loadMem_447c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 1
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %4285 to i32*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 15
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RBP.i30
  %4290 = sub i64 %4289, 36
  %4291 = load i32, i32* %EAX.i29
  %4292 = zext i32 %4291 to i64
  %4293 = load i64, i64* %PC.i28
  %4294 = add i64 %4293, 3
  store i64 %4294, i64* %PC.i28
  %4295 = inttoptr i64 %4290 to i32*
  store i32 %4291, i32* %4295
  store %struct.Memory* %loadMem_447c08, %struct.Memory** %MEMORY
  %loadMem_447c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 15
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RBP.i27
  %4306 = sub i64 %4305, 40
  %4307 = load i64, i64* %PC.i25
  %4308 = add i64 %4307, 3
  store i64 %4308, i64* %PC.i25
  %4309 = inttoptr i64 %4306 to i32*
  %4310 = load i32, i32* %4309
  %4311 = zext i32 %4310 to i64
  store i64 %4311, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_447c0b, %struct.Memory** %MEMORY
  %loadMem_447c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 5
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 15
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RBP.i24
  %4322 = sub i64 %4321, 36
  %4323 = load i64, i64* %PC.i22
  %4324 = add i64 %4323, 3
  store i64 %4324, i64* %PC.i22
  %4325 = inttoptr i64 %4322 to i32*
  %4326 = load i32, i32* %4325
  %4327 = zext i32 %4326 to i64
  store i64 %4327, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_447c0e, %struct.Memory** %MEMORY
  %loadMem_447c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 1
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %4333 to i32*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 15
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %RBP.i21
  %4338 = sub i64 %4337, 120
  %4339 = load i32, i32* %EAX.i20
  %4340 = zext i32 %4339 to i64
  %4341 = load i64, i64* %PC.i19
  %4342 = add i64 %4341, 3
  store i64 %4342, i64* %PC.i19
  %4343 = inttoptr i64 %4338 to i32*
  store i32 %4339, i32* %4343
  store %struct.Memory* %loadMem_447c11, %struct.Memory** %MEMORY
  %loadMem_447c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 5
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %ECX.i17 = bitcast %union.anon* %4349 to i32*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 1
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4352 to i64*
  %4353 = load i32, i32* %ECX.i17
  %4354 = zext i32 %4353 to i64
  %4355 = load i64, i64* %PC.i16
  %4356 = add i64 %4355, 2
  store i64 %4356, i64* %PC.i16
  %4357 = and i64 %4354, 4294967295
  store i64 %4357, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_447c14, %struct.Memory** %MEMORY
  %loadMem_447c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %PC.i15
  %4362 = add i64 %4361, 1
  store i64 %4362, i64* %PC.i15
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4365 = bitcast %union.anon* %4364 to i32*
  %4366 = load i32, i32* %4365, align 8
  %4367 = sext i32 %4366 to i64
  %4368 = lshr i64 %4367, 32
  store i64 %4368, i64* %4363, align 8
  store %struct.Memory* %loadMem_447c16, %struct.Memory** %MEMORY
  %loadMem_447c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 5
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 15
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RBP.i14
  %4379 = sub i64 %4378, 120
  %4380 = load i64, i64* %PC.i13
  %4381 = add i64 %4380, 3
  store i64 %4381, i64* %PC.i13
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_447c17, %struct.Memory** %MEMORY
  %loadMem_447c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 5
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4390 to i32*
  %4391 = load i32, i32* %ECX.i
  %4392 = zext i32 %4391 to i64
  %4393 = load i64, i64* %PC.i9
  %4394 = add i64 %4393, 2
  store i64 %4394, i64* %PC.i9
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4396 = bitcast %union.anon* %4395 to i32*
  %4397 = load i32, i32* %4396, align 8
  %4398 = zext i32 %4397 to i64
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4400 = bitcast %union.anon* %4399 to i32*
  %4401 = load i32, i32* %4400, align 8
  %4402 = zext i32 %4401 to i64
  %4403 = shl i64 %4392, 32
  %4404 = ashr exact i64 %4403, 32
  %4405 = shl i64 %4402, 32
  %4406 = or i64 %4405, %4398
  %4407 = sdiv i64 %4406, %4404
  %4408 = shl i64 %4407, 32
  %4409 = ashr exact i64 %4408, 32
  %4410 = icmp eq i64 %4407, %4409
  br i1 %4410, label %4415, label %4411

; <label>:4411:                                   ; preds = %block_447c02
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4413 = load i64, i64* %4412, align 8
  %4414 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4413, %struct.Memory* %loadMem_447c1a)
  br label %routine_idivl__ecx.exit

; <label>:4415:                                   ; preds = %block_447c02
  %4416 = srem i64 %4406, %4404
  %4417 = getelementptr inbounds %union.anon, %union.anon* %4395, i64 0, i32 0
  %4418 = and i64 %4407, 4294967295
  store i64 %4418, i64* %4417, align 8
  %4419 = getelementptr inbounds %union.anon, %union.anon* %4399, i64 0, i32 0
  %4420 = and i64 %4416, 4294967295
  store i64 %4420, i64* %4419, align 8
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4421, align 1
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4422, align 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4423, align 1
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4424, align 1
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4425, align 1
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4426, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %4411, %4415
  %4427 = phi %struct.Memory* [ %4414, %4411 ], [ %loadMem_447c1a, %4415 ]
  store %struct.Memory* %4427, %struct.Memory** %MEMORY
  %loadMem_447c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 33
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 1
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4433 to i32*
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 15
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %RBP.i8
  %4438 = sub i64 %4437, 36
  %4439 = load i32, i32* %EAX.i
  %4440 = zext i32 %4439 to i64
  %4441 = load i64, i64* %PC.i7
  %4442 = add i64 %4441, 3
  store i64 %4442, i64* %PC.i7
  %4443 = inttoptr i64 %4438 to i32*
  store i32 %4439, i32* %4443
  store %struct.Memory* %loadMem_447c1c, %struct.Memory** %MEMORY
  br label %block_.L_447c1f

block_.L_447c1f:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_447bf8
  %loadMem_447c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 1
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 15
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4452 to i64*
  %4453 = load i64, i64* %RBP.i6
  %4454 = sub i64 %4453, 36
  %4455 = load i64, i64* %PC.i5
  %4456 = add i64 %4455, 3
  store i64 %4456, i64* %PC.i5
  %4457 = inttoptr i64 %4454 to i32*
  %4458 = load i32, i32* %4457
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_447c1f, %struct.Memory** %MEMORY
  %loadMem_447c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 13
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RSP.i
  %4467 = load i64, i64* %PC.i4
  %4468 = add i64 %4467, 7
  store i64 %4468, i64* %PC.i4
  %4469 = add i64 128, %4466
  store i64 %4469, i64* %RSP.i, align 8
  %4470 = icmp ult i64 %4469, %4466
  %4471 = icmp ult i64 %4469, 128
  %4472 = or i1 %4470, %4471
  %4473 = zext i1 %4472 to i8
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4473, i8* %4474, align 1
  %4475 = trunc i64 %4469 to i32
  %4476 = and i32 %4475, 255
  %4477 = call i32 @llvm.ctpop.i32(i32 %4476)
  %4478 = trunc i32 %4477 to i8
  %4479 = and i8 %4478, 1
  %4480 = xor i8 %4479, 1
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4480, i8* %4481, align 1
  %4482 = xor i64 128, %4466
  %4483 = xor i64 %4482, %4469
  %4484 = lshr i64 %4483, 4
  %4485 = trunc i64 %4484 to i8
  %4486 = and i8 %4485, 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4486, i8* %4487, align 1
  %4488 = icmp eq i64 %4469, 0
  %4489 = zext i1 %4488 to i8
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4489, i8* %4490, align 1
  %4491 = lshr i64 %4469, 63
  %4492 = trunc i64 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4492, i8* %4493, align 1
  %4494 = lshr i64 %4466, 63
  %4495 = xor i64 %4491, %4494
  %4496 = add i64 %4495, %4491
  %4497 = icmp eq i64 %4496, 2
  %4498 = zext i1 %4497 to i8
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4498, i8* %4499, align 1
  store %struct.Memory* %loadMem_447c22, %struct.Memory** %MEMORY
  %loadMem_447c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 33
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 15
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %PC.i2
  %4507 = add i64 %4506, 1
  store i64 %4507, i64* %PC.i2
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4509 = load i64, i64* %4508, align 8
  %4510 = add i64 %4509, 8
  %4511 = inttoptr i64 %4509 to i64*
  %4512 = load i64, i64* %4511
  store i64 %4512, i64* %RBP.i3, align 8
  store i64 %4510, i64* %4508, align 8
  store %struct.Memory* %loadMem_447c29, %struct.Memory** %MEMORY
  %loadMem_447c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %PC.i1
  %4517 = add i64 %4516, 1
  store i64 %4517, i64* %PC.i1
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4520 = load i64, i64* %4519, align 8
  %4521 = inttoptr i64 %4520 to i64*
  %4522 = load i64, i64* %4521
  store i64 %4522, i64* %4518, align 8
  %4523 = add i64 %4520, 8
  store i64 %4523, i64* %4519, align 8
  store %struct.Memory* %loadMem_447c2a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_447c2a
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movq__0x4b9070___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4b9070_type* @G__0x4b9070 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x30___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 48, i64* %RCX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__r9____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_447a90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
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

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl__0x4___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = sub i32 %10, 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %10, 4
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i64 4, %11
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %26, %14
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %14, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
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

define %struct.Memory* @routine_movl__r10d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_447952(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xe0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 224
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

define %struct.Memory* @routine_cmpl__0x0__0x93c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2364
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

define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_andl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = and i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4479ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x80__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
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

define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 4294967295, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_447a2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_447a8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_jmpq_.L_447bf8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_447aff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_447b40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_447baf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_447bf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
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

define %struct.Memory* @routine_jne_.L_447c1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
