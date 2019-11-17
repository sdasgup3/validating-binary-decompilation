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
%G_0x60f1a4___rcx_8__type = type <{ [4 x i8] }>
%G_0x60f240_type = type <{ [4 x i8] }>
%G_0x615f30_type = type <{ [4 x i8] }>
%G__0x400a6a_type = type <{ [8 x i8] }>
%G__0x400a7d_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x60f1a4___rcx_8_ = global %G_0x60f1a4___rcx_8__type zeroinitializer
@G_0x60f240 = global %G_0x60f240_type zeroinitializer
@G_0x615f30 = global %G_0x615f30_type zeroinitializer
@G__0x400a6a = global %G__0x400a6a_type zeroinitializer
@G__0x400a7d = global %G__0x400a7d_type zeroinitializer

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

declare %struct.Memory* @sub_4006e0.Init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4005b0.Makenull(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400820.tower(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Towers(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400890 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400890, %struct.Memory** %MEMORY
  %loadMem_400891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i8 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i8
  %27 = load i64, i64* %PC.i7
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i7
  store i64 %26, i64* %RBP.i9, align 8
  store %struct.Memory* %loadMem_400891, %struct.Memory** %MEMORY
  %loadMem_400894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i18 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i18
  %36 = load i64, i64* %PC.i17
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i17
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i18, align 8
  %39 = icmp ult i64 %35, 16
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
  %49 = xor i64 16, %35
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
  store %struct.Memory* %loadMem_400894, %struct.Memory** %MEMORY
  %loadMem_400898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %RBP.i67
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC.i66
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i66
  %77 = inttoptr i64 %74 to i32*
  store i32 1, i32* %77
  store %struct.Memory* %loadMem_400898, %struct.Memory** %MEMORY
  br label %block_.L_40089f

block_.L_40089f:                                  ; preds = %block_4008a9, %entry
  %loadMem_40089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 33
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i65
  %85 = sub i64 %84, 4
  %86 = load i64, i64* %PC.i64
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i64
  %88 = inttoptr i64 %85 to i32*
  %89 = load i32, i32* %88
  %90 = sub i32 %89, 18
  %91 = icmp ult i32 %89, 18
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %92, i8* %93, align 1
  %94 = and i32 %90, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %98, i8* %99, align 1
  %100 = xor i32 %89, 18
  %101 = xor i32 %100, %90
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %104, i8* %105, align 1
  %106 = icmp eq i32 %90, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1
  %109 = lshr i32 %90, 31
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %110, i8* %111, align 1
  %112 = lshr i32 %89, 31
  %113 = xor i32 %109, %112
  %114 = add i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %116, i8* %117, align 1
  store %struct.Memory* %loadMem_40089f, %struct.Memory** %MEMORY
  %loadMem_4008a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %PC.i63
  %122 = add i64 %121, 37
  %123 = load i64, i64* %PC.i63
  %124 = add i64 %123, 6
  %125 = load i64, i64* %PC.i63
  %126 = add i64 %125, 6
  store i64 %126, i64* %PC.i63
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %128 = load i8, i8* %127, align 1
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  %136 = xor i1 %132, %135
  %137 = xor i1 %136, true
  %138 = and i1 %129, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %BRANCH_TAKEN, align 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = select i1 %138, i64 %122, i64 %124
  store i64 %141, i64* %140, align 8
  store %struct.Memory* %loadMem_4008a3, %struct.Memory** %MEMORY
  %loadBr_4008a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008a3 = icmp eq i8 %loadBr_4008a3, 1
  br i1 %cmpBr_4008a3, label %block_.L_4008c8, label %block_4008a9

block_4008a9:                                     ; preds = %block_.L_40089f
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i62
  %152 = sub i64 %151, 4
  %153 = load i64, i64* %PC.i60
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i60
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_4008a9, %struct.Memory** %MEMORY
  %loadMem_4008ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RAX.i59
  %165 = load i64, i64* %PC.i58
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC.i58
  %167 = trunc i64 %164 to i32
  %168 = sub i32 %167, 1
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX.i59, align 8
  %170 = icmp ult i32 %167, 1
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %171, i8* %172, align 1
  %173 = and i32 %168, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = xor i64 1, %164
  %180 = trunc i64 %179 to i32
  %181 = xor i32 %180, %168
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %184, i8* %185, align 1
  %186 = icmp eq i32 %168, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %168, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %167, 31
  %193 = xor i32 %189, %192
  %194 = add i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1
  store %struct.Memory* %loadMem_4008ac, %struct.Memory** %MEMORY
  %loadMem_4008af = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i57
  %208 = sub i64 %207, 4
  %209 = load i64, i64* %PC.i55
  %210 = add i64 %209, 4
  store i64 %210, i64* %PC.i55
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_4008af, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %219 to i32*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %222 to i64*
  %223 = load i64, i64* %RCX.i
  %224 = mul i64 %223, 8
  %225 = add i64 %224, ptrtoint (%G_0x60f1a4___rcx_8__type* @G_0x60f1a4___rcx_8_ to i64)
  %226 = load i32, i32* %EAX.i54
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %PC.i53
  %229 = add i64 %228, 7
  store i64 %229, i64* %PC.i53
  %230 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %230
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i52
  %241 = sub i64 %240, 4
  %242 = load i64, i64* %PC.i50
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC.i50
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_4008ba, %struct.Memory** %MEMORY
  %loadMem_4008bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RAX.i
  %254 = load i64, i64* %PC.i49
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC.i49
  %256 = trunc i64 %253 to i32
  %257 = add i32 1, %256
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX.i, align 8
  %259 = icmp ult i32 %257, %256
  %260 = icmp ult i32 %257, 1
  %261 = or i1 %259, %260
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %262, i8* %263, align 1
  %264 = and i32 %257, 255
  %265 = call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %268, i8* %269, align 1
  %270 = xor i64 1, %253
  %271 = trunc i64 %270 to i32
  %272 = xor i32 %271, %257
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %275, i8* %276, align 1
  %277 = icmp eq i32 %257, 0
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %278, i8* %279, align 1
  %280 = lshr i32 %257, 31
  %281 = trunc i32 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %281, i8* %282, align 1
  %283 = lshr i32 %256, 31
  %284 = xor i32 %280, %283
  %285 = add i32 %284, %280
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %287, i8* %288, align 1
  store %struct.Memory* %loadMem_4008bd, %struct.Memory** %MEMORY
  %loadMem_4008c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %294 to i32*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 15
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %RBP.i48
  %299 = sub i64 %298, 4
  %300 = load i32, i32* %EAX.i47
  %301 = zext i32 %300 to i64
  %302 = load i64, i64* %PC.i46
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC.i46
  %304 = inttoptr i64 %299 to i32*
  store i32 %300, i32* %304
  store %struct.Memory* %loadMem_4008c0, %struct.Memory** %MEMORY
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %PC.i45
  %309 = add i64 %308, -36
  %310 = load i64, i64* %PC.i45
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC.i45
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %309, i64* %312, align 8
  store %struct.Memory* %loadMem_4008c3, %struct.Memory** %MEMORY
  br label %block_.L_40089f

block_.L_4008c8:                                  ; preds = %block_.L_40089f
  %loadMem_4008c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 11
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RDI.i44 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %PC.i43
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC.i43
  store i64 1, i64* %RDI.i44, align 8
  store %struct.Memory* %loadMem_4008c8, %struct.Memory** %MEMORY
  %loadMem_4008cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 9
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RSI.i42 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i41
  %328 = add i64 %327, 5
  store i64 %328, i64* %PC.i41
  store i64 14, i64* %RSI.i42, align 8
  store %struct.Memory* %loadMem_4008cd, %struct.Memory** %MEMORY
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %PC.i40
  %333 = add i64 %332, 11
  store i64 %333, i64* %PC.i40
  store i32 18, i32* bitcast (%G_0x615f30_type* @G_0x615f30 to i32*)
  store %struct.Memory* %loadMem_4008d2, %struct.Memory** %MEMORY
  %loadMem1_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %PC.i39
  %338 = add i64 %337, -509
  %339 = load i64, i64* %PC.i39
  %340 = add i64 %339, 5
  %341 = load i64, i64* %PC.i39
  %342 = add i64 %341, 5
  store i64 %342, i64* %PC.i39
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %340, i64* %346
  store i64 %345, i64* %343, align 8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %338, i64* %347, align 8
  store %struct.Memory* %loadMem1_4008dd, %struct.Memory** %MEMORY
  %loadMem2_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008dd = load i64, i64* %3
  %call2_4008dd = call %struct.Memory* @sub_4006e0.Init(%struct.State* %0, i64 %loadPC_4008dd, %struct.Memory* %loadMem2_4008dd)
  store %struct.Memory* %call2_4008dd, %struct.Memory** %MEMORY
  %loadMem_4008e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 11
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RDI.i38 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %PC.i37
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC.i37
  store i64 2, i64* %RDI.i38, align 8
  store %struct.Memory* %loadMem_4008e2, %struct.Memory** %MEMORY
  %loadMem1_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %PC.i36
  %360 = add i64 %359, -823
  %361 = load i64, i64* %PC.i36
  %362 = add i64 %361, 5
  %363 = load i64, i64* %PC.i36
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC.i36
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = add i64 %366, -8
  %368 = inttoptr i64 %367 to i64*
  store i64 %362, i64* %368
  store i64 %367, i64* %365, align 8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %360, i64* %369, align 8
  store %struct.Memory* %loadMem1_4008e7, %struct.Memory** %MEMORY
  %loadMem2_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008e7 = load i64, i64* %3
  %call2_4008e7 = call %struct.Memory* @sub_4005b0.Makenull(%struct.State* %0, i64 %loadPC_4008e7, %struct.Memory* %loadMem2_4008e7)
  store %struct.Memory* %call2_4008e7, %struct.Memory** %MEMORY
  %loadMem_4008ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 11
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %PC.i34
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC.i34
  store i64 3, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_4008ec, %struct.Memory** %MEMORY
  %loadMem1_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %PC.i33
  %382 = add i64 %381, -833
  %383 = load i64, i64* %PC.i33
  %384 = add i64 %383, 5
  %385 = load i64, i64* %PC.i33
  %386 = add i64 %385, 5
  store i64 %386, i64* %PC.i33
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = add i64 %388, -8
  %390 = inttoptr i64 %389 to i64*
  store i64 %384, i64* %390
  store i64 %389, i64* %387, align 8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %382, i64* %391, align 8
  store %struct.Memory* %loadMem1_4008f1, %struct.Memory** %MEMORY
  %loadMem2_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008f1 = load i64, i64* %3
  %call2_4008f1 = call %struct.Memory* @sub_4005b0.Makenull(%struct.State* %0, i64 %loadPC_4008f1, %struct.Memory* %loadMem2_4008f1)
  store %struct.Memory* %call2_4008f1, %struct.Memory** %MEMORY
  %loadMem_4008f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 11
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %PC.i31
  %399 = add i64 %398, 5
  store i64 %399, i64* %PC.i31
  store i64 1, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_4008f6, %struct.Memory** %MEMORY
  %loadMem_4008fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 9
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RSI.i30 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %PC.i29
  %407 = add i64 %406, 5
  store i64 %407, i64* %PC.i29
  store i64 2, i64* %RSI.i30, align 8
  store %struct.Memory* %loadMem_4008fb, %struct.Memory** %MEMORY
  %loadMem_400900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 7
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %413 to i64*
  %414 = load i64, i64* %PC.i28
  %415 = add i64 %414, 5
  store i64 %415, i64* %PC.i28
  store i64 14, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_400900, %struct.Memory** %MEMORY
  %loadMem_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %418 to i64*
  %419 = load i64, i64* %PC.i27
  %420 = add i64 %419, 11
  store i64 %420, i64* %PC.i27
  store i32 0, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  store %struct.Memory* %loadMem_400905, %struct.Memory** %MEMORY
  %loadMem1_400910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %PC.i26
  %425 = add i64 %424, -240
  %426 = load i64, i64* %PC.i26
  %427 = add i64 %426, 5
  %428 = load i64, i64* %PC.i26
  %429 = add i64 %428, 5
  store i64 %429, i64* %PC.i26
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = add i64 %431, -8
  %433 = inttoptr i64 %432 to i64*
  store i64 %427, i64* %433
  store i64 %432, i64* %430, align 8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %425, i64* %434, align 8
  store %struct.Memory* %loadMem1_400910, %struct.Memory** %MEMORY
  %loadMem2_400910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400910 = load i64, i64* %3
  %call2_400910 = call %struct.Memory* @sub_400820.tower(%struct.State* %0, i64 %loadPC_400910, %struct.Memory* %loadMem2_400910)
  store %struct.Memory* %call2_400910, %struct.Memory** %MEMORY
  %loadMem_400915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %PC.i25
  %439 = add i64 %438, 11
  store i64 %439, i64* %PC.i25
  %440 = load i32, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  %441 = sub i32 %440, 16383
  %442 = icmp ult i32 %440, 16383
  %443 = zext i1 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %443, i8* %444, align 1
  %445 = and i32 %441, 255
  %446 = call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %449, i8* %450, align 1
  %451 = xor i32 %440, 16383
  %452 = xor i32 %451, %441
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %455, i8* %456, align 1
  %457 = icmp eq i32 %441, 0
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %458, i8* %459, align 1
  %460 = lshr i32 %441, 31
  %461 = trunc i32 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %461, i8* %462, align 1
  %463 = lshr i32 %440, 31
  %464 = xor i32 %460, %463
  %465 = add i32 %464, %463
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %467, i8* %468, align 1
  store %struct.Memory* %loadMem_400915, %struct.Memory** %MEMORY
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %PC.i24
  %473 = add i64 %472, 26
  %474 = load i64, i64* %PC.i24
  %475 = add i64 %474, 6
  %476 = load i64, i64* %PC.i24
  %477 = add i64 %476, 6
  store i64 %477, i64* %PC.i24
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %479 = load i8, i8* %478, align 1
  store i8 %479, i8* %BRANCH_TAKEN, align 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %481 = icmp ne i8 %479, 0
  %482 = select i1 %481, i64 %473, i64 %475
  store i64 %482, i64* %480, align 8
  store %struct.Memory* %loadMem_400920, %struct.Memory** %MEMORY
  %loadBr_400920 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400920 = icmp eq i8 %loadBr_400920, 1
  br i1 %cmpBr_400920, label %block_.L_40093a, label %block_400926

block_400926:                                     ; preds = %block_.L_4008c8
  %loadMem_400926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 11
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RDI.i23 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %PC.i22
  %490 = add i64 %489, 10
  store i64 %490, i64* %PC.i22
  store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI.i23, align 8
  store %struct.Memory* %loadMem_400926, %struct.Memory** %MEMORY
  %loadMem_400930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %497 = bitcast %union.anon* %496 to %struct.anon.2*
  %AL.i21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %497, i32 0, i32 0
  %498 = load i64, i64* %PC.i20
  %499 = add i64 %498, 2
  store i64 %499, i64* %PC.i20
  store i8 0, i8* %AL.i21, align 1
  store %struct.Memory* %loadMem_400930, %struct.Memory** %MEMORY
  %loadMem1_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %PC.i19
  %504 = add i64 %503, -1298
  %505 = load i64, i64* %PC.i19
  %506 = add i64 %505, 5
  %507 = load i64, i64* %PC.i19
  %508 = add i64 %507, 5
  store i64 %508, i64* %PC.i19
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = add i64 %510, -8
  %512 = inttoptr i64 %511 to i64*
  store i64 %506, i64* %512
  store i64 %511, i64* %509, align 8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %504, i64* %513, align 8
  store %struct.Memory* %loadMem1_400932, %struct.Memory** %MEMORY
  %loadMem2_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400932 = load i64, i64* %3
  %514 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400932)
  store %struct.Memory* %514, %struct.Memory** %MEMORY
  %loadMem_400937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %520 to i32*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i16
  %525 = sub i64 %524, 8
  %526 = load i32, i32* %EAX.i15
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %PC.i14
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i14
  %530 = inttoptr i64 %525 to i32*
  store i32 %526, i32* %530
  store %struct.Memory* %loadMem_400937, %struct.Memory** %MEMORY
  br label %block_.L_40093a

block_.L_40093a:                                  ; preds = %block_400926, %block_.L_4008c8
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 11
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %PC.i13
  %538 = add i64 %537, 10
  store i64 %538, i64* %PC.i13
  store i64 ptrtoint (%G__0x400a7d_type* @G__0x400a7d to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40093a, %struct.Memory** %MEMORY
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 9
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %PC.i12
  %546 = add i64 %545, 7
  store i64 %546, i64* %PC.i12
  %547 = load i32, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400944, %struct.Memory** %MEMORY
  %loadMem_40094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %555 = bitcast %union.anon* %554 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %555, i32 0, i32 0
  %556 = load i64, i64* %PC.i11
  %557 = add i64 %556, 2
  store i64 %557, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40094b, %struct.Memory** %MEMORY
  %loadMem1_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %PC.i10
  %562 = add i64 %561, -1325
  %563 = load i64, i64* %PC.i10
  %564 = add i64 %563, 5
  %565 = load i64, i64* %PC.i10
  %566 = add i64 %565, 5
  store i64 %566, i64* %PC.i10
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = add i64 %568, -8
  %570 = inttoptr i64 %569 to i64*
  store i64 %564, i64* %570
  store i64 %569, i64* %567, align 8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %562, i64* %571, align 8
  store %struct.Memory* %loadMem1_40094d, %struct.Memory** %MEMORY
  %loadMem2_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40094d = load i64, i64* %3
  %572 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40094d)
  store %struct.Memory* %572, %struct.Memory** %MEMORY
  %loadMem_400952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %578 to i32*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i6
  %583 = sub i64 %582, 12
  %584 = load i32, i32* %EAX.i
  %585 = zext i32 %584 to i64
  %586 = load i64, i64* %PC.i5
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC.i5
  %588 = inttoptr i64 %583 to i32*
  store i32 %584, i32* %588
  store %struct.Memory* %loadMem_400952, %struct.Memory** %MEMORY
  %loadMem_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 13
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RSP.i
  %596 = load i64, i64* %PC.i4
  %597 = add i64 %596, 4
  store i64 %597, i64* %PC.i4
  %598 = add i64 16, %595
  store i64 %598, i64* %RSP.i, align 8
  %599 = icmp ult i64 %598, %595
  %600 = icmp ult i64 %598, 16
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %602, i8* %603, align 1
  %604 = trunc i64 %598 to i32
  %605 = and i32 %604, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1
  %611 = xor i64 16, %595
  %612 = xor i64 %611, %598
  %613 = lshr i64 %612, 4
  %614 = trunc i64 %613 to i8
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %615, i8* %616, align 1
  %617 = icmp eq i64 %598, 0
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %618, i8* %619, align 1
  %620 = lshr i64 %598, 63
  %621 = trunc i64 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %621, i8* %622, align 1
  %623 = lshr i64 %595, 63
  %624 = xor i64 %620, %623
  %625 = add i64 %624, %620
  %626 = icmp eq i64 %625, 2
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %627, i8* %628, align 1
  store %struct.Memory* %loadMem_400955, %struct.Memory** %MEMORY
  %loadMem_400959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %PC.i2
  %636 = add i64 %635, 1
  store i64 %636, i64* %PC.i2
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = add i64 %638, 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640
  store i64 %641, i64* %RBP.i3, align 8
  store i64 %639, i64* %637, align 8
  store %struct.Memory* %loadMem_400959, %struct.Memory** %MEMORY
  %loadMem_40095a = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %PC.i1
  %646 = add i64 %645, 1
  store i64 %646, i64* %PC.i1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = inttoptr i64 %649 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %647, align 8
  %652 = add i64 %649, 8
  store i64 %652, i64* %648, align 8
  store %struct.Memory* %loadMem_40095a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40095a
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %12 = sub i64 %9, 16
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 16, %9
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_cmpl__0x12__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 18
  %16 = icmp ult i32 %14, 18
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
  %25 = xor i32 %14, 18
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_jg_.L_4008c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__0x60f1a4___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %13 = mul i64 %12, 8
  %14 = add i64 %13, ptrtoint (%G_0x60f1a4___rcx_8__type* @G_0x60f1a4___rcx_8_ to i64)
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_jmpq_.L_40089f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0xe___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x12__0x615f30(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 18, i32* bitcast (%G_0x615f30_type* @G_0x615f30 to i32*)
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.Init(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.Makenull(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x3___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0xe___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x0__0x60f240(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.tower(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_cmpl__0x3fff__0x60f240(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  %9 = sub i32 %8, 16383
  %10 = icmp ult i32 %8, 16383
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
  %19 = xor i32 %8, 16383
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_je_.L_40093a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__0x400a6a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__0x400a7d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x400a7d_type* @G__0x400a7d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl_0x60f240___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %11 = load i32, i32* bitcast (%G_0x60f240_type* @G_0x60f240 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
