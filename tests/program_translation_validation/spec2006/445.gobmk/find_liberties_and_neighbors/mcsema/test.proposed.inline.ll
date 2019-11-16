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
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x99da04 = global %G_0x99da04_type zeroinitializer
@G_0x99da08 = global %G_0x99da08_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

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
define %struct.Memory* @find_liberties_and_neighbors(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_408450 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_408450, %struct.Memory** %MEMORY
  %loadMem_408451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i945
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i945
  store i64 %26, i64* %RBP.i946, align 8
  store %struct.Memory* %loadMem_408451, %struct.Memory** %MEMORY
  %loadMem_408454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i944 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i943
  %36 = add i64 %35, 10
  store i64 %36, i64* %PC.i943
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  store %struct.Memory* %loadMem_408454, %struct.Memory** %MEMORY
  %loadMem_40845e = load %struct.Memory*, %struct.Memory** %MEMORY
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 33
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RCX.i942 = bitcast %union.anon* %42 to i64*
  %43 = load i64, i64* %PC.i941
  %44 = add i64 %43, 5
  store i64 %44, i64* %PC.i941
  store i64 3, i64* %RCX.i942, align 8
  store %struct.Memory* %loadMem_40845e, %struct.Memory** %MEMORY
  %loadMem_408463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i940 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i940
  %55 = sub i64 %54, 4
  %56 = load i32, i32* %EDI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i939
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i939
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_408463, %struct.Memory** %MEMORY
  %loadMem_408466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RDX.i937 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %RBP.i938
  %71 = sub i64 %70, 4
  %72 = load i64, i64* %PC.i936
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC.i936
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %RDX.i937, align 8
  store %struct.Memory* %loadMem_408466, %struct.Memory** %MEMORY
  %loadMem_40846a = load %struct.Memory*, %struct.Memory** %MEMORY
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 33
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %79 to i64*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RDX.i935 = bitcast %union.anon* %82 to i64*
  %83 = load i64, i64* %RDX.i935
  %84 = load i64, i64* %PC.i934
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i934
  %86 = sext i64 %83 to i128
  %87 = and i128 %86, -18446744073709551616
  %88 = zext i64 %83 to i128
  %89 = or i128 %87, %88
  %90 = mul i128 744, %89
  %91 = trunc i128 %90 to i64
  store i64 %91, i64* %RDX.i935, align 8
  %92 = sext i64 %91 to i128
  %93 = icmp ne i128 %92, %90
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %94, i8* %95, align 1
  %96 = trunc i128 %90 to i32
  %97 = and i32 %96, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97)
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %103, align 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %104, align 1
  %105 = lshr i64 %91, 63
  %106 = trunc i64 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %106, i8* %107, align 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %94, i8* %108, align 1
  store %struct.Memory* %loadMem_40846a, %struct.Memory** %MEMORY
  %loadMem_408471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RAX.i932 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RSI.i933 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RAX.i932
  %119 = load i64, i64* %PC.i931
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i931
  store i64 %118, i64* %RSI.i933, align 8
  store %struct.Memory* %loadMem_408471, %struct.Memory** %MEMORY
  %loadMem_408474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RDX.i929 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RSI.i930 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RSI.i930
  %131 = load i64, i64* %RDX.i929
  %132 = load i64, i64* %PC.i928
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC.i928
  %134 = add i64 %131, %130
  store i64 %134, i64* %RSI.i930, align 8
  %135 = icmp ult i64 %134, %130
  %136 = icmp ult i64 %134, %131
  %137 = or i1 %135, %136
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %138, i8* %139, align 1
  %140 = trunc i64 %134 to i32
  %141 = and i32 %140, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1
  %147 = xor i64 %131, %130
  %148 = xor i64 %147, %134
  %149 = lshr i64 %148, 4
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %151, i8* %152, align 1
  %153 = icmp eq i64 %134, 0
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %154, i8* %155, align 1
  %156 = lshr i64 %134, 63
  %157 = trunc i64 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %157, i8* %158, align 1
  %159 = lshr i64 %130, 63
  %160 = lshr i64 %131, 63
  %161 = xor i64 %156, %159
  %162 = xor i64 %156, %160
  %163 = add i64 %161, %162
  %164 = icmp eq i64 %163, 2
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %165, i8* %166, align 1
  store %struct.Memory* %loadMem_408474, %struct.Memory** %MEMORY
  %loadMem_408477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RCX.i926 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RSI.i927 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %RCX.i926
  %177 = load i64, i64* %RSI.i927
  %178 = load i64, i64* %PC.i925
  %179 = add i64 %178, 2
  store i64 %179, i64* %PC.i925
  %180 = trunc i64 %176 to i32
  %181 = inttoptr i64 %177 to i32*
  %182 = load i32, i32* %181
  %183 = sub i32 %180, %182
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX.i926, align 8
  %185 = icmp ult i32 %180, %182
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %186, i8* %187, align 1
  %188 = and i32 %183, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %192, i8* %193, align 1
  %194 = xor i32 %182, %180
  %195 = xor i32 %194, %183
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %198, i8* %199, align 1
  %200 = icmp eq i32 %183, 0
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %201, i8* %202, align 1
  %203 = lshr i32 %183, 31
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %204, i8* %205, align 1
  %206 = lshr i32 %180, 31
  %207 = lshr i32 %182, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %203, %206
  %210 = add i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1
  store %struct.Memory* %loadMem_408477, %struct.Memory** %MEMORY
  %loadMem_408479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %ECX.i923 = bitcast %union.anon* %219 to i32*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 15
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %222 to i64*
  %223 = load i64, i64* %RBP.i924
  %224 = sub i64 %223, 12
  %225 = load i32, i32* %ECX.i923
  %226 = zext i32 %225 to i64
  %227 = load i64, i64* %PC.i922
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC.i922
  %229 = inttoptr i64 %224 to i32*
  store i32 %225, i32* %229
  store %struct.Memory* %loadMem_408479, %struct.Memory** %MEMORY
  %loadMem_40847c = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RCX.i921 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i920
  %237 = add i64 %236, 7
  store i64 %237, i64* %PC.i920
  %238 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RCX.i921, align 8
  store %struct.Memory* %loadMem_40847c, %struct.Memory** %MEMORY
  %loadMem_408483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RCX.i919 = bitcast %union.anon* %245 to i64*
  %246 = load i64, i64* %RCX.i919
  %247 = load i64, i64* %PC.i918
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC.i918
  %249 = trunc i64 %246 to i32
  %250 = add i32 1, %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i919, align 8
  %252 = icmp ult i32 %250, %249
  %253 = icmp ult i32 %250, 1
  %254 = or i1 %252, %253
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %255, i8* %256, align 1
  %257 = and i32 %250, 255
  %258 = call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %261, i8* %262, align 1
  %263 = xor i64 1, %246
  %264 = trunc i64 %263 to i32
  %265 = xor i32 %264, %250
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %268, i8* %269, align 1
  %270 = icmp eq i32 %250, 0
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %271, i8* %272, align 1
  %273 = lshr i32 %250, 31
  %274 = trunc i32 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %274, i8* %275, align 1
  %276 = lshr i32 %249, 31
  %277 = xor i32 %273, %276
  %278 = add i32 %277, %273
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %280, i8* %281, align 1
  store %struct.Memory* %loadMem_408483, %struct.Memory** %MEMORY
  %loadMem_408486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %ECX.i917 = bitcast %union.anon* %287 to i32*
  %288 = load i32, i32* %ECX.i917
  %289 = zext i32 %288 to i64
  %290 = load i64, i64* %PC.i916
  %291 = add i64 %290, 7
  store i64 %291, i64* %PC.i916
  store i32 %288, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  store %struct.Memory* %loadMem_408486, %struct.Memory** %MEMORY
  %loadMem_40848d = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RCX.i915 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %PC.i914
  %299 = add i64 %298, 7
  store i64 %299, i64* %PC.i914
  %300 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RCX.i915, align 8
  store %struct.Memory* %loadMem_40848d, %struct.Memory** %MEMORY
  %loadMem_408494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RCX.i913 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %RCX.i913
  %309 = load i64, i64* %PC.i912
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC.i912
  %311 = trunc i64 %308 to i32
  %312 = add i32 1, %311
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RCX.i913, align 8
  %314 = icmp ult i32 %312, %311
  %315 = icmp ult i32 %312, 1
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %317, i8* %318, align 1
  %319 = and i32 %312, 255
  %320 = call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %323, i8* %324, align 1
  %325 = xor i64 1, %308
  %326 = trunc i64 %325 to i32
  %327 = xor i32 %326, %312
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %330, i8* %331, align 1
  %332 = icmp eq i32 %312, 0
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %333, i8* %334, align 1
  %335 = lshr i32 %312, 31
  %336 = trunc i32 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %336, i8* %337, align 1
  %338 = lshr i32 %311, 31
  %339 = xor i32 %335, %338
  %340 = add i32 %339, %335
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %342, i8* %343, align 1
  store %struct.Memory* %loadMem_408494, %struct.Memory** %MEMORY
  %loadMem_408497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %ECX.i911 = bitcast %union.anon* %349 to i32*
  %350 = load i32, i32* %ECX.i911
  %351 = zext i32 %350 to i64
  %352 = load i64, i64* %PC.i910
  %353 = add i64 %352, 7
  store i64 %353, i64* %PC.i910
  store i32 %350, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  store %struct.Memory* %loadMem_408497, %struct.Memory** %MEMORY
  %loadMem_40849e = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RDX.i908 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i909
  %364 = sub i64 %363, 4
  %365 = load i64, i64* %PC.i907
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC.i907
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RDX.i908, align 8
  store %struct.Memory* %loadMem_40849e, %struct.Memory** %MEMORY
  %loadMem_4084a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 7
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RDX.i906 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RDX.i906
  %377 = load i64, i64* %PC.i905
  %378 = add i64 %377, 7
  store i64 %378, i64* %PC.i905
  %379 = sext i64 %376 to i128
  %380 = and i128 %379, -18446744073709551616
  %381 = zext i64 %376 to i128
  %382 = or i128 %380, %381
  %383 = mul i128 744, %382
  %384 = trunc i128 %383 to i64
  store i64 %384, i64* %RDX.i906, align 8
  %385 = sext i64 %384 to i128
  %386 = icmp ne i128 %385, %383
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %387, i8* %388, align 1
  %389 = trunc i128 %383 to i32
  %390 = and i32 %389, 255
  %391 = call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %394, i8* %395, align 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %396, align 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %397, align 1
  %398 = lshr i64 %384, 63
  %399 = trunc i64 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %399, i8* %400, align 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %387, i8* %401, align 1
  store %struct.Memory* %loadMem_4084a2, %struct.Memory** %MEMORY
  %loadMem_4084a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 7
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RDX.i904 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RAX.i903
  %412 = load i64, i64* %RDX.i904
  %413 = load i64, i64* %PC.i902
  %414 = add i64 %413, 3
  store i64 %414, i64* %PC.i902
  %415 = add i64 %412, %411
  store i64 %415, i64* %RAX.i903, align 8
  %416 = icmp ult i64 %415, %411
  %417 = icmp ult i64 %415, %412
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %419, i8* %420, align 1
  %421 = trunc i64 %415 to i32
  %422 = and i32 %421, 255
  %423 = call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %426, i8* %427, align 1
  %428 = xor i64 %412, %411
  %429 = xor i64 %428, %415
  %430 = lshr i64 %429, 4
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %432, i8* %433, align 1
  %434 = icmp eq i64 %415, 0
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %435, i8* %436, align 1
  %437 = lshr i64 %415, 63
  %438 = trunc i64 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1
  %440 = lshr i64 %411, 63
  %441 = lshr i64 %412, 63
  %442 = xor i64 %437, %440
  %443 = xor i64 %437, %441
  %444 = add i64 %442, %443
  %445 = icmp eq i64 %444, 2
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %446, i8* %447, align 1
  store %struct.Memory* %loadMem_4084a9, %struct.Memory** %MEMORY
  %loadMem_4084ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RCX.i901 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RAX.i900
  %458 = add i64 %457, 8
  %459 = load i64, i64* %PC.i899
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i899
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX.i901, align 8
  store %struct.Memory* %loadMem_4084ac, %struct.Memory** %MEMORY
  %loadMem_4084af = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 5
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %ECX.i897 = bitcast %union.anon* %469 to i32*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 15
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RBP.i898
  %474 = sub i64 %473, 8
  %475 = load i32, i32* %ECX.i897
  %476 = zext i32 %475 to i64
  %477 = load i64, i64* %PC.i896
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC.i896
  %479 = inttoptr i64 %474 to i32*
  store i32 %475, i32* %479
  store %struct.Memory* %loadMem_4084af, %struct.Memory** %MEMORY
  br label %block_.L_4084b2

block_.L_4084b2:                                  ; preds = %block_.L_408b46, %entry
  %loadMem_4084b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 15
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %RBP.i895
  %490 = sub i64 %489, 8
  %491 = load i64, i64* %PC.i893
  %492 = add i64 %491, 3
  store i64 %492, i64* %PC.i893
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX.i894, align 8
  store %struct.Memory* %loadMem_4084b2, %struct.Memory** %MEMORY
  %loadMem_4084b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %501 to i64*
  %502 = load i64, i64* %RAX.i892
  %503 = load i64, i64* %PC.i891
  %504 = add i64 %503, 3
  store i64 %504, i64* %PC.i891
  %505 = trunc i64 %502 to i32
  %506 = add i32 20, %505
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i892, align 8
  %508 = icmp ult i32 %506, %505
  %509 = icmp ult i32 %506, 20
  %510 = or i1 %508, %509
  %511 = zext i1 %510 to i8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %511, i8* %512, align 1
  %513 = and i32 %506, 255
  %514 = call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %517, i8* %518, align 1
  %519 = xor i64 20, %502
  %520 = trunc i64 %519 to i32
  %521 = xor i32 %520, %506
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %524, i8* %525, align 1
  %526 = icmp eq i32 %506, 0
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %527, i8* %528, align 1
  %529 = lshr i32 %506, 31
  %530 = trunc i32 %529 to i8
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %530, i8* %531, align 1
  %532 = lshr i32 %505, 31
  %533 = xor i32 %529, %532
  %534 = add i32 %533, %529
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %536, i8* %537, align 1
  store %struct.Memory* %loadMem_4084b5, %struct.Memory** %MEMORY
  %loadMem_4084b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %EAX.i889 = bitcast %union.anon* %543 to i32*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %546 to i64*
  %547 = load i32, i32* %EAX.i889
  %548 = zext i32 %547 to i64
  %549 = load i64, i64* %PC.i888
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC.i888
  %551 = shl i64 %548, 32
  %552 = ashr exact i64 %551, 32
  store i64 %552, i64* %RCX.i890, align 8
  store %struct.Memory* %loadMem_4084b8, %struct.Memory** %MEMORY
  %loadMem_4084bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 5
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RCX.i887 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RCX.i887
  %563 = add i64 %562, 12099168
  %564 = load i64, i64* %PC.i885
  %565 = add i64 %564, 8
  store i64 %565, i64* %PC.i885
  %566 = inttoptr i64 %563 to i8*
  %567 = load i8, i8* %566
  %568 = zext i8 %567 to i64
  store i64 %568, i64* %RAX.i886, align 8
  store %struct.Memory* %loadMem_4084bb, %struct.Memory** %MEMORY
  %loadMem_4084c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %EAX.i884 = bitcast %union.anon* %574 to i32*
  %575 = load i32, i32* %EAX.i884
  %576 = zext i32 %575 to i64
  %577 = load i64, i64* %PC.i883
  %578 = add i64 %577, 3
  store i64 %578, i64* %PC.i883
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %579, align 1
  %580 = and i32 %575, 255
  %581 = call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %584, i8* %585, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %586, align 1
  %587 = icmp eq i32 %575, 0
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %588, i8* %589, align 1
  %590 = lshr i32 %575, 31
  %591 = trunc i32 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %591, i8* %592, align 1
  %593 = lshr i32 %575, 31
  %594 = xor i32 %590, %593
  %595 = add i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1
  store %struct.Memory* %loadMem_4084c3, %struct.Memory** %MEMORY
  %loadMem_4084c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %PC.i882
  %603 = add i64 %602, 190
  %604 = load i64, i64* %PC.i882
  %605 = add i64 %604, 6
  %606 = load i64, i64* %PC.i882
  %607 = add i64 %606, 6
  store i64 %607, i64* %PC.i882
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %609 = load i8, i8* %608, align 1
  %610 = icmp eq i8 %609, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %BRANCH_TAKEN, align 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %613 = select i1 %610, i64 %603, i64 %605
  store i64 %613, i64* %612, align 8
  store %struct.Memory* %loadMem_4084c6, %struct.Memory** %MEMORY
  %loadBr_4084c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4084c6 = icmp eq i8 %loadBr_4084c6, 1
  br i1 %cmpBr_4084c6, label %block_.L_408584, label %block_4084cc

block_4084cc:                                     ; preds = %block_.L_4084b2
  %loadMem_4084cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i880 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i881
  %624 = sub i64 %623, 8
  %625 = load i64, i64* %PC.i879
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC.i879
  %627 = inttoptr i64 %624 to i32*
  %628 = load i32, i32* %627
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX.i880, align 8
  store %struct.Memory* %loadMem_4084cc, %struct.Memory** %MEMORY
  %loadMem_4084cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i878 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RAX.i878
  %637 = load i64, i64* %PC.i877
  %638 = add i64 %637, 3
  store i64 %638, i64* %PC.i877
  %639 = trunc i64 %636 to i32
  %640 = add i32 20, %639
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i878, align 8
  %642 = icmp ult i32 %640, %639
  %643 = icmp ult i32 %640, 20
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %645, i8* %646, align 1
  %647 = and i32 %640, 255
  %648 = call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %651, i8* %652, align 1
  %653 = xor i64 20, %636
  %654 = trunc i64 %653 to i32
  %655 = xor i32 %654, %640
  %656 = lshr i32 %655, 4
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %658, i8* %659, align 1
  %660 = icmp eq i32 %640, 0
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %661, i8* %662, align 1
  %663 = lshr i32 %640, 31
  %664 = trunc i32 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %664, i8* %665, align 1
  %666 = lshr i32 %639, 31
  %667 = xor i32 %663, %666
  %668 = add i32 %667, %663
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %670, i8* %671, align 1
  store %struct.Memory* %loadMem_4084cf, %struct.Memory** %MEMORY
  %loadMem_4084d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %EAX.i875 = bitcast %union.anon* %677 to i32*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 5
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %680 to i64*
  %681 = load i32, i32* %EAX.i875
  %682 = zext i32 %681 to i64
  %683 = load i64, i64* %PC.i874
  %684 = add i64 %683, 3
  store i64 %684, i64* %PC.i874
  %685 = shl i64 %682, 32
  %686 = ashr exact i64 %685, 32
  store i64 %686, i64* %RCX.i876, align 8
  store %struct.Memory* %loadMem_4084d2, %struct.Memory** %MEMORY
  %loadMem_4084d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 5
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RCX.i873 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RCX.i873
  %697 = mul i64 %696, 4
  %698 = add i64 %697, 11185584
  %699 = load i64, i64* %PC.i871
  %700 = add i64 %699, 7
  store i64 %700, i64* %PC.i871
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i872, align 8
  store %struct.Memory* %loadMem_4084d5, %struct.Memory** %MEMORY
  %loadMem_4084dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %EAX.i870 = bitcast %union.anon* %709 to i32*
  %710 = load i32, i32* %EAX.i870
  %711 = zext i32 %710 to i64
  %712 = load i64, i64* %PC.i869
  %713 = add i64 %712, 7
  store i64 %713, i64* %PC.i869
  %714 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %715 = sub i32 %710, %714
  %716 = icmp ult i32 %710, %714
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %717, i8* %718, align 1
  %719 = and i32 %715, 255
  %720 = call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %723, i8* %724, align 1
  %725 = xor i32 %714, %710
  %726 = xor i32 %725, %715
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %729, i8* %730, align 1
  %731 = icmp eq i32 %715, 0
  %732 = zext i1 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %732, i8* %733, align 1
  %734 = lshr i32 %715, 31
  %735 = trunc i32 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %735, i8* %736, align 1
  %737 = lshr i32 %710, 31
  %738 = lshr i32 %714, 31
  %739 = xor i32 %738, %737
  %740 = xor i32 %734, %737
  %741 = add i32 %740, %739
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %743, i8* %744, align 1
  store %struct.Memory* %loadMem_4084dc, %struct.Memory** %MEMORY
  %loadMem_4084e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %PC.i868
  %749 = add i64 %748, 161
  %750 = load i64, i64* %PC.i868
  %751 = add i64 %750, 6
  %752 = load i64, i64* %PC.i868
  %753 = add i64 %752, 6
  store i64 %753, i64* %PC.i868
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %755 = load i8, i8* %754, align 1
  store i8 %755, i8* %BRANCH_TAKEN, align 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %757 = icmp ne i8 %755, 0
  %758 = select i1 %757, i64 %749, i64 %751
  store i64 %758, i64* %756, align 8
  store %struct.Memory* %loadMem_4084e3, %struct.Memory** %MEMORY
  %loadBr_4084e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4084e3 = icmp eq i8 %loadBr_4084e3, 1
  br i1 %cmpBr_4084e3, label %block_.L_408584, label %block_4084e9

block_4084e9:                                     ; preds = %block_4084cc
  %loadMem_4084e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %PC.i867
  %763 = add i64 %762, 5
  %764 = load i64, i64* %PC.i867
  %765 = add i64 %764, 5
  store i64 %765, i64* %PC.i867
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %763, i64* %766, align 8
  store %struct.Memory* %loadMem_4084e9, %struct.Memory** %MEMORY
  br label %block_.L_4084ee

block_.L_4084ee:                                  ; preds = %block_4084e9
  %loadMem_4084ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 1
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RAX.i866 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %PC.i865
  %774 = add i64 %773, 10
  store i64 %774, i64* %PC.i865
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i866, align 8
  store %struct.Memory* %loadMem_4084ee, %struct.Memory** %MEMORY
  %loadMem_4084f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 5
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 15
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %RBP.i864
  %785 = sub i64 %784, 4
  %786 = load i64, i64* %PC.i862
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC.i862
  %788 = inttoptr i64 %785 to i32*
  %789 = load i32, i32* %788
  %790 = sext i32 %789 to i64
  store i64 %790, i64* %RCX.i863, align 8
  store %struct.Memory* %loadMem_4084f8, %struct.Memory** %MEMORY
  %loadMem_4084fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 5
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RCX.i861 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RCX.i861
  %798 = load i64, i64* %PC.i860
  %799 = add i64 %798, 7
  store i64 %799, i64* %PC.i860
  %800 = sext i64 %797 to i128
  %801 = and i128 %800, -18446744073709551616
  %802 = zext i64 %797 to i128
  %803 = or i128 %801, %802
  %804 = mul i128 744, %803
  %805 = trunc i128 %804 to i64
  store i64 %805, i64* %RCX.i861, align 8
  %806 = sext i64 %805 to i128
  %807 = icmp ne i128 %806, %804
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %808, i8* %809, align 1
  %810 = trunc i128 %804 to i32
  %811 = and i32 %810, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %817, align 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %818, align 1
  %819 = lshr i64 %805, 63
  %820 = trunc i64 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %820, i8* %821, align 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %808, i8* %822, align 1
  store %struct.Memory* %loadMem_4084fc, %struct.Memory** %MEMORY
  %loadMem_408503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 1
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RAX.i858 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 5
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RCX.i859 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %RAX.i858
  %833 = load i64, i64* %RCX.i859
  %834 = load i64, i64* %PC.i857
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC.i857
  %836 = add i64 %833, %832
  store i64 %836, i64* %RAX.i858, align 8
  %837 = icmp ult i64 %836, %832
  %838 = icmp ult i64 %836, %833
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %840, i8* %841, align 1
  %842 = trunc i64 %836 to i32
  %843 = and i32 %842, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1
  %849 = xor i64 %833, %832
  %850 = xor i64 %849, %836
  %851 = lshr i64 %850, 4
  %852 = trunc i64 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1
  %855 = icmp eq i64 %836, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1
  %858 = lshr i64 %836, 63
  %859 = trunc i64 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1
  %861 = lshr i64 %832, 63
  %862 = lshr i64 %833, 63
  %863 = xor i64 %858, %861
  %864 = xor i64 %858, %862
  %865 = add i64 %863, %864
  %866 = icmp eq i64 %865, 2
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %868, align 1
  store %struct.Memory* %loadMem_408503, %struct.Memory** %MEMORY
  %loadMem_408506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RAX.i856
  %876 = add i64 %875, 12
  %877 = load i64, i64* %PC.i855
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC.i855
  %879 = inttoptr i64 %876 to i32*
  %880 = load i32, i32* %879
  %881 = sub i32 %880, 20
  %882 = icmp ult i32 %880, 20
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %883, i8* %884, align 1
  %885 = and i32 %881, 255
  %886 = call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %889, i8* %890, align 1
  %891 = xor i32 %880, 20
  %892 = xor i32 %891, %881
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %895, i8* %896, align 1
  %897 = icmp eq i32 %881, 0
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %898, i8* %899, align 1
  %900 = lshr i32 %881, 31
  %901 = trunc i32 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %901, i8* %902, align 1
  %903 = lshr i32 %880, 31
  %904 = xor i32 %900, %903
  %905 = add i32 %904, %903
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %907, i8* %908, align 1
  store %struct.Memory* %loadMem_408506, %struct.Memory** %MEMORY
  %loadMem_40850a = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %PC.i854
  %913 = add i64 %912, 61
  %914 = load i64, i64* %PC.i854
  %915 = add i64 %914, 6
  %916 = load i64, i64* %PC.i854
  %917 = add i64 %916, 6
  store i64 %917, i64* %PC.i854
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %919 = load i8, i8* %918, align 1
  %920 = icmp ne i8 %919, 0
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %922 = load i8, i8* %921, align 1
  %923 = icmp ne i8 %922, 0
  %924 = xor i1 %920, %923
  %925 = xor i1 %924, true
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %BRANCH_TAKEN, align 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %928 = select i1 %924, i64 %915, i64 %913
  store i64 %928, i64* %927, align 8
  store %struct.Memory* %loadMem_40850a, %struct.Memory** %MEMORY
  %loadBr_40850a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40850a = icmp eq i8 %loadBr_40850a, 1
  br i1 %cmpBr_40850a, label %block_.L_408547, label %block_408510

block_408510:                                     ; preds = %block_.L_4084ee
  %loadMem_408510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %PC.i852
  %936 = add i64 %935, 10
  store i64 %936, i64* %PC.i852
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_408510, %struct.Memory** %MEMORY
  %loadMem_40851a = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 5
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 15
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RBP.i851
  %947 = sub i64 %946, 8
  %948 = load i64, i64* %PC.i849
  %949 = add i64 %948, 3
  store i64 %949, i64* %PC.i849
  %950 = inttoptr i64 %947 to i32*
  %951 = load i32, i32* %950
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_40851a, %struct.Memory** %MEMORY
  %loadMem_40851d = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 5
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RCX.i848
  %960 = load i64, i64* %PC.i847
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC.i847
  %962 = trunc i64 %959 to i32
  %963 = add i32 20, %962
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RCX.i848, align 8
  %965 = icmp ult i32 %963, %962
  %966 = icmp ult i32 %963, 20
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %968, i8* %969, align 1
  %970 = and i32 %963, 255
  %971 = call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %974, i8* %975, align 1
  %976 = xor i64 20, %959
  %977 = trunc i64 %976 to i32
  %978 = xor i32 %977, %963
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %981, i8* %982, align 1
  %983 = icmp eq i32 %963, 0
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %963, 31
  %987 = trunc i32 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %962, 31
  %990 = xor i32 %986, %989
  %991 = add i32 %990, %986
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %993, i8* %994, align 1
  store %struct.Memory* %loadMem_40851d, %struct.Memory** %MEMORY
  %loadMem_408520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 7
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 15
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RBP.i846
  %1005 = sub i64 %1004, 4
  %1006 = load i64, i64* %PC.i844
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %PC.i844
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008
  %1010 = sext i32 %1009 to i64
  store i64 %1010, i64* %RDX.i845, align 8
  store %struct.Memory* %loadMem_408520, %struct.Memory** %MEMORY
  %loadMem_408524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 7
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RDX.i843 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RDX.i843
  %1018 = load i64, i64* %PC.i842
  %1019 = add i64 %1018, 7
  store i64 %1019, i64* %PC.i842
  %1020 = sext i64 %1017 to i128
  %1021 = and i128 %1020, -18446744073709551616
  %1022 = zext i64 %1017 to i128
  %1023 = or i128 %1021, %1022
  %1024 = mul i128 744, %1023
  %1025 = trunc i128 %1024 to i64
  store i64 %1025, i64* %RDX.i843, align 8
  %1026 = sext i64 %1025 to i128
  %1027 = icmp ne i128 %1026, %1024
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1
  %1030 = trunc i128 %1024 to i32
  %1031 = and i32 %1030, 255
  %1032 = call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1035, i8* %1036, align 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1037, align 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1038, align 1
  %1039 = lshr i64 %1025, 63
  %1040 = trunc i64 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1040, i8* %1041, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1028, i8* %1042, align 1
  store %struct.Memory* %loadMem_408524, %struct.Memory** %MEMORY
  %loadMem_40852b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 1
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 9
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RSI.i841 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RAX.i840
  %1053 = load i64, i64* %PC.i839
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i839
  store i64 %1052, i64* %RSI.i841, align 8
  store %struct.Memory* %loadMem_40852b, %struct.Memory** %MEMORY
  %loadMem_40852e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 7
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RDX.i837 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 9
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RSI.i838 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RSI.i838
  %1065 = load i64, i64* %RDX.i837
  %1066 = load i64, i64* %PC.i836
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC.i836
  %1068 = add i64 %1065, %1064
  store i64 %1068, i64* %RSI.i838, align 8
  %1069 = icmp ult i64 %1068, %1064
  %1070 = icmp ult i64 %1068, %1065
  %1071 = or i1 %1069, %1070
  %1072 = zext i1 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1072, i8* %1073, align 1
  %1074 = trunc i64 %1068 to i32
  %1075 = and i32 %1074, 255
  %1076 = call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1079, i8* %1080, align 1
  %1081 = xor i64 %1065, %1064
  %1082 = xor i64 %1081, %1068
  %1083 = lshr i64 %1082, 4
  %1084 = trunc i64 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1085, i8* %1086, align 1
  %1087 = icmp eq i64 %1068, 0
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i64 %1068, 63
  %1091 = trunc i64 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i64 %1064, 63
  %1094 = lshr i64 %1065, 63
  %1095 = xor i64 %1090, %1093
  %1096 = xor i64 %1090, %1094
  %1097 = add i64 %1095, %1096
  %1098 = icmp eq i64 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1
  store %struct.Memory* %loadMem_40852e, %struct.Memory** %MEMORY
  %loadMem_408531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 7
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RDX.i834 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i835
  %1111 = sub i64 %1110, 4
  %1112 = load i64, i64* %PC.i833
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %PC.i833
  %1114 = inttoptr i64 %1111 to i32*
  %1115 = load i32, i32* %1114
  %1116 = sext i32 %1115 to i64
  store i64 %1116, i64* %RDX.i834, align 8
  store %struct.Memory* %loadMem_408531, %struct.Memory** %MEMORY
  %loadMem_408535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 7
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RDX.i832 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RDX.i832
  %1124 = load i64, i64* %PC.i831
  %1125 = add i64 %1124, 7
  store i64 %1125, i64* %PC.i831
  %1126 = sext i64 %1123 to i128
  %1127 = and i128 %1126, -18446744073709551616
  %1128 = zext i64 %1123 to i128
  %1129 = or i128 %1127, %1128
  %1130 = mul i128 744, %1129
  %1131 = trunc i128 %1130 to i64
  store i64 %1131, i64* %RDX.i832, align 8
  %1132 = sext i64 %1131 to i128
  %1133 = icmp ne i128 %1132, %1130
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1134, i8* %1135, align 1
  %1136 = trunc i128 %1130 to i32
  %1137 = and i32 %1136, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1143, align 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1144, align 1
  %1145 = lshr i64 %1131, 63
  %1146 = trunc i64 %1145 to i8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1146, i8* %1147, align 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1134, i8* %1148, align 1
  store %struct.Memory* %loadMem_408535, %struct.Memory** %MEMORY
  %loadMem_40853c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 7
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RDX.i830 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RAX.i829
  %1159 = load i64, i64* %RDX.i830
  %1160 = load i64, i64* %PC.i828
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %PC.i828
  %1162 = add i64 %1159, %1158
  store i64 %1162, i64* %RAX.i829, align 8
  %1163 = icmp ult i64 %1162, %1158
  %1164 = icmp ult i64 %1162, %1159
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1166, i8* %1167, align 1
  %1168 = trunc i64 %1162 to i32
  %1169 = and i32 %1168, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1
  %1175 = xor i64 %1159, %1158
  %1176 = xor i64 %1175, %1162
  %1177 = lshr i64 %1176, 4
  %1178 = trunc i64 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1179, i8* %1180, align 1
  %1181 = icmp eq i64 %1162, 0
  %1182 = zext i1 %1181 to i8
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1182, i8* %1183, align 1
  %1184 = lshr i64 %1162, 63
  %1185 = trunc i64 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1185, i8* %1186, align 1
  %1187 = lshr i64 %1158, 63
  %1188 = lshr i64 %1159, 63
  %1189 = xor i64 %1184, %1187
  %1190 = xor i64 %1184, %1188
  %1191 = add i64 %1189, %1190
  %1192 = icmp eq i64 %1191, 2
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1193, i8* %1194, align 1
  store %struct.Memory* %loadMem_40853c, %struct.Memory** %MEMORY
  %loadMem_40853f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 1
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %RAX.i827
  %1202 = add i64 %1201, 12
  %1203 = load i64, i64* %PC.i826
  %1204 = add i64 %1203, 4
  store i64 %1204, i64* %PC.i826
  %1205 = inttoptr i64 %1202 to i32*
  %1206 = load i32, i32* %1205
  %1207 = sext i32 %1206 to i64
  store i64 %1207, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_40853f, %struct.Memory** %MEMORY
  %loadMem_408543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 5
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %ECX.i823 = bitcast %union.anon* %1213 to i32*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 9
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RSI.i825 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %RSI.i825
  %1221 = load i64, i64* %RAX.i824
  %1222 = mul i64 %1221, 4
  %1223 = add i64 %1220, 16
  %1224 = add i64 %1223, %1222
  %1225 = load i32, i32* %ECX.i823
  %1226 = zext i32 %1225 to i64
  %1227 = load i64, i64* %PC.i822
  %1228 = add i64 %1227, 4
  store i64 %1228, i64* %PC.i822
  %1229 = inttoptr i64 %1224 to i32*
  store i32 %1225, i32* %1229
  store %struct.Memory* %loadMem_408543, %struct.Memory** %MEMORY
  br label %block_.L_408547

block_.L_408547:                                  ; preds = %block_408510, %block_.L_4084ee
  %loadMem_408547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i820
  %1237 = add i64 %1236, 10
  store i64 %1237, i64* %PC.i820
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i821, align 8
  store %struct.Memory* %loadMem_408547, %struct.Memory** %MEMORY
  %loadMem_408551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 5
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %RBP.i819
  %1248 = sub i64 %1247, 4
  %1249 = load i64, i64* %PC.i817
  %1250 = add i64 %1249, 4
  store i64 %1250, i64* %PC.i817
  %1251 = inttoptr i64 %1248 to i32*
  %1252 = load i32, i32* %1251
  %1253 = sext i32 %1252 to i64
  store i64 %1253, i64* %RCX.i818, align 8
  store %struct.Memory* %loadMem_408551, %struct.Memory** %MEMORY
  %loadMem_408555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 5
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RCX.i816
  %1261 = load i64, i64* %PC.i815
  %1262 = add i64 %1261, 7
  store i64 %1262, i64* %PC.i815
  %1263 = sext i64 %1260 to i128
  %1264 = and i128 %1263, -18446744073709551616
  %1265 = zext i64 %1260 to i128
  %1266 = or i128 %1264, %1265
  %1267 = mul i128 744, %1266
  %1268 = trunc i128 %1267 to i64
  store i64 %1268, i64* %RCX.i816, align 8
  %1269 = sext i64 %1268 to i128
  %1270 = icmp ne i128 %1269, %1267
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = trunc i128 %1267 to i32
  %1274 = and i32 %1273, 255
  %1275 = call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1278, i8* %1279, align 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1281, align 1
  %1282 = lshr i64 %1268, 63
  %1283 = trunc i64 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1285, align 1
  store %struct.Memory* %loadMem_408555, %struct.Memory** %MEMORY
  %loadMem_40855c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 5
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RAX.i813
  %1296 = load i64, i64* %RCX.i814
  %1297 = load i64, i64* %PC.i812
  %1298 = add i64 %1297, 3
  store i64 %1298, i64* %PC.i812
  %1299 = add i64 %1296, %1295
  store i64 %1299, i64* %RAX.i813, align 8
  %1300 = icmp ult i64 %1299, %1295
  %1301 = icmp ult i64 %1299, %1296
  %1302 = or i1 %1300, %1301
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1303, i8* %1304, align 1
  %1305 = trunc i64 %1299 to i32
  %1306 = and i32 %1305, 255
  %1307 = call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1310, i8* %1311, align 1
  %1312 = xor i64 %1296, %1295
  %1313 = xor i64 %1312, %1299
  %1314 = lshr i64 %1313, 4
  %1315 = trunc i64 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1316, i8* %1317, align 1
  %1318 = icmp eq i64 %1299, 0
  %1319 = zext i1 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1319, i8* %1320, align 1
  %1321 = lshr i64 %1299, 63
  %1322 = trunc i64 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1322, i8* %1323, align 1
  %1324 = lshr i64 %1295, 63
  %1325 = lshr i64 %1296, 63
  %1326 = xor i64 %1321, %1324
  %1327 = xor i64 %1321, %1325
  %1328 = add i64 %1326, %1327
  %1329 = icmp eq i64 %1328, 2
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1330, i8* %1331, align 1
  store %struct.Memory* %loadMem_40855c, %struct.Memory** %MEMORY
  %loadMem_40855f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 1
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 7
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RDX.i811 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %RAX.i810
  %1342 = add i64 %1341, 12
  %1343 = load i64, i64* %PC.i809
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %PC.i809
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RDX.i811, align 8
  store %struct.Memory* %loadMem_40855f, %struct.Memory** %MEMORY
  %loadMem_408562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 7
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RDX.i808 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RDX.i808
  %1355 = load i64, i64* %PC.i807
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC.i807
  %1357 = trunc i64 %1354 to i32
  %1358 = add i32 1, %1357
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RDX.i808, align 8
  %1360 = icmp ult i32 %1358, %1357
  %1361 = icmp ult i32 %1358, 1
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1363, i8* %1364, align 1
  %1365 = and i32 %1358, 255
  %1366 = call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1369, i8* %1370, align 1
  %1371 = xor i64 1, %1354
  %1372 = trunc i64 %1371 to i32
  %1373 = xor i32 %1372, %1358
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1376, i8* %1377, align 1
  %1378 = icmp eq i32 %1358, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1358, 31
  %1382 = trunc i32 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1382, i8* %1383, align 1
  %1384 = lshr i32 %1357, 31
  %1385 = xor i32 %1381, %1384
  %1386 = add i32 %1385, %1381
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1388, i8* %1389, align 1
  store %struct.Memory* %loadMem_408562, %struct.Memory** %MEMORY
  %loadMem_408565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 7
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %EDX.i805 = bitcast %union.anon* %1395 to i32*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 1
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RAX.i806
  %1400 = add i64 %1399, 12
  %1401 = load i32, i32* %EDX.i805
  %1402 = zext i32 %1401 to i64
  %1403 = load i64, i64* %PC.i804
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC.i804
  %1405 = inttoptr i64 %1400 to i32*
  store i32 %1401, i32* %1405
  store %struct.Memory* %loadMem_408565, %struct.Memory** %MEMORY
  %loadMem_408568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 7
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RDX.i803 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %PC.i802
  %1413 = add i64 %1412, 7
  store i64 %1413, i64* %PC.i802
  %1414 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RDX.i803, align 8
  store %struct.Memory* %loadMem_408568, %struct.Memory** %MEMORY
  %loadMem_40856f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 9
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RSI.i800 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 15
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RBP.i801
  %1426 = sub i64 %1425, 8
  %1427 = load i64, i64* %PC.i799
  %1428 = add i64 %1427, 3
  store i64 %1428, i64* %PC.i799
  %1429 = inttoptr i64 %1426 to i32*
  %1430 = load i32, i32* %1429
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RSI.i800, align 8
  store %struct.Memory* %loadMem_40856f, %struct.Memory** %MEMORY
  %loadMem_408572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 9
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RSI.i798 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RSI.i798
  %1439 = load i64, i64* %PC.i797
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %PC.i797
  %1441 = trunc i64 %1438 to i32
  %1442 = add i32 20, %1441
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RSI.i798, align 8
  %1444 = icmp ult i32 %1442, %1441
  %1445 = icmp ult i32 %1442, 20
  %1446 = or i1 %1444, %1445
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1447, i8* %1448, align 1
  %1449 = and i32 %1442, 255
  %1450 = call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1453, i8* %1454, align 1
  %1455 = xor i64 20, %1438
  %1456 = trunc i64 %1455 to i32
  %1457 = xor i32 %1456, %1442
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1460, i8* %1461, align 1
  %1462 = icmp eq i32 %1442, 0
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i32 %1442, 31
  %1466 = trunc i32 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1441, 31
  %1469 = xor i32 %1465, %1468
  %1470 = add i32 %1469, %1465
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1472, i8* %1473, align 1
  store %struct.Memory* %loadMem_408572, %struct.Memory** %MEMORY
  %loadMem_408575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 9
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %ESI.i795 = bitcast %union.anon* %1479 to i32*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %1482 to i64*
  %1483 = load i32, i32* %ESI.i795
  %1484 = zext i32 %1483 to i64
  %1485 = load i64, i64* %PC.i794
  %1486 = add i64 %1485, 3
  store i64 %1486, i64* %PC.i794
  %1487 = shl i64 %1484, 32
  %1488 = ashr exact i64 %1487, 32
  store i64 %1488, i64* %RAX.i796, align 8
  store %struct.Memory* %loadMem_408575, %struct.Memory** %MEMORY
  %loadMem_408578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 7
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %EDX.i792 = bitcast %union.anon* %1494 to i32*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 1
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RAX.i793
  %1499 = mul i64 %1498, 4
  %1500 = add i64 %1499, 11185584
  %1501 = load i32, i32* %EDX.i792
  %1502 = zext i32 %1501 to i64
  %1503 = load i64, i64* %PC.i791
  %1504 = add i64 %1503, 7
  store i64 %1504, i64* %PC.i791
  %1505 = inttoptr i64 %1500 to i32*
  store i32 %1501, i32* %1505
  store %struct.Memory* %loadMem_408578, %struct.Memory** %MEMORY
  %loadMem_40857f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %PC.i790
  %1510 = add i64 %1509, 216
  %1511 = load i64, i64* %PC.i790
  %1512 = add i64 %1511, 5
  store i64 %1512, i64* %PC.i790
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1510, i64* %1513, align 8
  store %struct.Memory* %loadMem_40857f, %struct.Memory** %MEMORY
  br label %block_.L_408657

block_.L_408584:                                  ; preds = %block_4084cc, %block_.L_4084b2
  %loadMem_408584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RBP.i789
  %1524 = sub i64 %1523, 8
  %1525 = load i64, i64* %PC.i787
  %1526 = add i64 %1525, 3
  store i64 %1526, i64* %PC.i787
  %1527 = inttoptr i64 %1524 to i32*
  %1528 = load i32, i32* %1527
  %1529 = zext i32 %1528 to i64
  store i64 %1529, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_408584, %struct.Memory** %MEMORY
  %loadMem_408587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 1
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RAX.i786
  %1537 = load i64, i64* %PC.i785
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC.i785
  %1539 = trunc i64 %1536 to i32
  %1540 = add i32 20, %1539
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i786, align 8
  %1542 = icmp ult i32 %1540, %1539
  %1543 = icmp ult i32 %1540, 20
  %1544 = or i1 %1542, %1543
  %1545 = zext i1 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1545, i8* %1546, align 1
  %1547 = and i32 %1540, 255
  %1548 = call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1551, i8* %1552, align 1
  %1553 = xor i64 20, %1536
  %1554 = trunc i64 %1553 to i32
  %1555 = xor i32 %1554, %1540
  %1556 = lshr i32 %1555, 4
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1558, i8* %1559, align 1
  %1560 = icmp eq i32 %1540, 0
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1561, i8* %1562, align 1
  %1563 = lshr i32 %1540, 31
  %1564 = trunc i32 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1539, 31
  %1567 = xor i32 %1563, %1566
  %1568 = add i32 %1567, %1563
  %1569 = icmp eq i32 %1568, 2
  %1570 = zext i1 %1569 to i8
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1570, i8* %1571, align 1
  store %struct.Memory* %loadMem_408587, %struct.Memory** %MEMORY
  %loadMem_40858a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %EAX.i783 = bitcast %union.anon* %1577 to i32*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 5
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RCX.i784 = bitcast %union.anon* %1580 to i64*
  %1581 = load i32, i32* %EAX.i783
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %PC.i782
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i782
  %1585 = shl i64 %1582, 32
  %1586 = ashr exact i64 %1585, 32
  store i64 %1586, i64* %RCX.i784, align 8
  store %struct.Memory* %loadMem_40858a, %struct.Memory** %MEMORY
  %loadMem_40858d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 1
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RAX.i780 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 5
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RCX.i781 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RCX.i781
  %1597 = add i64 %1596, 12099168
  %1598 = load i64, i64* %PC.i779
  %1599 = add i64 %1598, 8
  store i64 %1599, i64* %PC.i779
  %1600 = inttoptr i64 %1597 to i8*
  %1601 = load i8, i8* %1600
  %1602 = zext i8 %1601 to i64
  store i64 %1602, i64* %RAX.i780, align 8
  store %struct.Memory* %loadMem_40858d, %struct.Memory** %MEMORY
  %loadMem_408595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %EAX.i777 = bitcast %union.anon* %1608 to i32*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %1611 to i64*
  %1612 = load i32, i32* %EAX.i777
  %1613 = zext i32 %1612 to i64
  %1614 = load i64, i64* %RBP.i778
  %1615 = sub i64 %1614, 12
  %1616 = load i64, i64* %PC.i776
  %1617 = add i64 %1616, 3
  store i64 %1617, i64* %PC.i776
  %1618 = inttoptr i64 %1615 to i32*
  %1619 = load i32, i32* %1618
  %1620 = sub i32 %1612, %1619
  %1621 = icmp ult i32 %1612, %1619
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1622, i8* %1623, align 1
  %1624 = and i32 %1620, 255
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1628, i8* %1629, align 1
  %1630 = xor i32 %1619, %1612
  %1631 = xor i32 %1630, %1620
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1634, i8* %1635, align 1
  %1636 = icmp eq i32 %1620, 0
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1637, i8* %1638, align 1
  %1639 = lshr i32 %1620, 31
  %1640 = trunc i32 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1640, i8* %1641, align 1
  %1642 = lshr i32 %1612, 31
  %1643 = lshr i32 %1619, 31
  %1644 = xor i32 %1643, %1642
  %1645 = xor i32 %1639, %1642
  %1646 = add i32 %1645, %1644
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1648, i8* %1649, align 1
  store %struct.Memory* %loadMem_408595, %struct.Memory** %MEMORY
  %loadMem_408598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %PC.i775
  %1654 = add i64 %1653, 186
  %1655 = load i64, i64* %PC.i775
  %1656 = add i64 %1655, 6
  %1657 = load i64, i64* %PC.i775
  %1658 = add i64 %1657, 6
  store i64 %1658, i64* %PC.i775
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1660 = load i8, i8* %1659, align 1
  %1661 = icmp eq i8 %1660, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %BRANCH_TAKEN, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1664 = select i1 %1661, i64 %1654, i64 %1656
  store i64 %1664, i64* %1663, align 8
  store %struct.Memory* %loadMem_408598, %struct.Memory** %MEMORY
  %loadBr_408598 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408598 = icmp eq i8 %loadBr_408598, 1
  br i1 %cmpBr_408598, label %block_.L_408652, label %block_40859e

block_40859e:                                     ; preds = %block_.L_408584
  %loadMem_40859e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %PC.i773
  %1672 = add i64 %1671, 10
  store i64 %1672, i64* %PC.i773
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i774, align 8
  store %struct.Memory* %loadMem_40859e, %struct.Memory** %MEMORY
  %loadMem_4085a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 5
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RCX.i771 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %RBP.i772
  %1683 = sub i64 %1682, 8
  %1684 = load i64, i64* %PC.i770
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC.i770
  %1686 = inttoptr i64 %1683 to i32*
  %1687 = load i32, i32* %1686
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RCX.i771, align 8
  store %struct.Memory* %loadMem_4085a8, %struct.Memory** %MEMORY
  %loadMem_4085ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 5
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RCX.i769 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %RCX.i769
  %1696 = load i64, i64* %PC.i768
  %1697 = add i64 %1696, 3
  store i64 %1697, i64* %PC.i768
  %1698 = trunc i64 %1695 to i32
  %1699 = add i32 20, %1698
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RCX.i769, align 8
  %1701 = icmp ult i32 %1699, %1698
  %1702 = icmp ult i32 %1699, 20
  %1703 = or i1 %1701, %1702
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1704, i8* %1705, align 1
  %1706 = and i32 %1699, 255
  %1707 = call i32 @llvm.ctpop.i32(i32 %1706)
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1710, i8* %1711, align 1
  %1712 = xor i64 20, %1695
  %1713 = trunc i64 %1712 to i32
  %1714 = xor i32 %1713, %1699
  %1715 = lshr i32 %1714, 4
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1717, i8* %1718, align 1
  %1719 = icmp eq i32 %1699, 0
  %1720 = zext i1 %1719 to i8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1720, i8* %1721, align 1
  %1722 = lshr i32 %1699, 31
  %1723 = trunc i32 %1722 to i8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1723, i8* %1724, align 1
  %1725 = lshr i32 %1698, 31
  %1726 = xor i32 %1722, %1725
  %1727 = add i32 %1726, %1722
  %1728 = icmp eq i32 %1727, 2
  %1729 = zext i1 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1729, i8* %1730, align 1
  store %struct.Memory* %loadMem_4085ab, %struct.Memory** %MEMORY
  %loadMem_4085ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 5
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %ECX.i766 = bitcast %union.anon* %1736 to i32*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 7
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RDX.i767 = bitcast %union.anon* %1739 to i64*
  %1740 = load i32, i32* %ECX.i766
  %1741 = zext i32 %1740 to i64
  %1742 = load i64, i64* %PC.i765
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC.i765
  %1744 = shl i64 %1741, 32
  %1745 = ashr exact i64 %1744, 32
  store i64 %1745, i64* %RDX.i767, align 8
  store %struct.Memory* %loadMem_4085ae, %struct.Memory** %MEMORY
  %loadMem_4085b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 7
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RDX.i764 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %RDX.i764
  %1753 = mul i64 %1752, 4
  %1754 = add i64 %1753, 11187184
  %1755 = load i64, i64* %PC.i763
  %1756 = add i64 %1755, 8
  store i64 %1756, i64* %PC.i763
  %1757 = inttoptr i64 %1754 to i32*
  %1758 = load i32, i32* %1757
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RDX.i764, align 8
  store %struct.Memory* %loadMem_4085b1, %struct.Memory** %MEMORY
  %loadMem_4085b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 7
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RDX.i762 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RDX.i762
  %1767 = load i64, i64* %PC.i761
  %1768 = add i64 %1767, 7
  store i64 %1768, i64* %PC.i761
  %1769 = sext i64 %1766 to i128
  %1770 = and i128 %1769, -18446744073709551616
  %1771 = zext i64 %1766 to i128
  %1772 = or i128 %1770, %1771
  %1773 = mul i128 744, %1772
  %1774 = trunc i128 %1773 to i64
  store i64 %1774, i64* %RDX.i762, align 8
  %1775 = sext i64 %1774 to i128
  %1776 = icmp ne i128 %1775, %1773
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1777, i8* %1778, align 1
  %1779 = trunc i128 %1773 to i32
  %1780 = and i32 %1779, 255
  %1781 = call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1784, i8* %1785, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1787, align 1
  %1788 = lshr i64 %1774, 63
  %1789 = trunc i64 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1789, i8* %1790, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1777, i8* %1791, align 1
  store %struct.Memory* %loadMem_4085b9, %struct.Memory** %MEMORY
  %loadMem_4085c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 7
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RDX.i760 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RAX.i759
  %1802 = load i64, i64* %RDX.i760
  %1803 = load i64, i64* %PC.i758
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC.i758
  %1805 = add i64 %1802, %1801
  store i64 %1805, i64* %RAX.i759, align 8
  %1806 = icmp ult i64 %1805, %1801
  %1807 = icmp ult i64 %1805, %1802
  %1808 = or i1 %1806, %1807
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1809, i8* %1810, align 1
  %1811 = trunc i64 %1805 to i32
  %1812 = and i32 %1811, 255
  %1813 = call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1816, i8* %1817, align 1
  %1818 = xor i64 %1802, %1801
  %1819 = xor i64 %1818, %1805
  %1820 = lshr i64 %1819, 4
  %1821 = trunc i64 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1822, i8* %1823, align 1
  %1824 = icmp eq i64 %1805, 0
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1825, i8* %1826, align 1
  %1827 = lshr i64 %1805, 63
  %1828 = trunc i64 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1828, i8* %1829, align 1
  %1830 = lshr i64 %1801, 63
  %1831 = lshr i64 %1802, 63
  %1832 = xor i64 %1827, %1830
  %1833 = xor i64 %1827, %1831
  %1834 = add i64 %1832, %1833
  %1835 = icmp eq i64 %1834, 2
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1836, i8* %1837, align 1
  store %struct.Memory* %loadMem_4085c0, %struct.Memory** %MEMORY
  %loadMem_4085c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 1
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 5
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RCX.i757 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %RAX.i756
  %1848 = add i64 %1847, 740
  %1849 = load i64, i64* %PC.i755
  %1850 = add i64 %1849, 6
  store i64 %1850, i64* %PC.i755
  %1851 = inttoptr i64 %1848 to i32*
  %1852 = load i32, i32* %1851
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RCX.i757, align 8
  store %struct.Memory* %loadMem_4085c3, %struct.Memory** %MEMORY
  %loadMem_4085c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %ECX.i754 = bitcast %union.anon* %1859 to i32*
  %1860 = load i32, i32* %ECX.i754
  %1861 = zext i32 %1860 to i64
  %1862 = load i64, i64* %PC.i753
  %1863 = add i64 %1862, 7
  store i64 %1863, i64* %PC.i753
  %1864 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %1865 = sub i32 %1860, %1864
  %1866 = icmp ult i32 %1860, %1864
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1867, i8* %1868, align 1
  %1869 = and i32 %1865, 255
  %1870 = call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1873, i8* %1874, align 1
  %1875 = xor i32 %1864, %1860
  %1876 = xor i32 %1875, %1865
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1879, i8* %1880, align 1
  %1881 = icmp eq i32 %1865, 0
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1882, i8* %1883, align 1
  %1884 = lshr i32 %1865, 31
  %1885 = trunc i32 %1884 to i8
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1885, i8* %1886, align 1
  %1887 = lshr i32 %1860, 31
  %1888 = lshr i32 %1864, 31
  %1889 = xor i32 %1888, %1887
  %1890 = xor i32 %1884, %1887
  %1891 = add i32 %1890, %1889
  %1892 = icmp eq i32 %1891, 2
  %1893 = zext i1 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1893, i8* %1894, align 1
  store %struct.Memory* %loadMem_4085c9, %struct.Memory** %MEMORY
  %loadMem_4085d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %PC.i752
  %1899 = add i64 %1898, 130
  %1900 = load i64, i64* %PC.i752
  %1901 = add i64 %1900, 6
  %1902 = load i64, i64* %PC.i752
  %1903 = add i64 %1902, 6
  store i64 %1903, i64* %PC.i752
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1905 = load i8, i8* %1904, align 1
  store i8 %1905, i8* %BRANCH_TAKEN, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1907 = icmp ne i8 %1905, 0
  %1908 = select i1 %1907, i64 %1899, i64 %1901
  store i64 %1908, i64* %1906, align 8
  store %struct.Memory* %loadMem_4085d0, %struct.Memory** %MEMORY
  %loadBr_4085d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4085d0 = icmp eq i8 %loadBr_4085d0, 1
  br i1 %cmpBr_4085d0, label %block_.L_408652, label %block_4085d6

block_4085d6:                                     ; preds = %block_40859e
  %loadMem_4085d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 1
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %PC.i750
  %1916 = add i64 %1915, 10
  store i64 %1916, i64* %PC.i750
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i751, align 8
  store %struct.Memory* %loadMem_4085d6, %struct.Memory** %MEMORY
  %loadMem_4085e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i749
  %1927 = sub i64 %1926, 8
  %1928 = load i64, i64* %PC.i747
  %1929 = add i64 %1928, 3
  store i64 %1929, i64* %PC.i747
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i748, align 8
  store %struct.Memory* %loadMem_4085e0, %struct.Memory** %MEMORY
  %loadMem_4085e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 5
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %1938 to i64*
  %1939 = load i64, i64* %RCX.i746
  %1940 = load i64, i64* %PC.i745
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %PC.i745
  %1942 = trunc i64 %1939 to i32
  %1943 = add i32 20, %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i746, align 8
  %1945 = icmp ult i32 %1943, %1942
  %1946 = icmp ult i32 %1943, 20
  %1947 = or i1 %1945, %1946
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1948, i8* %1949, align 1
  %1950 = and i32 %1943, 255
  %1951 = call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1954, i8* %1955, align 1
  %1956 = xor i64 20, %1939
  %1957 = trunc i64 %1956 to i32
  %1958 = xor i32 %1957, %1943
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1961, i8* %1962, align 1
  %1963 = icmp eq i32 %1943, 0
  %1964 = zext i1 %1963 to i8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1964, i8* %1965, align 1
  %1966 = lshr i32 %1943, 31
  %1967 = trunc i32 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1967, i8* %1968, align 1
  %1969 = lshr i32 %1942, 31
  %1970 = xor i32 %1966, %1969
  %1971 = add i32 %1970, %1966
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1973, i8* %1974, align 1
  store %struct.Memory* %loadMem_4085e3, %struct.Memory** %MEMORY
  %loadMem_4085e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 5
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %ECX.i743 = bitcast %union.anon* %1980 to i32*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 7
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %1983 to i64*
  %1984 = load i32, i32* %ECX.i743
  %1985 = zext i32 %1984 to i64
  %1986 = load i64, i64* %PC.i742
  %1987 = add i64 %1986, 3
  store i64 %1987, i64* %PC.i742
  %1988 = shl i64 %1985, 32
  %1989 = ashr exact i64 %1988, 32
  store i64 %1989, i64* %RDX.i744, align 8
  store %struct.Memory* %loadMem_4085e6, %struct.Memory** %MEMORY
  %loadMem_4085e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 5
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RCX.i740 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 7
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RDX.i741 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RDX.i741
  %2000 = mul i64 %1999, 4
  %2001 = add i64 %2000, 11187184
  %2002 = load i64, i64* %PC.i739
  %2003 = add i64 %2002, 7
  store i64 %2003, i64* %PC.i739
  %2004 = inttoptr i64 %2001 to i32*
  %2005 = load i32, i32* %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RCX.i740, align 8
  store %struct.Memory* %loadMem_4085e9, %struct.Memory** %MEMORY
  %loadMem_4085f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 7
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RDX.i737 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i738
  %2017 = sub i64 %2016, 4
  %2018 = load i64, i64* %PC.i736
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i736
  %2020 = inttoptr i64 %2017 to i32*
  %2021 = load i32, i32* %2020
  %2022 = sext i32 %2021 to i64
  store i64 %2022, i64* %RDX.i737, align 8
  store %struct.Memory* %loadMem_4085f0, %struct.Memory** %MEMORY
  %loadMem_4085f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 7
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RDX.i735 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RDX.i735
  %2030 = load i64, i64* %PC.i734
  %2031 = add i64 %2030, 7
  store i64 %2031, i64* %PC.i734
  %2032 = sext i64 %2029 to i128
  %2033 = and i128 %2032, -18446744073709551616
  %2034 = zext i64 %2029 to i128
  %2035 = or i128 %2033, %2034
  %2036 = mul i128 744, %2035
  %2037 = trunc i128 %2036 to i64
  store i64 %2037, i64* %RDX.i735, align 8
  %2038 = sext i64 %2037 to i128
  %2039 = icmp ne i128 %2038, %2036
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2040, i8* %2041, align 1
  %2042 = trunc i128 %2036 to i32
  %2043 = and i32 %2042, 255
  %2044 = call i32 @llvm.ctpop.i32(i32 %2043)
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  %2047 = xor i8 %2046, 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2047, i8* %2048, align 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2049, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2050, align 1
  %2051 = lshr i64 %2037, 63
  %2052 = trunc i64 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2052, i8* %2053, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2040, i8* %2054, align 1
  store %struct.Memory* %loadMem_4085f4, %struct.Memory** %MEMORY
  %loadMem_4085fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 9
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RSI.i733 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RAX.i732
  %2065 = load i64, i64* %PC.i731
  %2066 = add i64 %2065, 3
  store i64 %2066, i64* %PC.i731
  store i64 %2064, i64* %RSI.i733, align 8
  store %struct.Memory* %loadMem_4085fb, %struct.Memory** %MEMORY
  %loadMem_4085fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 7
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 9
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RSI.i730 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RSI.i730
  %2077 = load i64, i64* %RDX.i729
  %2078 = load i64, i64* %PC.i728
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %PC.i728
  %2080 = add i64 %2077, %2076
  store i64 %2080, i64* %RSI.i730, align 8
  %2081 = icmp ult i64 %2080, %2076
  %2082 = icmp ult i64 %2080, %2077
  %2083 = or i1 %2081, %2082
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2084, i8* %2085, align 1
  %2086 = trunc i64 %2080 to i32
  %2087 = and i32 %2086, 255
  %2088 = call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2091, i8* %2092, align 1
  %2093 = xor i64 %2077, %2076
  %2094 = xor i64 %2093, %2080
  %2095 = lshr i64 %2094, 4
  %2096 = trunc i64 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2097, i8* %2098, align 1
  %2099 = icmp eq i64 %2080, 0
  %2100 = zext i1 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i64 %2080, 63
  %2103 = trunc i64 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2103, i8* %2104, align 1
  %2105 = lshr i64 %2076, 63
  %2106 = lshr i64 %2077, 63
  %2107 = xor i64 %2102, %2105
  %2108 = xor i64 %2102, %2106
  %2109 = add i64 %2107, %2108
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2111, i8* %2112, align 1
  store %struct.Memory* %loadMem_4085fe, %struct.Memory** %MEMORY
  %loadMem_408601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 7
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 15
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RBP.i727
  %2123 = sub i64 %2122, 4
  %2124 = load i64, i64* %PC.i725
  %2125 = add i64 %2124, 4
  store i64 %2125, i64* %PC.i725
  %2126 = inttoptr i64 %2123 to i32*
  %2127 = load i32, i32* %2126
  %2128 = sext i32 %2127 to i64
  store i64 %2128, i64* %RDX.i726, align 8
  store %struct.Memory* %loadMem_408601, %struct.Memory** %MEMORY
  %loadMem_408605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 7
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RDX.i724 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RDX.i724
  %2136 = load i64, i64* %PC.i723
  %2137 = add i64 %2136, 7
  store i64 %2137, i64* %PC.i723
  %2138 = sext i64 %2135 to i128
  %2139 = and i128 %2138, -18446744073709551616
  %2140 = zext i64 %2135 to i128
  %2141 = or i128 %2139, %2140
  %2142 = mul i128 744, %2141
  %2143 = trunc i128 %2142 to i64
  store i64 %2143, i64* %RDX.i724, align 8
  %2144 = sext i64 %2143 to i128
  %2145 = icmp ne i128 %2144, %2142
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2146, i8* %2147, align 1
  %2148 = trunc i128 %2142 to i32
  %2149 = and i32 %2148, 255
  %2150 = call i32 @llvm.ctpop.i32(i32 %2149)
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  %2153 = xor i8 %2152, 1
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2153, i8* %2154, align 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2155, align 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2156, align 1
  %2157 = lshr i64 %2143, 63
  %2158 = trunc i64 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2158, i8* %2159, align 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2146, i8* %2160, align 1
  store %struct.Memory* %loadMem_408605, %struct.Memory** %MEMORY
  %loadMem_40860c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 11
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RDI.i722 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RAX.i721
  %2171 = load i64, i64* %PC.i720
  %2172 = add i64 %2171, 3
  store i64 %2172, i64* %PC.i720
  store i64 %2170, i64* %RDI.i722, align 8
  store %struct.Memory* %loadMem_40860c, %struct.Memory** %MEMORY
  %loadMem_40860f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 7
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 11
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RDI.i719 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RDI.i719
  %2183 = load i64, i64* %RDX.i718
  %2184 = load i64, i64* %PC.i717
  %2185 = add i64 %2184, 3
  store i64 %2185, i64* %PC.i717
  %2186 = add i64 %2183, %2182
  store i64 %2186, i64* %RDI.i719, align 8
  %2187 = icmp ult i64 %2186, %2182
  %2188 = icmp ult i64 %2186, %2183
  %2189 = or i1 %2187, %2188
  %2190 = zext i1 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2190, i8* %2191, align 1
  %2192 = trunc i64 %2186 to i32
  %2193 = and i32 %2192, 255
  %2194 = call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2197, i8* %2198, align 1
  %2199 = xor i64 %2183, %2182
  %2200 = xor i64 %2199, %2186
  %2201 = lshr i64 %2200, 4
  %2202 = trunc i64 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2203, i8* %2204, align 1
  %2205 = icmp eq i64 %2186, 0
  %2206 = zext i1 %2205 to i8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2206, i8* %2207, align 1
  %2208 = lshr i64 %2186, 63
  %2209 = trunc i64 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2209, i8* %2210, align 1
  %2211 = lshr i64 %2182, 63
  %2212 = lshr i64 %2183, 63
  %2213 = xor i64 %2208, %2211
  %2214 = xor i64 %2208, %2212
  %2215 = add i64 %2213, %2214
  %2216 = icmp eq i64 %2215, 2
  %2217 = zext i1 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2217, i8* %2218, align 1
  store %struct.Memory* %loadMem_40860f, %struct.Memory** %MEMORY
  %loadMem_408612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 17
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %R8D.i715 = bitcast %union.anon* %2224 to i32*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 11
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RDI.i716 = bitcast %union.anon* %2227 to i64*
  %2228 = bitcast i32* %R8D.i715 to i64*
  %2229 = load i64, i64* %RDI.i716
  %2230 = add i64 %2229, 96
  %2231 = load i64, i64* %PC.i714
  %2232 = add i64 %2231, 4
  store i64 %2232, i64* %PC.i714
  %2233 = inttoptr i64 %2230 to i32*
  %2234 = load i32, i32* %2233
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %2228, align 8
  store %struct.Memory* %loadMem_408612, %struct.Memory** %MEMORY
  %loadMem_408616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 17
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %R8D.i712 = bitcast %union.anon* %2241 to i32*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 19
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %R9D.i713 = bitcast %union.anon* %2244 to i32*
  %2245 = bitcast i32* %R9D.i713 to i64*
  %2246 = load i32, i32* %R8D.i712
  %2247 = zext i32 %2246 to i64
  %2248 = load i64, i64* %PC.i711
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC.i711
  %2250 = and i64 %2247, 4294967295
  store i64 %2250, i64* %2245, align 8
  store %struct.Memory* %loadMem_408616, %struct.Memory** %MEMORY
  %loadMem_408619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 19
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %R9D.i710 = bitcast %union.anon* %2256 to i32*
  %2257 = bitcast i32* %R9D.i710 to i64*
  %2258 = load i32, i32* %R9D.i710
  %2259 = zext i32 %2258 to i64
  %2260 = load i64, i64* %PC.i709
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %PC.i709
  %2262 = add i32 1, %2258
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %2257, align 8
  %2264 = icmp ult i32 %2262, %2258
  %2265 = icmp ult i32 %2262, 1
  %2266 = or i1 %2264, %2265
  %2267 = zext i1 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2267, i8* %2268, align 1
  %2269 = and i32 %2262, 255
  %2270 = call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2273, i8* %2274, align 1
  %2275 = xor i64 1, %2259
  %2276 = trunc i64 %2275 to i32
  %2277 = xor i32 %2276, %2262
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2280, i8* %2281, align 1
  %2282 = icmp eq i32 %2262, 0
  %2283 = zext i1 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2283, i8* %2284, align 1
  %2285 = lshr i32 %2262, 31
  %2286 = trunc i32 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2286, i8* %2287, align 1
  %2288 = lshr i32 %2258, 31
  %2289 = xor i32 %2285, %2288
  %2290 = add i32 %2289, %2285
  %2291 = icmp eq i32 %2290, 2
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2292, i8* %2293, align 1
  store %struct.Memory* %loadMem_408619, %struct.Memory** %MEMORY
  %loadMem_40861d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 19
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %R9D.i707 = bitcast %union.anon* %2299 to i32*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 11
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RDI.i708 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RDI.i708
  %2304 = add i64 %2303, 96
  %2305 = load i32, i32* %R9D.i707
  %2306 = zext i32 %2305 to i64
  %2307 = load i64, i64* %PC.i706
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC.i706
  %2309 = inttoptr i64 %2304 to i32*
  store i32 %2305, i32* %2309
  store %struct.Memory* %loadMem_40861d, %struct.Memory** %MEMORY
  %loadMem_408621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 17
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %R8D.i704 = bitcast %union.anon* %2315 to i32*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 7
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %2318 to i64*
  %2319 = load i32, i32* %R8D.i704
  %2320 = zext i32 %2319 to i64
  %2321 = load i64, i64* %PC.i703
  %2322 = add i64 %2321, 3
  store i64 %2322, i64* %PC.i703
  %2323 = shl i64 %2320, 32
  %2324 = ashr exact i64 %2323, 32
  store i64 %2324, i64* %RDX.i705, align 8
  store %struct.Memory* %loadMem_408621, %struct.Memory** %MEMORY
  %loadMem_408624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 5
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %ECX.i700 = bitcast %union.anon* %2330 to i32*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 7
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 9
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RSI.i702
  %2338 = load i64, i64* %RDX.i701
  %2339 = mul i64 %2338, 4
  %2340 = add i64 %2337, 100
  %2341 = add i64 %2340, %2339
  %2342 = load i32, i32* %ECX.i700
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC.i699
  %2345 = add i64 %2344, 4
  store i64 %2345, i64* %PC.i699
  %2346 = inttoptr i64 %2341 to i32*
  store i32 %2342, i32* %2346
  store %struct.Memory* %loadMem_408624, %struct.Memory** %MEMORY
  %loadMem_408628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 5
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %PC.i697
  %2354 = add i64 %2353, 7
  store i64 %2354, i64* %PC.i697
  %2355 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RCX.i698, align 8
  store %struct.Memory* %loadMem_408628, %struct.Memory** %MEMORY
  %loadMem_40862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 17
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %R8D.i695 = bitcast %union.anon* %2362 to i32*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 15
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2365 to i64*
  %2366 = bitcast i32* %R8D.i695 to i64*
  %2367 = load i64, i64* %RBP.i696
  %2368 = sub i64 %2367, 8
  %2369 = load i64, i64* %PC.i694
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %PC.i694
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %2366, align 8
  store %struct.Memory* %loadMem_40862f, %struct.Memory** %MEMORY
  %loadMem_408633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 17
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %R8D.i693 = bitcast %union.anon* %2379 to i32*
  %2380 = bitcast i32* %R8D.i693 to i64*
  %2381 = load i32, i32* %R8D.i693
  %2382 = zext i32 %2381 to i64
  %2383 = load i64, i64* %PC.i692
  %2384 = add i64 %2383, 4
  store i64 %2384, i64* %PC.i692
  %2385 = add i32 20, %2381
  %2386 = zext i32 %2385 to i64
  store i64 %2386, i64* %2380, align 8
  %2387 = icmp ult i32 %2385, %2381
  %2388 = icmp ult i32 %2385, 20
  %2389 = or i1 %2387, %2388
  %2390 = zext i1 %2389 to i8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2390, i8* %2391, align 1
  %2392 = and i32 %2385, 255
  %2393 = call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2396, i8* %2397, align 1
  %2398 = xor i64 20, %2382
  %2399 = trunc i64 %2398 to i32
  %2400 = xor i32 %2399, %2385
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2403, i8* %2404, align 1
  %2405 = icmp eq i32 %2385, 0
  %2406 = zext i1 %2405 to i8
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2406, i8* %2407, align 1
  %2408 = lshr i32 %2385, 31
  %2409 = trunc i32 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2409, i8* %2410, align 1
  %2411 = lshr i32 %2381, 31
  %2412 = xor i32 %2408, %2411
  %2413 = add i32 %2412, %2408
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2415, i8* %2416, align 1
  store %struct.Memory* %loadMem_408633, %struct.Memory** %MEMORY
  %loadMem_408637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 17
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %R8D.i690 = bitcast %union.anon* %2422 to i32*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 7
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %2425 to i64*
  %2426 = load i32, i32* %R8D.i690
  %2427 = zext i32 %2426 to i64
  %2428 = load i64, i64* %PC.i689
  %2429 = add i64 %2428, 3
  store i64 %2429, i64* %PC.i689
  %2430 = shl i64 %2427, 32
  %2431 = ashr exact i64 %2430, 32
  store i64 %2431, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_408637, %struct.Memory** %MEMORY
  %loadMem_40863a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 7
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RDX.i688 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RDX.i688
  %2439 = mul i64 %2438, 4
  %2440 = add i64 %2439, 11187184
  %2441 = load i64, i64* %PC.i687
  %2442 = add i64 %2441, 8
  store i64 %2442, i64* %PC.i687
  %2443 = inttoptr i64 %2440 to i32*
  %2444 = load i32, i32* %2443
  %2445 = sext i32 %2444 to i64
  store i64 %2445, i64* %RDX.i688, align 8
  store %struct.Memory* %loadMem_40863a, %struct.Memory** %MEMORY
  %loadMem_408642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RDX.i686 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RDX.i686
  %2453 = load i64, i64* %PC.i685
  %2454 = add i64 %2453, 7
  store i64 %2454, i64* %PC.i685
  %2455 = sext i64 %2452 to i128
  %2456 = and i128 %2455, -18446744073709551616
  %2457 = zext i64 %2452 to i128
  %2458 = or i128 %2456, %2457
  %2459 = mul i128 744, %2458
  %2460 = trunc i128 %2459 to i64
  store i64 %2460, i64* %RDX.i686, align 8
  %2461 = sext i64 %2460 to i128
  %2462 = icmp ne i128 %2461, %2459
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2463, i8* %2464, align 1
  %2465 = trunc i128 %2459 to i32
  %2466 = and i32 %2465, 255
  %2467 = call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2470, i8* %2471, align 1
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2472, align 1
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2473, align 1
  %2474 = lshr i64 %2460, 63
  %2475 = trunc i64 %2474 to i8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2475, i8* %2476, align 1
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2463, i8* %2477, align 1
  store %struct.Memory* %loadMem_408642, %struct.Memory** %MEMORY
  %loadMem_408649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 7
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RAX.i683
  %2488 = load i64, i64* %RDX.i684
  %2489 = load i64, i64* %PC.i682
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC.i682
  %2491 = add i64 %2488, %2487
  store i64 %2491, i64* %RAX.i683, align 8
  %2492 = icmp ult i64 %2491, %2487
  %2493 = icmp ult i64 %2491, %2488
  %2494 = or i1 %2492, %2493
  %2495 = zext i1 %2494 to i8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2495, i8* %2496, align 1
  %2497 = trunc i64 %2491 to i32
  %2498 = and i32 %2497, 255
  %2499 = call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2502, i8* %2503, align 1
  %2504 = xor i64 %2488, %2487
  %2505 = xor i64 %2504, %2491
  %2506 = lshr i64 %2505, 4
  %2507 = trunc i64 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2508, i8* %2509, align 1
  %2510 = icmp eq i64 %2491, 0
  %2511 = zext i1 %2510 to i8
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2511, i8* %2512, align 1
  %2513 = lshr i64 %2491, 63
  %2514 = trunc i64 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2514, i8* %2515, align 1
  %2516 = lshr i64 %2487, 63
  %2517 = lshr i64 %2488, 63
  %2518 = xor i64 %2513, %2516
  %2519 = xor i64 %2513, %2517
  %2520 = add i64 %2518, %2519
  %2521 = icmp eq i64 %2520, 2
  %2522 = zext i1 %2521 to i8
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2522, i8* %2523, align 1
  store %struct.Memory* %loadMem_408649, %struct.Memory** %MEMORY
  %loadMem_40864c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 5
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %ECX.i680 = bitcast %union.anon* %2529 to i32*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RAX.i681
  %2534 = add i64 %2533, 740
  %2535 = load i32, i32* %ECX.i680
  %2536 = zext i32 %2535 to i64
  %2537 = load i64, i64* %PC.i679
  %2538 = add i64 %2537, 6
  store i64 %2538, i64* %PC.i679
  %2539 = inttoptr i64 %2534 to i32*
  store i32 %2535, i32* %2539
  store %struct.Memory* %loadMem_40864c, %struct.Memory** %MEMORY
  br label %block_.L_408652

block_.L_408652:                                  ; preds = %block_4085d6, %block_40859e, %block_.L_408584
  %loadMem_408652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %PC.i678
  %2544 = add i64 %2543, 5
  %2545 = load i64, i64* %PC.i678
  %2546 = add i64 %2545, 5
  store i64 %2546, i64* %PC.i678
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2544, i64* %2547, align 8
  store %struct.Memory* %loadMem_408652, %struct.Memory** %MEMORY
  br label %block_.L_408657

block_.L_408657:                                  ; preds = %block_.L_408652, %block_.L_408547
  %loadMem_408657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 1
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 15
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2556 to i64*
  %2557 = load i64, i64* %RBP.i677
  %2558 = sub i64 %2557, 8
  %2559 = load i64, i64* %PC.i675
  %2560 = add i64 %2559, 3
  store i64 %2560, i64* %PC.i675
  %2561 = inttoptr i64 %2558 to i32*
  %2562 = load i32, i32* %2561
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_408657, %struct.Memory** %MEMORY
  %loadMem_40865a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RAX.i674
  %2571 = load i64, i64* %PC.i673
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %PC.i673
  %2573 = trunc i64 %2570 to i32
  %2574 = sub i32 %2573, 1
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RAX.i674, align 8
  %2576 = icmp ult i32 %2573, 1
  %2577 = zext i1 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2577, i8* %2578, align 1
  %2579 = and i32 %2574, 255
  %2580 = call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2583, i8* %2584, align 1
  %2585 = xor i64 1, %2570
  %2586 = trunc i64 %2585 to i32
  %2587 = xor i32 %2586, %2574
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2590, i8* %2591, align 1
  %2592 = icmp eq i32 %2574, 0
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2593, i8* %2594, align 1
  %2595 = lshr i32 %2574, 31
  %2596 = trunc i32 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2596, i8* %2597, align 1
  %2598 = lshr i32 %2573, 31
  %2599 = xor i32 %2595, %2598
  %2600 = add i32 %2599, %2598
  %2601 = icmp eq i32 %2600, 2
  %2602 = zext i1 %2601 to i8
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2602, i8* %2603, align 1
  store %struct.Memory* %loadMem_40865a, %struct.Memory** %MEMORY
  %loadMem_40865d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %EAX.i671 = bitcast %union.anon* %2609 to i32*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 5
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %2612 to i64*
  %2613 = load i32, i32* %EAX.i671
  %2614 = zext i32 %2613 to i64
  %2615 = load i64, i64* %PC.i670
  %2616 = add i64 %2615, 3
  store i64 %2616, i64* %PC.i670
  %2617 = shl i64 %2614, 32
  %2618 = ashr exact i64 %2617, 32
  store i64 %2618, i64* %RCX.i672, align 8
  store %struct.Memory* %loadMem_40865d, %struct.Memory** %MEMORY
  %loadMem_408660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 5
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %RCX.i669
  %2629 = add i64 %2628, 12099168
  %2630 = load i64, i64* %PC.i667
  %2631 = add i64 %2630, 8
  store i64 %2631, i64* %PC.i667
  %2632 = inttoptr i64 %2629 to i8*
  %2633 = load i8, i8* %2632
  %2634 = zext i8 %2633 to i64
  store i64 %2634, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_408660, %struct.Memory** %MEMORY
  %loadMem_408668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 1
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %EAX.i666 = bitcast %union.anon* %2640 to i32*
  %2641 = load i32, i32* %EAX.i666
  %2642 = zext i32 %2641 to i64
  %2643 = load i64, i64* %PC.i665
  %2644 = add i64 %2643, 3
  store i64 %2644, i64* %PC.i665
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2645, align 1
  %2646 = and i32 %2641, 255
  %2647 = call i32 @llvm.ctpop.i32(i32 %2646)
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = xor i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2650, i8* %2651, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2652, align 1
  %2653 = icmp eq i32 %2641, 0
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2654, i8* %2655, align 1
  %2656 = lshr i32 %2641, 31
  %2657 = trunc i32 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2657, i8* %2658, align 1
  %2659 = lshr i32 %2641, 31
  %2660 = xor i32 %2656, %2659
  %2661 = add i32 %2660, %2659
  %2662 = icmp eq i32 %2661, 2
  %2663 = zext i1 %2662 to i8
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2663, i8* %2664, align 1
  store %struct.Memory* %loadMem_408668, %struct.Memory** %MEMORY
  %loadMem_40866b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %PC.i664
  %2669 = add i64 %2668, 190
  %2670 = load i64, i64* %PC.i664
  %2671 = add i64 %2670, 6
  %2672 = load i64, i64* %PC.i664
  %2673 = add i64 %2672, 6
  store i64 %2673, i64* %PC.i664
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2675 = load i8, i8* %2674, align 1
  %2676 = icmp eq i8 %2675, 0
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %BRANCH_TAKEN, align 1
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2679 = select i1 %2676, i64 %2669, i64 %2671
  store i64 %2679, i64* %2678, align 8
  store %struct.Memory* %loadMem_40866b, %struct.Memory** %MEMORY
  %loadBr_40866b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40866b = icmp eq i8 %loadBr_40866b, 1
  br i1 %cmpBr_40866b, label %block_.L_408729, label %block_408671

block_408671:                                     ; preds = %block_.L_408657
  %loadMem_408671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i663
  %2690 = sub i64 %2689, 8
  %2691 = load i64, i64* %PC.i661
  %2692 = add i64 %2691, 3
  store i64 %2692, i64* %PC.i661
  %2693 = inttoptr i64 %2690 to i32*
  %2694 = load i32, i32* %2693
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_408671, %struct.Memory** %MEMORY
  %loadMem_408674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 1
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %RAX.i660
  %2703 = load i64, i64* %PC.i659
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %PC.i659
  %2705 = trunc i64 %2702 to i32
  %2706 = sub i32 %2705, 1
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i660, align 8
  %2708 = icmp ult i32 %2705, 1
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2709, i8* %2710, align 1
  %2711 = and i32 %2706, 255
  %2712 = call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2715, i8* %2716, align 1
  %2717 = xor i64 1, %2702
  %2718 = trunc i64 %2717 to i32
  %2719 = xor i32 %2718, %2706
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2722, i8* %2723, align 1
  %2724 = icmp eq i32 %2706, 0
  %2725 = zext i1 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2706, 31
  %2728 = trunc i32 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i32 %2705, 31
  %2731 = xor i32 %2727, %2730
  %2732 = add i32 %2731, %2730
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2734, i8* %2735, align 1
  store %struct.Memory* %loadMem_408674, %struct.Memory** %MEMORY
  %loadMem_408677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %EAX.i657 = bitcast %union.anon* %2741 to i32*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 5
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %2744 to i64*
  %2745 = load i32, i32* %EAX.i657
  %2746 = zext i32 %2745 to i64
  %2747 = load i64, i64* %PC.i656
  %2748 = add i64 %2747, 3
  store i64 %2748, i64* %PC.i656
  %2749 = shl i64 %2746, 32
  %2750 = ashr exact i64 %2749, 32
  store i64 %2750, i64* %RCX.i658, align 8
  store %struct.Memory* %loadMem_408677, %struct.Memory** %MEMORY
  %loadMem_40867a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 1
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 5
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RCX.i655
  %2761 = mul i64 %2760, 4
  %2762 = add i64 %2761, 11185584
  %2763 = load i64, i64* %PC.i653
  %2764 = add i64 %2763, 7
  store i64 %2764, i64* %PC.i653
  %2765 = inttoptr i64 %2762 to i32*
  %2766 = load i32, i32* %2765
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RAX.i654, align 8
  store %struct.Memory* %loadMem_40867a, %struct.Memory** %MEMORY
  %loadMem_408681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 1
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %2773 to i32*
  %2774 = load i32, i32* %EAX.i652
  %2775 = zext i32 %2774 to i64
  %2776 = load i64, i64* %PC.i651
  %2777 = add i64 %2776, 7
  store i64 %2777, i64* %PC.i651
  %2778 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %2779 = sub i32 %2774, %2778
  %2780 = icmp ult i32 %2774, %2778
  %2781 = zext i1 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2781, i8* %2782, align 1
  %2783 = and i32 %2779, 255
  %2784 = call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2787, i8* %2788, align 1
  %2789 = xor i32 %2778, %2774
  %2790 = xor i32 %2789, %2779
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2793, i8* %2794, align 1
  %2795 = icmp eq i32 %2779, 0
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2796, i8* %2797, align 1
  %2798 = lshr i32 %2779, 31
  %2799 = trunc i32 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2799, i8* %2800, align 1
  %2801 = lshr i32 %2774, 31
  %2802 = lshr i32 %2778, 31
  %2803 = xor i32 %2802, %2801
  %2804 = xor i32 %2798, %2801
  %2805 = add i32 %2804, %2803
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2807, i8* %2808, align 1
  store %struct.Memory* %loadMem_408681, %struct.Memory** %MEMORY
  %loadMem_408688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %PC.i650
  %2813 = add i64 %2812, 161
  %2814 = load i64, i64* %PC.i650
  %2815 = add i64 %2814, 6
  %2816 = load i64, i64* %PC.i650
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC.i650
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2819 = load i8, i8* %2818, align 1
  store i8 %2819, i8* %BRANCH_TAKEN, align 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2821 = icmp ne i8 %2819, 0
  %2822 = select i1 %2821, i64 %2813, i64 %2815
  store i64 %2822, i64* %2820, align 8
  store %struct.Memory* %loadMem_408688, %struct.Memory** %MEMORY
  %loadBr_408688 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408688 = icmp eq i8 %loadBr_408688, 1
  br i1 %cmpBr_408688, label %block_.L_408729, label %block_40868e

block_40868e:                                     ; preds = %block_408671
  %loadMem_40868e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2825 to i64*
  %2826 = load i64, i64* %PC.i649
  %2827 = add i64 %2826, 5
  %2828 = load i64, i64* %PC.i649
  %2829 = add i64 %2828, 5
  store i64 %2829, i64* %PC.i649
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2827, i64* %2830, align 8
  store %struct.Memory* %loadMem_40868e, %struct.Memory** %MEMORY
  br label %block_.L_408693

block_.L_408693:                                  ; preds = %block_40868e
  %loadMem_408693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 1
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %PC.i647
  %2838 = add i64 %2837, 10
  store i64 %2838, i64* %PC.i647
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_408693, %struct.Memory** %MEMORY
  %loadMem_40869d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 5
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i646
  %2849 = sub i64 %2848, 4
  %2850 = load i64, i64* %PC.i644
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i644
  %2852 = inttoptr i64 %2849 to i32*
  %2853 = load i32, i32* %2852
  %2854 = sext i32 %2853 to i64
  store i64 %2854, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_40869d, %struct.Memory** %MEMORY
  %loadMem_4086a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %RCX.i643
  %2862 = load i64, i64* %PC.i642
  %2863 = add i64 %2862, 7
  store i64 %2863, i64* %PC.i642
  %2864 = sext i64 %2861 to i128
  %2865 = and i128 %2864, -18446744073709551616
  %2866 = zext i64 %2861 to i128
  %2867 = or i128 %2865, %2866
  %2868 = mul i128 744, %2867
  %2869 = trunc i128 %2868 to i64
  store i64 %2869, i64* %RCX.i643, align 8
  %2870 = sext i64 %2869 to i128
  %2871 = icmp ne i128 %2870, %2868
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2872, i8* %2873, align 1
  %2874 = trunc i128 %2868 to i32
  %2875 = and i32 %2874, 255
  %2876 = call i32 @llvm.ctpop.i32(i32 %2875)
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2879, i8* %2880, align 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2881, align 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2882, align 1
  %2883 = lshr i64 %2869, 63
  %2884 = trunc i64 %2883 to i8
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2884, i8* %2885, align 1
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2872, i8* %2886, align 1
  store %struct.Memory* %loadMem_4086a1, %struct.Memory** %MEMORY
  %loadMem_4086a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 1
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 5
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %RAX.i640
  %2897 = load i64, i64* %RCX.i641
  %2898 = load i64, i64* %PC.i639
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC.i639
  %2900 = add i64 %2897, %2896
  store i64 %2900, i64* %RAX.i640, align 8
  %2901 = icmp ult i64 %2900, %2896
  %2902 = icmp ult i64 %2900, %2897
  %2903 = or i1 %2901, %2902
  %2904 = zext i1 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2904, i8* %2905, align 1
  %2906 = trunc i64 %2900 to i32
  %2907 = and i32 %2906, 255
  %2908 = call i32 @llvm.ctpop.i32(i32 %2907)
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  %2911 = xor i8 %2910, 1
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2911, i8* %2912, align 1
  %2913 = xor i64 %2897, %2896
  %2914 = xor i64 %2913, %2900
  %2915 = lshr i64 %2914, 4
  %2916 = trunc i64 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2917, i8* %2918, align 1
  %2919 = icmp eq i64 %2900, 0
  %2920 = zext i1 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2920, i8* %2921, align 1
  %2922 = lshr i64 %2900, 63
  %2923 = trunc i64 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2923, i8* %2924, align 1
  %2925 = lshr i64 %2896, 63
  %2926 = lshr i64 %2897, 63
  %2927 = xor i64 %2922, %2925
  %2928 = xor i64 %2922, %2926
  %2929 = add i64 %2927, %2928
  %2930 = icmp eq i64 %2929, 2
  %2931 = zext i1 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2931, i8* %2932, align 1
  store %struct.Memory* %loadMem_4086a8, %struct.Memory** %MEMORY
  %loadMem_4086ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RAX.i638
  %2940 = add i64 %2939, 12
  %2941 = load i64, i64* %PC.i637
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %PC.i637
  %2943 = inttoptr i64 %2940 to i32*
  %2944 = load i32, i32* %2943
  %2945 = sub i32 %2944, 20
  %2946 = icmp ult i32 %2944, 20
  %2947 = zext i1 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2947, i8* %2948, align 1
  %2949 = and i32 %2945, 255
  %2950 = call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2953, i8* %2954, align 1
  %2955 = xor i32 %2944, 20
  %2956 = xor i32 %2955, %2945
  %2957 = lshr i32 %2956, 4
  %2958 = trunc i32 %2957 to i8
  %2959 = and i8 %2958, 1
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2959, i8* %2960, align 1
  %2961 = icmp eq i32 %2945, 0
  %2962 = zext i1 %2961 to i8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2962, i8* %2963, align 1
  %2964 = lshr i32 %2945, 31
  %2965 = trunc i32 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2965, i8* %2966, align 1
  %2967 = lshr i32 %2944, 31
  %2968 = xor i32 %2964, %2967
  %2969 = add i32 %2968, %2967
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2971, i8* %2972, align 1
  store %struct.Memory* %loadMem_4086ab, %struct.Memory** %MEMORY
  %loadMem_4086af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %PC.i636
  %2977 = add i64 %2976, 61
  %2978 = load i64, i64* %PC.i636
  %2979 = add i64 %2978, 6
  %2980 = load i64, i64* %PC.i636
  %2981 = add i64 %2980, 6
  store i64 %2981, i64* %PC.i636
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2983 = load i8, i8* %2982, align 1
  %2984 = icmp ne i8 %2983, 0
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2986 = load i8, i8* %2985, align 1
  %2987 = icmp ne i8 %2986, 0
  %2988 = xor i1 %2984, %2987
  %2989 = xor i1 %2988, true
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %BRANCH_TAKEN, align 1
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2992 = select i1 %2988, i64 %2979, i64 %2977
  store i64 %2992, i64* %2991, align 8
  store %struct.Memory* %loadMem_4086af, %struct.Memory** %MEMORY
  %loadBr_4086af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4086af = icmp eq i8 %loadBr_4086af, 1
  br i1 %cmpBr_4086af, label %block_.L_4086ec, label %block_4086b5

block_4086b5:                                     ; preds = %block_.L_408693
  %loadMem_4086b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 1
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %PC.i634
  %3000 = add i64 %2999, 10
  store i64 %3000, i64* %PC.i634
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_4086b5, %struct.Memory** %MEMORY
  %loadMem_4086bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 5
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 15
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RBP.i633
  %3011 = sub i64 %3010, 8
  %3012 = load i64, i64* %PC.i631
  %3013 = add i64 %3012, 3
  store i64 %3013, i64* %PC.i631
  %3014 = inttoptr i64 %3011 to i32*
  %3015 = load i32, i32* %3014
  %3016 = zext i32 %3015 to i64
  store i64 %3016, i64* %RCX.i632, align 8
  store %struct.Memory* %loadMem_4086bf, %struct.Memory** %MEMORY
  %loadMem_4086c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 5
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RCX.i630
  %3024 = load i64, i64* %PC.i629
  %3025 = add i64 %3024, 3
  store i64 %3025, i64* %PC.i629
  %3026 = trunc i64 %3023 to i32
  %3027 = sub i32 %3026, 1
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RCX.i630, align 8
  %3029 = icmp ult i32 %3026, 1
  %3030 = zext i1 %3029 to i8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3030, i8* %3031, align 1
  %3032 = and i32 %3027, 255
  %3033 = call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3036, i8* %3037, align 1
  %3038 = xor i64 1, %3023
  %3039 = trunc i64 %3038 to i32
  %3040 = xor i32 %3039, %3027
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3043, i8* %3044, align 1
  %3045 = icmp eq i32 %3027, 0
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3046, i8* %3047, align 1
  %3048 = lshr i32 %3027, 31
  %3049 = trunc i32 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3049, i8* %3050, align 1
  %3051 = lshr i32 %3026, 31
  %3052 = xor i32 %3048, %3051
  %3053 = add i32 %3052, %3051
  %3054 = icmp eq i32 %3053, 2
  %3055 = zext i1 %3054 to i8
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3055, i8* %3056, align 1
  store %struct.Memory* %loadMem_4086c2, %struct.Memory** %MEMORY
  %loadMem_4086c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 7
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i628
  %3067 = sub i64 %3066, 4
  %3068 = load i64, i64* %PC.i626
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i626
  %3070 = inttoptr i64 %3067 to i32*
  %3071 = load i32, i32* %3070
  %3072 = sext i32 %3071 to i64
  store i64 %3072, i64* %RDX.i627, align 8
  store %struct.Memory* %loadMem_4086c5, %struct.Memory** %MEMORY
  %loadMem_4086c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 7
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RDX.i625
  %3080 = load i64, i64* %PC.i624
  %3081 = add i64 %3080, 7
  store i64 %3081, i64* %PC.i624
  %3082 = sext i64 %3079 to i128
  %3083 = and i128 %3082, -18446744073709551616
  %3084 = zext i64 %3079 to i128
  %3085 = or i128 %3083, %3084
  %3086 = mul i128 744, %3085
  %3087 = trunc i128 %3086 to i64
  store i64 %3087, i64* %RDX.i625, align 8
  %3088 = sext i64 %3087 to i128
  %3089 = icmp ne i128 %3088, %3086
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3090, i8* %3091, align 1
  %3092 = trunc i128 %3086 to i32
  %3093 = and i32 %3092, 255
  %3094 = call i32 @llvm.ctpop.i32(i32 %3093)
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3097, i8* %3098, align 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3099, align 1
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3100, align 1
  %3101 = lshr i64 %3087, 63
  %3102 = trunc i64 %3101 to i8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3102, i8* %3103, align 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3090, i8* %3104, align 1
  store %struct.Memory* %loadMem_4086c9, %struct.Memory** %MEMORY
  %loadMem_4086d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 1
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 9
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RSI.i623 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %RAX.i622
  %3115 = load i64, i64* %PC.i621
  %3116 = add i64 %3115, 3
  store i64 %3116, i64* %PC.i621
  store i64 %3114, i64* %RSI.i623, align 8
  store %struct.Memory* %loadMem_4086d0, %struct.Memory** %MEMORY
  %loadMem_4086d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 7
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 9
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RSI.i620 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RSI.i620
  %3127 = load i64, i64* %RDX.i619
  %3128 = load i64, i64* %PC.i618
  %3129 = add i64 %3128, 3
  store i64 %3129, i64* %PC.i618
  %3130 = add i64 %3127, %3126
  store i64 %3130, i64* %RSI.i620, align 8
  %3131 = icmp ult i64 %3130, %3126
  %3132 = icmp ult i64 %3130, %3127
  %3133 = or i1 %3131, %3132
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3134, i8* %3135, align 1
  %3136 = trunc i64 %3130 to i32
  %3137 = and i32 %3136, 255
  %3138 = call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3141, i8* %3142, align 1
  %3143 = xor i64 %3127, %3126
  %3144 = xor i64 %3143, %3130
  %3145 = lshr i64 %3144, 4
  %3146 = trunc i64 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3147, i8* %3148, align 1
  %3149 = icmp eq i64 %3130, 0
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3150, i8* %3151, align 1
  %3152 = lshr i64 %3130, 63
  %3153 = trunc i64 %3152 to i8
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3153, i8* %3154, align 1
  %3155 = lshr i64 %3126, 63
  %3156 = lshr i64 %3127, 63
  %3157 = xor i64 %3152, %3155
  %3158 = xor i64 %3152, %3156
  %3159 = add i64 %3157, %3158
  %3160 = icmp eq i64 %3159, 2
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3161, i8* %3162, align 1
  store %struct.Memory* %loadMem_4086d3, %struct.Memory** %MEMORY
  %loadMem_4086d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 7
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RDX.i616 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 15
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RBP.i617
  %3173 = sub i64 %3172, 4
  %3174 = load i64, i64* %PC.i615
  %3175 = add i64 %3174, 4
  store i64 %3175, i64* %PC.i615
  %3176 = inttoptr i64 %3173 to i32*
  %3177 = load i32, i32* %3176
  %3178 = sext i32 %3177 to i64
  store i64 %3178, i64* %RDX.i616, align 8
  store %struct.Memory* %loadMem_4086d6, %struct.Memory** %MEMORY
  %loadMem_4086da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 7
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %RDX.i614
  %3186 = load i64, i64* %PC.i613
  %3187 = add i64 %3186, 7
  store i64 %3187, i64* %PC.i613
  %3188 = sext i64 %3185 to i128
  %3189 = and i128 %3188, -18446744073709551616
  %3190 = zext i64 %3185 to i128
  %3191 = or i128 %3189, %3190
  %3192 = mul i128 744, %3191
  %3193 = trunc i128 %3192 to i64
  store i64 %3193, i64* %RDX.i614, align 8
  %3194 = sext i64 %3193 to i128
  %3195 = icmp ne i128 %3194, %3192
  %3196 = zext i1 %3195 to i8
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3196, i8* %3197, align 1
  %3198 = trunc i128 %3192 to i32
  %3199 = and i32 %3198, 255
  %3200 = call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3203, i8* %3204, align 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3205, align 1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3206, align 1
  %3207 = lshr i64 %3193, 63
  %3208 = trunc i64 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3208, i8* %3209, align 1
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3196, i8* %3210, align 1
  store %struct.Memory* %loadMem_4086da, %struct.Memory** %MEMORY
  %loadMem_4086e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 1
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 7
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %3219 to i64*
  %3220 = load i64, i64* %RAX.i611
  %3221 = load i64, i64* %RDX.i612
  %3222 = load i64, i64* %PC.i610
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i610
  %3224 = add i64 %3221, %3220
  store i64 %3224, i64* %RAX.i611, align 8
  %3225 = icmp ult i64 %3224, %3220
  %3226 = icmp ult i64 %3224, %3221
  %3227 = or i1 %3225, %3226
  %3228 = zext i1 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3228, i8* %3229, align 1
  %3230 = trunc i64 %3224 to i32
  %3231 = and i32 %3230, 255
  %3232 = call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3235, i8* %3236, align 1
  %3237 = xor i64 %3221, %3220
  %3238 = xor i64 %3237, %3224
  %3239 = lshr i64 %3238, 4
  %3240 = trunc i64 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3241, i8* %3242, align 1
  %3243 = icmp eq i64 %3224, 0
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3244, i8* %3245, align 1
  %3246 = lshr i64 %3224, 63
  %3247 = trunc i64 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3247, i8* %3248, align 1
  %3249 = lshr i64 %3220, 63
  %3250 = lshr i64 %3221, 63
  %3251 = xor i64 %3246, %3249
  %3252 = xor i64 %3246, %3250
  %3253 = add i64 %3251, %3252
  %3254 = icmp eq i64 %3253, 2
  %3255 = zext i1 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3255, i8* %3256, align 1
  store %struct.Memory* %loadMem_4086e1, %struct.Memory** %MEMORY
  %loadMem_4086e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %RAX.i609
  %3264 = add i64 %3263, 12
  %3265 = load i64, i64* %PC.i608
  %3266 = add i64 %3265, 4
  store i64 %3266, i64* %PC.i608
  %3267 = inttoptr i64 %3264 to i32*
  %3268 = load i32, i32* %3267
  %3269 = sext i32 %3268 to i64
  store i64 %3269, i64* %RAX.i609, align 8
  store %struct.Memory* %loadMem_4086e4, %struct.Memory** %MEMORY
  %loadMem_4086e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 5
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %ECX.i605 = bitcast %union.anon* %3275 to i32*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 1
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 9
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RSI.i607 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RSI.i607
  %3283 = load i64, i64* %RAX.i606
  %3284 = mul i64 %3283, 4
  %3285 = add i64 %3282, 16
  %3286 = add i64 %3285, %3284
  %3287 = load i32, i32* %ECX.i605
  %3288 = zext i32 %3287 to i64
  %3289 = load i64, i64* %PC.i604
  %3290 = add i64 %3289, 4
  store i64 %3290, i64* %PC.i604
  %3291 = inttoptr i64 %3286 to i32*
  store i32 %3287, i32* %3291
  store %struct.Memory* %loadMem_4086e8, %struct.Memory** %MEMORY
  br label %block_.L_4086ec

block_.L_4086ec:                                  ; preds = %block_4086b5, %block_.L_408693
  %loadMem_4086ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %PC.i602
  %3299 = add i64 %3298, 10
  store i64 %3299, i64* %PC.i602
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_4086ec, %struct.Memory** %MEMORY
  %loadMem_4086f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 5
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 15
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %RBP.i601
  %3310 = sub i64 %3309, 4
  %3311 = load i64, i64* %PC.i599
  %3312 = add i64 %3311, 4
  store i64 %3312, i64* %PC.i599
  %3313 = inttoptr i64 %3310 to i32*
  %3314 = load i32, i32* %3313
  %3315 = sext i32 %3314 to i64
  store i64 %3315, i64* %RCX.i600, align 8
  store %struct.Memory* %loadMem_4086f6, %struct.Memory** %MEMORY
  %loadMem_4086fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 5
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %RCX.i598
  %3323 = load i64, i64* %PC.i597
  %3324 = add i64 %3323, 7
  store i64 %3324, i64* %PC.i597
  %3325 = sext i64 %3322 to i128
  %3326 = and i128 %3325, -18446744073709551616
  %3327 = zext i64 %3322 to i128
  %3328 = or i128 %3326, %3327
  %3329 = mul i128 744, %3328
  %3330 = trunc i128 %3329 to i64
  store i64 %3330, i64* %RCX.i598, align 8
  %3331 = sext i64 %3330 to i128
  %3332 = icmp ne i128 %3331, %3329
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3333, i8* %3334, align 1
  %3335 = trunc i128 %3329 to i32
  %3336 = and i32 %3335, 255
  %3337 = call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3340, i8* %3341, align 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3342, align 1
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3343, align 1
  %3344 = lshr i64 %3330, 63
  %3345 = trunc i64 %3344 to i8
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3345, i8* %3346, align 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3333, i8* %3347, align 1
  store %struct.Memory* %loadMem_4086fa, %struct.Memory** %MEMORY
  %loadMem_408701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 5
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RAX.i595
  %3358 = load i64, i64* %RCX.i596
  %3359 = load i64, i64* %PC.i594
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i594
  %3361 = add i64 %3358, %3357
  store i64 %3361, i64* %RAX.i595, align 8
  %3362 = icmp ult i64 %3361, %3357
  %3363 = icmp ult i64 %3361, %3358
  %3364 = or i1 %3362, %3363
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3365, i8* %3366, align 1
  %3367 = trunc i64 %3361 to i32
  %3368 = and i32 %3367, 255
  %3369 = call i32 @llvm.ctpop.i32(i32 %3368)
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3372, i8* %3373, align 1
  %3374 = xor i64 %3358, %3357
  %3375 = xor i64 %3374, %3361
  %3376 = lshr i64 %3375, 4
  %3377 = trunc i64 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3378, i8* %3379, align 1
  %3380 = icmp eq i64 %3361, 0
  %3381 = zext i1 %3380 to i8
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3381, i8* %3382, align 1
  %3383 = lshr i64 %3361, 63
  %3384 = trunc i64 %3383 to i8
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3384, i8* %3385, align 1
  %3386 = lshr i64 %3357, 63
  %3387 = lshr i64 %3358, 63
  %3388 = xor i64 %3383, %3386
  %3389 = xor i64 %3383, %3387
  %3390 = add i64 %3388, %3389
  %3391 = icmp eq i64 %3390, 2
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3392, i8* %3393, align 1
  store %struct.Memory* %loadMem_408701, %struct.Memory** %MEMORY
  %loadMem_408704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 7
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RAX.i592
  %3404 = add i64 %3403, 12
  %3405 = load i64, i64* %PC.i591
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %PC.i591
  %3407 = inttoptr i64 %3404 to i32*
  %3408 = load i32, i32* %3407
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_408704, %struct.Memory** %MEMORY
  %loadMem_408707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 7
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RDX.i590 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RDX.i590
  %3417 = load i64, i64* %PC.i589
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i589
  %3419 = trunc i64 %3416 to i32
  %3420 = add i32 1, %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RDX.i590, align 8
  %3422 = icmp ult i32 %3420, %3419
  %3423 = icmp ult i32 %3420, 1
  %3424 = or i1 %3422, %3423
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3425, i8* %3426, align 1
  %3427 = and i32 %3420, 255
  %3428 = call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3431, i8* %3432, align 1
  %3433 = xor i64 1, %3416
  %3434 = trunc i64 %3433 to i32
  %3435 = xor i32 %3434, %3420
  %3436 = lshr i32 %3435, 4
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3438, i8* %3439, align 1
  %3440 = icmp eq i32 %3420, 0
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3441, i8* %3442, align 1
  %3443 = lshr i32 %3420, 31
  %3444 = trunc i32 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3444, i8* %3445, align 1
  %3446 = lshr i32 %3419, 31
  %3447 = xor i32 %3443, %3446
  %3448 = add i32 %3447, %3443
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3450, i8* %3451, align 1
  store %struct.Memory* %loadMem_408707, %struct.Memory** %MEMORY
  %loadMem_40870a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 7
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %EDX.i587 = bitcast %union.anon* %3457 to i32*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 1
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RAX.i588
  %3462 = add i64 %3461, 12
  %3463 = load i32, i32* %EDX.i587
  %3464 = zext i32 %3463 to i64
  %3465 = load i64, i64* %PC.i586
  %3466 = add i64 %3465, 3
  store i64 %3466, i64* %PC.i586
  %3467 = inttoptr i64 %3462 to i32*
  store i32 %3463, i32* %3467
  store %struct.Memory* %loadMem_40870a, %struct.Memory** %MEMORY
  %loadMem_40870d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 7
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i584
  %3475 = add i64 %3474, 7
  store i64 %3475, i64* %PC.i584
  %3476 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3477 = zext i32 %3476 to i64
  store i64 %3477, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_40870d, %struct.Memory** %MEMORY
  %loadMem_408714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 9
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RSI.i582 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 15
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %RBP.i583
  %3488 = sub i64 %3487, 8
  %3489 = load i64, i64* %PC.i581
  %3490 = add i64 %3489, 3
  store i64 %3490, i64* %PC.i581
  %3491 = inttoptr i64 %3488 to i32*
  %3492 = load i32, i32* %3491
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RSI.i582, align 8
  store %struct.Memory* %loadMem_408714, %struct.Memory** %MEMORY
  %loadMem_408717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 9
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RSI.i580 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RSI.i580
  %3501 = load i64, i64* %PC.i579
  %3502 = add i64 %3501, 3
  store i64 %3502, i64* %PC.i579
  %3503 = trunc i64 %3500 to i32
  %3504 = sub i32 %3503, 1
  %3505 = zext i32 %3504 to i64
  store i64 %3505, i64* %RSI.i580, align 8
  %3506 = icmp ult i32 %3503, 1
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3507, i8* %3508, align 1
  %3509 = and i32 %3504, 255
  %3510 = call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3513, i8* %3514, align 1
  %3515 = xor i64 1, %3500
  %3516 = trunc i64 %3515 to i32
  %3517 = xor i32 %3516, %3504
  %3518 = lshr i32 %3517, 4
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3520, i8* %3521, align 1
  %3522 = icmp eq i32 %3504, 0
  %3523 = zext i1 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3523, i8* %3524, align 1
  %3525 = lshr i32 %3504, 31
  %3526 = trunc i32 %3525 to i8
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3526, i8* %3527, align 1
  %3528 = lshr i32 %3503, 31
  %3529 = xor i32 %3525, %3528
  %3530 = add i32 %3529, %3528
  %3531 = icmp eq i32 %3530, 2
  %3532 = zext i1 %3531 to i8
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3532, i8* %3533, align 1
  store %struct.Memory* %loadMem_408717, %struct.Memory** %MEMORY
  %loadMem_40871a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 9
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %ESI.i577 = bitcast %union.anon* %3539 to i32*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 1
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3542 to i64*
  %3543 = load i32, i32* %ESI.i577
  %3544 = zext i32 %3543 to i64
  %3545 = load i64, i64* %PC.i576
  %3546 = add i64 %3545, 3
  store i64 %3546, i64* %PC.i576
  %3547 = shl i64 %3544, 32
  %3548 = ashr exact i64 %3547, 32
  store i64 %3548, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_40871a, %struct.Memory** %MEMORY
  %loadMem_40871d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 7
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %EDX.i574 = bitcast %union.anon* %3554 to i32*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 1
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %3557 to i64*
  %3558 = load i64, i64* %RAX.i575
  %3559 = mul i64 %3558, 4
  %3560 = add i64 %3559, 11185584
  %3561 = load i32, i32* %EDX.i574
  %3562 = zext i32 %3561 to i64
  %3563 = load i64, i64* %PC.i573
  %3564 = add i64 %3563, 7
  store i64 %3564, i64* %PC.i573
  %3565 = inttoptr i64 %3560 to i32*
  store i32 %3561, i32* %3565
  store %struct.Memory* %loadMem_40871d, %struct.Memory** %MEMORY
  %loadMem_408724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %PC.i572
  %3570 = add i64 %3569, 216
  %3571 = load i64, i64* %PC.i572
  %3572 = add i64 %3571, 5
  store i64 %3572, i64* %PC.i572
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3570, i64* %3573, align 8
  store %struct.Memory* %loadMem_408724, %struct.Memory** %MEMORY
  br label %block_.L_4087fc

block_.L_408729:                                  ; preds = %block_408671, %block_.L_408657
  %loadMem_408729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 1
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i571
  %3584 = sub i64 %3583, 8
  %3585 = load i64, i64* %PC.i569
  %3586 = add i64 %3585, 3
  store i64 %3586, i64* %PC.i569
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587
  %3589 = zext i32 %3588 to i64
  store i64 %3589, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_408729, %struct.Memory** %MEMORY
  %loadMem_40872c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RAX.i568
  %3597 = load i64, i64* %PC.i567
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %PC.i567
  %3599 = trunc i64 %3596 to i32
  %3600 = sub i32 %3599, 1
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RAX.i568, align 8
  %3602 = icmp ult i32 %3599, 1
  %3603 = zext i1 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3603, i8* %3604, align 1
  %3605 = and i32 %3600, 255
  %3606 = call i32 @llvm.ctpop.i32(i32 %3605)
  %3607 = trunc i32 %3606 to i8
  %3608 = and i8 %3607, 1
  %3609 = xor i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3609, i8* %3610, align 1
  %3611 = xor i64 1, %3596
  %3612 = trunc i64 %3611 to i32
  %3613 = xor i32 %3612, %3600
  %3614 = lshr i32 %3613, 4
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3616, i8* %3617, align 1
  %3618 = icmp eq i32 %3600, 0
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3619, i8* %3620, align 1
  %3621 = lshr i32 %3600, 31
  %3622 = trunc i32 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i32 %3599, 31
  %3625 = xor i32 %3621, %3624
  %3626 = add i32 %3625, %3624
  %3627 = icmp eq i32 %3626, 2
  %3628 = zext i1 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3628, i8* %3629, align 1
  store %struct.Memory* %loadMem_40872c, %struct.Memory** %MEMORY
  %loadMem_40872f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 1
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %EAX.i565 = bitcast %union.anon* %3635 to i32*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 5
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3638 to i64*
  %3639 = load i32, i32* %EAX.i565
  %3640 = zext i32 %3639 to i64
  %3641 = load i64, i64* %PC.i564
  %3642 = add i64 %3641, 3
  store i64 %3642, i64* %PC.i564
  %3643 = shl i64 %3640, 32
  %3644 = ashr exact i64 %3643, 32
  store i64 %3644, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_40872f, %struct.Memory** %MEMORY
  %loadMem_408732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 33
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 1
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3650 to i64*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 5
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %3653 to i64*
  %3654 = load i64, i64* %RCX.i563
  %3655 = add i64 %3654, 12099168
  %3656 = load i64, i64* %PC.i561
  %3657 = add i64 %3656, 8
  store i64 %3657, i64* %PC.i561
  %3658 = inttoptr i64 %3655 to i8*
  %3659 = load i8, i8* %3658
  %3660 = zext i8 %3659 to i64
  store i64 %3660, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_408732, %struct.Memory** %MEMORY
  %loadMem_40873a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 1
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %EAX.i559 = bitcast %union.anon* %3666 to i32*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3669 to i64*
  %3670 = load i32, i32* %EAX.i559
  %3671 = zext i32 %3670 to i64
  %3672 = load i64, i64* %RBP.i560
  %3673 = sub i64 %3672, 12
  %3674 = load i64, i64* %PC.i558
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i558
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676
  %3678 = sub i32 %3670, %3677
  %3679 = icmp ult i32 %3670, %3677
  %3680 = zext i1 %3679 to i8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3680, i8* %3681, align 1
  %3682 = and i32 %3678, 255
  %3683 = call i32 @llvm.ctpop.i32(i32 %3682)
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  %3686 = xor i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3686, i8* %3687, align 1
  %3688 = xor i32 %3677, %3670
  %3689 = xor i32 %3688, %3678
  %3690 = lshr i32 %3689, 4
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3692, i8* %3693, align 1
  %3694 = icmp eq i32 %3678, 0
  %3695 = zext i1 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3695, i8* %3696, align 1
  %3697 = lshr i32 %3678, 31
  %3698 = trunc i32 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3698, i8* %3699, align 1
  %3700 = lshr i32 %3670, 31
  %3701 = lshr i32 %3677, 31
  %3702 = xor i32 %3701, %3700
  %3703 = xor i32 %3697, %3700
  %3704 = add i32 %3703, %3702
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3706, i8* %3707, align 1
  store %struct.Memory* %loadMem_40873a, %struct.Memory** %MEMORY
  %loadMem_40873d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %PC.i557
  %3712 = add i64 %3711, 186
  %3713 = load i64, i64* %PC.i557
  %3714 = add i64 %3713, 6
  %3715 = load i64, i64* %PC.i557
  %3716 = add i64 %3715, 6
  store i64 %3716, i64* %PC.i557
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3718 = load i8, i8* %3717, align 1
  %3719 = icmp eq i8 %3718, 0
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %BRANCH_TAKEN, align 1
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3722 = select i1 %3719, i64 %3712, i64 %3714
  store i64 %3722, i64* %3721, align 8
  store %struct.Memory* %loadMem_40873d, %struct.Memory** %MEMORY
  %loadBr_40873d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40873d = icmp eq i8 %loadBr_40873d, 1
  br i1 %cmpBr_40873d, label %block_.L_4087f7, label %block_408743

block_408743:                                     ; preds = %block_.L_408729
  %loadMem_408743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 1
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %PC.i555
  %3730 = add i64 %3729, 10
  store i64 %3730, i64* %PC.i555
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i556, align 8
  store %struct.Memory* %loadMem_408743, %struct.Memory** %MEMORY
  %loadMem_40874d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 5
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 15
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %RBP.i554
  %3741 = sub i64 %3740, 8
  %3742 = load i64, i64* %PC.i552
  %3743 = add i64 %3742, 3
  store i64 %3743, i64* %PC.i552
  %3744 = inttoptr i64 %3741 to i32*
  %3745 = load i32, i32* %3744
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RCX.i553, align 8
  store %struct.Memory* %loadMem_40874d, %struct.Memory** %MEMORY
  %loadMem_408750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 33
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 5
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %RCX.i551
  %3754 = load i64, i64* %PC.i550
  %3755 = add i64 %3754, 3
  store i64 %3755, i64* %PC.i550
  %3756 = trunc i64 %3753 to i32
  %3757 = sub i32 %3756, 1
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RCX.i551, align 8
  %3759 = icmp ult i32 %3756, 1
  %3760 = zext i1 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3760, i8* %3761, align 1
  %3762 = and i32 %3757, 255
  %3763 = call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3766, i8* %3767, align 1
  %3768 = xor i64 1, %3753
  %3769 = trunc i64 %3768 to i32
  %3770 = xor i32 %3769, %3757
  %3771 = lshr i32 %3770, 4
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3773, i8* %3774, align 1
  %3775 = icmp eq i32 %3757, 0
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3776, i8* %3777, align 1
  %3778 = lshr i32 %3757, 31
  %3779 = trunc i32 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3779, i8* %3780, align 1
  %3781 = lshr i32 %3756, 31
  %3782 = xor i32 %3778, %3781
  %3783 = add i32 %3782, %3781
  %3784 = icmp eq i32 %3783, 2
  %3785 = zext i1 %3784 to i8
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3785, i8* %3786, align 1
  store %struct.Memory* %loadMem_408750, %struct.Memory** %MEMORY
  %loadMem_408753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 5
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %ECX.i548 = bitcast %union.anon* %3792 to i32*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 7
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RDX.i549 = bitcast %union.anon* %3795 to i64*
  %3796 = load i32, i32* %ECX.i548
  %3797 = zext i32 %3796 to i64
  %3798 = load i64, i64* %PC.i547
  %3799 = add i64 %3798, 3
  store i64 %3799, i64* %PC.i547
  %3800 = shl i64 %3797, 32
  %3801 = ashr exact i64 %3800, 32
  store i64 %3801, i64* %RDX.i549, align 8
  store %struct.Memory* %loadMem_408753, %struct.Memory** %MEMORY
  %loadMem_408756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 7
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %RDX.i546
  %3809 = mul i64 %3808, 4
  %3810 = add i64 %3809, 11187184
  %3811 = load i64, i64* %PC.i545
  %3812 = add i64 %3811, 8
  store i64 %3812, i64* %PC.i545
  %3813 = inttoptr i64 %3810 to i32*
  %3814 = load i32, i32* %3813
  %3815 = sext i32 %3814 to i64
  store i64 %3815, i64* %RDX.i546, align 8
  store %struct.Memory* %loadMem_408756, %struct.Memory** %MEMORY
  %loadMem_40875e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 7
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %RDX.i544
  %3823 = load i64, i64* %PC.i543
  %3824 = add i64 %3823, 7
  store i64 %3824, i64* %PC.i543
  %3825 = sext i64 %3822 to i128
  %3826 = and i128 %3825, -18446744073709551616
  %3827 = zext i64 %3822 to i128
  %3828 = or i128 %3826, %3827
  %3829 = mul i128 744, %3828
  %3830 = trunc i128 %3829 to i64
  store i64 %3830, i64* %RDX.i544, align 8
  %3831 = sext i64 %3830 to i128
  %3832 = icmp ne i128 %3831, %3829
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3833, i8* %3834, align 1
  %3835 = trunc i128 %3829 to i32
  %3836 = and i32 %3835, 255
  %3837 = call i32 @llvm.ctpop.i32(i32 %3836)
  %3838 = trunc i32 %3837 to i8
  %3839 = and i8 %3838, 1
  %3840 = xor i8 %3839, 1
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3840, i8* %3841, align 1
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3842, align 1
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3843, align 1
  %3844 = lshr i64 %3830, 63
  %3845 = trunc i64 %3844 to i8
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3845, i8* %3846, align 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3833, i8* %3847, align 1
  store %struct.Memory* %loadMem_40875e, %struct.Memory** %MEMORY
  %loadMem_408765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 1
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 7
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RAX.i541
  %3858 = load i64, i64* %RDX.i542
  %3859 = load i64, i64* %PC.i540
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i540
  %3861 = add i64 %3858, %3857
  store i64 %3861, i64* %RAX.i541, align 8
  %3862 = icmp ult i64 %3861, %3857
  %3863 = icmp ult i64 %3861, %3858
  %3864 = or i1 %3862, %3863
  %3865 = zext i1 %3864 to i8
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3865, i8* %3866, align 1
  %3867 = trunc i64 %3861 to i32
  %3868 = and i32 %3867, 255
  %3869 = call i32 @llvm.ctpop.i32(i32 %3868)
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3872, i8* %3873, align 1
  %3874 = xor i64 %3858, %3857
  %3875 = xor i64 %3874, %3861
  %3876 = lshr i64 %3875, 4
  %3877 = trunc i64 %3876 to i8
  %3878 = and i8 %3877, 1
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3878, i8* %3879, align 1
  %3880 = icmp eq i64 %3861, 0
  %3881 = zext i1 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3881, i8* %3882, align 1
  %3883 = lshr i64 %3861, 63
  %3884 = trunc i64 %3883 to i8
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3884, i8* %3885, align 1
  %3886 = lshr i64 %3857, 63
  %3887 = lshr i64 %3858, 63
  %3888 = xor i64 %3883, %3886
  %3889 = xor i64 %3883, %3887
  %3890 = add i64 %3888, %3889
  %3891 = icmp eq i64 %3890, 2
  %3892 = zext i1 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3892, i8* %3893, align 1
  store %struct.Memory* %loadMem_408765, %struct.Memory** %MEMORY
  %loadMem_408768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 1
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 5
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RAX.i538
  %3904 = add i64 %3903, 740
  %3905 = load i64, i64* %PC.i537
  %3906 = add i64 %3905, 6
  store i64 %3906, i64* %PC.i537
  %3907 = inttoptr i64 %3904 to i32*
  %3908 = load i32, i32* %3907
  %3909 = zext i32 %3908 to i64
  store i64 %3909, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_408768, %struct.Memory** %MEMORY
  %loadMem_40876e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 5
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %ECX.i536 = bitcast %union.anon* %3915 to i32*
  %3916 = load i32, i32* %ECX.i536
  %3917 = zext i32 %3916 to i64
  %3918 = load i64, i64* %PC.i535
  %3919 = add i64 %3918, 7
  store i64 %3919, i64* %PC.i535
  %3920 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %3921 = sub i32 %3916, %3920
  %3922 = icmp ult i32 %3916, %3920
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3923, i8* %3924, align 1
  %3925 = and i32 %3921, 255
  %3926 = call i32 @llvm.ctpop.i32(i32 %3925)
  %3927 = trunc i32 %3926 to i8
  %3928 = and i8 %3927, 1
  %3929 = xor i8 %3928, 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3929, i8* %3930, align 1
  %3931 = xor i32 %3920, %3916
  %3932 = xor i32 %3931, %3921
  %3933 = lshr i32 %3932, 4
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3935, i8* %3936, align 1
  %3937 = icmp eq i32 %3921, 0
  %3938 = zext i1 %3937 to i8
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3938, i8* %3939, align 1
  %3940 = lshr i32 %3921, 31
  %3941 = trunc i32 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3941, i8* %3942, align 1
  %3943 = lshr i32 %3916, 31
  %3944 = lshr i32 %3920, 31
  %3945 = xor i32 %3944, %3943
  %3946 = xor i32 %3940, %3943
  %3947 = add i32 %3946, %3945
  %3948 = icmp eq i32 %3947, 2
  %3949 = zext i1 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3949, i8* %3950, align 1
  store %struct.Memory* %loadMem_40876e, %struct.Memory** %MEMORY
  %loadMem_408775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %PC.i534
  %3955 = add i64 %3954, 130
  %3956 = load i64, i64* %PC.i534
  %3957 = add i64 %3956, 6
  %3958 = load i64, i64* %PC.i534
  %3959 = add i64 %3958, 6
  store i64 %3959, i64* %PC.i534
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3961 = load i8, i8* %3960, align 1
  store i8 %3961, i8* %BRANCH_TAKEN, align 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3963 = icmp ne i8 %3961, 0
  %3964 = select i1 %3963, i64 %3955, i64 %3957
  store i64 %3964, i64* %3962, align 8
  store %struct.Memory* %loadMem_408775, %struct.Memory** %MEMORY
  %loadBr_408775 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408775 = icmp eq i8 %loadBr_408775, 1
  br i1 %cmpBr_408775, label %block_.L_4087f7, label %block_40877b

block_40877b:                                     ; preds = %block_408743
  %loadMem_40877b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 1
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %PC.i532
  %3972 = add i64 %3971, 10
  store i64 %3972, i64* %PC.i532
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i533, align 8
  store %struct.Memory* %loadMem_40877b, %struct.Memory** %MEMORY
  %loadMem_408785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 33
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 5
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 15
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %RBP.i531
  %3983 = sub i64 %3982, 8
  %3984 = load i64, i64* %PC.i529
  %3985 = add i64 %3984, 3
  store i64 %3985, i64* %PC.i529
  %3986 = inttoptr i64 %3983 to i32*
  %3987 = load i32, i32* %3986
  %3988 = zext i32 %3987 to i64
  store i64 %3988, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_408785, %struct.Memory** %MEMORY
  %loadMem_408788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 5
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RCX.i528
  %3996 = load i64, i64* %PC.i527
  %3997 = add i64 %3996, 3
  store i64 %3997, i64* %PC.i527
  %3998 = trunc i64 %3995 to i32
  %3999 = sub i32 %3998, 1
  %4000 = zext i32 %3999 to i64
  store i64 %4000, i64* %RCX.i528, align 8
  %4001 = icmp ult i32 %3998, 1
  %4002 = zext i1 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4002, i8* %4003, align 1
  %4004 = and i32 %3999, 255
  %4005 = call i32 @llvm.ctpop.i32(i32 %4004)
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  %4008 = xor i8 %4007, 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4008, i8* %4009, align 1
  %4010 = xor i64 1, %3995
  %4011 = trunc i64 %4010 to i32
  %4012 = xor i32 %4011, %3999
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4015, i8* %4016, align 1
  %4017 = icmp eq i32 %3999, 0
  %4018 = zext i1 %4017 to i8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4018, i8* %4019, align 1
  %4020 = lshr i32 %3999, 31
  %4021 = trunc i32 %4020 to i8
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4021, i8* %4022, align 1
  %4023 = lshr i32 %3998, 31
  %4024 = xor i32 %4020, %4023
  %4025 = add i32 %4024, %4023
  %4026 = icmp eq i32 %4025, 2
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4027, i8* %4028, align 1
  store %struct.Memory* %loadMem_408788, %struct.Memory** %MEMORY
  %loadMem_40878b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 5
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %ECX.i525 = bitcast %union.anon* %4034 to i32*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 7
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %4037 to i64*
  %4038 = load i32, i32* %ECX.i525
  %4039 = zext i32 %4038 to i64
  %4040 = load i64, i64* %PC.i524
  %4041 = add i64 %4040, 3
  store i64 %4041, i64* %PC.i524
  %4042 = shl i64 %4039, 32
  %4043 = ashr exact i64 %4042, 32
  store i64 %4043, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_40878b, %struct.Memory** %MEMORY
  %loadMem_40878e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 5
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 7
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RDX.i523 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RDX.i523
  %4054 = mul i64 %4053, 4
  %4055 = add i64 %4054, 11187184
  %4056 = load i64, i64* %PC.i521
  %4057 = add i64 %4056, 7
  store i64 %4057, i64* %PC.i521
  %4058 = inttoptr i64 %4055 to i32*
  %4059 = load i32, i32* %4058
  %4060 = zext i32 %4059 to i64
  store i64 %4060, i64* %RCX.i522, align 8
  store %struct.Memory* %loadMem_40878e, %struct.Memory** %MEMORY
  %loadMem_408795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 7
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 15
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RBP.i520
  %4071 = sub i64 %4070, 4
  %4072 = load i64, i64* %PC.i518
  %4073 = add i64 %4072, 4
  store i64 %4073, i64* %PC.i518
  %4074 = inttoptr i64 %4071 to i32*
  %4075 = load i32, i32* %4074
  %4076 = sext i32 %4075 to i64
  store i64 %4076, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_408795, %struct.Memory** %MEMORY
  %loadMem_408799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 7
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RDX.i517
  %4084 = load i64, i64* %PC.i516
  %4085 = add i64 %4084, 7
  store i64 %4085, i64* %PC.i516
  %4086 = sext i64 %4083 to i128
  %4087 = and i128 %4086, -18446744073709551616
  %4088 = zext i64 %4083 to i128
  %4089 = or i128 %4087, %4088
  %4090 = mul i128 744, %4089
  %4091 = trunc i128 %4090 to i64
  store i64 %4091, i64* %RDX.i517, align 8
  %4092 = sext i64 %4091 to i128
  %4093 = icmp ne i128 %4092, %4090
  %4094 = zext i1 %4093 to i8
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4094, i8* %4095, align 1
  %4096 = trunc i128 %4090 to i32
  %4097 = and i32 %4096, 255
  %4098 = call i32 @llvm.ctpop.i32(i32 %4097)
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  %4101 = xor i8 %4100, 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4101, i8* %4102, align 1
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4103, align 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4104, align 1
  %4105 = lshr i64 %4091, 63
  %4106 = trunc i64 %4105 to i8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4106, i8* %4107, align 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4094, i8* %4108, align 1
  store %struct.Memory* %loadMem_408799, %struct.Memory** %MEMORY
  %loadMem_4087a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 1
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 9
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RSI.i515 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RAX.i514
  %4119 = load i64, i64* %PC.i513
  %4120 = add i64 %4119, 3
  store i64 %4120, i64* %PC.i513
  store i64 %4118, i64* %RSI.i515, align 8
  store %struct.Memory* %loadMem_4087a0, %struct.Memory** %MEMORY
  %loadMem_4087a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 7
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %4126 to i64*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 9
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RSI.i512 = bitcast %union.anon* %4129 to i64*
  %4130 = load i64, i64* %RSI.i512
  %4131 = load i64, i64* %RDX.i511
  %4132 = load i64, i64* %PC.i510
  %4133 = add i64 %4132, 3
  store i64 %4133, i64* %PC.i510
  %4134 = add i64 %4131, %4130
  store i64 %4134, i64* %RSI.i512, align 8
  %4135 = icmp ult i64 %4134, %4130
  %4136 = icmp ult i64 %4134, %4131
  %4137 = or i1 %4135, %4136
  %4138 = zext i1 %4137 to i8
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4138, i8* %4139, align 1
  %4140 = trunc i64 %4134 to i32
  %4141 = and i32 %4140, 255
  %4142 = call i32 @llvm.ctpop.i32(i32 %4141)
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  %4145 = xor i8 %4144, 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4145, i8* %4146, align 1
  %4147 = xor i64 %4131, %4130
  %4148 = xor i64 %4147, %4134
  %4149 = lshr i64 %4148, 4
  %4150 = trunc i64 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4151, i8* %4152, align 1
  %4153 = icmp eq i64 %4134, 0
  %4154 = zext i1 %4153 to i8
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4154, i8* %4155, align 1
  %4156 = lshr i64 %4134, 63
  %4157 = trunc i64 %4156 to i8
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4157, i8* %4158, align 1
  %4159 = lshr i64 %4130, 63
  %4160 = lshr i64 %4131, 63
  %4161 = xor i64 %4156, %4159
  %4162 = xor i64 %4156, %4160
  %4163 = add i64 %4161, %4162
  %4164 = icmp eq i64 %4163, 2
  %4165 = zext i1 %4164 to i8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4165, i8* %4166, align 1
  store %struct.Memory* %loadMem_4087a3, %struct.Memory** %MEMORY
  %loadMem_4087a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 33
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 7
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RDX.i508 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 15
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %RBP.i509
  %4177 = sub i64 %4176, 4
  %4178 = load i64, i64* %PC.i507
  %4179 = add i64 %4178, 4
  store i64 %4179, i64* %PC.i507
  %4180 = inttoptr i64 %4177 to i32*
  %4181 = load i32, i32* %4180
  %4182 = sext i32 %4181 to i64
  store i64 %4182, i64* %RDX.i508, align 8
  store %struct.Memory* %loadMem_4087a6, %struct.Memory** %MEMORY
  %loadMem_4087aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 33
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 7
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RDX.i506 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RDX.i506
  %4190 = load i64, i64* %PC.i505
  %4191 = add i64 %4190, 7
  store i64 %4191, i64* %PC.i505
  %4192 = sext i64 %4189 to i128
  %4193 = and i128 %4192, -18446744073709551616
  %4194 = zext i64 %4189 to i128
  %4195 = or i128 %4193, %4194
  %4196 = mul i128 744, %4195
  %4197 = trunc i128 %4196 to i64
  store i64 %4197, i64* %RDX.i506, align 8
  %4198 = sext i64 %4197 to i128
  %4199 = icmp ne i128 %4198, %4196
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4200, i8* %4201, align 1
  %4202 = trunc i128 %4196 to i32
  %4203 = and i32 %4202, 255
  %4204 = call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4207, i8* %4208, align 1
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4209, align 1
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4210, align 1
  %4211 = lshr i64 %4197, 63
  %4212 = trunc i64 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4212, i8* %4213, align 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4200, i8* %4214, align 1
  store %struct.Memory* %loadMem_4087aa, %struct.Memory** %MEMORY
  %loadMem_4087b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 33
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4217 to i64*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 1
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 11
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RDI.i504 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RAX.i503
  %4225 = load i64, i64* %PC.i502
  %4226 = add i64 %4225, 3
  store i64 %4226, i64* %PC.i502
  store i64 %4224, i64* %RDI.i504, align 8
  store %struct.Memory* %loadMem_4087b1, %struct.Memory** %MEMORY
  %loadMem_4087b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 7
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 11
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RDI.i501 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RDI.i501
  %4237 = load i64, i64* %RDX.i500
  %4238 = load i64, i64* %PC.i499
  %4239 = add i64 %4238, 3
  store i64 %4239, i64* %PC.i499
  %4240 = add i64 %4237, %4236
  store i64 %4240, i64* %RDI.i501, align 8
  %4241 = icmp ult i64 %4240, %4236
  %4242 = icmp ult i64 %4240, %4237
  %4243 = or i1 %4241, %4242
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4244, i8* %4245, align 1
  %4246 = trunc i64 %4240 to i32
  %4247 = and i32 %4246, 255
  %4248 = call i32 @llvm.ctpop.i32(i32 %4247)
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = xor i8 %4250, 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4251, i8* %4252, align 1
  %4253 = xor i64 %4237, %4236
  %4254 = xor i64 %4253, %4240
  %4255 = lshr i64 %4254, 4
  %4256 = trunc i64 %4255 to i8
  %4257 = and i8 %4256, 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4257, i8* %4258, align 1
  %4259 = icmp eq i64 %4240, 0
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4260, i8* %4261, align 1
  %4262 = lshr i64 %4240, 63
  %4263 = trunc i64 %4262 to i8
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4263, i8* %4264, align 1
  %4265 = lshr i64 %4236, 63
  %4266 = lshr i64 %4237, 63
  %4267 = xor i64 %4262, %4265
  %4268 = xor i64 %4262, %4266
  %4269 = add i64 %4267, %4268
  %4270 = icmp eq i64 %4269, 2
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4271, i8* %4272, align 1
  store %struct.Memory* %loadMem_4087b4, %struct.Memory** %MEMORY
  %loadMem_4087b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 17
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %R8D.i497 = bitcast %union.anon* %4278 to i32*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 11
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RDI.i498 = bitcast %union.anon* %4281 to i64*
  %4282 = bitcast i32* %R8D.i497 to i64*
  %4283 = load i64, i64* %RDI.i498
  %4284 = add i64 %4283, 96
  %4285 = load i64, i64* %PC.i496
  %4286 = add i64 %4285, 4
  store i64 %4286, i64* %PC.i496
  %4287 = inttoptr i64 %4284 to i32*
  %4288 = load i32, i32* %4287
  %4289 = zext i32 %4288 to i64
  store i64 %4289, i64* %4282, align 8
  store %struct.Memory* %loadMem_4087b7, %struct.Memory** %MEMORY
  %loadMem_4087bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 17
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %R8D.i494 = bitcast %union.anon* %4295 to i32*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 19
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %R9D.i495 = bitcast %union.anon* %4298 to i32*
  %4299 = bitcast i32* %R9D.i495 to i64*
  %4300 = load i32, i32* %R8D.i494
  %4301 = zext i32 %4300 to i64
  %4302 = load i64, i64* %PC.i493
  %4303 = add i64 %4302, 3
  store i64 %4303, i64* %PC.i493
  %4304 = and i64 %4301, 4294967295
  store i64 %4304, i64* %4299, align 8
  store %struct.Memory* %loadMem_4087bb, %struct.Memory** %MEMORY
  %loadMem_4087be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 19
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %R9D.i492 = bitcast %union.anon* %4310 to i32*
  %4311 = bitcast i32* %R9D.i492 to i64*
  %4312 = load i32, i32* %R9D.i492
  %4313 = zext i32 %4312 to i64
  %4314 = load i64, i64* %PC.i491
  %4315 = add i64 %4314, 4
  store i64 %4315, i64* %PC.i491
  %4316 = add i32 1, %4312
  %4317 = zext i32 %4316 to i64
  store i64 %4317, i64* %4311, align 8
  %4318 = icmp ult i32 %4316, %4312
  %4319 = icmp ult i32 %4316, 1
  %4320 = or i1 %4318, %4319
  %4321 = zext i1 %4320 to i8
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4321, i8* %4322, align 1
  %4323 = and i32 %4316, 255
  %4324 = call i32 @llvm.ctpop.i32(i32 %4323)
  %4325 = trunc i32 %4324 to i8
  %4326 = and i8 %4325, 1
  %4327 = xor i8 %4326, 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4327, i8* %4328, align 1
  %4329 = xor i64 1, %4313
  %4330 = trunc i64 %4329 to i32
  %4331 = xor i32 %4330, %4316
  %4332 = lshr i32 %4331, 4
  %4333 = trunc i32 %4332 to i8
  %4334 = and i8 %4333, 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4334, i8* %4335, align 1
  %4336 = icmp eq i32 %4316, 0
  %4337 = zext i1 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4337, i8* %4338, align 1
  %4339 = lshr i32 %4316, 31
  %4340 = trunc i32 %4339 to i8
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4340, i8* %4341, align 1
  %4342 = lshr i32 %4312, 31
  %4343 = xor i32 %4339, %4342
  %4344 = add i32 %4343, %4339
  %4345 = icmp eq i32 %4344, 2
  %4346 = zext i1 %4345 to i8
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4346, i8* %4347, align 1
  store %struct.Memory* %loadMem_4087be, %struct.Memory** %MEMORY
  %loadMem_4087c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 19
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %R9D.i489 = bitcast %union.anon* %4353 to i32*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 11
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RDI.i490 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %RDI.i490
  %4358 = add i64 %4357, 96
  %4359 = load i32, i32* %R9D.i489
  %4360 = zext i32 %4359 to i64
  %4361 = load i64, i64* %PC.i488
  %4362 = add i64 %4361, 4
  store i64 %4362, i64* %PC.i488
  %4363 = inttoptr i64 %4358 to i32*
  store i32 %4359, i32* %4363
  store %struct.Memory* %loadMem_4087c2, %struct.Memory** %MEMORY
  %loadMem_4087c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 17
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %R8D.i486 = bitcast %union.anon* %4369 to i32*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 7
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %4372 to i64*
  %4373 = load i32, i32* %R8D.i486
  %4374 = zext i32 %4373 to i64
  %4375 = load i64, i64* %PC.i485
  %4376 = add i64 %4375, 3
  store i64 %4376, i64* %PC.i485
  %4377 = shl i64 %4374, 32
  %4378 = ashr exact i64 %4377, 32
  store i64 %4378, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_4087c6, %struct.Memory** %MEMORY
  %loadMem_4087c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 5
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %ECX.i482 = bitcast %union.anon* %4384 to i32*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 7
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 9
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %RSI.i484
  %4392 = load i64, i64* %RDX.i483
  %4393 = mul i64 %4392, 4
  %4394 = add i64 %4391, 100
  %4395 = add i64 %4394, %4393
  %4396 = load i32, i32* %ECX.i482
  %4397 = zext i32 %4396 to i64
  %4398 = load i64, i64* %PC.i481
  %4399 = add i64 %4398, 4
  store i64 %4399, i64* %PC.i481
  %4400 = inttoptr i64 %4395 to i32*
  store i32 %4396, i32* %4400
  store %struct.Memory* %loadMem_4087c9, %struct.Memory** %MEMORY
  %loadMem_4087cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 5
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %PC.i479
  %4408 = add i64 %4407, 7
  store i64 %4408, i64* %PC.i479
  %4409 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4410 = zext i32 %4409 to i64
  store i64 %4410, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_4087cd, %struct.Memory** %MEMORY
  %loadMem_4087d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 17
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %R8D.i477 = bitcast %union.anon* %4416 to i32*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 15
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %4419 to i64*
  %4420 = bitcast i32* %R8D.i477 to i64*
  %4421 = load i64, i64* %RBP.i478
  %4422 = sub i64 %4421, 8
  %4423 = load i64, i64* %PC.i476
  %4424 = add i64 %4423, 4
  store i64 %4424, i64* %PC.i476
  %4425 = inttoptr i64 %4422 to i32*
  %4426 = load i32, i32* %4425
  %4427 = zext i32 %4426 to i64
  store i64 %4427, i64* %4420, align 8
  store %struct.Memory* %loadMem_4087d4, %struct.Memory** %MEMORY
  %loadMem_4087d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 33
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 17
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %R8D.i475 = bitcast %union.anon* %4433 to i32*
  %4434 = bitcast i32* %R8D.i475 to i64*
  %4435 = load i32, i32* %R8D.i475
  %4436 = zext i32 %4435 to i64
  %4437 = load i64, i64* %PC.i474
  %4438 = add i64 %4437, 4
  store i64 %4438, i64* %PC.i474
  %4439 = sub i32 %4435, 1
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %4434, align 8
  %4441 = icmp ult i32 %4435, 1
  %4442 = zext i1 %4441 to i8
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4442, i8* %4443, align 1
  %4444 = and i32 %4439, 255
  %4445 = call i32 @llvm.ctpop.i32(i32 %4444)
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  %4448 = xor i8 %4447, 1
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4448, i8* %4449, align 1
  %4450 = xor i64 1, %4436
  %4451 = trunc i64 %4450 to i32
  %4452 = xor i32 %4451, %4439
  %4453 = lshr i32 %4452, 4
  %4454 = trunc i32 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4455, i8* %4456, align 1
  %4457 = icmp eq i32 %4439, 0
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4458, i8* %4459, align 1
  %4460 = lshr i32 %4439, 31
  %4461 = trunc i32 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i32 %4435, 31
  %4464 = xor i32 %4460, %4463
  %4465 = add i32 %4464, %4463
  %4466 = icmp eq i32 %4465, 2
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4467, i8* %4468, align 1
  store %struct.Memory* %loadMem_4087d8, %struct.Memory** %MEMORY
  %loadMem_4087dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 17
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %R8D.i472 = bitcast %union.anon* %4474 to i32*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 7
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RDX.i473 = bitcast %union.anon* %4477 to i64*
  %4478 = load i32, i32* %R8D.i472
  %4479 = zext i32 %4478 to i64
  %4480 = load i64, i64* %PC.i471
  %4481 = add i64 %4480, 3
  store i64 %4481, i64* %PC.i471
  %4482 = shl i64 %4479, 32
  %4483 = ashr exact i64 %4482, 32
  store i64 %4483, i64* %RDX.i473, align 8
  store %struct.Memory* %loadMem_4087dc, %struct.Memory** %MEMORY
  %loadMem_4087df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 7
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %4489 to i64*
  %4490 = load i64, i64* %RDX.i470
  %4491 = mul i64 %4490, 4
  %4492 = add i64 %4491, 11187184
  %4493 = load i64, i64* %PC.i469
  %4494 = add i64 %4493, 8
  store i64 %4494, i64* %PC.i469
  %4495 = inttoptr i64 %4492 to i32*
  %4496 = load i32, i32* %4495
  %4497 = sext i32 %4496 to i64
  store i64 %4497, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_4087df, %struct.Memory** %MEMORY
  %loadMem_4087e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 7
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RDX.i468
  %4505 = load i64, i64* %PC.i467
  %4506 = add i64 %4505, 7
  store i64 %4506, i64* %PC.i467
  %4507 = sext i64 %4504 to i128
  %4508 = and i128 %4507, -18446744073709551616
  %4509 = zext i64 %4504 to i128
  %4510 = or i128 %4508, %4509
  %4511 = mul i128 744, %4510
  %4512 = trunc i128 %4511 to i64
  store i64 %4512, i64* %RDX.i468, align 8
  %4513 = sext i64 %4512 to i128
  %4514 = icmp ne i128 %4513, %4511
  %4515 = zext i1 %4514 to i8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4515, i8* %4516, align 1
  %4517 = trunc i128 %4511 to i32
  %4518 = and i32 %4517, 255
  %4519 = call i32 @llvm.ctpop.i32(i32 %4518)
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = xor i8 %4521, 1
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4522, i8* %4523, align 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4524, align 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4525, align 1
  %4526 = lshr i64 %4512, 63
  %4527 = trunc i64 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4527, i8* %4528, align 1
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4515, i8* %4529, align 1
  store %struct.Memory* %loadMem_4087e7, %struct.Memory** %MEMORY
  %loadMem_4087ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 1
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 7
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %RAX.i465
  %4540 = load i64, i64* %RDX.i466
  %4541 = load i64, i64* %PC.i464
  %4542 = add i64 %4541, 3
  store i64 %4542, i64* %PC.i464
  %4543 = add i64 %4540, %4539
  store i64 %4543, i64* %RAX.i465, align 8
  %4544 = icmp ult i64 %4543, %4539
  %4545 = icmp ult i64 %4543, %4540
  %4546 = or i1 %4544, %4545
  %4547 = zext i1 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4547, i8* %4548, align 1
  %4549 = trunc i64 %4543 to i32
  %4550 = and i32 %4549, 255
  %4551 = call i32 @llvm.ctpop.i32(i32 %4550)
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  %4554 = xor i8 %4553, 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4554, i8* %4555, align 1
  %4556 = xor i64 %4540, %4539
  %4557 = xor i64 %4556, %4543
  %4558 = lshr i64 %4557, 4
  %4559 = trunc i64 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4560, i8* %4561, align 1
  %4562 = icmp eq i64 %4543, 0
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4563, i8* %4564, align 1
  %4565 = lshr i64 %4543, 63
  %4566 = trunc i64 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4566, i8* %4567, align 1
  %4568 = lshr i64 %4539, 63
  %4569 = lshr i64 %4540, 63
  %4570 = xor i64 %4565, %4568
  %4571 = xor i64 %4565, %4569
  %4572 = add i64 %4570, %4571
  %4573 = icmp eq i64 %4572, 2
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4574, i8* %4575, align 1
  store %struct.Memory* %loadMem_4087ee, %struct.Memory** %MEMORY
  %loadMem_4087f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 5
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %ECX.i462 = bitcast %union.anon* %4581 to i32*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 1
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %4584 to i64*
  %4585 = load i64, i64* %RAX.i463
  %4586 = add i64 %4585, 740
  %4587 = load i32, i32* %ECX.i462
  %4588 = zext i32 %4587 to i64
  %4589 = load i64, i64* %PC.i461
  %4590 = add i64 %4589, 6
  store i64 %4590, i64* %PC.i461
  %4591 = inttoptr i64 %4586 to i32*
  store i32 %4587, i32* %4591
  store %struct.Memory* %loadMem_4087f1, %struct.Memory** %MEMORY
  br label %block_.L_4087f7

block_.L_4087f7:                                  ; preds = %block_40877b, %block_408743, %block_.L_408729
  %loadMem_4087f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4594 to i64*
  %4595 = load i64, i64* %PC.i460
  %4596 = add i64 %4595, 5
  %4597 = load i64, i64* %PC.i460
  %4598 = add i64 %4597, 5
  store i64 %4598, i64* %PC.i460
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4596, i64* %4599, align 8
  store %struct.Memory* %loadMem_4087f7, %struct.Memory** %MEMORY
  br label %block_.L_4087fc

block_.L_4087fc:                                  ; preds = %block_.L_4087f7, %block_.L_4086ec
  %loadMem_4087fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 15
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RBP.i459
  %4610 = sub i64 %4609, 8
  %4611 = load i64, i64* %PC.i457
  %4612 = add i64 %4611, 3
  store i64 %4612, i64* %PC.i457
  %4613 = inttoptr i64 %4610 to i32*
  %4614 = load i32, i32* %4613
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_4087fc, %struct.Memory** %MEMORY
  %loadMem_4087ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 1
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %RAX.i456
  %4623 = load i64, i64* %PC.i455
  %4624 = add i64 %4623, 3
  store i64 %4624, i64* %PC.i455
  %4625 = trunc i64 %4622 to i32
  %4626 = sub i32 %4625, 20
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RAX.i456, align 8
  %4628 = icmp ult i32 %4625, 20
  %4629 = zext i1 %4628 to i8
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4629, i8* %4630, align 1
  %4631 = and i32 %4626, 255
  %4632 = call i32 @llvm.ctpop.i32(i32 %4631)
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = xor i8 %4634, 1
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4635, i8* %4636, align 1
  %4637 = xor i64 20, %4622
  %4638 = trunc i64 %4637 to i32
  %4639 = xor i32 %4638, %4626
  %4640 = lshr i32 %4639, 4
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4642, i8* %4643, align 1
  %4644 = icmp eq i32 %4626, 0
  %4645 = zext i1 %4644 to i8
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4645, i8* %4646, align 1
  %4647 = lshr i32 %4626, 31
  %4648 = trunc i32 %4647 to i8
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4648, i8* %4649, align 1
  %4650 = lshr i32 %4625, 31
  %4651 = xor i32 %4647, %4650
  %4652 = add i32 %4651, %4650
  %4653 = icmp eq i32 %4652, 2
  %4654 = zext i1 %4653 to i8
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4654, i8* %4655, align 1
  store %struct.Memory* %loadMem_4087ff, %struct.Memory** %MEMORY
  %loadMem_408802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 1
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %EAX.i453 = bitcast %union.anon* %4661 to i32*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 5
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %4664 to i64*
  %4665 = load i32, i32* %EAX.i453
  %4666 = zext i32 %4665 to i64
  %4667 = load i64, i64* %PC.i452
  %4668 = add i64 %4667, 3
  store i64 %4668, i64* %PC.i452
  %4669 = shl i64 %4666, 32
  %4670 = ashr exact i64 %4669, 32
  store i64 %4670, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_408802, %struct.Memory** %MEMORY
  %loadMem_408805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 33
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4673 to i64*
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 1
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 5
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %RCX.i451
  %4681 = add i64 %4680, 12099168
  %4682 = load i64, i64* %PC.i449
  %4683 = add i64 %4682, 8
  store i64 %4683, i64* %PC.i449
  %4684 = inttoptr i64 %4681 to i8*
  %4685 = load i8, i8* %4684
  %4686 = zext i8 %4685 to i64
  store i64 %4686, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_408805, %struct.Memory** %MEMORY
  %loadMem_40880d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 1
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %EAX.i448 = bitcast %union.anon* %4692 to i32*
  %4693 = load i32, i32* %EAX.i448
  %4694 = zext i32 %4693 to i64
  %4695 = load i64, i64* %PC.i447
  %4696 = add i64 %4695, 3
  store i64 %4696, i64* %PC.i447
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4697, align 1
  %4698 = and i32 %4693, 255
  %4699 = call i32 @llvm.ctpop.i32(i32 %4698)
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  %4702 = xor i8 %4701, 1
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4702, i8* %4703, align 1
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4704, align 1
  %4705 = icmp eq i32 %4693, 0
  %4706 = zext i1 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4706, i8* %4707, align 1
  %4708 = lshr i32 %4693, 31
  %4709 = trunc i32 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4709, i8* %4710, align 1
  %4711 = lshr i32 %4693, 31
  %4712 = xor i32 %4708, %4711
  %4713 = add i32 %4712, %4711
  %4714 = icmp eq i32 %4713, 2
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4715, i8* %4716, align 1
  store %struct.Memory* %loadMem_40880d, %struct.Memory** %MEMORY
  %loadMem_408810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %PC.i446
  %4721 = add i64 %4720, 190
  %4722 = load i64, i64* %PC.i446
  %4723 = add i64 %4722, 6
  %4724 = load i64, i64* %PC.i446
  %4725 = add i64 %4724, 6
  store i64 %4725, i64* %PC.i446
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4727 = load i8, i8* %4726, align 1
  %4728 = icmp eq i8 %4727, 0
  %4729 = zext i1 %4728 to i8
  store i8 %4729, i8* %BRANCH_TAKEN, align 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4731 = select i1 %4728, i64 %4721, i64 %4723
  store i64 %4731, i64* %4730, align 8
  store %struct.Memory* %loadMem_408810, %struct.Memory** %MEMORY
  %loadBr_408810 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408810 = icmp eq i8 %loadBr_408810, 1
  br i1 %cmpBr_408810, label %block_.L_4088ce, label %block_408816

block_408816:                                     ; preds = %block_.L_4087fc
  %loadMem_408816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 1
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 15
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %RBP.i445
  %4742 = sub i64 %4741, 8
  %4743 = load i64, i64* %PC.i443
  %4744 = add i64 %4743, 3
  store i64 %4744, i64* %PC.i443
  %4745 = inttoptr i64 %4742 to i32*
  %4746 = load i32, i32* %4745
  %4747 = zext i32 %4746 to i64
  store i64 %4747, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_408816, %struct.Memory** %MEMORY
  %loadMem_408819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 33
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 1
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4753 to i64*
  %4754 = load i64, i64* %RAX.i442
  %4755 = load i64, i64* %PC.i441
  %4756 = add i64 %4755, 3
  store i64 %4756, i64* %PC.i441
  %4757 = trunc i64 %4754 to i32
  %4758 = sub i32 %4757, 20
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %RAX.i442, align 8
  %4760 = icmp ult i32 %4757, 20
  %4761 = zext i1 %4760 to i8
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4761, i8* %4762, align 1
  %4763 = and i32 %4758, 255
  %4764 = call i32 @llvm.ctpop.i32(i32 %4763)
  %4765 = trunc i32 %4764 to i8
  %4766 = and i8 %4765, 1
  %4767 = xor i8 %4766, 1
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4767, i8* %4768, align 1
  %4769 = xor i64 20, %4754
  %4770 = trunc i64 %4769 to i32
  %4771 = xor i32 %4770, %4758
  %4772 = lshr i32 %4771, 4
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4774, i8* %4775, align 1
  %4776 = icmp eq i32 %4758, 0
  %4777 = zext i1 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i32 %4758, 31
  %4780 = trunc i32 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4780, i8* %4781, align 1
  %4782 = lshr i32 %4757, 31
  %4783 = xor i32 %4779, %4782
  %4784 = add i32 %4783, %4782
  %4785 = icmp eq i32 %4784, 2
  %4786 = zext i1 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4786, i8* %4787, align 1
  store %struct.Memory* %loadMem_408819, %struct.Memory** %MEMORY
  %loadMem_40881c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %4793 to i32*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 5
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %4796 to i64*
  %4797 = load i32, i32* %EAX.i439
  %4798 = zext i32 %4797 to i64
  %4799 = load i64, i64* %PC.i438
  %4800 = add i64 %4799, 3
  store i64 %4800, i64* %PC.i438
  %4801 = shl i64 %4798, 32
  %4802 = ashr exact i64 %4801, 32
  store i64 %4802, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_40881c, %struct.Memory** %MEMORY
  %loadMem_40881f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 1
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 5
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RCX.i437
  %4813 = mul i64 %4812, 4
  %4814 = add i64 %4813, 11185584
  %4815 = load i64, i64* %PC.i435
  %4816 = add i64 %4815, 7
  store i64 %4816, i64* %PC.i435
  %4817 = inttoptr i64 %4814 to i32*
  %4818 = load i32, i32* %4817
  %4819 = zext i32 %4818 to i64
  store i64 %4819, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_40881f, %struct.Memory** %MEMORY
  %loadMem_408826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4822 to i64*
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 1
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %4825 to i32*
  %4826 = load i32, i32* %EAX.i434
  %4827 = zext i32 %4826 to i64
  %4828 = load i64, i64* %PC.i433
  %4829 = add i64 %4828, 7
  store i64 %4829, i64* %PC.i433
  %4830 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %4831 = sub i32 %4826, %4830
  %4832 = icmp ult i32 %4826, %4830
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4833, i8* %4834, align 1
  %4835 = and i32 %4831, 255
  %4836 = call i32 @llvm.ctpop.i32(i32 %4835)
  %4837 = trunc i32 %4836 to i8
  %4838 = and i8 %4837, 1
  %4839 = xor i8 %4838, 1
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4839, i8* %4840, align 1
  %4841 = xor i32 %4830, %4826
  %4842 = xor i32 %4841, %4831
  %4843 = lshr i32 %4842, 4
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4845, i8* %4846, align 1
  %4847 = icmp eq i32 %4831, 0
  %4848 = zext i1 %4847 to i8
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4848, i8* %4849, align 1
  %4850 = lshr i32 %4831, 31
  %4851 = trunc i32 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4851, i8* %4852, align 1
  %4853 = lshr i32 %4826, 31
  %4854 = lshr i32 %4830, 31
  %4855 = xor i32 %4854, %4853
  %4856 = xor i32 %4850, %4853
  %4857 = add i32 %4856, %4855
  %4858 = icmp eq i32 %4857, 2
  %4859 = zext i1 %4858 to i8
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4859, i8* %4860, align 1
  store %struct.Memory* %loadMem_408826, %struct.Memory** %MEMORY
  %loadMem_40882d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %PC.i432
  %4865 = add i64 %4864, 161
  %4866 = load i64, i64* %PC.i432
  %4867 = add i64 %4866, 6
  %4868 = load i64, i64* %PC.i432
  %4869 = add i64 %4868, 6
  store i64 %4869, i64* %PC.i432
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4871 = load i8, i8* %4870, align 1
  store i8 %4871, i8* %BRANCH_TAKEN, align 1
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4873 = icmp ne i8 %4871, 0
  %4874 = select i1 %4873, i64 %4865, i64 %4867
  store i64 %4874, i64* %4872, align 8
  store %struct.Memory* %loadMem_40882d, %struct.Memory** %MEMORY
  %loadBr_40882d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40882d = icmp eq i8 %loadBr_40882d, 1
  br i1 %cmpBr_40882d, label %block_.L_4088ce, label %block_408833

block_408833:                                     ; preds = %block_408816
  %loadMem_408833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 33
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4877 to i64*
  %4878 = load i64, i64* %PC.i431
  %4879 = add i64 %4878, 5
  %4880 = load i64, i64* %PC.i431
  %4881 = add i64 %4880, 5
  store i64 %4881, i64* %PC.i431
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4879, i64* %4882, align 8
  store %struct.Memory* %loadMem_408833, %struct.Memory** %MEMORY
  br label %block_.L_408838

block_.L_408838:                                  ; preds = %block_408833
  %loadMem_408838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 33
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4885 to i64*
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4887 = getelementptr inbounds %struct.GPR, %struct.GPR* %4886, i32 0, i32 1
  %4888 = getelementptr inbounds %struct.Reg, %struct.Reg* %4887, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4888 to i64*
  %4889 = load i64, i64* %PC.i429
  %4890 = add i64 %4889, 10
  store i64 %4890, i64* %PC.i429
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_408838, %struct.Memory** %MEMORY
  %loadMem_408842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 5
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %4896 to i64*
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 15
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4899 to i64*
  %4900 = load i64, i64* %RBP.i428
  %4901 = sub i64 %4900, 4
  %4902 = load i64, i64* %PC.i426
  %4903 = add i64 %4902, 4
  store i64 %4903, i64* %PC.i426
  %4904 = inttoptr i64 %4901 to i32*
  %4905 = load i32, i32* %4904
  %4906 = sext i32 %4905 to i64
  store i64 %4906, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_408842, %struct.Memory** %MEMORY
  %loadMem_408846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 33
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 5
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %RCX.i425
  %4914 = load i64, i64* %PC.i424
  %4915 = add i64 %4914, 7
  store i64 %4915, i64* %PC.i424
  %4916 = sext i64 %4913 to i128
  %4917 = and i128 %4916, -18446744073709551616
  %4918 = zext i64 %4913 to i128
  %4919 = or i128 %4917, %4918
  %4920 = mul i128 744, %4919
  %4921 = trunc i128 %4920 to i64
  store i64 %4921, i64* %RCX.i425, align 8
  %4922 = sext i64 %4921 to i128
  %4923 = icmp ne i128 %4922, %4920
  %4924 = zext i1 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4924, i8* %4925, align 1
  %4926 = trunc i128 %4920 to i32
  %4927 = and i32 %4926, 255
  %4928 = call i32 @llvm.ctpop.i32(i32 %4927)
  %4929 = trunc i32 %4928 to i8
  %4930 = and i8 %4929, 1
  %4931 = xor i8 %4930, 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4931, i8* %4932, align 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4933, align 1
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4934, align 1
  %4935 = lshr i64 %4921, 63
  %4936 = trunc i64 %4935 to i8
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4936, i8* %4937, align 1
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4924, i8* %4938, align 1
  store %struct.Memory* %loadMem_408846, %struct.Memory** %MEMORY
  %loadMem_40884d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 1
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 5
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RAX.i422
  %4949 = load i64, i64* %RCX.i423
  %4950 = load i64, i64* %PC.i421
  %4951 = add i64 %4950, 3
  store i64 %4951, i64* %PC.i421
  %4952 = add i64 %4949, %4948
  store i64 %4952, i64* %RAX.i422, align 8
  %4953 = icmp ult i64 %4952, %4948
  %4954 = icmp ult i64 %4952, %4949
  %4955 = or i1 %4953, %4954
  %4956 = zext i1 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4956, i8* %4957, align 1
  %4958 = trunc i64 %4952 to i32
  %4959 = and i32 %4958, 255
  %4960 = call i32 @llvm.ctpop.i32(i32 %4959)
  %4961 = trunc i32 %4960 to i8
  %4962 = and i8 %4961, 1
  %4963 = xor i8 %4962, 1
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4963, i8* %4964, align 1
  %4965 = xor i64 %4949, %4948
  %4966 = xor i64 %4965, %4952
  %4967 = lshr i64 %4966, 4
  %4968 = trunc i64 %4967 to i8
  %4969 = and i8 %4968, 1
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4969, i8* %4970, align 1
  %4971 = icmp eq i64 %4952, 0
  %4972 = zext i1 %4971 to i8
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4972, i8* %4973, align 1
  %4974 = lshr i64 %4952, 63
  %4975 = trunc i64 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4975, i8* %4976, align 1
  %4977 = lshr i64 %4948, 63
  %4978 = lshr i64 %4949, 63
  %4979 = xor i64 %4974, %4977
  %4980 = xor i64 %4974, %4978
  %4981 = add i64 %4979, %4980
  %4982 = icmp eq i64 %4981, 2
  %4983 = zext i1 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4983, i8* %4984, align 1
  store %struct.Memory* %loadMem_40884d, %struct.Memory** %MEMORY
  %loadMem_408850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 33
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 1
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4990 to i64*
  %4991 = load i64, i64* %RAX.i420
  %4992 = add i64 %4991, 12
  %4993 = load i64, i64* %PC.i419
  %4994 = add i64 %4993, 4
  store i64 %4994, i64* %PC.i419
  %4995 = inttoptr i64 %4992 to i32*
  %4996 = load i32, i32* %4995
  %4997 = sub i32 %4996, 20
  %4998 = icmp ult i32 %4996, 20
  %4999 = zext i1 %4998 to i8
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4999, i8* %5000, align 1
  %5001 = and i32 %4997, 255
  %5002 = call i32 @llvm.ctpop.i32(i32 %5001)
  %5003 = trunc i32 %5002 to i8
  %5004 = and i8 %5003, 1
  %5005 = xor i8 %5004, 1
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5005, i8* %5006, align 1
  %5007 = xor i32 %4996, 20
  %5008 = xor i32 %5007, %4997
  %5009 = lshr i32 %5008, 4
  %5010 = trunc i32 %5009 to i8
  %5011 = and i8 %5010, 1
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5011, i8* %5012, align 1
  %5013 = icmp eq i32 %4997, 0
  %5014 = zext i1 %5013 to i8
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5014, i8* %5015, align 1
  %5016 = lshr i32 %4997, 31
  %5017 = trunc i32 %5016 to i8
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5017, i8* %5018, align 1
  %5019 = lshr i32 %4996, 31
  %5020 = xor i32 %5016, %5019
  %5021 = add i32 %5020, %5019
  %5022 = icmp eq i32 %5021, 2
  %5023 = zext i1 %5022 to i8
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5023, i8* %5024, align 1
  store %struct.Memory* %loadMem_408850, %struct.Memory** %MEMORY
  %loadMem_408854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5027 to i64*
  %5028 = load i64, i64* %PC.i418
  %5029 = add i64 %5028, 61
  %5030 = load i64, i64* %PC.i418
  %5031 = add i64 %5030, 6
  %5032 = load i64, i64* %PC.i418
  %5033 = add i64 %5032, 6
  store i64 %5033, i64* %PC.i418
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5035 = load i8, i8* %5034, align 1
  %5036 = icmp ne i8 %5035, 0
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5038 = load i8, i8* %5037, align 1
  %5039 = icmp ne i8 %5038, 0
  %5040 = xor i1 %5036, %5039
  %5041 = xor i1 %5040, true
  %5042 = zext i1 %5041 to i8
  store i8 %5042, i8* %BRANCH_TAKEN, align 1
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5044 = select i1 %5040, i64 %5031, i64 %5029
  store i64 %5044, i64* %5043, align 8
  store %struct.Memory* %loadMem_408854, %struct.Memory** %MEMORY
  %loadBr_408854 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408854 = icmp eq i8 %loadBr_408854, 1
  br i1 %cmpBr_408854, label %block_.L_408891, label %block_40885a

block_40885a:                                     ; preds = %block_.L_408838
  %loadMem_40885a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 1
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %PC.i416
  %5052 = add i64 %5051, 10
  store i64 %5052, i64* %PC.i416
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_40885a, %struct.Memory** %MEMORY
  %loadMem_408864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 5
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 15
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %RBP.i415
  %5063 = sub i64 %5062, 8
  %5064 = load i64, i64* %PC.i413
  %5065 = add i64 %5064, 3
  store i64 %5065, i64* %PC.i413
  %5066 = inttoptr i64 %5063 to i32*
  %5067 = load i32, i32* %5066
  %5068 = zext i32 %5067 to i64
  store i64 %5068, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_408864, %struct.Memory** %MEMORY
  %loadMem_408867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 5
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %5074 to i64*
  %5075 = load i64, i64* %RCX.i412
  %5076 = load i64, i64* %PC.i411
  %5077 = add i64 %5076, 3
  store i64 %5077, i64* %PC.i411
  %5078 = trunc i64 %5075 to i32
  %5079 = sub i32 %5078, 20
  %5080 = zext i32 %5079 to i64
  store i64 %5080, i64* %RCX.i412, align 8
  %5081 = icmp ult i32 %5078, 20
  %5082 = zext i1 %5081 to i8
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5082, i8* %5083, align 1
  %5084 = and i32 %5079, 255
  %5085 = call i32 @llvm.ctpop.i32(i32 %5084)
  %5086 = trunc i32 %5085 to i8
  %5087 = and i8 %5086, 1
  %5088 = xor i8 %5087, 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5088, i8* %5089, align 1
  %5090 = xor i64 20, %5075
  %5091 = trunc i64 %5090 to i32
  %5092 = xor i32 %5091, %5079
  %5093 = lshr i32 %5092, 4
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5095, i8* %5096, align 1
  %5097 = icmp eq i32 %5079, 0
  %5098 = zext i1 %5097 to i8
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5098, i8* %5099, align 1
  %5100 = lshr i32 %5079, 31
  %5101 = trunc i32 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5101, i8* %5102, align 1
  %5103 = lshr i32 %5078, 31
  %5104 = xor i32 %5100, %5103
  %5105 = add i32 %5104, %5103
  %5106 = icmp eq i32 %5105, 2
  %5107 = zext i1 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5107, i8* %5108, align 1
  store %struct.Memory* %loadMem_408867, %struct.Memory** %MEMORY
  %loadMem_40886a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 33
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5111 to i64*
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 7
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 15
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %RBP.i410
  %5119 = sub i64 %5118, 4
  %5120 = load i64, i64* %PC.i408
  %5121 = add i64 %5120, 4
  store i64 %5121, i64* %PC.i408
  %5122 = inttoptr i64 %5119 to i32*
  %5123 = load i32, i32* %5122
  %5124 = sext i32 %5123 to i64
  store i64 %5124, i64* %RDX.i409, align 8
  store %struct.Memory* %loadMem_40886a, %struct.Memory** %MEMORY
  %loadMem_40886e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 7
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %5130 to i64*
  %5131 = load i64, i64* %RDX.i407
  %5132 = load i64, i64* %PC.i406
  %5133 = add i64 %5132, 7
  store i64 %5133, i64* %PC.i406
  %5134 = sext i64 %5131 to i128
  %5135 = and i128 %5134, -18446744073709551616
  %5136 = zext i64 %5131 to i128
  %5137 = or i128 %5135, %5136
  %5138 = mul i128 744, %5137
  %5139 = trunc i128 %5138 to i64
  store i64 %5139, i64* %RDX.i407, align 8
  %5140 = sext i64 %5139 to i128
  %5141 = icmp ne i128 %5140, %5138
  %5142 = zext i1 %5141 to i8
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5142, i8* %5143, align 1
  %5144 = trunc i128 %5138 to i32
  %5145 = and i32 %5144, 255
  %5146 = call i32 @llvm.ctpop.i32(i32 %5145)
  %5147 = trunc i32 %5146 to i8
  %5148 = and i8 %5147, 1
  %5149 = xor i8 %5148, 1
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5149, i8* %5150, align 1
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5151, align 1
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5152, align 1
  %5153 = lshr i64 %5139, 63
  %5154 = trunc i64 %5153 to i8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5154, i8* %5155, align 1
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5142, i8* %5156, align 1
  store %struct.Memory* %loadMem_40886e, %struct.Memory** %MEMORY
  %loadMem_408875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 33
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 1
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 9
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RSI.i405 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RAX.i404
  %5167 = load i64, i64* %PC.i403
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i403
  store i64 %5166, i64* %RSI.i405, align 8
  store %struct.Memory* %loadMem_408875, %struct.Memory** %MEMORY
  %loadMem_408878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 7
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 9
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %5177 to i64*
  %5178 = load i64, i64* %RSI.i402
  %5179 = load i64, i64* %RDX.i401
  %5180 = load i64, i64* %PC.i400
  %5181 = add i64 %5180, 3
  store i64 %5181, i64* %PC.i400
  %5182 = add i64 %5179, %5178
  store i64 %5182, i64* %RSI.i402, align 8
  %5183 = icmp ult i64 %5182, %5178
  %5184 = icmp ult i64 %5182, %5179
  %5185 = or i1 %5183, %5184
  %5186 = zext i1 %5185 to i8
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5186, i8* %5187, align 1
  %5188 = trunc i64 %5182 to i32
  %5189 = and i32 %5188, 255
  %5190 = call i32 @llvm.ctpop.i32(i32 %5189)
  %5191 = trunc i32 %5190 to i8
  %5192 = and i8 %5191, 1
  %5193 = xor i8 %5192, 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5193, i8* %5194, align 1
  %5195 = xor i64 %5179, %5178
  %5196 = xor i64 %5195, %5182
  %5197 = lshr i64 %5196, 4
  %5198 = trunc i64 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5199, i8* %5200, align 1
  %5201 = icmp eq i64 %5182, 0
  %5202 = zext i1 %5201 to i8
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5202, i8* %5203, align 1
  %5204 = lshr i64 %5182, 63
  %5205 = trunc i64 %5204 to i8
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5205, i8* %5206, align 1
  %5207 = lshr i64 %5178, 63
  %5208 = lshr i64 %5179, 63
  %5209 = xor i64 %5204, %5207
  %5210 = xor i64 %5204, %5208
  %5211 = add i64 %5209, %5210
  %5212 = icmp eq i64 %5211, 2
  %5213 = zext i1 %5212 to i8
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5213, i8* %5214, align 1
  store %struct.Memory* %loadMem_408878, %struct.Memory** %MEMORY
  %loadMem_40887b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 33
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 7
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 15
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RBP.i399
  %5225 = sub i64 %5224, 4
  %5226 = load i64, i64* %PC.i397
  %5227 = add i64 %5226, 4
  store i64 %5227, i64* %PC.i397
  %5228 = inttoptr i64 %5225 to i32*
  %5229 = load i32, i32* %5228
  %5230 = sext i32 %5229 to i64
  store i64 %5230, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_40887b, %struct.Memory** %MEMORY
  %loadMem_40887f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 7
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RDX.i396 = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %RDX.i396
  %5238 = load i64, i64* %PC.i395
  %5239 = add i64 %5238, 7
  store i64 %5239, i64* %PC.i395
  %5240 = sext i64 %5237 to i128
  %5241 = and i128 %5240, -18446744073709551616
  %5242 = zext i64 %5237 to i128
  %5243 = or i128 %5241, %5242
  %5244 = mul i128 744, %5243
  %5245 = trunc i128 %5244 to i64
  store i64 %5245, i64* %RDX.i396, align 8
  %5246 = sext i64 %5245 to i128
  %5247 = icmp ne i128 %5246, %5244
  %5248 = zext i1 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5248, i8* %5249, align 1
  %5250 = trunc i128 %5244 to i32
  %5251 = and i32 %5250, 255
  %5252 = call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5255, i8* %5256, align 1
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5257, align 1
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5258, align 1
  %5259 = lshr i64 %5245, 63
  %5260 = trunc i64 %5259 to i8
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5260, i8* %5261, align 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5248, i8* %5262, align 1
  store %struct.Memory* %loadMem_40887f, %struct.Memory** %MEMORY
  %loadMem_408886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 33
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5265 to i64*
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 1
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %5268 to i64*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 7
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %5271 to i64*
  %5272 = load i64, i64* %RAX.i393
  %5273 = load i64, i64* %RDX.i394
  %5274 = load i64, i64* %PC.i392
  %5275 = add i64 %5274, 3
  store i64 %5275, i64* %PC.i392
  %5276 = add i64 %5273, %5272
  store i64 %5276, i64* %RAX.i393, align 8
  %5277 = icmp ult i64 %5276, %5272
  %5278 = icmp ult i64 %5276, %5273
  %5279 = or i1 %5277, %5278
  %5280 = zext i1 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5280, i8* %5281, align 1
  %5282 = trunc i64 %5276 to i32
  %5283 = and i32 %5282, 255
  %5284 = call i32 @llvm.ctpop.i32(i32 %5283)
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = xor i8 %5286, 1
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5287, i8* %5288, align 1
  %5289 = xor i64 %5273, %5272
  %5290 = xor i64 %5289, %5276
  %5291 = lshr i64 %5290, 4
  %5292 = trunc i64 %5291 to i8
  %5293 = and i8 %5292, 1
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5293, i8* %5294, align 1
  %5295 = icmp eq i64 %5276, 0
  %5296 = zext i1 %5295 to i8
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5296, i8* %5297, align 1
  %5298 = lshr i64 %5276, 63
  %5299 = trunc i64 %5298 to i8
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5299, i8* %5300, align 1
  %5301 = lshr i64 %5272, 63
  %5302 = lshr i64 %5273, 63
  %5303 = xor i64 %5298, %5301
  %5304 = xor i64 %5298, %5302
  %5305 = add i64 %5303, %5304
  %5306 = icmp eq i64 %5305, 2
  %5307 = zext i1 %5306 to i8
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5307, i8* %5308, align 1
  store %struct.Memory* %loadMem_408886, %struct.Memory** %MEMORY
  %loadMem_408889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 33
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 1
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %RAX.i391
  %5316 = add i64 %5315, 12
  %5317 = load i64, i64* %PC.i390
  %5318 = add i64 %5317, 4
  store i64 %5318, i64* %PC.i390
  %5319 = inttoptr i64 %5316 to i32*
  %5320 = load i32, i32* %5319
  %5321 = sext i32 %5320 to i64
  store i64 %5321, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_408889, %struct.Memory** %MEMORY
  %loadMem_40888d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 33
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5324 to i64*
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 5
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %ECX.i387 = bitcast %union.anon* %5327 to i32*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 1
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 9
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RSI.i389 = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %RSI.i389
  %5335 = load i64, i64* %RAX.i388
  %5336 = mul i64 %5335, 4
  %5337 = add i64 %5334, 16
  %5338 = add i64 %5337, %5336
  %5339 = load i32, i32* %ECX.i387
  %5340 = zext i32 %5339 to i64
  %5341 = load i64, i64* %PC.i386
  %5342 = add i64 %5341, 4
  store i64 %5342, i64* %PC.i386
  %5343 = inttoptr i64 %5338 to i32*
  store i32 %5339, i32* %5343
  store %struct.Memory* %loadMem_40888d, %struct.Memory** %MEMORY
  br label %block_.L_408891

block_.L_408891:                                  ; preds = %block_40885a, %block_.L_408838
  %loadMem_408891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 33
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5346 to i64*
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 1
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %5349 to i64*
  %5350 = load i64, i64* %PC.i384
  %5351 = add i64 %5350, 10
  store i64 %5351, i64* %PC.i384
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_408891, %struct.Memory** %MEMORY
  %loadMem_40889b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 5
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 15
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RBP.i383
  %5362 = sub i64 %5361, 4
  %5363 = load i64, i64* %PC.i381
  %5364 = add i64 %5363, 4
  store i64 %5364, i64* %PC.i381
  %5365 = inttoptr i64 %5362 to i32*
  %5366 = load i32, i32* %5365
  %5367 = sext i32 %5366 to i64
  store i64 %5367, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_40889b, %struct.Memory** %MEMORY
  %loadMem_40889f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 5
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RCX.i380
  %5375 = load i64, i64* %PC.i379
  %5376 = add i64 %5375, 7
  store i64 %5376, i64* %PC.i379
  %5377 = sext i64 %5374 to i128
  %5378 = and i128 %5377, -18446744073709551616
  %5379 = zext i64 %5374 to i128
  %5380 = or i128 %5378, %5379
  %5381 = mul i128 744, %5380
  %5382 = trunc i128 %5381 to i64
  store i64 %5382, i64* %RCX.i380, align 8
  %5383 = sext i64 %5382 to i128
  %5384 = icmp ne i128 %5383, %5381
  %5385 = zext i1 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5385, i8* %5386, align 1
  %5387 = trunc i128 %5381 to i32
  %5388 = and i32 %5387, 255
  %5389 = call i32 @llvm.ctpop.i32(i32 %5388)
  %5390 = trunc i32 %5389 to i8
  %5391 = and i8 %5390, 1
  %5392 = xor i8 %5391, 1
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5392, i8* %5393, align 1
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5394, align 1
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5395, align 1
  %5396 = lshr i64 %5382, 63
  %5397 = trunc i64 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5397, i8* %5398, align 1
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5385, i8* %5399, align 1
  store %struct.Memory* %loadMem_40889f, %struct.Memory** %MEMORY
  %loadMem_4088a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 5
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RAX.i377
  %5410 = load i64, i64* %RCX.i378
  %5411 = load i64, i64* %PC.i376
  %5412 = add i64 %5411, 3
  store i64 %5412, i64* %PC.i376
  %5413 = add i64 %5410, %5409
  store i64 %5413, i64* %RAX.i377, align 8
  %5414 = icmp ult i64 %5413, %5409
  %5415 = icmp ult i64 %5413, %5410
  %5416 = or i1 %5414, %5415
  %5417 = zext i1 %5416 to i8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5417, i8* %5418, align 1
  %5419 = trunc i64 %5413 to i32
  %5420 = and i32 %5419, 255
  %5421 = call i32 @llvm.ctpop.i32(i32 %5420)
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5424, i8* %5425, align 1
  %5426 = xor i64 %5410, %5409
  %5427 = xor i64 %5426, %5413
  %5428 = lshr i64 %5427, 4
  %5429 = trunc i64 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5430, i8* %5431, align 1
  %5432 = icmp eq i64 %5413, 0
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5433, i8* %5434, align 1
  %5435 = lshr i64 %5413, 63
  %5436 = trunc i64 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5436, i8* %5437, align 1
  %5438 = lshr i64 %5409, 63
  %5439 = lshr i64 %5410, 63
  %5440 = xor i64 %5435, %5438
  %5441 = xor i64 %5435, %5439
  %5442 = add i64 %5440, %5441
  %5443 = icmp eq i64 %5442, 2
  %5444 = zext i1 %5443 to i8
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5444, i8* %5445, align 1
  store %struct.Memory* %loadMem_4088a6, %struct.Memory** %MEMORY
  %loadMem_4088a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5448 to i64*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 1
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 7
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %RAX.i374
  %5456 = add i64 %5455, 12
  %5457 = load i64, i64* %PC.i373
  %5458 = add i64 %5457, 3
  store i64 %5458, i64* %PC.i373
  %5459 = inttoptr i64 %5456 to i32*
  %5460 = load i32, i32* %5459
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RDX.i375, align 8
  store %struct.Memory* %loadMem_4088a9, %struct.Memory** %MEMORY
  %loadMem_4088ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 7
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RDX.i372 = bitcast %union.anon* %5467 to i64*
  %5468 = load i64, i64* %RDX.i372
  %5469 = load i64, i64* %PC.i371
  %5470 = add i64 %5469, 3
  store i64 %5470, i64* %PC.i371
  %5471 = trunc i64 %5468 to i32
  %5472 = add i32 1, %5471
  %5473 = zext i32 %5472 to i64
  store i64 %5473, i64* %RDX.i372, align 8
  %5474 = icmp ult i32 %5472, %5471
  %5475 = icmp ult i32 %5472, 1
  %5476 = or i1 %5474, %5475
  %5477 = zext i1 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5477, i8* %5478, align 1
  %5479 = and i32 %5472, 255
  %5480 = call i32 @llvm.ctpop.i32(i32 %5479)
  %5481 = trunc i32 %5480 to i8
  %5482 = and i8 %5481, 1
  %5483 = xor i8 %5482, 1
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5483, i8* %5484, align 1
  %5485 = xor i64 1, %5468
  %5486 = trunc i64 %5485 to i32
  %5487 = xor i32 %5486, %5472
  %5488 = lshr i32 %5487, 4
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5490, i8* %5491, align 1
  %5492 = icmp eq i32 %5472, 0
  %5493 = zext i1 %5492 to i8
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5493, i8* %5494, align 1
  %5495 = lshr i32 %5472, 31
  %5496 = trunc i32 %5495 to i8
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5496, i8* %5497, align 1
  %5498 = lshr i32 %5471, 31
  %5499 = xor i32 %5495, %5498
  %5500 = add i32 %5499, %5495
  %5501 = icmp eq i32 %5500, 2
  %5502 = zext i1 %5501 to i8
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5502, i8* %5503, align 1
  store %struct.Memory* %loadMem_4088ac, %struct.Memory** %MEMORY
  %loadMem_4088af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 7
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %EDX.i369 = bitcast %union.anon* %5509 to i32*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 1
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %5512 to i64*
  %5513 = load i64, i64* %RAX.i370
  %5514 = add i64 %5513, 12
  %5515 = load i32, i32* %EDX.i369
  %5516 = zext i32 %5515 to i64
  %5517 = load i64, i64* %PC.i368
  %5518 = add i64 %5517, 3
  store i64 %5518, i64* %PC.i368
  %5519 = inttoptr i64 %5514 to i32*
  store i32 %5515, i32* %5519
  store %struct.Memory* %loadMem_4088af, %struct.Memory** %MEMORY
  %loadMem_4088b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 7
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RDX.i367 = bitcast %union.anon* %5525 to i64*
  %5526 = load i64, i64* %PC.i366
  %5527 = add i64 %5526, 7
  store i64 %5527, i64* %PC.i366
  %5528 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %5529 = zext i32 %5528 to i64
  store i64 %5529, i64* %RDX.i367, align 8
  store %struct.Memory* %loadMem_4088b2, %struct.Memory** %MEMORY
  %loadMem_4088b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 33
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 9
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 15
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RBP.i365
  %5540 = sub i64 %5539, 8
  %5541 = load i64, i64* %PC.i363
  %5542 = add i64 %5541, 3
  store i64 %5542, i64* %PC.i363
  %5543 = inttoptr i64 %5540 to i32*
  %5544 = load i32, i32* %5543
  %5545 = zext i32 %5544 to i64
  store i64 %5545, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_4088b9, %struct.Memory** %MEMORY
  %loadMem_4088bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 9
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RSI.i362 = bitcast %union.anon* %5551 to i64*
  %5552 = load i64, i64* %RSI.i362
  %5553 = load i64, i64* %PC.i361
  %5554 = add i64 %5553, 3
  store i64 %5554, i64* %PC.i361
  %5555 = trunc i64 %5552 to i32
  %5556 = sub i32 %5555, 20
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RSI.i362, align 8
  %5558 = icmp ult i32 %5555, 20
  %5559 = zext i1 %5558 to i8
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5559, i8* %5560, align 1
  %5561 = and i32 %5556, 255
  %5562 = call i32 @llvm.ctpop.i32(i32 %5561)
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  %5565 = xor i8 %5564, 1
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5565, i8* %5566, align 1
  %5567 = xor i64 20, %5552
  %5568 = trunc i64 %5567 to i32
  %5569 = xor i32 %5568, %5556
  %5570 = lshr i32 %5569, 4
  %5571 = trunc i32 %5570 to i8
  %5572 = and i8 %5571, 1
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5572, i8* %5573, align 1
  %5574 = icmp eq i32 %5556, 0
  %5575 = zext i1 %5574 to i8
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5575, i8* %5576, align 1
  %5577 = lshr i32 %5556, 31
  %5578 = trunc i32 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5578, i8* %5579, align 1
  %5580 = lshr i32 %5555, 31
  %5581 = xor i32 %5577, %5580
  %5582 = add i32 %5581, %5580
  %5583 = icmp eq i32 %5582, 2
  %5584 = zext i1 %5583 to i8
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5584, i8* %5585, align 1
  store %struct.Memory* %loadMem_4088bc, %struct.Memory** %MEMORY
  %loadMem_4088bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 33
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 9
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %ESI.i359 = bitcast %union.anon* %5591 to i32*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 1
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %5594 to i64*
  %5595 = load i32, i32* %ESI.i359
  %5596 = zext i32 %5595 to i64
  %5597 = load i64, i64* %PC.i358
  %5598 = add i64 %5597, 3
  store i64 %5598, i64* %PC.i358
  %5599 = shl i64 %5596, 32
  %5600 = ashr exact i64 %5599, 32
  store i64 %5600, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_4088bf, %struct.Memory** %MEMORY
  %loadMem_4088c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 33
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5603 to i64*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 7
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %EDX.i356 = bitcast %union.anon* %5606 to i32*
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 1
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %5609 to i64*
  %5610 = load i64, i64* %RAX.i357
  %5611 = mul i64 %5610, 4
  %5612 = add i64 %5611, 11185584
  %5613 = load i32, i32* %EDX.i356
  %5614 = zext i32 %5613 to i64
  %5615 = load i64, i64* %PC.i355
  %5616 = add i64 %5615, 7
  store i64 %5616, i64* %PC.i355
  %5617 = inttoptr i64 %5612 to i32*
  store i32 %5613, i32* %5617
  store %struct.Memory* %loadMem_4088c2, %struct.Memory** %MEMORY
  %loadMem_4088c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 33
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %PC.i354
  %5622 = add i64 %5621, 216
  %5623 = load i64, i64* %PC.i354
  %5624 = add i64 %5623, 5
  store i64 %5624, i64* %PC.i354
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5622, i64* %5625, align 8
  store %struct.Memory* %loadMem_4088c9, %struct.Memory** %MEMORY
  br label %block_.L_4089a1

block_.L_4088ce:                                  ; preds = %block_408816, %block_.L_4087fc
  %loadMem_4088ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 33
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5628 to i64*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 1
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 15
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %RBP.i353
  %5636 = sub i64 %5635, 8
  %5637 = load i64, i64* %PC.i351
  %5638 = add i64 %5637, 3
  store i64 %5638, i64* %PC.i351
  %5639 = inttoptr i64 %5636 to i32*
  %5640 = load i32, i32* %5639
  %5641 = zext i32 %5640 to i64
  store i64 %5641, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_4088ce, %struct.Memory** %MEMORY
  %loadMem_4088d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RAX.i350
  %5649 = load i64, i64* %PC.i349
  %5650 = add i64 %5649, 3
  store i64 %5650, i64* %PC.i349
  %5651 = trunc i64 %5648 to i32
  %5652 = sub i32 %5651, 20
  %5653 = zext i32 %5652 to i64
  store i64 %5653, i64* %RAX.i350, align 8
  %5654 = icmp ult i32 %5651, 20
  %5655 = zext i1 %5654 to i8
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5655, i8* %5656, align 1
  %5657 = and i32 %5652, 255
  %5658 = call i32 @llvm.ctpop.i32(i32 %5657)
  %5659 = trunc i32 %5658 to i8
  %5660 = and i8 %5659, 1
  %5661 = xor i8 %5660, 1
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5661, i8* %5662, align 1
  %5663 = xor i64 20, %5648
  %5664 = trunc i64 %5663 to i32
  %5665 = xor i32 %5664, %5652
  %5666 = lshr i32 %5665, 4
  %5667 = trunc i32 %5666 to i8
  %5668 = and i8 %5667, 1
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5668, i8* %5669, align 1
  %5670 = icmp eq i32 %5652, 0
  %5671 = zext i1 %5670 to i8
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5671, i8* %5672, align 1
  %5673 = lshr i32 %5652, 31
  %5674 = trunc i32 %5673 to i8
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5674, i8* %5675, align 1
  %5676 = lshr i32 %5651, 31
  %5677 = xor i32 %5673, %5676
  %5678 = add i32 %5677, %5676
  %5679 = icmp eq i32 %5678, 2
  %5680 = zext i1 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5680, i8* %5681, align 1
  store %struct.Memory* %loadMem_4088d1, %struct.Memory** %MEMORY
  %loadMem_4088d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 33
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5684 to i64*
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 1
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %5687 to i32*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 5
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %5690 to i64*
  %5691 = load i32, i32* %EAX.i347
  %5692 = zext i32 %5691 to i64
  %5693 = load i64, i64* %PC.i346
  %5694 = add i64 %5693, 3
  store i64 %5694, i64* %PC.i346
  %5695 = shl i64 %5692, 32
  %5696 = ashr exact i64 %5695, 32
  store i64 %5696, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_4088d4, %struct.Memory** %MEMORY
  %loadMem_4088d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 33
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5699 to i64*
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 1
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 5
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %5705 to i64*
  %5706 = load i64, i64* %RCX.i345
  %5707 = add i64 %5706, 12099168
  %5708 = load i64, i64* %PC.i343
  %5709 = add i64 %5708, 8
  store i64 %5709, i64* %PC.i343
  %5710 = inttoptr i64 %5707 to i8*
  %5711 = load i8, i8* %5710
  %5712 = zext i8 %5711 to i64
  store i64 %5712, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_4088d7, %struct.Memory** %MEMORY
  %loadMem_4088df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 33
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5715 to i64*
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 1
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %5718 to i32*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 15
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %5721 to i64*
  %5722 = load i32, i32* %EAX.i341
  %5723 = zext i32 %5722 to i64
  %5724 = load i64, i64* %RBP.i342
  %5725 = sub i64 %5724, 12
  %5726 = load i64, i64* %PC.i340
  %5727 = add i64 %5726, 3
  store i64 %5727, i64* %PC.i340
  %5728 = inttoptr i64 %5725 to i32*
  %5729 = load i32, i32* %5728
  %5730 = sub i32 %5722, %5729
  %5731 = icmp ult i32 %5722, %5729
  %5732 = zext i1 %5731 to i8
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5732, i8* %5733, align 1
  %5734 = and i32 %5730, 255
  %5735 = call i32 @llvm.ctpop.i32(i32 %5734)
  %5736 = trunc i32 %5735 to i8
  %5737 = and i8 %5736, 1
  %5738 = xor i8 %5737, 1
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5738, i8* %5739, align 1
  %5740 = xor i32 %5729, %5722
  %5741 = xor i32 %5740, %5730
  %5742 = lshr i32 %5741, 4
  %5743 = trunc i32 %5742 to i8
  %5744 = and i8 %5743, 1
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5744, i8* %5745, align 1
  %5746 = icmp eq i32 %5730, 0
  %5747 = zext i1 %5746 to i8
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5747, i8* %5748, align 1
  %5749 = lshr i32 %5730, 31
  %5750 = trunc i32 %5749 to i8
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5750, i8* %5751, align 1
  %5752 = lshr i32 %5722, 31
  %5753 = lshr i32 %5729, 31
  %5754 = xor i32 %5753, %5752
  %5755 = xor i32 %5749, %5752
  %5756 = add i32 %5755, %5754
  %5757 = icmp eq i32 %5756, 2
  %5758 = zext i1 %5757 to i8
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5758, i8* %5759, align 1
  store %struct.Memory* %loadMem_4088df, %struct.Memory** %MEMORY
  %loadMem_4088e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %PC.i339
  %5764 = add i64 %5763, 186
  %5765 = load i64, i64* %PC.i339
  %5766 = add i64 %5765, 6
  %5767 = load i64, i64* %PC.i339
  %5768 = add i64 %5767, 6
  store i64 %5768, i64* %PC.i339
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5770 = load i8, i8* %5769, align 1
  %5771 = icmp eq i8 %5770, 0
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %BRANCH_TAKEN, align 1
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5774 = select i1 %5771, i64 %5764, i64 %5766
  store i64 %5774, i64* %5773, align 8
  store %struct.Memory* %loadMem_4088e2, %struct.Memory** %MEMORY
  %loadBr_4088e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4088e2 = icmp eq i8 %loadBr_4088e2, 1
  br i1 %cmpBr_4088e2, label %block_.L_40899c, label %block_4088e8

block_4088e8:                                     ; preds = %block_.L_4088ce
  %loadMem_4088e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 33
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5777 to i64*
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 1
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %5780 to i64*
  %5781 = load i64, i64* %PC.i337
  %5782 = add i64 %5781, 10
  store i64 %5782, i64* %PC.i337
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_4088e8, %struct.Memory** %MEMORY
  %loadMem_4088f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 5
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 15
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %5791 to i64*
  %5792 = load i64, i64* %RBP.i336
  %5793 = sub i64 %5792, 8
  %5794 = load i64, i64* %PC.i334
  %5795 = add i64 %5794, 3
  store i64 %5795, i64* %PC.i334
  %5796 = inttoptr i64 %5793 to i32*
  %5797 = load i32, i32* %5796
  %5798 = zext i32 %5797 to i64
  store i64 %5798, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_4088f2, %struct.Memory** %MEMORY
  %loadMem_4088f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 5
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RCX.i333
  %5806 = load i64, i64* %PC.i332
  %5807 = add i64 %5806, 3
  store i64 %5807, i64* %PC.i332
  %5808 = trunc i64 %5805 to i32
  %5809 = sub i32 %5808, 20
  %5810 = zext i32 %5809 to i64
  store i64 %5810, i64* %RCX.i333, align 8
  %5811 = icmp ult i32 %5808, 20
  %5812 = zext i1 %5811 to i8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5812, i8* %5813, align 1
  %5814 = and i32 %5809, 255
  %5815 = call i32 @llvm.ctpop.i32(i32 %5814)
  %5816 = trunc i32 %5815 to i8
  %5817 = and i8 %5816, 1
  %5818 = xor i8 %5817, 1
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5818, i8* %5819, align 1
  %5820 = xor i64 20, %5805
  %5821 = trunc i64 %5820 to i32
  %5822 = xor i32 %5821, %5809
  %5823 = lshr i32 %5822, 4
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5825, i8* %5826, align 1
  %5827 = icmp eq i32 %5809, 0
  %5828 = zext i1 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5828, i8* %5829, align 1
  %5830 = lshr i32 %5809, 31
  %5831 = trunc i32 %5830 to i8
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5831, i8* %5832, align 1
  %5833 = lshr i32 %5808, 31
  %5834 = xor i32 %5830, %5833
  %5835 = add i32 %5834, %5833
  %5836 = icmp eq i32 %5835, 2
  %5837 = zext i1 %5836 to i8
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5837, i8* %5838, align 1
  store %struct.Memory* %loadMem_4088f5, %struct.Memory** %MEMORY
  %loadMem_4088f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 33
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 5
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %ECX.i330 = bitcast %union.anon* %5844 to i32*
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5846 = getelementptr inbounds %struct.GPR, %struct.GPR* %5845, i32 0, i32 7
  %5847 = getelementptr inbounds %struct.Reg, %struct.Reg* %5846, i32 0, i32 0
  %RDX.i331 = bitcast %union.anon* %5847 to i64*
  %5848 = load i32, i32* %ECX.i330
  %5849 = zext i32 %5848 to i64
  %5850 = load i64, i64* %PC.i329
  %5851 = add i64 %5850, 3
  store i64 %5851, i64* %PC.i329
  %5852 = shl i64 %5849, 32
  %5853 = ashr exact i64 %5852, 32
  store i64 %5853, i64* %RDX.i331, align 8
  store %struct.Memory* %loadMem_4088f8, %struct.Memory** %MEMORY
  %loadMem_4088fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5855 = getelementptr inbounds %struct.GPR, %struct.GPR* %5854, i32 0, i32 33
  %5856 = getelementptr inbounds %struct.Reg, %struct.Reg* %5855, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5856 to i64*
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 7
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %5859 to i64*
  %5860 = load i64, i64* %RDX.i328
  %5861 = mul i64 %5860, 4
  %5862 = add i64 %5861, 11187184
  %5863 = load i64, i64* %PC.i327
  %5864 = add i64 %5863, 8
  store i64 %5864, i64* %PC.i327
  %5865 = inttoptr i64 %5862 to i32*
  %5866 = load i32, i32* %5865
  %5867 = sext i32 %5866 to i64
  store i64 %5867, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_4088fb, %struct.Memory** %MEMORY
  %loadMem_408903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 33
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 7
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %RDX.i326
  %5875 = load i64, i64* %PC.i325
  %5876 = add i64 %5875, 7
  store i64 %5876, i64* %PC.i325
  %5877 = sext i64 %5874 to i128
  %5878 = and i128 %5877, -18446744073709551616
  %5879 = zext i64 %5874 to i128
  %5880 = or i128 %5878, %5879
  %5881 = mul i128 744, %5880
  %5882 = trunc i128 %5881 to i64
  store i64 %5882, i64* %RDX.i326, align 8
  %5883 = sext i64 %5882 to i128
  %5884 = icmp ne i128 %5883, %5881
  %5885 = zext i1 %5884 to i8
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5885, i8* %5886, align 1
  %5887 = trunc i128 %5881 to i32
  %5888 = and i32 %5887, 255
  %5889 = call i32 @llvm.ctpop.i32(i32 %5888)
  %5890 = trunc i32 %5889 to i8
  %5891 = and i8 %5890, 1
  %5892 = xor i8 %5891, 1
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5892, i8* %5893, align 1
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5894, align 1
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5895, align 1
  %5896 = lshr i64 %5882, 63
  %5897 = trunc i64 %5896 to i8
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5897, i8* %5898, align 1
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5885, i8* %5899, align 1
  store %struct.Memory* %loadMem_408903, %struct.Memory** %MEMORY
  %loadMem_40890a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 33
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5902 to i64*
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 1
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 7
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %5908 to i64*
  %5909 = load i64, i64* %RAX.i323
  %5910 = load i64, i64* %RDX.i324
  %5911 = load i64, i64* %PC.i322
  %5912 = add i64 %5911, 3
  store i64 %5912, i64* %PC.i322
  %5913 = add i64 %5910, %5909
  store i64 %5913, i64* %RAX.i323, align 8
  %5914 = icmp ult i64 %5913, %5909
  %5915 = icmp ult i64 %5913, %5910
  %5916 = or i1 %5914, %5915
  %5917 = zext i1 %5916 to i8
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5917, i8* %5918, align 1
  %5919 = trunc i64 %5913 to i32
  %5920 = and i32 %5919, 255
  %5921 = call i32 @llvm.ctpop.i32(i32 %5920)
  %5922 = trunc i32 %5921 to i8
  %5923 = and i8 %5922, 1
  %5924 = xor i8 %5923, 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5924, i8* %5925, align 1
  %5926 = xor i64 %5910, %5909
  %5927 = xor i64 %5926, %5913
  %5928 = lshr i64 %5927, 4
  %5929 = trunc i64 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5930, i8* %5931, align 1
  %5932 = icmp eq i64 %5913, 0
  %5933 = zext i1 %5932 to i8
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5933, i8* %5934, align 1
  %5935 = lshr i64 %5913, 63
  %5936 = trunc i64 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5936, i8* %5937, align 1
  %5938 = lshr i64 %5909, 63
  %5939 = lshr i64 %5910, 63
  %5940 = xor i64 %5935, %5938
  %5941 = xor i64 %5935, %5939
  %5942 = add i64 %5940, %5941
  %5943 = icmp eq i64 %5942, 2
  %5944 = zext i1 %5943 to i8
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5944, i8* %5945, align 1
  store %struct.Memory* %loadMem_40890a, %struct.Memory** %MEMORY
  %loadMem_40890d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 33
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 1
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %5951 to i64*
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 5
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5954 to i64*
  %5955 = load i64, i64* %RAX.i320
  %5956 = add i64 %5955, 740
  %5957 = load i64, i64* %PC.i319
  %5958 = add i64 %5957, 6
  store i64 %5958, i64* %PC.i319
  %5959 = inttoptr i64 %5956 to i32*
  %5960 = load i32, i32* %5959
  %5961 = zext i32 %5960 to i64
  store i64 %5961, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_40890d, %struct.Memory** %MEMORY
  %loadMem_408913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 33
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 5
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %ECX.i318 = bitcast %union.anon* %5967 to i32*
  %5968 = load i32, i32* %ECX.i318
  %5969 = zext i32 %5968 to i64
  %5970 = load i64, i64* %PC.i317
  %5971 = add i64 %5970, 7
  store i64 %5971, i64* %PC.i317
  %5972 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5973 = sub i32 %5968, %5972
  %5974 = icmp ult i32 %5968, %5972
  %5975 = zext i1 %5974 to i8
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5975, i8* %5976, align 1
  %5977 = and i32 %5973, 255
  %5978 = call i32 @llvm.ctpop.i32(i32 %5977)
  %5979 = trunc i32 %5978 to i8
  %5980 = and i8 %5979, 1
  %5981 = xor i8 %5980, 1
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5981, i8* %5982, align 1
  %5983 = xor i32 %5972, %5968
  %5984 = xor i32 %5983, %5973
  %5985 = lshr i32 %5984, 4
  %5986 = trunc i32 %5985 to i8
  %5987 = and i8 %5986, 1
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5987, i8* %5988, align 1
  %5989 = icmp eq i32 %5973, 0
  %5990 = zext i1 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5990, i8* %5991, align 1
  %5992 = lshr i32 %5973, 31
  %5993 = trunc i32 %5992 to i8
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5993, i8* %5994, align 1
  %5995 = lshr i32 %5968, 31
  %5996 = lshr i32 %5972, 31
  %5997 = xor i32 %5996, %5995
  %5998 = xor i32 %5992, %5995
  %5999 = add i32 %5998, %5997
  %6000 = icmp eq i32 %5999, 2
  %6001 = zext i1 %6000 to i8
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6001, i8* %6002, align 1
  store %struct.Memory* %loadMem_408913, %struct.Memory** %MEMORY
  %loadMem_40891a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %PC.i316
  %6007 = add i64 %6006, 130
  %6008 = load i64, i64* %PC.i316
  %6009 = add i64 %6008, 6
  %6010 = load i64, i64* %PC.i316
  %6011 = add i64 %6010, 6
  store i64 %6011, i64* %PC.i316
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6013 = load i8, i8* %6012, align 1
  store i8 %6013, i8* %BRANCH_TAKEN, align 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6015 = icmp ne i8 %6013, 0
  %6016 = select i1 %6015, i64 %6007, i64 %6009
  store i64 %6016, i64* %6014, align 8
  store %struct.Memory* %loadMem_40891a, %struct.Memory** %MEMORY
  %loadBr_40891a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40891a = icmp eq i8 %loadBr_40891a, 1
  br i1 %cmpBr_40891a, label %block_.L_40899c, label %block_408920

block_408920:                                     ; preds = %block_4088e8
  %loadMem_408920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 33
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %6019 to i64*
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 1
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %6022 to i64*
  %6023 = load i64, i64* %PC.i314
  %6024 = add i64 %6023, 10
  store i64 %6024, i64* %PC.i314
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_408920, %struct.Memory** %MEMORY
  %loadMem_40892a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 33
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6027 to i64*
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6029 = getelementptr inbounds %struct.GPR, %struct.GPR* %6028, i32 0, i32 5
  %6030 = getelementptr inbounds %struct.Reg, %struct.Reg* %6029, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %6030 to i64*
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 15
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %6033 to i64*
  %6034 = load i64, i64* %RBP.i313
  %6035 = sub i64 %6034, 8
  %6036 = load i64, i64* %PC.i311
  %6037 = add i64 %6036, 3
  store i64 %6037, i64* %PC.i311
  %6038 = inttoptr i64 %6035 to i32*
  %6039 = load i32, i32* %6038
  %6040 = zext i32 %6039 to i64
  store i64 %6040, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_40892a, %struct.Memory** %MEMORY
  %loadMem_40892d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 33
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %6043 to i64*
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 5
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %6046 to i64*
  %6047 = load i64, i64* %RCX.i310
  %6048 = load i64, i64* %PC.i309
  %6049 = add i64 %6048, 3
  store i64 %6049, i64* %PC.i309
  %6050 = trunc i64 %6047 to i32
  %6051 = sub i32 %6050, 20
  %6052 = zext i32 %6051 to i64
  store i64 %6052, i64* %RCX.i310, align 8
  %6053 = icmp ult i32 %6050, 20
  %6054 = zext i1 %6053 to i8
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6054, i8* %6055, align 1
  %6056 = and i32 %6051, 255
  %6057 = call i32 @llvm.ctpop.i32(i32 %6056)
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  %6060 = xor i8 %6059, 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6060, i8* %6061, align 1
  %6062 = xor i64 20, %6047
  %6063 = trunc i64 %6062 to i32
  %6064 = xor i32 %6063, %6051
  %6065 = lshr i32 %6064, 4
  %6066 = trunc i32 %6065 to i8
  %6067 = and i8 %6066, 1
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6067, i8* %6068, align 1
  %6069 = icmp eq i32 %6051, 0
  %6070 = zext i1 %6069 to i8
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6070, i8* %6071, align 1
  %6072 = lshr i32 %6051, 31
  %6073 = trunc i32 %6072 to i8
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6073, i8* %6074, align 1
  %6075 = lshr i32 %6050, 31
  %6076 = xor i32 %6072, %6075
  %6077 = add i32 %6076, %6075
  %6078 = icmp eq i32 %6077, 2
  %6079 = zext i1 %6078 to i8
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6079, i8* %6080, align 1
  store %struct.Memory* %loadMem_40892d, %struct.Memory** %MEMORY
  %loadMem_408930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 33
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 5
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %ECX.i307 = bitcast %union.anon* %6086 to i32*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 7
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %6089 to i64*
  %6090 = load i32, i32* %ECX.i307
  %6091 = zext i32 %6090 to i64
  %6092 = load i64, i64* %PC.i306
  %6093 = add i64 %6092, 3
  store i64 %6093, i64* %PC.i306
  %6094 = shl i64 %6091, 32
  %6095 = ashr exact i64 %6094, 32
  store i64 %6095, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_408930, %struct.Memory** %MEMORY
  %loadMem_408933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 33
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 5
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 7
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %6104 to i64*
  %6105 = load i64, i64* %RDX.i305
  %6106 = mul i64 %6105, 4
  %6107 = add i64 %6106, 11187184
  %6108 = load i64, i64* %PC.i303
  %6109 = add i64 %6108, 7
  store i64 %6109, i64* %PC.i303
  %6110 = inttoptr i64 %6107 to i32*
  %6111 = load i32, i32* %6110
  %6112 = zext i32 %6111 to i64
  store i64 %6112, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_408933, %struct.Memory** %MEMORY
  %loadMem_40893a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 33
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 7
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RDX.i301 = bitcast %union.anon* %6118 to i64*
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 15
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %RBP.i302
  %6123 = sub i64 %6122, 4
  %6124 = load i64, i64* %PC.i300
  %6125 = add i64 %6124, 4
  store i64 %6125, i64* %PC.i300
  %6126 = inttoptr i64 %6123 to i32*
  %6127 = load i32, i32* %6126
  %6128 = sext i32 %6127 to i64
  store i64 %6128, i64* %RDX.i301, align 8
  store %struct.Memory* %loadMem_40893a, %struct.Memory** %MEMORY
  %loadMem_40893e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 7
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %6134 to i64*
  %6135 = load i64, i64* %RDX.i299
  %6136 = load i64, i64* %PC.i298
  %6137 = add i64 %6136, 7
  store i64 %6137, i64* %PC.i298
  %6138 = sext i64 %6135 to i128
  %6139 = and i128 %6138, -18446744073709551616
  %6140 = zext i64 %6135 to i128
  %6141 = or i128 %6139, %6140
  %6142 = mul i128 744, %6141
  %6143 = trunc i128 %6142 to i64
  store i64 %6143, i64* %RDX.i299, align 8
  %6144 = sext i64 %6143 to i128
  %6145 = icmp ne i128 %6144, %6142
  %6146 = zext i1 %6145 to i8
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6146, i8* %6147, align 1
  %6148 = trunc i128 %6142 to i32
  %6149 = and i32 %6148, 255
  %6150 = call i32 @llvm.ctpop.i32(i32 %6149)
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = xor i8 %6152, 1
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6153, i8* %6154, align 1
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6155, align 1
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6156, align 1
  %6157 = lshr i64 %6143, 63
  %6158 = trunc i64 %6157 to i8
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6158, i8* %6159, align 1
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6146, i8* %6160, align 1
  store %struct.Memory* %loadMem_40893e, %struct.Memory** %MEMORY
  %loadMem_408945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 33
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6163 to i64*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 1
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 9
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %RSI.i297 = bitcast %union.anon* %6169 to i64*
  %6170 = load i64, i64* %RAX.i296
  %6171 = load i64, i64* %PC.i295
  %6172 = add i64 %6171, 3
  store i64 %6172, i64* %PC.i295
  store i64 %6170, i64* %RSI.i297, align 8
  store %struct.Memory* %loadMem_408945, %struct.Memory** %MEMORY
  %loadMem_408948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 7
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 9
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RSI.i294 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %RSI.i294
  %6183 = load i64, i64* %RDX.i293
  %6184 = load i64, i64* %PC.i292
  %6185 = add i64 %6184, 3
  store i64 %6185, i64* %PC.i292
  %6186 = add i64 %6183, %6182
  store i64 %6186, i64* %RSI.i294, align 8
  %6187 = icmp ult i64 %6186, %6182
  %6188 = icmp ult i64 %6186, %6183
  %6189 = or i1 %6187, %6188
  %6190 = zext i1 %6189 to i8
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6190, i8* %6191, align 1
  %6192 = trunc i64 %6186 to i32
  %6193 = and i32 %6192, 255
  %6194 = call i32 @llvm.ctpop.i32(i32 %6193)
  %6195 = trunc i32 %6194 to i8
  %6196 = and i8 %6195, 1
  %6197 = xor i8 %6196, 1
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6197, i8* %6198, align 1
  %6199 = xor i64 %6183, %6182
  %6200 = xor i64 %6199, %6186
  %6201 = lshr i64 %6200, 4
  %6202 = trunc i64 %6201 to i8
  %6203 = and i8 %6202, 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6203, i8* %6204, align 1
  %6205 = icmp eq i64 %6186, 0
  %6206 = zext i1 %6205 to i8
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6206, i8* %6207, align 1
  %6208 = lshr i64 %6186, 63
  %6209 = trunc i64 %6208 to i8
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6209, i8* %6210, align 1
  %6211 = lshr i64 %6182, 63
  %6212 = lshr i64 %6183, 63
  %6213 = xor i64 %6208, %6211
  %6214 = xor i64 %6208, %6212
  %6215 = add i64 %6213, %6214
  %6216 = icmp eq i64 %6215, 2
  %6217 = zext i1 %6216 to i8
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6217, i8* %6218, align 1
  store %struct.Memory* %loadMem_408948, %struct.Memory** %MEMORY
  %loadMem_40894b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 7
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %6224 to i64*
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 15
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %6227 to i64*
  %6228 = load i64, i64* %RBP.i291
  %6229 = sub i64 %6228, 4
  %6230 = load i64, i64* %PC.i289
  %6231 = add i64 %6230, 4
  store i64 %6231, i64* %PC.i289
  %6232 = inttoptr i64 %6229 to i32*
  %6233 = load i32, i32* %6232
  %6234 = sext i32 %6233 to i64
  store i64 %6234, i64* %RDX.i290, align 8
  store %struct.Memory* %loadMem_40894b, %struct.Memory** %MEMORY
  %loadMem_40894f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 33
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 7
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %RDX.i288
  %6242 = load i64, i64* %PC.i287
  %6243 = add i64 %6242, 7
  store i64 %6243, i64* %PC.i287
  %6244 = sext i64 %6241 to i128
  %6245 = and i128 %6244, -18446744073709551616
  %6246 = zext i64 %6241 to i128
  %6247 = or i128 %6245, %6246
  %6248 = mul i128 744, %6247
  %6249 = trunc i128 %6248 to i64
  store i64 %6249, i64* %RDX.i288, align 8
  %6250 = sext i64 %6249 to i128
  %6251 = icmp ne i128 %6250, %6248
  %6252 = zext i1 %6251 to i8
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6252, i8* %6253, align 1
  %6254 = trunc i128 %6248 to i32
  %6255 = and i32 %6254, 255
  %6256 = call i32 @llvm.ctpop.i32(i32 %6255)
  %6257 = trunc i32 %6256 to i8
  %6258 = and i8 %6257, 1
  %6259 = xor i8 %6258, 1
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6259, i8* %6260, align 1
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6261, align 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6262, align 1
  %6263 = lshr i64 %6249, 63
  %6264 = trunc i64 %6263 to i8
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6264, i8* %6265, align 1
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6252, i8* %6266, align 1
  store %struct.Memory* %loadMem_40894f, %struct.Memory** %MEMORY
  %loadMem_408956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 33
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6269 to i64*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 1
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %6272 to i64*
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 11
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %RDI.i286 = bitcast %union.anon* %6275 to i64*
  %6276 = load i64, i64* %RAX.i285
  %6277 = load i64, i64* %PC.i284
  %6278 = add i64 %6277, 3
  store i64 %6278, i64* %PC.i284
  store i64 %6276, i64* %RDI.i286, align 8
  store %struct.Memory* %loadMem_408956, %struct.Memory** %MEMORY
  %loadMem_408959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 33
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 7
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %6284 to i64*
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 11
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %6287 to i64*
  %6288 = load i64, i64* %RDI.i283
  %6289 = load i64, i64* %RDX.i282
  %6290 = load i64, i64* %PC.i281
  %6291 = add i64 %6290, 3
  store i64 %6291, i64* %PC.i281
  %6292 = add i64 %6289, %6288
  store i64 %6292, i64* %RDI.i283, align 8
  %6293 = icmp ult i64 %6292, %6288
  %6294 = icmp ult i64 %6292, %6289
  %6295 = or i1 %6293, %6294
  %6296 = zext i1 %6295 to i8
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6296, i8* %6297, align 1
  %6298 = trunc i64 %6292 to i32
  %6299 = and i32 %6298, 255
  %6300 = call i32 @llvm.ctpop.i32(i32 %6299)
  %6301 = trunc i32 %6300 to i8
  %6302 = and i8 %6301, 1
  %6303 = xor i8 %6302, 1
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6303, i8* %6304, align 1
  %6305 = xor i64 %6289, %6288
  %6306 = xor i64 %6305, %6292
  %6307 = lshr i64 %6306, 4
  %6308 = trunc i64 %6307 to i8
  %6309 = and i8 %6308, 1
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6309, i8* %6310, align 1
  %6311 = icmp eq i64 %6292, 0
  %6312 = zext i1 %6311 to i8
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6312, i8* %6313, align 1
  %6314 = lshr i64 %6292, 63
  %6315 = trunc i64 %6314 to i8
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6315, i8* %6316, align 1
  %6317 = lshr i64 %6288, 63
  %6318 = lshr i64 %6289, 63
  %6319 = xor i64 %6314, %6317
  %6320 = xor i64 %6314, %6318
  %6321 = add i64 %6319, %6320
  %6322 = icmp eq i64 %6321, 2
  %6323 = zext i1 %6322 to i8
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6323, i8* %6324, align 1
  store %struct.Memory* %loadMem_408959, %struct.Memory** %MEMORY
  %loadMem_40895c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 33
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 17
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %R8D.i279 = bitcast %union.anon* %6330 to i32*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 11
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RDI.i280 = bitcast %union.anon* %6333 to i64*
  %6334 = bitcast i32* %R8D.i279 to i64*
  %6335 = load i64, i64* %RDI.i280
  %6336 = add i64 %6335, 96
  %6337 = load i64, i64* %PC.i278
  %6338 = add i64 %6337, 4
  store i64 %6338, i64* %PC.i278
  %6339 = inttoptr i64 %6336 to i32*
  %6340 = load i32, i32* %6339
  %6341 = zext i32 %6340 to i64
  store i64 %6341, i64* %6334, align 8
  store %struct.Memory* %loadMem_40895c, %struct.Memory** %MEMORY
  %loadMem_408960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 33
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6344 to i64*
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 17
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %R8D.i276 = bitcast %union.anon* %6347 to i32*
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 19
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %R9D.i277 = bitcast %union.anon* %6350 to i32*
  %6351 = bitcast i32* %R9D.i277 to i64*
  %6352 = load i32, i32* %R8D.i276
  %6353 = zext i32 %6352 to i64
  %6354 = load i64, i64* %PC.i275
  %6355 = add i64 %6354, 3
  store i64 %6355, i64* %PC.i275
  %6356 = and i64 %6353, 4294967295
  store i64 %6356, i64* %6351, align 8
  store %struct.Memory* %loadMem_408960, %struct.Memory** %MEMORY
  %loadMem_408963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 33
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6359 to i64*
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 19
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %R9D.i274 = bitcast %union.anon* %6362 to i32*
  %6363 = bitcast i32* %R9D.i274 to i64*
  %6364 = load i32, i32* %R9D.i274
  %6365 = zext i32 %6364 to i64
  %6366 = load i64, i64* %PC.i273
  %6367 = add i64 %6366, 4
  store i64 %6367, i64* %PC.i273
  %6368 = add i32 1, %6364
  %6369 = zext i32 %6368 to i64
  store i64 %6369, i64* %6363, align 8
  %6370 = icmp ult i32 %6368, %6364
  %6371 = icmp ult i32 %6368, 1
  %6372 = or i1 %6370, %6371
  %6373 = zext i1 %6372 to i8
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6373, i8* %6374, align 1
  %6375 = and i32 %6368, 255
  %6376 = call i32 @llvm.ctpop.i32(i32 %6375)
  %6377 = trunc i32 %6376 to i8
  %6378 = and i8 %6377, 1
  %6379 = xor i8 %6378, 1
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6379, i8* %6380, align 1
  %6381 = xor i64 1, %6365
  %6382 = trunc i64 %6381 to i32
  %6383 = xor i32 %6382, %6368
  %6384 = lshr i32 %6383, 4
  %6385 = trunc i32 %6384 to i8
  %6386 = and i8 %6385, 1
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6386, i8* %6387, align 1
  %6388 = icmp eq i32 %6368, 0
  %6389 = zext i1 %6388 to i8
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6389, i8* %6390, align 1
  %6391 = lshr i32 %6368, 31
  %6392 = trunc i32 %6391 to i8
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6392, i8* %6393, align 1
  %6394 = lshr i32 %6364, 31
  %6395 = xor i32 %6391, %6394
  %6396 = add i32 %6395, %6391
  %6397 = icmp eq i32 %6396, 2
  %6398 = zext i1 %6397 to i8
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6398, i8* %6399, align 1
  store %struct.Memory* %loadMem_408963, %struct.Memory** %MEMORY
  %loadMem_408967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6402 to i64*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 19
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %R9D.i271 = bitcast %union.anon* %6405 to i32*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 11
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %RDI.i272 = bitcast %union.anon* %6408 to i64*
  %6409 = load i64, i64* %RDI.i272
  %6410 = add i64 %6409, 96
  %6411 = load i32, i32* %R9D.i271
  %6412 = zext i32 %6411 to i64
  %6413 = load i64, i64* %PC.i270
  %6414 = add i64 %6413, 4
  store i64 %6414, i64* %PC.i270
  %6415 = inttoptr i64 %6410 to i32*
  store i32 %6411, i32* %6415
  store %struct.Memory* %loadMem_408967, %struct.Memory** %MEMORY
  %loadMem_40896b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 33
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6418 to i64*
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 17
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %R8D.i268 = bitcast %union.anon* %6421 to i32*
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 7
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %6424 to i64*
  %6425 = load i32, i32* %R8D.i268
  %6426 = zext i32 %6425 to i64
  %6427 = load i64, i64* %PC.i267
  %6428 = add i64 %6427, 3
  store i64 %6428, i64* %PC.i267
  %6429 = shl i64 %6426, 32
  %6430 = ashr exact i64 %6429, 32
  store i64 %6430, i64* %RDX.i269, align 8
  store %struct.Memory* %loadMem_40896b, %struct.Memory** %MEMORY
  %loadMem_40896e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6433 to i64*
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 5
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %ECX.i264 = bitcast %union.anon* %6436 to i32*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 7
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 9
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %RSI.i266 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %RSI.i266
  %6444 = load i64, i64* %RDX.i265
  %6445 = mul i64 %6444, 4
  %6446 = add i64 %6443, 100
  %6447 = add i64 %6446, %6445
  %6448 = load i32, i32* %ECX.i264
  %6449 = zext i32 %6448 to i64
  %6450 = load i64, i64* %PC.i263
  %6451 = add i64 %6450, 4
  store i64 %6451, i64* %PC.i263
  %6452 = inttoptr i64 %6447 to i32*
  store i32 %6448, i32* %6452
  store %struct.Memory* %loadMem_40896e, %struct.Memory** %MEMORY
  %loadMem_408972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 5
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %6458 to i64*
  %6459 = load i64, i64* %PC.i261
  %6460 = add i64 %6459, 7
  store i64 %6460, i64* %PC.i261
  %6461 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %6462 = zext i32 %6461 to i64
  store i64 %6462, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_408972, %struct.Memory** %MEMORY
  %loadMem_408979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 33
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 17
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %R8D.i259 = bitcast %union.anon* %6468 to i32*
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6470 = getelementptr inbounds %struct.GPR, %struct.GPR* %6469, i32 0, i32 15
  %6471 = getelementptr inbounds %struct.Reg, %struct.Reg* %6470, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %6471 to i64*
  %6472 = bitcast i32* %R8D.i259 to i64*
  %6473 = load i64, i64* %RBP.i260
  %6474 = sub i64 %6473, 8
  %6475 = load i64, i64* %PC.i258
  %6476 = add i64 %6475, 4
  store i64 %6476, i64* %PC.i258
  %6477 = inttoptr i64 %6474 to i32*
  %6478 = load i32, i32* %6477
  %6479 = zext i32 %6478 to i64
  store i64 %6479, i64* %6472, align 8
  store %struct.Memory* %loadMem_408979, %struct.Memory** %MEMORY
  %loadMem_40897d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 33
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6482 to i64*
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 17
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %R8D.i257 = bitcast %union.anon* %6485 to i32*
  %6486 = bitcast i32* %R8D.i257 to i64*
  %6487 = load i32, i32* %R8D.i257
  %6488 = zext i32 %6487 to i64
  %6489 = load i64, i64* %PC.i256
  %6490 = add i64 %6489, 4
  store i64 %6490, i64* %PC.i256
  %6491 = sub i32 %6487, 20
  %6492 = zext i32 %6491 to i64
  store i64 %6492, i64* %6486, align 8
  %6493 = icmp ult i32 %6487, 20
  %6494 = zext i1 %6493 to i8
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6494, i8* %6495, align 1
  %6496 = and i32 %6491, 255
  %6497 = call i32 @llvm.ctpop.i32(i32 %6496)
  %6498 = trunc i32 %6497 to i8
  %6499 = and i8 %6498, 1
  %6500 = xor i8 %6499, 1
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6500, i8* %6501, align 1
  %6502 = xor i64 20, %6488
  %6503 = trunc i64 %6502 to i32
  %6504 = xor i32 %6503, %6491
  %6505 = lshr i32 %6504, 4
  %6506 = trunc i32 %6505 to i8
  %6507 = and i8 %6506, 1
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6507, i8* %6508, align 1
  %6509 = icmp eq i32 %6491, 0
  %6510 = zext i1 %6509 to i8
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6510, i8* %6511, align 1
  %6512 = lshr i32 %6491, 31
  %6513 = trunc i32 %6512 to i8
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6513, i8* %6514, align 1
  %6515 = lshr i32 %6487, 31
  %6516 = xor i32 %6512, %6515
  %6517 = add i32 %6516, %6515
  %6518 = icmp eq i32 %6517, 2
  %6519 = zext i1 %6518 to i8
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6519, i8* %6520, align 1
  store %struct.Memory* %loadMem_40897d, %struct.Memory** %MEMORY
  %loadMem_408981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 17
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %R8D.i254 = bitcast %union.anon* %6526 to i32*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 7
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %6529 to i64*
  %6530 = load i32, i32* %R8D.i254
  %6531 = zext i32 %6530 to i64
  %6532 = load i64, i64* %PC.i253
  %6533 = add i64 %6532, 3
  store i64 %6533, i64* %PC.i253
  %6534 = shl i64 %6531, 32
  %6535 = ashr exact i64 %6534, 32
  store i64 %6535, i64* %RDX.i255, align 8
  store %struct.Memory* %loadMem_408981, %struct.Memory** %MEMORY
  %loadMem_408984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6537 = getelementptr inbounds %struct.GPR, %struct.GPR* %6536, i32 0, i32 33
  %6538 = getelementptr inbounds %struct.Reg, %struct.Reg* %6537, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6538 to i64*
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 7
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %RDX.i252 = bitcast %union.anon* %6541 to i64*
  %6542 = load i64, i64* %RDX.i252
  %6543 = mul i64 %6542, 4
  %6544 = add i64 %6543, 11187184
  %6545 = load i64, i64* %PC.i251
  %6546 = add i64 %6545, 8
  store i64 %6546, i64* %PC.i251
  %6547 = inttoptr i64 %6544 to i32*
  %6548 = load i32, i32* %6547
  %6549 = sext i32 %6548 to i64
  store i64 %6549, i64* %RDX.i252, align 8
  store %struct.Memory* %loadMem_408984, %struct.Memory** %MEMORY
  %loadMem_40898c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 33
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6552 to i64*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 7
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %6555 to i64*
  %6556 = load i64, i64* %RDX.i250
  %6557 = load i64, i64* %PC.i249
  %6558 = add i64 %6557, 7
  store i64 %6558, i64* %PC.i249
  %6559 = sext i64 %6556 to i128
  %6560 = and i128 %6559, -18446744073709551616
  %6561 = zext i64 %6556 to i128
  %6562 = or i128 %6560, %6561
  %6563 = mul i128 744, %6562
  %6564 = trunc i128 %6563 to i64
  store i64 %6564, i64* %RDX.i250, align 8
  %6565 = sext i64 %6564 to i128
  %6566 = icmp ne i128 %6565, %6563
  %6567 = zext i1 %6566 to i8
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6567, i8* %6568, align 1
  %6569 = trunc i128 %6563 to i32
  %6570 = and i32 %6569, 255
  %6571 = call i32 @llvm.ctpop.i32(i32 %6570)
  %6572 = trunc i32 %6571 to i8
  %6573 = and i8 %6572, 1
  %6574 = xor i8 %6573, 1
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6574, i8* %6575, align 1
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6576, align 1
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6577, align 1
  %6578 = lshr i64 %6564, 63
  %6579 = trunc i64 %6578 to i8
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6579, i8* %6580, align 1
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6567, i8* %6581, align 1
  store %struct.Memory* %loadMem_40898c, %struct.Memory** %MEMORY
  %loadMem_408993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 1
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 7
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %RAX.i247
  %6592 = load i64, i64* %RDX.i248
  %6593 = load i64, i64* %PC.i246
  %6594 = add i64 %6593, 3
  store i64 %6594, i64* %PC.i246
  %6595 = add i64 %6592, %6591
  store i64 %6595, i64* %RAX.i247, align 8
  %6596 = icmp ult i64 %6595, %6591
  %6597 = icmp ult i64 %6595, %6592
  %6598 = or i1 %6596, %6597
  %6599 = zext i1 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6599, i8* %6600, align 1
  %6601 = trunc i64 %6595 to i32
  %6602 = and i32 %6601, 255
  %6603 = call i32 @llvm.ctpop.i32(i32 %6602)
  %6604 = trunc i32 %6603 to i8
  %6605 = and i8 %6604, 1
  %6606 = xor i8 %6605, 1
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6606, i8* %6607, align 1
  %6608 = xor i64 %6592, %6591
  %6609 = xor i64 %6608, %6595
  %6610 = lshr i64 %6609, 4
  %6611 = trunc i64 %6610 to i8
  %6612 = and i8 %6611, 1
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6612, i8* %6613, align 1
  %6614 = icmp eq i64 %6595, 0
  %6615 = zext i1 %6614 to i8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6615, i8* %6616, align 1
  %6617 = lshr i64 %6595, 63
  %6618 = trunc i64 %6617 to i8
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6618, i8* %6619, align 1
  %6620 = lshr i64 %6591, 63
  %6621 = lshr i64 %6592, 63
  %6622 = xor i64 %6617, %6620
  %6623 = xor i64 %6617, %6621
  %6624 = add i64 %6622, %6623
  %6625 = icmp eq i64 %6624, 2
  %6626 = zext i1 %6625 to i8
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6626, i8* %6627, align 1
  store %struct.Memory* %loadMem_408993, %struct.Memory** %MEMORY
  %loadMem_408996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 33
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 5
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %ECX.i244 = bitcast %union.anon* %6633 to i32*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 1
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %RAX.i245
  %6638 = add i64 %6637, 740
  %6639 = load i32, i32* %ECX.i244
  %6640 = zext i32 %6639 to i64
  %6641 = load i64, i64* %PC.i243
  %6642 = add i64 %6641, 6
  store i64 %6642, i64* %PC.i243
  %6643 = inttoptr i64 %6638 to i32*
  store i32 %6639, i32* %6643
  store %struct.Memory* %loadMem_408996, %struct.Memory** %MEMORY
  br label %block_.L_40899c

block_.L_40899c:                                  ; preds = %block_408920, %block_4088e8, %block_.L_4088ce
  %loadMem_40899c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6646 to i64*
  %6647 = load i64, i64* %PC.i242
  %6648 = add i64 %6647, 5
  %6649 = load i64, i64* %PC.i242
  %6650 = add i64 %6649, 5
  store i64 %6650, i64* %PC.i242
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6648, i64* %6651, align 8
  store %struct.Memory* %loadMem_40899c, %struct.Memory** %MEMORY
  br label %block_.L_4089a1

block_.L_4089a1:                                  ; preds = %block_.L_40899c, %block_.L_408891
  %loadMem_4089a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 33
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6654 to i64*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 1
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 15
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %6660 to i64*
  %6661 = load i64, i64* %RBP.i241
  %6662 = sub i64 %6661, 8
  %6663 = load i64, i64* %PC.i239
  %6664 = add i64 %6663, 3
  store i64 %6664, i64* %PC.i239
  %6665 = inttoptr i64 %6662 to i32*
  %6666 = load i32, i32* %6665
  %6667 = zext i32 %6666 to i64
  store i64 %6667, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_4089a1, %struct.Memory** %MEMORY
  %loadMem_4089a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 33
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6670 to i64*
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 1
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %6673 to i64*
  %6674 = load i64, i64* %RAX.i238
  %6675 = load i64, i64* %PC.i237
  %6676 = add i64 %6675, 3
  store i64 %6676, i64* %PC.i237
  %6677 = trunc i64 %6674 to i32
  %6678 = add i32 1, %6677
  %6679 = zext i32 %6678 to i64
  store i64 %6679, i64* %RAX.i238, align 8
  %6680 = icmp ult i32 %6678, %6677
  %6681 = icmp ult i32 %6678, 1
  %6682 = or i1 %6680, %6681
  %6683 = zext i1 %6682 to i8
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6683, i8* %6684, align 1
  %6685 = and i32 %6678, 255
  %6686 = call i32 @llvm.ctpop.i32(i32 %6685)
  %6687 = trunc i32 %6686 to i8
  %6688 = and i8 %6687, 1
  %6689 = xor i8 %6688, 1
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6689, i8* %6690, align 1
  %6691 = xor i64 1, %6674
  %6692 = trunc i64 %6691 to i32
  %6693 = xor i32 %6692, %6678
  %6694 = lshr i32 %6693, 4
  %6695 = trunc i32 %6694 to i8
  %6696 = and i8 %6695, 1
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6696, i8* %6697, align 1
  %6698 = icmp eq i32 %6678, 0
  %6699 = zext i1 %6698 to i8
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6699, i8* %6700, align 1
  %6701 = lshr i32 %6678, 31
  %6702 = trunc i32 %6701 to i8
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6702, i8* %6703, align 1
  %6704 = lshr i32 %6677, 31
  %6705 = xor i32 %6701, %6704
  %6706 = add i32 %6705, %6701
  %6707 = icmp eq i32 %6706, 2
  %6708 = zext i1 %6707 to i8
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6708, i8* %6709, align 1
  store %struct.Memory* %loadMem_4089a4, %struct.Memory** %MEMORY
  %loadMem_4089a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6711 = getelementptr inbounds %struct.GPR, %struct.GPR* %6710, i32 0, i32 33
  %6712 = getelementptr inbounds %struct.Reg, %struct.Reg* %6711, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6712 to i64*
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6714 = getelementptr inbounds %struct.GPR, %struct.GPR* %6713, i32 0, i32 1
  %6715 = getelementptr inbounds %struct.Reg, %struct.Reg* %6714, i32 0, i32 0
  %EAX.i235 = bitcast %union.anon* %6715 to i32*
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 5
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %6718 to i64*
  %6719 = load i32, i32* %EAX.i235
  %6720 = zext i32 %6719 to i64
  %6721 = load i64, i64* %PC.i234
  %6722 = add i64 %6721, 3
  store i64 %6722, i64* %PC.i234
  %6723 = shl i64 %6720, 32
  %6724 = ashr exact i64 %6723, 32
  store i64 %6724, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_4089a7, %struct.Memory** %MEMORY
  %loadMem_4089aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 33
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 1
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %6730 to i64*
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6732 = getelementptr inbounds %struct.GPR, %struct.GPR* %6731, i32 0, i32 5
  %6733 = getelementptr inbounds %struct.Reg, %struct.Reg* %6732, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %6733 to i64*
  %6734 = load i64, i64* %RCX.i233
  %6735 = add i64 %6734, 12099168
  %6736 = load i64, i64* %PC.i231
  %6737 = add i64 %6736, 8
  store i64 %6737, i64* %PC.i231
  %6738 = inttoptr i64 %6735 to i8*
  %6739 = load i8, i8* %6738
  %6740 = zext i8 %6739 to i64
  store i64 %6740, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_4089aa, %struct.Memory** %MEMORY
  %loadMem_4089b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 33
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6743 to i64*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 1
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %6746 to i32*
  %6747 = load i32, i32* %EAX.i230
  %6748 = zext i32 %6747 to i64
  %6749 = load i64, i64* %PC.i229
  %6750 = add i64 %6749, 3
  store i64 %6750, i64* %PC.i229
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6751, align 1
  %6752 = and i32 %6747, 255
  %6753 = call i32 @llvm.ctpop.i32(i32 %6752)
  %6754 = trunc i32 %6753 to i8
  %6755 = and i8 %6754, 1
  %6756 = xor i8 %6755, 1
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6756, i8* %6757, align 1
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6758, align 1
  %6759 = icmp eq i32 %6747, 0
  %6760 = zext i1 %6759 to i8
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6760, i8* %6761, align 1
  %6762 = lshr i32 %6747, 31
  %6763 = trunc i32 %6762 to i8
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6763, i8* %6764, align 1
  %6765 = lshr i32 %6747, 31
  %6766 = xor i32 %6762, %6765
  %6767 = add i32 %6766, %6765
  %6768 = icmp eq i32 %6767, 2
  %6769 = zext i1 %6768 to i8
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6769, i8* %6770, align 1
  store %struct.Memory* %loadMem_4089b2, %struct.Memory** %MEMORY
  %loadMem_4089b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 33
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6773 to i64*
  %6774 = load i64, i64* %PC.i228
  %6775 = add i64 %6774, 190
  %6776 = load i64, i64* %PC.i228
  %6777 = add i64 %6776, 6
  %6778 = load i64, i64* %PC.i228
  %6779 = add i64 %6778, 6
  store i64 %6779, i64* %PC.i228
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6781 = load i8, i8* %6780, align 1
  %6782 = icmp eq i8 %6781, 0
  %6783 = zext i1 %6782 to i8
  store i8 %6783, i8* %BRANCH_TAKEN, align 1
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6785 = select i1 %6782, i64 %6775, i64 %6777
  store i64 %6785, i64* %6784, align 8
  store %struct.Memory* %loadMem_4089b5, %struct.Memory** %MEMORY
  %loadBr_4089b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089b5 = icmp eq i8 %loadBr_4089b5, 1
  br i1 %cmpBr_4089b5, label %block_.L_408a73, label %block_4089bb

block_4089bb:                                     ; preds = %block_.L_4089a1
  %loadMem_4089bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 33
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 1
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 15
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %6794 to i64*
  %6795 = load i64, i64* %RBP.i227
  %6796 = sub i64 %6795, 8
  %6797 = load i64, i64* %PC.i225
  %6798 = add i64 %6797, 3
  store i64 %6798, i64* %PC.i225
  %6799 = inttoptr i64 %6796 to i32*
  %6800 = load i32, i32* %6799
  %6801 = zext i32 %6800 to i64
  store i64 %6801, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_4089bb, %struct.Memory** %MEMORY
  %loadMem_4089be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6804 to i64*
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 1
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %6807 to i64*
  %6808 = load i64, i64* %RAX.i224
  %6809 = load i64, i64* %PC.i223
  %6810 = add i64 %6809, 3
  store i64 %6810, i64* %PC.i223
  %6811 = trunc i64 %6808 to i32
  %6812 = add i32 1, %6811
  %6813 = zext i32 %6812 to i64
  store i64 %6813, i64* %RAX.i224, align 8
  %6814 = icmp ult i32 %6812, %6811
  %6815 = icmp ult i32 %6812, 1
  %6816 = or i1 %6814, %6815
  %6817 = zext i1 %6816 to i8
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6817, i8* %6818, align 1
  %6819 = and i32 %6812, 255
  %6820 = call i32 @llvm.ctpop.i32(i32 %6819)
  %6821 = trunc i32 %6820 to i8
  %6822 = and i8 %6821, 1
  %6823 = xor i8 %6822, 1
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6823, i8* %6824, align 1
  %6825 = xor i64 1, %6808
  %6826 = trunc i64 %6825 to i32
  %6827 = xor i32 %6826, %6812
  %6828 = lshr i32 %6827, 4
  %6829 = trunc i32 %6828 to i8
  %6830 = and i8 %6829, 1
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6830, i8* %6831, align 1
  %6832 = icmp eq i32 %6812, 0
  %6833 = zext i1 %6832 to i8
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6833, i8* %6834, align 1
  %6835 = lshr i32 %6812, 31
  %6836 = trunc i32 %6835 to i8
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6836, i8* %6837, align 1
  %6838 = lshr i32 %6811, 31
  %6839 = xor i32 %6835, %6838
  %6840 = add i32 %6839, %6835
  %6841 = icmp eq i32 %6840, 2
  %6842 = zext i1 %6841 to i8
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6842, i8* %6843, align 1
  store %struct.Memory* %loadMem_4089be, %struct.Memory** %MEMORY
  %loadMem_4089c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 33
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6846 to i64*
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 1
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %6849 to i32*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 5
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %6852 to i64*
  %6853 = load i32, i32* %EAX.i221
  %6854 = zext i32 %6853 to i64
  %6855 = load i64, i64* %PC.i220
  %6856 = add i64 %6855, 3
  store i64 %6856, i64* %PC.i220
  %6857 = shl i64 %6854, 32
  %6858 = ashr exact i64 %6857, 32
  store i64 %6858, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_4089c1, %struct.Memory** %MEMORY
  %loadMem_4089c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 33
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 1
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %6864 to i64*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 5
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %6867 to i64*
  %6868 = load i64, i64* %RCX.i219
  %6869 = mul i64 %6868, 4
  %6870 = add i64 %6869, 11185584
  %6871 = load i64, i64* %PC.i217
  %6872 = add i64 %6871, 7
  store i64 %6872, i64* %PC.i217
  %6873 = inttoptr i64 %6870 to i32*
  %6874 = load i32, i32* %6873
  %6875 = zext i32 %6874 to i64
  store i64 %6875, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_4089c4, %struct.Memory** %MEMORY
  %loadMem_4089cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 33
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6878 to i64*
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 1
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %6881 to i32*
  %6882 = load i32, i32* %EAX.i216
  %6883 = zext i32 %6882 to i64
  %6884 = load i64, i64* %PC.i215
  %6885 = add i64 %6884, 7
  store i64 %6885, i64* %PC.i215
  %6886 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %6887 = sub i32 %6882, %6886
  %6888 = icmp ult i32 %6882, %6886
  %6889 = zext i1 %6888 to i8
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6889, i8* %6890, align 1
  %6891 = and i32 %6887, 255
  %6892 = call i32 @llvm.ctpop.i32(i32 %6891)
  %6893 = trunc i32 %6892 to i8
  %6894 = and i8 %6893, 1
  %6895 = xor i8 %6894, 1
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6895, i8* %6896, align 1
  %6897 = xor i32 %6886, %6882
  %6898 = xor i32 %6897, %6887
  %6899 = lshr i32 %6898, 4
  %6900 = trunc i32 %6899 to i8
  %6901 = and i8 %6900, 1
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6901, i8* %6902, align 1
  %6903 = icmp eq i32 %6887, 0
  %6904 = zext i1 %6903 to i8
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6904, i8* %6905, align 1
  %6906 = lshr i32 %6887, 31
  %6907 = trunc i32 %6906 to i8
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6907, i8* %6908, align 1
  %6909 = lshr i32 %6882, 31
  %6910 = lshr i32 %6886, 31
  %6911 = xor i32 %6910, %6909
  %6912 = xor i32 %6906, %6909
  %6913 = add i32 %6912, %6911
  %6914 = icmp eq i32 %6913, 2
  %6915 = zext i1 %6914 to i8
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6915, i8* %6916, align 1
  store %struct.Memory* %loadMem_4089cb, %struct.Memory** %MEMORY
  %loadMem_4089d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 33
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6919 to i64*
  %6920 = load i64, i64* %PC.i214
  %6921 = add i64 %6920, 161
  %6922 = load i64, i64* %PC.i214
  %6923 = add i64 %6922, 6
  %6924 = load i64, i64* %PC.i214
  %6925 = add i64 %6924, 6
  store i64 %6925, i64* %PC.i214
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6927 = load i8, i8* %6926, align 1
  store i8 %6927, i8* %BRANCH_TAKEN, align 1
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6929 = icmp ne i8 %6927, 0
  %6930 = select i1 %6929, i64 %6921, i64 %6923
  store i64 %6930, i64* %6928, align 8
  store %struct.Memory* %loadMem_4089d2, %struct.Memory** %MEMORY
  %loadBr_4089d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089d2 = icmp eq i8 %loadBr_4089d2, 1
  br i1 %cmpBr_4089d2, label %block_.L_408a73, label %block_4089d8

block_4089d8:                                     ; preds = %block_4089bb
  %loadMem_4089d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 33
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6933 to i64*
  %6934 = load i64, i64* %PC.i213
  %6935 = add i64 %6934, 5
  %6936 = load i64, i64* %PC.i213
  %6937 = add i64 %6936, 5
  store i64 %6937, i64* %PC.i213
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6935, i64* %6938, align 8
  store %struct.Memory* %loadMem_4089d8, %struct.Memory** %MEMORY
  br label %block_.L_4089dd

block_.L_4089dd:                                  ; preds = %block_4089d8
  %loadMem_4089dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 33
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6941 to i64*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 1
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %6944 to i64*
  %6945 = load i64, i64* %PC.i211
  %6946 = add i64 %6945, 10
  store i64 %6946, i64* %PC.i211
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_4089dd, %struct.Memory** %MEMORY
  %loadMem_4089e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 33
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 5
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 15
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %6955 to i64*
  %6956 = load i64, i64* %RBP.i210
  %6957 = sub i64 %6956, 4
  %6958 = load i64, i64* %PC.i208
  %6959 = add i64 %6958, 4
  store i64 %6959, i64* %PC.i208
  %6960 = inttoptr i64 %6957 to i32*
  %6961 = load i32, i32* %6960
  %6962 = sext i32 %6961 to i64
  store i64 %6962, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_4089e7, %struct.Memory** %MEMORY
  %loadMem_4089eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6964 = getelementptr inbounds %struct.GPR, %struct.GPR* %6963, i32 0, i32 33
  %6965 = getelementptr inbounds %struct.Reg, %struct.Reg* %6964, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6965 to i64*
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6967 = getelementptr inbounds %struct.GPR, %struct.GPR* %6966, i32 0, i32 5
  %6968 = getelementptr inbounds %struct.Reg, %struct.Reg* %6967, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6968 to i64*
  %6969 = load i64, i64* %RCX.i207
  %6970 = load i64, i64* %PC.i206
  %6971 = add i64 %6970, 7
  store i64 %6971, i64* %PC.i206
  %6972 = sext i64 %6969 to i128
  %6973 = and i128 %6972, -18446744073709551616
  %6974 = zext i64 %6969 to i128
  %6975 = or i128 %6973, %6974
  %6976 = mul i128 744, %6975
  %6977 = trunc i128 %6976 to i64
  store i64 %6977, i64* %RCX.i207, align 8
  %6978 = sext i64 %6977 to i128
  %6979 = icmp ne i128 %6978, %6976
  %6980 = zext i1 %6979 to i8
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6980, i8* %6981, align 1
  %6982 = trunc i128 %6976 to i32
  %6983 = and i32 %6982, 255
  %6984 = call i32 @llvm.ctpop.i32(i32 %6983)
  %6985 = trunc i32 %6984 to i8
  %6986 = and i8 %6985, 1
  %6987 = xor i8 %6986, 1
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6987, i8* %6988, align 1
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6989, align 1
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6990, align 1
  %6991 = lshr i64 %6977, 63
  %6992 = trunc i64 %6991 to i8
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6992, i8* %6993, align 1
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6980, i8* %6994, align 1
  store %struct.Memory* %loadMem_4089eb, %struct.Memory** %MEMORY
  %loadMem_4089f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 33
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6997 to i64*
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6999 = getelementptr inbounds %struct.GPR, %struct.GPR* %6998, i32 0, i32 1
  %7000 = getelementptr inbounds %struct.Reg, %struct.Reg* %6999, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %7000 to i64*
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7002 = getelementptr inbounds %struct.GPR, %struct.GPR* %7001, i32 0, i32 5
  %7003 = getelementptr inbounds %struct.Reg, %struct.Reg* %7002, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %7003 to i64*
  %7004 = load i64, i64* %RAX.i204
  %7005 = load i64, i64* %RCX.i205
  %7006 = load i64, i64* %PC.i203
  %7007 = add i64 %7006, 3
  store i64 %7007, i64* %PC.i203
  %7008 = add i64 %7005, %7004
  store i64 %7008, i64* %RAX.i204, align 8
  %7009 = icmp ult i64 %7008, %7004
  %7010 = icmp ult i64 %7008, %7005
  %7011 = or i1 %7009, %7010
  %7012 = zext i1 %7011 to i8
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7012, i8* %7013, align 1
  %7014 = trunc i64 %7008 to i32
  %7015 = and i32 %7014, 255
  %7016 = call i32 @llvm.ctpop.i32(i32 %7015)
  %7017 = trunc i32 %7016 to i8
  %7018 = and i8 %7017, 1
  %7019 = xor i8 %7018, 1
  %7020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7019, i8* %7020, align 1
  %7021 = xor i64 %7005, %7004
  %7022 = xor i64 %7021, %7008
  %7023 = lshr i64 %7022, 4
  %7024 = trunc i64 %7023 to i8
  %7025 = and i8 %7024, 1
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7025, i8* %7026, align 1
  %7027 = icmp eq i64 %7008, 0
  %7028 = zext i1 %7027 to i8
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7028, i8* %7029, align 1
  %7030 = lshr i64 %7008, 63
  %7031 = trunc i64 %7030 to i8
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7031, i8* %7032, align 1
  %7033 = lshr i64 %7004, 63
  %7034 = lshr i64 %7005, 63
  %7035 = xor i64 %7030, %7033
  %7036 = xor i64 %7030, %7034
  %7037 = add i64 %7035, %7036
  %7038 = icmp eq i64 %7037, 2
  %7039 = zext i1 %7038 to i8
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7039, i8* %7040, align 1
  store %struct.Memory* %loadMem_4089f2, %struct.Memory** %MEMORY
  %loadMem_4089f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 1
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %RAX.i202
  %7048 = add i64 %7047, 12
  %7049 = load i64, i64* %PC.i201
  %7050 = add i64 %7049, 4
  store i64 %7050, i64* %PC.i201
  %7051 = inttoptr i64 %7048 to i32*
  %7052 = load i32, i32* %7051
  %7053 = sub i32 %7052, 20
  %7054 = icmp ult i32 %7052, 20
  %7055 = zext i1 %7054 to i8
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7055, i8* %7056, align 1
  %7057 = and i32 %7053, 255
  %7058 = call i32 @llvm.ctpop.i32(i32 %7057)
  %7059 = trunc i32 %7058 to i8
  %7060 = and i8 %7059, 1
  %7061 = xor i8 %7060, 1
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7061, i8* %7062, align 1
  %7063 = xor i32 %7052, 20
  %7064 = xor i32 %7063, %7053
  %7065 = lshr i32 %7064, 4
  %7066 = trunc i32 %7065 to i8
  %7067 = and i8 %7066, 1
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7067, i8* %7068, align 1
  %7069 = icmp eq i32 %7053, 0
  %7070 = zext i1 %7069 to i8
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7070, i8* %7071, align 1
  %7072 = lshr i32 %7053, 31
  %7073 = trunc i32 %7072 to i8
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7073, i8* %7074, align 1
  %7075 = lshr i32 %7052, 31
  %7076 = xor i32 %7072, %7075
  %7077 = add i32 %7076, %7075
  %7078 = icmp eq i32 %7077, 2
  %7079 = zext i1 %7078 to i8
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7079, i8* %7080, align 1
  store %struct.Memory* %loadMem_4089f5, %struct.Memory** %MEMORY
  %loadMem_4089f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %PC.i200
  %7085 = add i64 %7084, 61
  %7086 = load i64, i64* %PC.i200
  %7087 = add i64 %7086, 6
  %7088 = load i64, i64* %PC.i200
  %7089 = add i64 %7088, 6
  store i64 %7089, i64* %PC.i200
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7091 = load i8, i8* %7090, align 1
  %7092 = icmp ne i8 %7091, 0
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7094 = load i8, i8* %7093, align 1
  %7095 = icmp ne i8 %7094, 0
  %7096 = xor i1 %7092, %7095
  %7097 = xor i1 %7096, true
  %7098 = zext i1 %7097 to i8
  store i8 %7098, i8* %BRANCH_TAKEN, align 1
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7100 = select i1 %7096, i64 %7087, i64 %7085
  store i64 %7100, i64* %7099, align 8
  store %struct.Memory* %loadMem_4089f9, %struct.Memory** %MEMORY
  %loadBr_4089f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089f9 = icmp eq i8 %loadBr_4089f9, 1
  br i1 %cmpBr_4089f9, label %block_.L_408a36, label %block_4089ff

block_4089ff:                                     ; preds = %block_.L_4089dd
  %loadMem_4089ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 33
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7103 to i64*
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 1
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %7106 to i64*
  %7107 = load i64, i64* %PC.i198
  %7108 = add i64 %7107, 10
  store i64 %7108, i64* %PC.i198
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i199, align 8
  store %struct.Memory* %loadMem_4089ff, %struct.Memory** %MEMORY
  %loadMem_408a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 33
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7111 to i64*
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 5
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 15
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %7117 to i64*
  %7118 = load i64, i64* %RBP.i197
  %7119 = sub i64 %7118, 8
  %7120 = load i64, i64* %PC.i195
  %7121 = add i64 %7120, 3
  store i64 %7121, i64* %PC.i195
  %7122 = inttoptr i64 %7119 to i32*
  %7123 = load i32, i32* %7122
  %7124 = zext i32 %7123 to i64
  store i64 %7124, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_408a09, %struct.Memory** %MEMORY
  %loadMem_408a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 33
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 5
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %7130 to i64*
  %7131 = load i64, i64* %RCX.i194
  %7132 = load i64, i64* %PC.i193
  %7133 = add i64 %7132, 3
  store i64 %7133, i64* %PC.i193
  %7134 = trunc i64 %7131 to i32
  %7135 = add i32 1, %7134
  %7136 = zext i32 %7135 to i64
  store i64 %7136, i64* %RCX.i194, align 8
  %7137 = icmp ult i32 %7135, %7134
  %7138 = icmp ult i32 %7135, 1
  %7139 = or i1 %7137, %7138
  %7140 = zext i1 %7139 to i8
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7140, i8* %7141, align 1
  %7142 = and i32 %7135, 255
  %7143 = call i32 @llvm.ctpop.i32(i32 %7142)
  %7144 = trunc i32 %7143 to i8
  %7145 = and i8 %7144, 1
  %7146 = xor i8 %7145, 1
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7146, i8* %7147, align 1
  %7148 = xor i64 1, %7131
  %7149 = trunc i64 %7148 to i32
  %7150 = xor i32 %7149, %7135
  %7151 = lshr i32 %7150, 4
  %7152 = trunc i32 %7151 to i8
  %7153 = and i8 %7152, 1
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7153, i8* %7154, align 1
  %7155 = icmp eq i32 %7135, 0
  %7156 = zext i1 %7155 to i8
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7156, i8* %7157, align 1
  %7158 = lshr i32 %7135, 31
  %7159 = trunc i32 %7158 to i8
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7159, i8* %7160, align 1
  %7161 = lshr i32 %7134, 31
  %7162 = xor i32 %7158, %7161
  %7163 = add i32 %7162, %7158
  %7164 = icmp eq i32 %7163, 2
  %7165 = zext i1 %7164 to i8
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7165, i8* %7166, align 1
  store %struct.Memory* %loadMem_408a0c, %struct.Memory** %MEMORY
  %loadMem_408a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 7
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 15
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7175 to i64*
  %7176 = load i64, i64* %RBP.i192
  %7177 = sub i64 %7176, 4
  %7178 = load i64, i64* %PC.i190
  %7179 = add i64 %7178, 4
  store i64 %7179, i64* %PC.i190
  %7180 = inttoptr i64 %7177 to i32*
  %7181 = load i32, i32* %7180
  %7182 = sext i32 %7181 to i64
  store i64 %7182, i64* %RDX.i191, align 8
  store %struct.Memory* %loadMem_408a0f, %struct.Memory** %MEMORY
  %loadMem_408a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 7
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RDX.i189
  %7190 = load i64, i64* %PC.i188
  %7191 = add i64 %7190, 7
  store i64 %7191, i64* %PC.i188
  %7192 = sext i64 %7189 to i128
  %7193 = and i128 %7192, -18446744073709551616
  %7194 = zext i64 %7189 to i128
  %7195 = or i128 %7193, %7194
  %7196 = mul i128 744, %7195
  %7197 = trunc i128 %7196 to i64
  store i64 %7197, i64* %RDX.i189, align 8
  %7198 = sext i64 %7197 to i128
  %7199 = icmp ne i128 %7198, %7196
  %7200 = zext i1 %7199 to i8
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7200, i8* %7201, align 1
  %7202 = trunc i128 %7196 to i32
  %7203 = and i32 %7202, 255
  %7204 = call i32 @llvm.ctpop.i32(i32 %7203)
  %7205 = trunc i32 %7204 to i8
  %7206 = and i8 %7205, 1
  %7207 = xor i8 %7206, 1
  %7208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7207, i8* %7208, align 1
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7209, align 1
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7210, align 1
  %7211 = lshr i64 %7197, 63
  %7212 = trunc i64 %7211 to i8
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7212, i8* %7213, align 1
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7200, i8* %7214, align 1
  store %struct.Memory* %loadMem_408a13, %struct.Memory** %MEMORY
  %loadMem_408a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 1
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %7220 to i64*
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 9
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %7223 to i64*
  %7224 = load i64, i64* %RAX.i186
  %7225 = load i64, i64* %PC.i185
  %7226 = add i64 %7225, 3
  store i64 %7226, i64* %PC.i185
  store i64 %7224, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_408a1a, %struct.Memory** %MEMORY
  %loadMem_408a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 33
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7229 to i64*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 7
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %7232 to i64*
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7234 = getelementptr inbounds %struct.GPR, %struct.GPR* %7233, i32 0, i32 9
  %7235 = getelementptr inbounds %struct.Reg, %struct.Reg* %7234, i32 0, i32 0
  %RSI.i184 = bitcast %union.anon* %7235 to i64*
  %7236 = load i64, i64* %RSI.i184
  %7237 = load i64, i64* %RDX.i183
  %7238 = load i64, i64* %PC.i182
  %7239 = add i64 %7238, 3
  store i64 %7239, i64* %PC.i182
  %7240 = add i64 %7237, %7236
  store i64 %7240, i64* %RSI.i184, align 8
  %7241 = icmp ult i64 %7240, %7236
  %7242 = icmp ult i64 %7240, %7237
  %7243 = or i1 %7241, %7242
  %7244 = zext i1 %7243 to i8
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7244, i8* %7245, align 1
  %7246 = trunc i64 %7240 to i32
  %7247 = and i32 %7246, 255
  %7248 = call i32 @llvm.ctpop.i32(i32 %7247)
  %7249 = trunc i32 %7248 to i8
  %7250 = and i8 %7249, 1
  %7251 = xor i8 %7250, 1
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7251, i8* %7252, align 1
  %7253 = xor i64 %7237, %7236
  %7254 = xor i64 %7253, %7240
  %7255 = lshr i64 %7254, 4
  %7256 = trunc i64 %7255 to i8
  %7257 = and i8 %7256, 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7257, i8* %7258, align 1
  %7259 = icmp eq i64 %7240, 0
  %7260 = zext i1 %7259 to i8
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7260, i8* %7261, align 1
  %7262 = lshr i64 %7240, 63
  %7263 = trunc i64 %7262 to i8
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7263, i8* %7264, align 1
  %7265 = lshr i64 %7236, 63
  %7266 = lshr i64 %7237, 63
  %7267 = xor i64 %7262, %7265
  %7268 = xor i64 %7262, %7266
  %7269 = add i64 %7267, %7268
  %7270 = icmp eq i64 %7269, 2
  %7271 = zext i1 %7270 to i8
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7271, i8* %7272, align 1
  store %struct.Memory* %loadMem_408a1d, %struct.Memory** %MEMORY
  %loadMem_408a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7274 = getelementptr inbounds %struct.GPR, %struct.GPR* %7273, i32 0, i32 33
  %7275 = getelementptr inbounds %struct.Reg, %struct.Reg* %7274, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7275 to i64*
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7277 = getelementptr inbounds %struct.GPR, %struct.GPR* %7276, i32 0, i32 7
  %7278 = getelementptr inbounds %struct.Reg, %struct.Reg* %7277, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %7278 to i64*
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 15
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %7281 to i64*
  %7282 = load i64, i64* %RBP.i181
  %7283 = sub i64 %7282, 4
  %7284 = load i64, i64* %PC.i179
  %7285 = add i64 %7284, 4
  store i64 %7285, i64* %PC.i179
  %7286 = inttoptr i64 %7283 to i32*
  %7287 = load i32, i32* %7286
  %7288 = sext i32 %7287 to i64
  store i64 %7288, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_408a20, %struct.Memory** %MEMORY
  %loadMem_408a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 33
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7291 to i64*
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 7
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %7294 to i64*
  %7295 = load i64, i64* %RDX.i178
  %7296 = load i64, i64* %PC.i177
  %7297 = add i64 %7296, 7
  store i64 %7297, i64* %PC.i177
  %7298 = sext i64 %7295 to i128
  %7299 = and i128 %7298, -18446744073709551616
  %7300 = zext i64 %7295 to i128
  %7301 = or i128 %7299, %7300
  %7302 = mul i128 744, %7301
  %7303 = trunc i128 %7302 to i64
  store i64 %7303, i64* %RDX.i178, align 8
  %7304 = sext i64 %7303 to i128
  %7305 = icmp ne i128 %7304, %7302
  %7306 = zext i1 %7305 to i8
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7306, i8* %7307, align 1
  %7308 = trunc i128 %7302 to i32
  %7309 = and i32 %7308, 255
  %7310 = call i32 @llvm.ctpop.i32(i32 %7309)
  %7311 = trunc i32 %7310 to i8
  %7312 = and i8 %7311, 1
  %7313 = xor i8 %7312, 1
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7313, i8* %7314, align 1
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7315, align 1
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7316, align 1
  %7317 = lshr i64 %7303, 63
  %7318 = trunc i64 %7317 to i8
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7318, i8* %7319, align 1
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7306, i8* %7320, align 1
  store %struct.Memory* %loadMem_408a24, %struct.Memory** %MEMORY
  %loadMem_408a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7322 = getelementptr inbounds %struct.GPR, %struct.GPR* %7321, i32 0, i32 33
  %7323 = getelementptr inbounds %struct.Reg, %struct.Reg* %7322, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7323 to i64*
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 1
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %7326 to i64*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 7
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %7329 to i64*
  %7330 = load i64, i64* %RAX.i175
  %7331 = load i64, i64* %RDX.i176
  %7332 = load i64, i64* %PC.i174
  %7333 = add i64 %7332, 3
  store i64 %7333, i64* %PC.i174
  %7334 = add i64 %7331, %7330
  store i64 %7334, i64* %RAX.i175, align 8
  %7335 = icmp ult i64 %7334, %7330
  %7336 = icmp ult i64 %7334, %7331
  %7337 = or i1 %7335, %7336
  %7338 = zext i1 %7337 to i8
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7338, i8* %7339, align 1
  %7340 = trunc i64 %7334 to i32
  %7341 = and i32 %7340, 255
  %7342 = call i32 @llvm.ctpop.i32(i32 %7341)
  %7343 = trunc i32 %7342 to i8
  %7344 = and i8 %7343, 1
  %7345 = xor i8 %7344, 1
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7345, i8* %7346, align 1
  %7347 = xor i64 %7331, %7330
  %7348 = xor i64 %7347, %7334
  %7349 = lshr i64 %7348, 4
  %7350 = trunc i64 %7349 to i8
  %7351 = and i8 %7350, 1
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7351, i8* %7352, align 1
  %7353 = icmp eq i64 %7334, 0
  %7354 = zext i1 %7353 to i8
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7354, i8* %7355, align 1
  %7356 = lshr i64 %7334, 63
  %7357 = trunc i64 %7356 to i8
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7357, i8* %7358, align 1
  %7359 = lshr i64 %7330, 63
  %7360 = lshr i64 %7331, 63
  %7361 = xor i64 %7356, %7359
  %7362 = xor i64 %7356, %7360
  %7363 = add i64 %7361, %7362
  %7364 = icmp eq i64 %7363, 2
  %7365 = zext i1 %7364 to i8
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7365, i8* %7366, align 1
  store %struct.Memory* %loadMem_408a2b, %struct.Memory** %MEMORY
  %loadMem_408a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 33
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7369 to i64*
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 1
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %7372 to i64*
  %7373 = load i64, i64* %RAX.i173
  %7374 = add i64 %7373, 12
  %7375 = load i64, i64* %PC.i172
  %7376 = add i64 %7375, 4
  store i64 %7376, i64* %PC.i172
  %7377 = inttoptr i64 %7374 to i32*
  %7378 = load i32, i32* %7377
  %7379 = sext i32 %7378 to i64
  store i64 %7379, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_408a2e, %struct.Memory** %MEMORY
  %loadMem_408a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 33
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7382 to i64*
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 5
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %ECX.i169 = bitcast %union.anon* %7385 to i32*
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 1
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 9
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RSI.i171 = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %RSI.i171
  %7393 = load i64, i64* %RAX.i170
  %7394 = mul i64 %7393, 4
  %7395 = add i64 %7392, 16
  %7396 = add i64 %7395, %7394
  %7397 = load i32, i32* %ECX.i169
  %7398 = zext i32 %7397 to i64
  %7399 = load i64, i64* %PC.i168
  %7400 = add i64 %7399, 4
  store i64 %7400, i64* %PC.i168
  %7401 = inttoptr i64 %7396 to i32*
  store i32 %7397, i32* %7401
  store %struct.Memory* %loadMem_408a32, %struct.Memory** %MEMORY
  br label %block_.L_408a36

block_.L_408a36:                                  ; preds = %block_4089ff, %block_.L_4089dd
  %loadMem_408a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 33
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7404 to i64*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 1
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %7407 to i64*
  %7408 = load i64, i64* %PC.i166
  %7409 = add i64 %7408, 10
  store i64 %7409, i64* %PC.i166
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_408a36, %struct.Memory** %MEMORY
  %loadMem_408a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7411 = getelementptr inbounds %struct.GPR, %struct.GPR* %7410, i32 0, i32 33
  %7412 = getelementptr inbounds %struct.Reg, %struct.Reg* %7411, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7412 to i64*
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7414 = getelementptr inbounds %struct.GPR, %struct.GPR* %7413, i32 0, i32 5
  %7415 = getelementptr inbounds %struct.Reg, %struct.Reg* %7414, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %7415 to i64*
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7417 = getelementptr inbounds %struct.GPR, %struct.GPR* %7416, i32 0, i32 15
  %7418 = getelementptr inbounds %struct.Reg, %struct.Reg* %7417, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7418 to i64*
  %7419 = load i64, i64* %RBP.i165
  %7420 = sub i64 %7419, 4
  %7421 = load i64, i64* %PC.i163
  %7422 = add i64 %7421, 4
  store i64 %7422, i64* %PC.i163
  %7423 = inttoptr i64 %7420 to i32*
  %7424 = load i32, i32* %7423
  %7425 = sext i32 %7424 to i64
  store i64 %7425, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_408a40, %struct.Memory** %MEMORY
  %loadMem_408a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 33
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7428 to i64*
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 5
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %7431 to i64*
  %7432 = load i64, i64* %RCX.i162
  %7433 = load i64, i64* %PC.i161
  %7434 = add i64 %7433, 7
  store i64 %7434, i64* %PC.i161
  %7435 = sext i64 %7432 to i128
  %7436 = and i128 %7435, -18446744073709551616
  %7437 = zext i64 %7432 to i128
  %7438 = or i128 %7436, %7437
  %7439 = mul i128 744, %7438
  %7440 = trunc i128 %7439 to i64
  store i64 %7440, i64* %RCX.i162, align 8
  %7441 = sext i64 %7440 to i128
  %7442 = icmp ne i128 %7441, %7439
  %7443 = zext i1 %7442 to i8
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7443, i8* %7444, align 1
  %7445 = trunc i128 %7439 to i32
  %7446 = and i32 %7445, 255
  %7447 = call i32 @llvm.ctpop.i32(i32 %7446)
  %7448 = trunc i32 %7447 to i8
  %7449 = and i8 %7448, 1
  %7450 = xor i8 %7449, 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7450, i8* %7451, align 1
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7452, align 1
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7453, align 1
  %7454 = lshr i64 %7440, 63
  %7455 = trunc i64 %7454 to i8
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7455, i8* %7456, align 1
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7443, i8* %7457, align 1
  store %struct.Memory* %loadMem_408a44, %struct.Memory** %MEMORY
  %loadMem_408a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 33
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7460 to i64*
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7462 = getelementptr inbounds %struct.GPR, %struct.GPR* %7461, i32 0, i32 1
  %7463 = getelementptr inbounds %struct.Reg, %struct.Reg* %7462, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %7463 to i64*
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7465 = getelementptr inbounds %struct.GPR, %struct.GPR* %7464, i32 0, i32 5
  %7466 = getelementptr inbounds %struct.Reg, %struct.Reg* %7465, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %7466 to i64*
  %7467 = load i64, i64* %RAX.i159
  %7468 = load i64, i64* %RCX.i160
  %7469 = load i64, i64* %PC.i158
  %7470 = add i64 %7469, 3
  store i64 %7470, i64* %PC.i158
  %7471 = add i64 %7468, %7467
  store i64 %7471, i64* %RAX.i159, align 8
  %7472 = icmp ult i64 %7471, %7467
  %7473 = icmp ult i64 %7471, %7468
  %7474 = or i1 %7472, %7473
  %7475 = zext i1 %7474 to i8
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7475, i8* %7476, align 1
  %7477 = trunc i64 %7471 to i32
  %7478 = and i32 %7477, 255
  %7479 = call i32 @llvm.ctpop.i32(i32 %7478)
  %7480 = trunc i32 %7479 to i8
  %7481 = and i8 %7480, 1
  %7482 = xor i8 %7481, 1
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7482, i8* %7483, align 1
  %7484 = xor i64 %7468, %7467
  %7485 = xor i64 %7484, %7471
  %7486 = lshr i64 %7485, 4
  %7487 = trunc i64 %7486 to i8
  %7488 = and i8 %7487, 1
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7488, i8* %7489, align 1
  %7490 = icmp eq i64 %7471, 0
  %7491 = zext i1 %7490 to i8
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7491, i8* %7492, align 1
  %7493 = lshr i64 %7471, 63
  %7494 = trunc i64 %7493 to i8
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7494, i8* %7495, align 1
  %7496 = lshr i64 %7467, 63
  %7497 = lshr i64 %7468, 63
  %7498 = xor i64 %7493, %7496
  %7499 = xor i64 %7493, %7497
  %7500 = add i64 %7498, %7499
  %7501 = icmp eq i64 %7500, 2
  %7502 = zext i1 %7501 to i8
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7502, i8* %7503, align 1
  store %struct.Memory* %loadMem_408a4b, %struct.Memory** %MEMORY
  %loadMem_408a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 33
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7506 to i64*
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 1
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 7
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %7512 to i64*
  %7513 = load i64, i64* %RAX.i156
  %7514 = add i64 %7513, 12
  %7515 = load i64, i64* %PC.i155
  %7516 = add i64 %7515, 3
  store i64 %7516, i64* %PC.i155
  %7517 = inttoptr i64 %7514 to i32*
  %7518 = load i32, i32* %7517
  %7519 = zext i32 %7518 to i64
  store i64 %7519, i64* %RDX.i157, align 8
  store %struct.Memory* %loadMem_408a4e, %struct.Memory** %MEMORY
  %loadMem_408a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7522 to i64*
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 7
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %7525 to i64*
  %7526 = load i64, i64* %RDX.i154
  %7527 = load i64, i64* %PC.i153
  %7528 = add i64 %7527, 3
  store i64 %7528, i64* %PC.i153
  %7529 = trunc i64 %7526 to i32
  %7530 = add i32 1, %7529
  %7531 = zext i32 %7530 to i64
  store i64 %7531, i64* %RDX.i154, align 8
  %7532 = icmp ult i32 %7530, %7529
  %7533 = icmp ult i32 %7530, 1
  %7534 = or i1 %7532, %7533
  %7535 = zext i1 %7534 to i8
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7535, i8* %7536, align 1
  %7537 = and i32 %7530, 255
  %7538 = call i32 @llvm.ctpop.i32(i32 %7537)
  %7539 = trunc i32 %7538 to i8
  %7540 = and i8 %7539, 1
  %7541 = xor i8 %7540, 1
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7541, i8* %7542, align 1
  %7543 = xor i64 1, %7526
  %7544 = trunc i64 %7543 to i32
  %7545 = xor i32 %7544, %7530
  %7546 = lshr i32 %7545, 4
  %7547 = trunc i32 %7546 to i8
  %7548 = and i8 %7547, 1
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7548, i8* %7549, align 1
  %7550 = icmp eq i32 %7530, 0
  %7551 = zext i1 %7550 to i8
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7551, i8* %7552, align 1
  %7553 = lshr i32 %7530, 31
  %7554 = trunc i32 %7553 to i8
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7554, i8* %7555, align 1
  %7556 = lshr i32 %7529, 31
  %7557 = xor i32 %7553, %7556
  %7558 = add i32 %7557, %7553
  %7559 = icmp eq i32 %7558, 2
  %7560 = zext i1 %7559 to i8
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7560, i8* %7561, align 1
  store %struct.Memory* %loadMem_408a51, %struct.Memory** %MEMORY
  %loadMem_408a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 33
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7564 to i64*
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7566 = getelementptr inbounds %struct.GPR, %struct.GPR* %7565, i32 0, i32 7
  %7567 = getelementptr inbounds %struct.Reg, %struct.Reg* %7566, i32 0, i32 0
  %EDX.i151 = bitcast %union.anon* %7567 to i32*
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 1
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %7570 to i64*
  %7571 = load i64, i64* %RAX.i152
  %7572 = add i64 %7571, 12
  %7573 = load i32, i32* %EDX.i151
  %7574 = zext i32 %7573 to i64
  %7575 = load i64, i64* %PC.i150
  %7576 = add i64 %7575, 3
  store i64 %7576, i64* %PC.i150
  %7577 = inttoptr i64 %7572 to i32*
  store i32 %7573, i32* %7577
  store %struct.Memory* %loadMem_408a54, %struct.Memory** %MEMORY
  %loadMem_408a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7579 = getelementptr inbounds %struct.GPR, %struct.GPR* %7578, i32 0, i32 33
  %7580 = getelementptr inbounds %struct.Reg, %struct.Reg* %7579, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %7580 to i64*
  %7581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7582 = getelementptr inbounds %struct.GPR, %struct.GPR* %7581, i32 0, i32 7
  %7583 = getelementptr inbounds %struct.Reg, %struct.Reg* %7582, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %7583 to i64*
  %7584 = load i64, i64* %PC.i148
  %7585 = add i64 %7584, 7
  store i64 %7585, i64* %PC.i148
  %7586 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %7587 = zext i32 %7586 to i64
  store i64 %7587, i64* %RDX.i149, align 8
  store %struct.Memory* %loadMem_408a57, %struct.Memory** %MEMORY
  %loadMem_408a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7589 = getelementptr inbounds %struct.GPR, %struct.GPR* %7588, i32 0, i32 33
  %7590 = getelementptr inbounds %struct.Reg, %struct.Reg* %7589, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7590 to i64*
  %7591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7592 = getelementptr inbounds %struct.GPR, %struct.GPR* %7591, i32 0, i32 9
  %7593 = getelementptr inbounds %struct.Reg, %struct.Reg* %7592, i32 0, i32 0
  %RSI.i146 = bitcast %union.anon* %7593 to i64*
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7595 = getelementptr inbounds %struct.GPR, %struct.GPR* %7594, i32 0, i32 15
  %7596 = getelementptr inbounds %struct.Reg, %struct.Reg* %7595, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %7596 to i64*
  %7597 = load i64, i64* %RBP.i147
  %7598 = sub i64 %7597, 8
  %7599 = load i64, i64* %PC.i145
  %7600 = add i64 %7599, 3
  store i64 %7600, i64* %PC.i145
  %7601 = inttoptr i64 %7598 to i32*
  %7602 = load i32, i32* %7601
  %7603 = zext i32 %7602 to i64
  store i64 %7603, i64* %RSI.i146, align 8
  store %struct.Memory* %loadMem_408a5e, %struct.Memory** %MEMORY
  %loadMem_408a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 33
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7606 to i64*
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 9
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %RSI.i144 = bitcast %union.anon* %7609 to i64*
  %7610 = load i64, i64* %RSI.i144
  %7611 = load i64, i64* %PC.i143
  %7612 = add i64 %7611, 3
  store i64 %7612, i64* %PC.i143
  %7613 = trunc i64 %7610 to i32
  %7614 = add i32 1, %7613
  %7615 = zext i32 %7614 to i64
  store i64 %7615, i64* %RSI.i144, align 8
  %7616 = icmp ult i32 %7614, %7613
  %7617 = icmp ult i32 %7614, 1
  %7618 = or i1 %7616, %7617
  %7619 = zext i1 %7618 to i8
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7619, i8* %7620, align 1
  %7621 = and i32 %7614, 255
  %7622 = call i32 @llvm.ctpop.i32(i32 %7621)
  %7623 = trunc i32 %7622 to i8
  %7624 = and i8 %7623, 1
  %7625 = xor i8 %7624, 1
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7625, i8* %7626, align 1
  %7627 = xor i64 1, %7610
  %7628 = trunc i64 %7627 to i32
  %7629 = xor i32 %7628, %7614
  %7630 = lshr i32 %7629, 4
  %7631 = trunc i32 %7630 to i8
  %7632 = and i8 %7631, 1
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7632, i8* %7633, align 1
  %7634 = icmp eq i32 %7614, 0
  %7635 = zext i1 %7634 to i8
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7635, i8* %7636, align 1
  %7637 = lshr i32 %7614, 31
  %7638 = trunc i32 %7637 to i8
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7638, i8* %7639, align 1
  %7640 = lshr i32 %7613, 31
  %7641 = xor i32 %7637, %7640
  %7642 = add i32 %7641, %7637
  %7643 = icmp eq i32 %7642, 2
  %7644 = zext i1 %7643 to i8
  %7645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7644, i8* %7645, align 1
  store %struct.Memory* %loadMem_408a61, %struct.Memory** %MEMORY
  %loadMem_408a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 33
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7648 to i64*
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 9
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7651 to i32*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 1
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %7654 to i64*
  %7655 = load i32, i32* %ESI.i
  %7656 = zext i32 %7655 to i64
  %7657 = load i64, i64* %PC.i141
  %7658 = add i64 %7657, 3
  store i64 %7658, i64* %PC.i141
  %7659 = shl i64 %7656, 32
  %7660 = ashr exact i64 %7659, 32
  store i64 %7660, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_408a64, %struct.Memory** %MEMORY
  %loadMem_408a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7663 to i64*
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7665 = getelementptr inbounds %struct.GPR, %struct.GPR* %7664, i32 0, i32 7
  %7666 = getelementptr inbounds %struct.Reg, %struct.Reg* %7665, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7666 to i32*
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7668 = getelementptr inbounds %struct.GPR, %struct.GPR* %7667, i32 0, i32 1
  %7669 = getelementptr inbounds %struct.Reg, %struct.Reg* %7668, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %7669 to i64*
  %7670 = load i64, i64* %RAX.i140
  %7671 = mul i64 %7670, 4
  %7672 = add i64 %7671, 11185584
  %7673 = load i32, i32* %EDX.i
  %7674 = zext i32 %7673 to i64
  %7675 = load i64, i64* %PC.i139
  %7676 = add i64 %7675, 7
  store i64 %7676, i64* %PC.i139
  %7677 = inttoptr i64 %7672 to i32*
  store i32 %7673, i32* %7677
  store %struct.Memory* %loadMem_408a67, %struct.Memory** %MEMORY
  %loadMem_408a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 33
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7680 to i64*
  %7681 = load i64, i64* %PC.i138
  %7682 = add i64 %7681, 216
  %7683 = load i64, i64* %PC.i138
  %7684 = add i64 %7683, 5
  store i64 %7684, i64* %PC.i138
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7682, i64* %7685, align 8
  store %struct.Memory* %loadMem_408a6e, %struct.Memory** %MEMORY
  br label %block_.L_408b46

block_.L_408a73:                                  ; preds = %block_4089bb, %block_.L_4089a1
  %loadMem_408a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 33
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 1
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %7691 to i64*
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 15
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7694 to i64*
  %7695 = load i64, i64* %RBP.i137
  %7696 = sub i64 %7695, 8
  %7697 = load i64, i64* %PC.i135
  %7698 = add i64 %7697, 3
  store i64 %7698, i64* %PC.i135
  %7699 = inttoptr i64 %7696 to i32*
  %7700 = load i32, i32* %7699
  %7701 = zext i32 %7700 to i64
  store i64 %7701, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_408a73, %struct.Memory** %MEMORY
  %loadMem_408a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 33
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 1
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %7707 to i64*
  %7708 = load i64, i64* %RAX.i134
  %7709 = load i64, i64* %PC.i133
  %7710 = add i64 %7709, 3
  store i64 %7710, i64* %PC.i133
  %7711 = trunc i64 %7708 to i32
  %7712 = add i32 1, %7711
  %7713 = zext i32 %7712 to i64
  store i64 %7713, i64* %RAX.i134, align 8
  %7714 = icmp ult i32 %7712, %7711
  %7715 = icmp ult i32 %7712, 1
  %7716 = or i1 %7714, %7715
  %7717 = zext i1 %7716 to i8
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7717, i8* %7718, align 1
  %7719 = and i32 %7712, 255
  %7720 = call i32 @llvm.ctpop.i32(i32 %7719)
  %7721 = trunc i32 %7720 to i8
  %7722 = and i8 %7721, 1
  %7723 = xor i8 %7722, 1
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7723, i8* %7724, align 1
  %7725 = xor i64 1, %7708
  %7726 = trunc i64 %7725 to i32
  %7727 = xor i32 %7726, %7712
  %7728 = lshr i32 %7727, 4
  %7729 = trunc i32 %7728 to i8
  %7730 = and i8 %7729, 1
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7730, i8* %7731, align 1
  %7732 = icmp eq i32 %7712, 0
  %7733 = zext i1 %7732 to i8
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7733, i8* %7734, align 1
  %7735 = lshr i32 %7712, 31
  %7736 = trunc i32 %7735 to i8
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7736, i8* %7737, align 1
  %7738 = lshr i32 %7711, 31
  %7739 = xor i32 %7735, %7738
  %7740 = add i32 %7739, %7735
  %7741 = icmp eq i32 %7740, 2
  %7742 = zext i1 %7741 to i8
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7742, i8* %7743, align 1
  store %struct.Memory* %loadMem_408a76, %struct.Memory** %MEMORY
  %loadMem_408a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7745 = getelementptr inbounds %struct.GPR, %struct.GPR* %7744, i32 0, i32 33
  %7746 = getelementptr inbounds %struct.Reg, %struct.Reg* %7745, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7746 to i64*
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7748 = getelementptr inbounds %struct.GPR, %struct.GPR* %7747, i32 0, i32 1
  %7749 = getelementptr inbounds %struct.Reg, %struct.Reg* %7748, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %7749 to i32*
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7751 = getelementptr inbounds %struct.GPR, %struct.GPR* %7750, i32 0, i32 5
  %7752 = getelementptr inbounds %struct.Reg, %struct.Reg* %7751, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %7752 to i64*
  %7753 = load i32, i32* %EAX.i131
  %7754 = zext i32 %7753 to i64
  %7755 = load i64, i64* %PC.i130
  %7756 = add i64 %7755, 3
  store i64 %7756, i64* %PC.i130
  %7757 = shl i64 %7754, 32
  %7758 = ashr exact i64 %7757, 32
  store i64 %7758, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_408a79, %struct.Memory** %MEMORY
  %loadMem_408a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7760 = getelementptr inbounds %struct.GPR, %struct.GPR* %7759, i32 0, i32 33
  %7761 = getelementptr inbounds %struct.Reg, %struct.Reg* %7760, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7761 to i64*
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7763 = getelementptr inbounds %struct.GPR, %struct.GPR* %7762, i32 0, i32 1
  %7764 = getelementptr inbounds %struct.Reg, %struct.Reg* %7763, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %7764 to i64*
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7766 = getelementptr inbounds %struct.GPR, %struct.GPR* %7765, i32 0, i32 5
  %7767 = getelementptr inbounds %struct.Reg, %struct.Reg* %7766, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %7767 to i64*
  %7768 = load i64, i64* %RCX.i129
  %7769 = add i64 %7768, 12099168
  %7770 = load i64, i64* %PC.i127
  %7771 = add i64 %7770, 8
  store i64 %7771, i64* %PC.i127
  %7772 = inttoptr i64 %7769 to i8*
  %7773 = load i8, i8* %7772
  %7774 = zext i8 %7773 to i64
  store i64 %7774, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_408a7c, %struct.Memory** %MEMORY
  %loadMem_408a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7776 = getelementptr inbounds %struct.GPR, %struct.GPR* %7775, i32 0, i32 33
  %7777 = getelementptr inbounds %struct.Reg, %struct.Reg* %7776, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7777 to i64*
  %7778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7779 = getelementptr inbounds %struct.GPR, %struct.GPR* %7778, i32 0, i32 1
  %7780 = getelementptr inbounds %struct.Reg, %struct.Reg* %7779, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7780 to i32*
  %7781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7782 = getelementptr inbounds %struct.GPR, %struct.GPR* %7781, i32 0, i32 15
  %7783 = getelementptr inbounds %struct.Reg, %struct.Reg* %7782, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %7783 to i64*
  %7784 = load i32, i32* %EAX.i
  %7785 = zext i32 %7784 to i64
  %7786 = load i64, i64* %RBP.i126
  %7787 = sub i64 %7786, 12
  %7788 = load i64, i64* %PC.i125
  %7789 = add i64 %7788, 3
  store i64 %7789, i64* %PC.i125
  %7790 = inttoptr i64 %7787 to i32*
  %7791 = load i32, i32* %7790
  %7792 = sub i32 %7784, %7791
  %7793 = icmp ult i32 %7784, %7791
  %7794 = zext i1 %7793 to i8
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7794, i8* %7795, align 1
  %7796 = and i32 %7792, 255
  %7797 = call i32 @llvm.ctpop.i32(i32 %7796)
  %7798 = trunc i32 %7797 to i8
  %7799 = and i8 %7798, 1
  %7800 = xor i8 %7799, 1
  %7801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7800, i8* %7801, align 1
  %7802 = xor i32 %7791, %7784
  %7803 = xor i32 %7802, %7792
  %7804 = lshr i32 %7803, 4
  %7805 = trunc i32 %7804 to i8
  %7806 = and i8 %7805, 1
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7806, i8* %7807, align 1
  %7808 = icmp eq i32 %7792, 0
  %7809 = zext i1 %7808 to i8
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7809, i8* %7810, align 1
  %7811 = lshr i32 %7792, 31
  %7812 = trunc i32 %7811 to i8
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7812, i8* %7813, align 1
  %7814 = lshr i32 %7784, 31
  %7815 = lshr i32 %7791, 31
  %7816 = xor i32 %7815, %7814
  %7817 = xor i32 %7811, %7814
  %7818 = add i32 %7817, %7816
  %7819 = icmp eq i32 %7818, 2
  %7820 = zext i1 %7819 to i8
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7820, i8* %7821, align 1
  store %struct.Memory* %loadMem_408a84, %struct.Memory** %MEMORY
  %loadMem_408a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7823 = getelementptr inbounds %struct.GPR, %struct.GPR* %7822, i32 0, i32 33
  %7824 = getelementptr inbounds %struct.Reg, %struct.Reg* %7823, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7824 to i64*
  %7825 = load i64, i64* %PC.i124
  %7826 = add i64 %7825, 186
  %7827 = load i64, i64* %PC.i124
  %7828 = add i64 %7827, 6
  %7829 = load i64, i64* %PC.i124
  %7830 = add i64 %7829, 6
  store i64 %7830, i64* %PC.i124
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7832 = load i8, i8* %7831, align 1
  %7833 = icmp eq i8 %7832, 0
  %7834 = zext i1 %7833 to i8
  store i8 %7834, i8* %BRANCH_TAKEN, align 1
  %7835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7836 = select i1 %7833, i64 %7826, i64 %7828
  store i64 %7836, i64* %7835, align 8
  store %struct.Memory* %loadMem_408a87, %struct.Memory** %MEMORY
  %loadBr_408a87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408a87 = icmp eq i8 %loadBr_408a87, 1
  br i1 %cmpBr_408a87, label %block_.L_408b41, label %block_408a8d

block_408a8d:                                     ; preds = %block_.L_408a73
  %loadMem_408a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 33
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7839 to i64*
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 1
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7842 to i64*
  %7843 = load i64, i64* %PC.i122
  %7844 = add i64 %7843, 10
  store i64 %7844, i64* %PC.i122
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_408a8d, %struct.Memory** %MEMORY
  %loadMem_408a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7846 = getelementptr inbounds %struct.GPR, %struct.GPR* %7845, i32 0, i32 33
  %7847 = getelementptr inbounds %struct.Reg, %struct.Reg* %7846, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7847 to i64*
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7849 = getelementptr inbounds %struct.GPR, %struct.GPR* %7848, i32 0, i32 5
  %7850 = getelementptr inbounds %struct.Reg, %struct.Reg* %7849, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %7850 to i64*
  %7851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7852 = getelementptr inbounds %struct.GPR, %struct.GPR* %7851, i32 0, i32 15
  %7853 = getelementptr inbounds %struct.Reg, %struct.Reg* %7852, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %7853 to i64*
  %7854 = load i64, i64* %RBP.i121
  %7855 = sub i64 %7854, 8
  %7856 = load i64, i64* %PC.i119
  %7857 = add i64 %7856, 3
  store i64 %7857, i64* %PC.i119
  %7858 = inttoptr i64 %7855 to i32*
  %7859 = load i32, i32* %7858
  %7860 = zext i32 %7859 to i64
  store i64 %7860, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_408a97, %struct.Memory** %MEMORY
  %loadMem_408a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7862 = getelementptr inbounds %struct.GPR, %struct.GPR* %7861, i32 0, i32 33
  %7863 = getelementptr inbounds %struct.Reg, %struct.Reg* %7862, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7863 to i64*
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7865 = getelementptr inbounds %struct.GPR, %struct.GPR* %7864, i32 0, i32 5
  %7866 = getelementptr inbounds %struct.Reg, %struct.Reg* %7865, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %7866 to i64*
  %7867 = load i64, i64* %RCX.i118
  %7868 = load i64, i64* %PC.i117
  %7869 = add i64 %7868, 3
  store i64 %7869, i64* %PC.i117
  %7870 = trunc i64 %7867 to i32
  %7871 = add i32 1, %7870
  %7872 = zext i32 %7871 to i64
  store i64 %7872, i64* %RCX.i118, align 8
  %7873 = icmp ult i32 %7871, %7870
  %7874 = icmp ult i32 %7871, 1
  %7875 = or i1 %7873, %7874
  %7876 = zext i1 %7875 to i8
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7876, i8* %7877, align 1
  %7878 = and i32 %7871, 255
  %7879 = call i32 @llvm.ctpop.i32(i32 %7878)
  %7880 = trunc i32 %7879 to i8
  %7881 = and i8 %7880, 1
  %7882 = xor i8 %7881, 1
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7882, i8* %7883, align 1
  %7884 = xor i64 1, %7867
  %7885 = trunc i64 %7884 to i32
  %7886 = xor i32 %7885, %7871
  %7887 = lshr i32 %7886, 4
  %7888 = trunc i32 %7887 to i8
  %7889 = and i8 %7888, 1
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7889, i8* %7890, align 1
  %7891 = icmp eq i32 %7871, 0
  %7892 = zext i1 %7891 to i8
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7892, i8* %7893, align 1
  %7894 = lshr i32 %7871, 31
  %7895 = trunc i32 %7894 to i8
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7895, i8* %7896, align 1
  %7897 = lshr i32 %7870, 31
  %7898 = xor i32 %7894, %7897
  %7899 = add i32 %7898, %7894
  %7900 = icmp eq i32 %7899, 2
  %7901 = zext i1 %7900 to i8
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7901, i8* %7902, align 1
  store %struct.Memory* %loadMem_408a9a, %struct.Memory** %MEMORY
  %loadMem_408a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7904 = getelementptr inbounds %struct.GPR, %struct.GPR* %7903, i32 0, i32 33
  %7905 = getelementptr inbounds %struct.Reg, %struct.Reg* %7904, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7905 to i64*
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7907 = getelementptr inbounds %struct.GPR, %struct.GPR* %7906, i32 0, i32 5
  %7908 = getelementptr inbounds %struct.Reg, %struct.Reg* %7907, i32 0, i32 0
  %ECX.i115 = bitcast %union.anon* %7908 to i32*
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7910 = getelementptr inbounds %struct.GPR, %struct.GPR* %7909, i32 0, i32 7
  %7911 = getelementptr inbounds %struct.Reg, %struct.Reg* %7910, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %7911 to i64*
  %7912 = load i32, i32* %ECX.i115
  %7913 = zext i32 %7912 to i64
  %7914 = load i64, i64* %PC.i114
  %7915 = add i64 %7914, 3
  store i64 %7915, i64* %PC.i114
  %7916 = shl i64 %7913, 32
  %7917 = ashr exact i64 %7916, 32
  store i64 %7917, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_408a9d, %struct.Memory** %MEMORY
  %loadMem_408aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7919 = getelementptr inbounds %struct.GPR, %struct.GPR* %7918, i32 0, i32 33
  %7920 = getelementptr inbounds %struct.Reg, %struct.Reg* %7919, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7920 to i64*
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7922 = getelementptr inbounds %struct.GPR, %struct.GPR* %7921, i32 0, i32 7
  %7923 = getelementptr inbounds %struct.Reg, %struct.Reg* %7922, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %7923 to i64*
  %7924 = load i64, i64* %RDX.i113
  %7925 = mul i64 %7924, 4
  %7926 = add i64 %7925, 11187184
  %7927 = load i64, i64* %PC.i112
  %7928 = add i64 %7927, 8
  store i64 %7928, i64* %PC.i112
  %7929 = inttoptr i64 %7926 to i32*
  %7930 = load i32, i32* %7929
  %7931 = sext i32 %7930 to i64
  store i64 %7931, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_408aa0, %struct.Memory** %MEMORY
  %loadMem_408aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 33
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7934 to i64*
  %7935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7936 = getelementptr inbounds %struct.GPR, %struct.GPR* %7935, i32 0, i32 7
  %7937 = getelementptr inbounds %struct.Reg, %struct.Reg* %7936, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %7937 to i64*
  %7938 = load i64, i64* %RDX.i111
  %7939 = load i64, i64* %PC.i110
  %7940 = add i64 %7939, 7
  store i64 %7940, i64* %PC.i110
  %7941 = sext i64 %7938 to i128
  %7942 = and i128 %7941, -18446744073709551616
  %7943 = zext i64 %7938 to i128
  %7944 = or i128 %7942, %7943
  %7945 = mul i128 744, %7944
  %7946 = trunc i128 %7945 to i64
  store i64 %7946, i64* %RDX.i111, align 8
  %7947 = sext i64 %7946 to i128
  %7948 = icmp ne i128 %7947, %7945
  %7949 = zext i1 %7948 to i8
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7949, i8* %7950, align 1
  %7951 = trunc i128 %7945 to i32
  %7952 = and i32 %7951, 255
  %7953 = call i32 @llvm.ctpop.i32(i32 %7952)
  %7954 = trunc i32 %7953 to i8
  %7955 = and i8 %7954, 1
  %7956 = xor i8 %7955, 1
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7956, i8* %7957, align 1
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7958, align 1
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7959, align 1
  %7960 = lshr i64 %7946, 63
  %7961 = trunc i64 %7960 to i8
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7961, i8* %7962, align 1
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7949, i8* %7963, align 1
  store %struct.Memory* %loadMem_408aa8, %struct.Memory** %MEMORY
  %loadMem_408aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7965 = getelementptr inbounds %struct.GPR, %struct.GPR* %7964, i32 0, i32 33
  %7966 = getelementptr inbounds %struct.Reg, %struct.Reg* %7965, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7966 to i64*
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 1
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %7969 to i64*
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 7
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %7972 to i64*
  %7973 = load i64, i64* %RAX.i108
  %7974 = load i64, i64* %RDX.i109
  %7975 = load i64, i64* %PC.i107
  %7976 = add i64 %7975, 3
  store i64 %7976, i64* %PC.i107
  %7977 = add i64 %7974, %7973
  store i64 %7977, i64* %RAX.i108, align 8
  %7978 = icmp ult i64 %7977, %7973
  %7979 = icmp ult i64 %7977, %7974
  %7980 = or i1 %7978, %7979
  %7981 = zext i1 %7980 to i8
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7981, i8* %7982, align 1
  %7983 = trunc i64 %7977 to i32
  %7984 = and i32 %7983, 255
  %7985 = call i32 @llvm.ctpop.i32(i32 %7984)
  %7986 = trunc i32 %7985 to i8
  %7987 = and i8 %7986, 1
  %7988 = xor i8 %7987, 1
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7988, i8* %7989, align 1
  %7990 = xor i64 %7974, %7973
  %7991 = xor i64 %7990, %7977
  %7992 = lshr i64 %7991, 4
  %7993 = trunc i64 %7992 to i8
  %7994 = and i8 %7993, 1
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7994, i8* %7995, align 1
  %7996 = icmp eq i64 %7977, 0
  %7997 = zext i1 %7996 to i8
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7997, i8* %7998, align 1
  %7999 = lshr i64 %7977, 63
  %8000 = trunc i64 %7999 to i8
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8000, i8* %8001, align 1
  %8002 = lshr i64 %7973, 63
  %8003 = lshr i64 %7974, 63
  %8004 = xor i64 %7999, %8002
  %8005 = xor i64 %7999, %8003
  %8006 = add i64 %8004, %8005
  %8007 = icmp eq i64 %8006, 2
  %8008 = zext i1 %8007 to i8
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8008, i8* %8009, align 1
  store %struct.Memory* %loadMem_408aaf, %struct.Memory** %MEMORY
  %loadMem_408ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 33
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %8012 to i64*
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8014 = getelementptr inbounds %struct.GPR, %struct.GPR* %8013, i32 0, i32 1
  %8015 = getelementptr inbounds %struct.Reg, %struct.Reg* %8014, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %8015 to i64*
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 5
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %8018 to i64*
  %8019 = load i64, i64* %RAX.i105
  %8020 = add i64 %8019, 740
  %8021 = load i64, i64* %PC.i104
  %8022 = add i64 %8021, 6
  store i64 %8022, i64* %PC.i104
  %8023 = inttoptr i64 %8020 to i32*
  %8024 = load i32, i32* %8023
  %8025 = zext i32 %8024 to i64
  store i64 %8025, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_408ab2, %struct.Memory** %MEMORY
  %loadMem_408ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8027 = getelementptr inbounds %struct.GPR, %struct.GPR* %8026, i32 0, i32 33
  %8028 = getelementptr inbounds %struct.Reg, %struct.Reg* %8027, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8028 to i64*
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 5
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %ECX.i103 = bitcast %union.anon* %8031 to i32*
  %8032 = load i32, i32* %ECX.i103
  %8033 = zext i32 %8032 to i64
  %8034 = load i64, i64* %PC.i102
  %8035 = add i64 %8034, 7
  store i64 %8035, i64* %PC.i102
  %8036 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %8037 = sub i32 %8032, %8036
  %8038 = icmp ult i32 %8032, %8036
  %8039 = zext i1 %8038 to i8
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8039, i8* %8040, align 1
  %8041 = and i32 %8037, 255
  %8042 = call i32 @llvm.ctpop.i32(i32 %8041)
  %8043 = trunc i32 %8042 to i8
  %8044 = and i8 %8043, 1
  %8045 = xor i8 %8044, 1
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8045, i8* %8046, align 1
  %8047 = xor i32 %8036, %8032
  %8048 = xor i32 %8047, %8037
  %8049 = lshr i32 %8048, 4
  %8050 = trunc i32 %8049 to i8
  %8051 = and i8 %8050, 1
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8051, i8* %8052, align 1
  %8053 = icmp eq i32 %8037, 0
  %8054 = zext i1 %8053 to i8
  %8055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8054, i8* %8055, align 1
  %8056 = lshr i32 %8037, 31
  %8057 = trunc i32 %8056 to i8
  %8058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8057, i8* %8058, align 1
  %8059 = lshr i32 %8032, 31
  %8060 = lshr i32 %8036, 31
  %8061 = xor i32 %8060, %8059
  %8062 = xor i32 %8056, %8059
  %8063 = add i32 %8062, %8061
  %8064 = icmp eq i32 %8063, 2
  %8065 = zext i1 %8064 to i8
  %8066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8065, i8* %8066, align 1
  store %struct.Memory* %loadMem_408ab8, %struct.Memory** %MEMORY
  %loadMem_408abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8068 = getelementptr inbounds %struct.GPR, %struct.GPR* %8067, i32 0, i32 33
  %8069 = getelementptr inbounds %struct.Reg, %struct.Reg* %8068, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %8069 to i64*
  %8070 = load i64, i64* %PC.i101
  %8071 = add i64 %8070, 130
  %8072 = load i64, i64* %PC.i101
  %8073 = add i64 %8072, 6
  %8074 = load i64, i64* %PC.i101
  %8075 = add i64 %8074, 6
  store i64 %8075, i64* %PC.i101
  %8076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8077 = load i8, i8* %8076, align 1
  store i8 %8077, i8* %BRANCH_TAKEN, align 1
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8079 = icmp ne i8 %8077, 0
  %8080 = select i1 %8079, i64 %8071, i64 %8073
  store i64 %8080, i64* %8078, align 8
  store %struct.Memory* %loadMem_408abf, %struct.Memory** %MEMORY
  %loadBr_408abf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408abf = icmp eq i8 %loadBr_408abf, 1
  br i1 %cmpBr_408abf, label %block_.L_408b41, label %block_408ac5

block_408ac5:                                     ; preds = %block_408a8d
  %loadMem_408ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8082 = getelementptr inbounds %struct.GPR, %struct.GPR* %8081, i32 0, i32 33
  %8083 = getelementptr inbounds %struct.Reg, %struct.Reg* %8082, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8083 to i64*
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8085 = getelementptr inbounds %struct.GPR, %struct.GPR* %8084, i32 0, i32 1
  %8086 = getelementptr inbounds %struct.Reg, %struct.Reg* %8085, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %8086 to i64*
  %8087 = load i64, i64* %PC.i99
  %8088 = add i64 %8087, 10
  store i64 %8088, i64* %PC.i99
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_408ac5, %struct.Memory** %MEMORY
  %loadMem_408acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 33
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 5
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %8094 to i64*
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 15
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %8097 to i64*
  %8098 = load i64, i64* %RBP.i98
  %8099 = sub i64 %8098, 8
  %8100 = load i64, i64* %PC.i96
  %8101 = add i64 %8100, 3
  store i64 %8101, i64* %PC.i96
  %8102 = inttoptr i64 %8099 to i32*
  %8103 = load i32, i32* %8102
  %8104 = zext i32 %8103 to i64
  store i64 %8104, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_408acf, %struct.Memory** %MEMORY
  %loadMem_408ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8106 = getelementptr inbounds %struct.GPR, %struct.GPR* %8105, i32 0, i32 33
  %8107 = getelementptr inbounds %struct.Reg, %struct.Reg* %8106, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8107 to i64*
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8109 = getelementptr inbounds %struct.GPR, %struct.GPR* %8108, i32 0, i32 5
  %8110 = getelementptr inbounds %struct.Reg, %struct.Reg* %8109, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %8110 to i64*
  %8111 = load i64, i64* %RCX.i95
  %8112 = load i64, i64* %PC.i94
  %8113 = add i64 %8112, 3
  store i64 %8113, i64* %PC.i94
  %8114 = trunc i64 %8111 to i32
  %8115 = add i32 1, %8114
  %8116 = zext i32 %8115 to i64
  store i64 %8116, i64* %RCX.i95, align 8
  %8117 = icmp ult i32 %8115, %8114
  %8118 = icmp ult i32 %8115, 1
  %8119 = or i1 %8117, %8118
  %8120 = zext i1 %8119 to i8
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8120, i8* %8121, align 1
  %8122 = and i32 %8115, 255
  %8123 = call i32 @llvm.ctpop.i32(i32 %8122)
  %8124 = trunc i32 %8123 to i8
  %8125 = and i8 %8124, 1
  %8126 = xor i8 %8125, 1
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8126, i8* %8127, align 1
  %8128 = xor i64 1, %8111
  %8129 = trunc i64 %8128 to i32
  %8130 = xor i32 %8129, %8115
  %8131 = lshr i32 %8130, 4
  %8132 = trunc i32 %8131 to i8
  %8133 = and i8 %8132, 1
  %8134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8133, i8* %8134, align 1
  %8135 = icmp eq i32 %8115, 0
  %8136 = zext i1 %8135 to i8
  %8137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8136, i8* %8137, align 1
  %8138 = lshr i32 %8115, 31
  %8139 = trunc i32 %8138 to i8
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8139, i8* %8140, align 1
  %8141 = lshr i32 %8114, 31
  %8142 = xor i32 %8138, %8141
  %8143 = add i32 %8142, %8138
  %8144 = icmp eq i32 %8143, 2
  %8145 = zext i1 %8144 to i8
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8145, i8* %8146, align 1
  store %struct.Memory* %loadMem_408ad2, %struct.Memory** %MEMORY
  %loadMem_408ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8148 = getelementptr inbounds %struct.GPR, %struct.GPR* %8147, i32 0, i32 33
  %8149 = getelementptr inbounds %struct.Reg, %struct.Reg* %8148, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8149 to i64*
  %8150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8151 = getelementptr inbounds %struct.GPR, %struct.GPR* %8150, i32 0, i32 5
  %8152 = getelementptr inbounds %struct.Reg, %struct.Reg* %8151, i32 0, i32 0
  %ECX.i92 = bitcast %union.anon* %8152 to i32*
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8154 = getelementptr inbounds %struct.GPR, %struct.GPR* %8153, i32 0, i32 7
  %8155 = getelementptr inbounds %struct.Reg, %struct.Reg* %8154, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %8155 to i64*
  %8156 = load i32, i32* %ECX.i92
  %8157 = zext i32 %8156 to i64
  %8158 = load i64, i64* %PC.i91
  %8159 = add i64 %8158, 3
  store i64 %8159, i64* %PC.i91
  %8160 = shl i64 %8157, 32
  %8161 = ashr exact i64 %8160, 32
  store i64 %8161, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_408ad5, %struct.Memory** %MEMORY
  %loadMem_408ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 33
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %8164 to i64*
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8166 = getelementptr inbounds %struct.GPR, %struct.GPR* %8165, i32 0, i32 5
  %8167 = getelementptr inbounds %struct.Reg, %struct.Reg* %8166, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %8167 to i64*
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 7
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %8170 to i64*
  %8171 = load i64, i64* %RDX.i90
  %8172 = mul i64 %8171, 4
  %8173 = add i64 %8172, 11187184
  %8174 = load i64, i64* %PC.i88
  %8175 = add i64 %8174, 7
  store i64 %8175, i64* %PC.i88
  %8176 = inttoptr i64 %8173 to i32*
  %8177 = load i32, i32* %8176
  %8178 = zext i32 %8177 to i64
  store i64 %8178, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_408ad8, %struct.Memory** %MEMORY
  %loadMem_408adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8180 = getelementptr inbounds %struct.GPR, %struct.GPR* %8179, i32 0, i32 33
  %8181 = getelementptr inbounds %struct.Reg, %struct.Reg* %8180, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %8181 to i64*
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 7
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %8184 to i64*
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8186 = getelementptr inbounds %struct.GPR, %struct.GPR* %8185, i32 0, i32 15
  %8187 = getelementptr inbounds %struct.Reg, %struct.Reg* %8186, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %8187 to i64*
  %8188 = load i64, i64* %RBP.i87
  %8189 = sub i64 %8188, 4
  %8190 = load i64, i64* %PC.i85
  %8191 = add i64 %8190, 4
  store i64 %8191, i64* %PC.i85
  %8192 = inttoptr i64 %8189 to i32*
  %8193 = load i32, i32* %8192
  %8194 = sext i32 %8193 to i64
  store i64 %8194, i64* %RDX.i86, align 8
  store %struct.Memory* %loadMem_408adf, %struct.Memory** %MEMORY
  %loadMem_408ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8196 = getelementptr inbounds %struct.GPR, %struct.GPR* %8195, i32 0, i32 33
  %8197 = getelementptr inbounds %struct.Reg, %struct.Reg* %8196, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8197 to i64*
  %8198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8199 = getelementptr inbounds %struct.GPR, %struct.GPR* %8198, i32 0, i32 7
  %8200 = getelementptr inbounds %struct.Reg, %struct.Reg* %8199, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %8200 to i64*
  %8201 = load i64, i64* %RDX.i84
  %8202 = load i64, i64* %PC.i83
  %8203 = add i64 %8202, 7
  store i64 %8203, i64* %PC.i83
  %8204 = sext i64 %8201 to i128
  %8205 = and i128 %8204, -18446744073709551616
  %8206 = zext i64 %8201 to i128
  %8207 = or i128 %8205, %8206
  %8208 = mul i128 744, %8207
  %8209 = trunc i128 %8208 to i64
  store i64 %8209, i64* %RDX.i84, align 8
  %8210 = sext i64 %8209 to i128
  %8211 = icmp ne i128 %8210, %8208
  %8212 = zext i1 %8211 to i8
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8212, i8* %8213, align 1
  %8214 = trunc i128 %8208 to i32
  %8215 = and i32 %8214, 255
  %8216 = call i32 @llvm.ctpop.i32(i32 %8215)
  %8217 = trunc i32 %8216 to i8
  %8218 = and i8 %8217, 1
  %8219 = xor i8 %8218, 1
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8219, i8* %8220, align 1
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8221, align 1
  %8222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8222, align 1
  %8223 = lshr i64 %8209, 63
  %8224 = trunc i64 %8223 to i8
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8224, i8* %8225, align 1
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8212, i8* %8226, align 1
  store %struct.Memory* %loadMem_408ae3, %struct.Memory** %MEMORY
  %loadMem_408aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 1
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %8232 to i64*
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8234 = getelementptr inbounds %struct.GPR, %struct.GPR* %8233, i32 0, i32 9
  %8235 = getelementptr inbounds %struct.Reg, %struct.Reg* %8234, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %8235 to i64*
  %8236 = load i64, i64* %RAX.i81
  %8237 = load i64, i64* %PC.i80
  %8238 = add i64 %8237, 3
  store i64 %8238, i64* %PC.i80
  store i64 %8236, i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_408aea, %struct.Memory** %MEMORY
  %loadMem_408aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8240 = getelementptr inbounds %struct.GPR, %struct.GPR* %8239, i32 0, i32 33
  %8241 = getelementptr inbounds %struct.Reg, %struct.Reg* %8240, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8241 to i64*
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8243 = getelementptr inbounds %struct.GPR, %struct.GPR* %8242, i32 0, i32 7
  %8244 = getelementptr inbounds %struct.Reg, %struct.Reg* %8243, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %8244 to i64*
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8246 = getelementptr inbounds %struct.GPR, %struct.GPR* %8245, i32 0, i32 9
  %8247 = getelementptr inbounds %struct.Reg, %struct.Reg* %8246, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %8247 to i64*
  %8248 = load i64, i64* %RSI.i79
  %8249 = load i64, i64* %RDX.i78
  %8250 = load i64, i64* %PC.i77
  %8251 = add i64 %8250, 3
  store i64 %8251, i64* %PC.i77
  %8252 = add i64 %8249, %8248
  store i64 %8252, i64* %RSI.i79, align 8
  %8253 = icmp ult i64 %8252, %8248
  %8254 = icmp ult i64 %8252, %8249
  %8255 = or i1 %8253, %8254
  %8256 = zext i1 %8255 to i8
  %8257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8256, i8* %8257, align 1
  %8258 = trunc i64 %8252 to i32
  %8259 = and i32 %8258, 255
  %8260 = call i32 @llvm.ctpop.i32(i32 %8259)
  %8261 = trunc i32 %8260 to i8
  %8262 = and i8 %8261, 1
  %8263 = xor i8 %8262, 1
  %8264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8263, i8* %8264, align 1
  %8265 = xor i64 %8249, %8248
  %8266 = xor i64 %8265, %8252
  %8267 = lshr i64 %8266, 4
  %8268 = trunc i64 %8267 to i8
  %8269 = and i8 %8268, 1
  %8270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8269, i8* %8270, align 1
  %8271 = icmp eq i64 %8252, 0
  %8272 = zext i1 %8271 to i8
  %8273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8272, i8* %8273, align 1
  %8274 = lshr i64 %8252, 63
  %8275 = trunc i64 %8274 to i8
  %8276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8275, i8* %8276, align 1
  %8277 = lshr i64 %8248, 63
  %8278 = lshr i64 %8249, 63
  %8279 = xor i64 %8274, %8277
  %8280 = xor i64 %8274, %8278
  %8281 = add i64 %8279, %8280
  %8282 = icmp eq i64 %8281, 2
  %8283 = zext i1 %8282 to i8
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8283, i8* %8284, align 1
  store %struct.Memory* %loadMem_408aed, %struct.Memory** %MEMORY
  %loadMem_408af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8286 = getelementptr inbounds %struct.GPR, %struct.GPR* %8285, i32 0, i32 33
  %8287 = getelementptr inbounds %struct.Reg, %struct.Reg* %8286, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %8287 to i64*
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 7
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %8290 to i64*
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 15
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %8293 to i64*
  %8294 = load i64, i64* %RBP.i76
  %8295 = sub i64 %8294, 4
  %8296 = load i64, i64* %PC.i74
  %8297 = add i64 %8296, 4
  store i64 %8297, i64* %PC.i74
  %8298 = inttoptr i64 %8295 to i32*
  %8299 = load i32, i32* %8298
  %8300 = sext i32 %8299 to i64
  store i64 %8300, i64* %RDX.i75, align 8
  store %struct.Memory* %loadMem_408af0, %struct.Memory** %MEMORY
  %loadMem_408af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8302 = getelementptr inbounds %struct.GPR, %struct.GPR* %8301, i32 0, i32 33
  %8303 = getelementptr inbounds %struct.Reg, %struct.Reg* %8302, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8303 to i64*
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8305 = getelementptr inbounds %struct.GPR, %struct.GPR* %8304, i32 0, i32 7
  %8306 = getelementptr inbounds %struct.Reg, %struct.Reg* %8305, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %8306 to i64*
  %8307 = load i64, i64* %RDX.i73
  %8308 = load i64, i64* %PC.i72
  %8309 = add i64 %8308, 7
  store i64 %8309, i64* %PC.i72
  %8310 = sext i64 %8307 to i128
  %8311 = and i128 %8310, -18446744073709551616
  %8312 = zext i64 %8307 to i128
  %8313 = or i128 %8311, %8312
  %8314 = mul i128 744, %8313
  %8315 = trunc i128 %8314 to i64
  store i64 %8315, i64* %RDX.i73, align 8
  %8316 = sext i64 %8315 to i128
  %8317 = icmp ne i128 %8316, %8314
  %8318 = zext i1 %8317 to i8
  %8319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8318, i8* %8319, align 1
  %8320 = trunc i128 %8314 to i32
  %8321 = and i32 %8320, 255
  %8322 = call i32 @llvm.ctpop.i32(i32 %8321)
  %8323 = trunc i32 %8322 to i8
  %8324 = and i8 %8323, 1
  %8325 = xor i8 %8324, 1
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8325, i8* %8326, align 1
  %8327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8327, align 1
  %8328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8328, align 1
  %8329 = lshr i64 %8315, 63
  %8330 = trunc i64 %8329 to i8
  %8331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8330, i8* %8331, align 1
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8318, i8* %8332, align 1
  store %struct.Memory* %loadMem_408af4, %struct.Memory** %MEMORY
  %loadMem_408afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8334 = getelementptr inbounds %struct.GPR, %struct.GPR* %8333, i32 0, i32 33
  %8335 = getelementptr inbounds %struct.Reg, %struct.Reg* %8334, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8335 to i64*
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8337 = getelementptr inbounds %struct.GPR, %struct.GPR* %8336, i32 0, i32 1
  %8338 = getelementptr inbounds %struct.Reg, %struct.Reg* %8337, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %8338 to i64*
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8340 = getelementptr inbounds %struct.GPR, %struct.GPR* %8339, i32 0, i32 11
  %8341 = getelementptr inbounds %struct.Reg, %struct.Reg* %8340, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %8341 to i64*
  %8342 = load i64, i64* %RAX.i70
  %8343 = load i64, i64* %PC.i69
  %8344 = add i64 %8343, 3
  store i64 %8344, i64* %PC.i69
  store i64 %8342, i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_408afb, %struct.Memory** %MEMORY
  %loadMem_408afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8346 = getelementptr inbounds %struct.GPR, %struct.GPR* %8345, i32 0, i32 33
  %8347 = getelementptr inbounds %struct.Reg, %struct.Reg* %8346, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8347 to i64*
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 7
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %8350 to i64*
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8352 = getelementptr inbounds %struct.GPR, %struct.GPR* %8351, i32 0, i32 11
  %8353 = getelementptr inbounds %struct.Reg, %struct.Reg* %8352, i32 0, i32 0
  %RDI.i68 = bitcast %union.anon* %8353 to i64*
  %8354 = load i64, i64* %RDI.i68
  %8355 = load i64, i64* %RDX.i67
  %8356 = load i64, i64* %PC.i66
  %8357 = add i64 %8356, 3
  store i64 %8357, i64* %PC.i66
  %8358 = add i64 %8355, %8354
  store i64 %8358, i64* %RDI.i68, align 8
  %8359 = icmp ult i64 %8358, %8354
  %8360 = icmp ult i64 %8358, %8355
  %8361 = or i1 %8359, %8360
  %8362 = zext i1 %8361 to i8
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8362, i8* %8363, align 1
  %8364 = trunc i64 %8358 to i32
  %8365 = and i32 %8364, 255
  %8366 = call i32 @llvm.ctpop.i32(i32 %8365)
  %8367 = trunc i32 %8366 to i8
  %8368 = and i8 %8367, 1
  %8369 = xor i8 %8368, 1
  %8370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8369, i8* %8370, align 1
  %8371 = xor i64 %8355, %8354
  %8372 = xor i64 %8371, %8358
  %8373 = lshr i64 %8372, 4
  %8374 = trunc i64 %8373 to i8
  %8375 = and i8 %8374, 1
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8375, i8* %8376, align 1
  %8377 = icmp eq i64 %8358, 0
  %8378 = zext i1 %8377 to i8
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8378, i8* %8379, align 1
  %8380 = lshr i64 %8358, 63
  %8381 = trunc i64 %8380 to i8
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8381, i8* %8382, align 1
  %8383 = lshr i64 %8354, 63
  %8384 = lshr i64 %8355, 63
  %8385 = xor i64 %8380, %8383
  %8386 = xor i64 %8380, %8384
  %8387 = add i64 %8385, %8386
  %8388 = icmp eq i64 %8387, 2
  %8389 = zext i1 %8388 to i8
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8389, i8* %8390, align 1
  store %struct.Memory* %loadMem_408afe, %struct.Memory** %MEMORY
  %loadMem_408b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 33
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8393 to i64*
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 17
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %R8D.i64 = bitcast %union.anon* %8396 to i32*
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8398 = getelementptr inbounds %struct.GPR, %struct.GPR* %8397, i32 0, i32 11
  %8399 = getelementptr inbounds %struct.Reg, %struct.Reg* %8398, i32 0, i32 0
  %RDI.i65 = bitcast %union.anon* %8399 to i64*
  %8400 = bitcast i32* %R8D.i64 to i64*
  %8401 = load i64, i64* %RDI.i65
  %8402 = add i64 %8401, 96
  %8403 = load i64, i64* %PC.i63
  %8404 = add i64 %8403, 4
  store i64 %8404, i64* %PC.i63
  %8405 = inttoptr i64 %8402 to i32*
  %8406 = load i32, i32* %8405
  %8407 = zext i32 %8406 to i64
  store i64 %8407, i64* %8400, align 8
  store %struct.Memory* %loadMem_408b01, %struct.Memory** %MEMORY
  %loadMem_408b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 33
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %8410 to i64*
  %8411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8412 = getelementptr inbounds %struct.GPR, %struct.GPR* %8411, i32 0, i32 17
  %8413 = getelementptr inbounds %struct.Reg, %struct.Reg* %8412, i32 0, i32 0
  %R8D.i61 = bitcast %union.anon* %8413 to i32*
  %8414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8415 = getelementptr inbounds %struct.GPR, %struct.GPR* %8414, i32 0, i32 19
  %8416 = getelementptr inbounds %struct.Reg, %struct.Reg* %8415, i32 0, i32 0
  %R9D.i62 = bitcast %union.anon* %8416 to i32*
  %8417 = bitcast i32* %R9D.i62 to i64*
  %8418 = load i32, i32* %R8D.i61
  %8419 = zext i32 %8418 to i64
  %8420 = load i64, i64* %PC.i60
  %8421 = add i64 %8420, 3
  store i64 %8421, i64* %PC.i60
  %8422 = and i64 %8419, 4294967295
  store i64 %8422, i64* %8417, align 8
  store %struct.Memory* %loadMem_408b05, %struct.Memory** %MEMORY
  %loadMem_408b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8424 = getelementptr inbounds %struct.GPR, %struct.GPR* %8423, i32 0, i32 33
  %8425 = getelementptr inbounds %struct.Reg, %struct.Reg* %8424, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8425 to i64*
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 19
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %R9D.i59 = bitcast %union.anon* %8428 to i32*
  %8429 = bitcast i32* %R9D.i59 to i64*
  %8430 = load i32, i32* %R9D.i59
  %8431 = zext i32 %8430 to i64
  %8432 = load i64, i64* %PC.i58
  %8433 = add i64 %8432, 4
  store i64 %8433, i64* %PC.i58
  %8434 = add i32 1, %8430
  %8435 = zext i32 %8434 to i64
  store i64 %8435, i64* %8429, align 8
  %8436 = icmp ult i32 %8434, %8430
  %8437 = icmp ult i32 %8434, 1
  %8438 = or i1 %8436, %8437
  %8439 = zext i1 %8438 to i8
  %8440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8439, i8* %8440, align 1
  %8441 = and i32 %8434, 255
  %8442 = call i32 @llvm.ctpop.i32(i32 %8441)
  %8443 = trunc i32 %8442 to i8
  %8444 = and i8 %8443, 1
  %8445 = xor i8 %8444, 1
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8445, i8* %8446, align 1
  %8447 = xor i64 1, %8431
  %8448 = trunc i64 %8447 to i32
  %8449 = xor i32 %8448, %8434
  %8450 = lshr i32 %8449, 4
  %8451 = trunc i32 %8450 to i8
  %8452 = and i8 %8451, 1
  %8453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8452, i8* %8453, align 1
  %8454 = icmp eq i32 %8434, 0
  %8455 = zext i1 %8454 to i8
  %8456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8455, i8* %8456, align 1
  %8457 = lshr i32 %8434, 31
  %8458 = trunc i32 %8457 to i8
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8458, i8* %8459, align 1
  %8460 = lshr i32 %8430, 31
  %8461 = xor i32 %8457, %8460
  %8462 = add i32 %8461, %8457
  %8463 = icmp eq i32 %8462, 2
  %8464 = zext i1 %8463 to i8
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8464, i8* %8465, align 1
  store %struct.Memory* %loadMem_408b08, %struct.Memory** %MEMORY
  %loadMem_408b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8467 = getelementptr inbounds %struct.GPR, %struct.GPR* %8466, i32 0, i32 33
  %8468 = getelementptr inbounds %struct.Reg, %struct.Reg* %8467, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %8468 to i64*
  %8469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8470 = getelementptr inbounds %struct.GPR, %struct.GPR* %8469, i32 0, i32 19
  %8471 = getelementptr inbounds %struct.Reg, %struct.Reg* %8470, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %8471 to i32*
  %8472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8473 = getelementptr inbounds %struct.GPR, %struct.GPR* %8472, i32 0, i32 11
  %8474 = getelementptr inbounds %struct.Reg, %struct.Reg* %8473, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8474 to i64*
  %8475 = load i64, i64* %RDI.i
  %8476 = add i64 %8475, 96
  %8477 = load i32, i32* %R9D.i
  %8478 = zext i32 %8477 to i64
  %8479 = load i64, i64* %PC.i57
  %8480 = add i64 %8479, 4
  store i64 %8480, i64* %PC.i57
  %8481 = inttoptr i64 %8476 to i32*
  store i32 %8477, i32* %8481
  store %struct.Memory* %loadMem_408b0c, %struct.Memory** %MEMORY
  %loadMem_408b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8483 = getelementptr inbounds %struct.GPR, %struct.GPR* %8482, i32 0, i32 33
  %8484 = getelementptr inbounds %struct.Reg, %struct.Reg* %8483, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %8484 to i64*
  %8485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8486 = getelementptr inbounds %struct.GPR, %struct.GPR* %8485, i32 0, i32 17
  %8487 = getelementptr inbounds %struct.Reg, %struct.Reg* %8486, i32 0, i32 0
  %R8D.i55 = bitcast %union.anon* %8487 to i32*
  %8488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8489 = getelementptr inbounds %struct.GPR, %struct.GPR* %8488, i32 0, i32 7
  %8490 = getelementptr inbounds %struct.Reg, %struct.Reg* %8489, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %8490 to i64*
  %8491 = load i32, i32* %R8D.i55
  %8492 = zext i32 %8491 to i64
  %8493 = load i64, i64* %PC.i54
  %8494 = add i64 %8493, 3
  store i64 %8494, i64* %PC.i54
  %8495 = shl i64 %8492, 32
  %8496 = ashr exact i64 %8495, 32
  store i64 %8496, i64* %RDX.i56, align 8
  store %struct.Memory* %loadMem_408b10, %struct.Memory** %MEMORY
  %loadMem_408b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8498 = getelementptr inbounds %struct.GPR, %struct.GPR* %8497, i32 0, i32 33
  %8499 = getelementptr inbounds %struct.Reg, %struct.Reg* %8498, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8499 to i64*
  %8500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8501 = getelementptr inbounds %struct.GPR, %struct.GPR* %8500, i32 0, i32 5
  %8502 = getelementptr inbounds %struct.Reg, %struct.Reg* %8501, i32 0, i32 0
  %ECX.i52 = bitcast %union.anon* %8502 to i32*
  %8503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8504 = getelementptr inbounds %struct.GPR, %struct.GPR* %8503, i32 0, i32 7
  %8505 = getelementptr inbounds %struct.Reg, %struct.Reg* %8504, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %8505 to i64*
  %8506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8507 = getelementptr inbounds %struct.GPR, %struct.GPR* %8506, i32 0, i32 9
  %8508 = getelementptr inbounds %struct.Reg, %struct.Reg* %8507, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8508 to i64*
  %8509 = load i64, i64* %RSI.i
  %8510 = load i64, i64* %RDX.i53
  %8511 = mul i64 %8510, 4
  %8512 = add i64 %8509, 100
  %8513 = add i64 %8512, %8511
  %8514 = load i32, i32* %ECX.i52
  %8515 = zext i32 %8514 to i64
  %8516 = load i64, i64* %PC.i51
  %8517 = add i64 %8516, 4
  store i64 %8517, i64* %PC.i51
  %8518 = inttoptr i64 %8513 to i32*
  store i32 %8514, i32* %8518
  store %struct.Memory* %loadMem_408b13, %struct.Memory** %MEMORY
  %loadMem_408b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8520 = getelementptr inbounds %struct.GPR, %struct.GPR* %8519, i32 0, i32 33
  %8521 = getelementptr inbounds %struct.Reg, %struct.Reg* %8520, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8521 to i64*
  %8522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8523 = getelementptr inbounds %struct.GPR, %struct.GPR* %8522, i32 0, i32 5
  %8524 = getelementptr inbounds %struct.Reg, %struct.Reg* %8523, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %8524 to i64*
  %8525 = load i64, i64* %PC.i49
  %8526 = add i64 %8525, 7
  store i64 %8526, i64* %PC.i49
  %8527 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %8528 = zext i32 %8527 to i64
  store i64 %8528, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_408b17, %struct.Memory** %MEMORY
  %loadMem_408b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8530 = getelementptr inbounds %struct.GPR, %struct.GPR* %8529, i32 0, i32 33
  %8531 = getelementptr inbounds %struct.Reg, %struct.Reg* %8530, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8531 to i64*
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8533 = getelementptr inbounds %struct.GPR, %struct.GPR* %8532, i32 0, i32 17
  %8534 = getelementptr inbounds %struct.Reg, %struct.Reg* %8533, i32 0, i32 0
  %R8D.i47 = bitcast %union.anon* %8534 to i32*
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8536 = getelementptr inbounds %struct.GPR, %struct.GPR* %8535, i32 0, i32 15
  %8537 = getelementptr inbounds %struct.Reg, %struct.Reg* %8536, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %8537 to i64*
  %8538 = bitcast i32* %R8D.i47 to i64*
  %8539 = load i64, i64* %RBP.i48
  %8540 = sub i64 %8539, 8
  %8541 = load i64, i64* %PC.i46
  %8542 = add i64 %8541, 4
  store i64 %8542, i64* %PC.i46
  %8543 = inttoptr i64 %8540 to i32*
  %8544 = load i32, i32* %8543
  %8545 = zext i32 %8544 to i64
  store i64 %8545, i64* %8538, align 8
  store %struct.Memory* %loadMem_408b1e, %struct.Memory** %MEMORY
  %loadMem_408b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8547 = getelementptr inbounds %struct.GPR, %struct.GPR* %8546, i32 0, i32 33
  %8548 = getelementptr inbounds %struct.Reg, %struct.Reg* %8547, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8548 to i64*
  %8549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8550 = getelementptr inbounds %struct.GPR, %struct.GPR* %8549, i32 0, i32 17
  %8551 = getelementptr inbounds %struct.Reg, %struct.Reg* %8550, i32 0, i32 0
  %R8D.i45 = bitcast %union.anon* %8551 to i32*
  %8552 = bitcast i32* %R8D.i45 to i64*
  %8553 = load i32, i32* %R8D.i45
  %8554 = zext i32 %8553 to i64
  %8555 = load i64, i64* %PC.i44
  %8556 = add i64 %8555, 4
  store i64 %8556, i64* %PC.i44
  %8557 = add i32 1, %8553
  %8558 = zext i32 %8557 to i64
  store i64 %8558, i64* %8552, align 8
  %8559 = icmp ult i32 %8557, %8553
  %8560 = icmp ult i32 %8557, 1
  %8561 = or i1 %8559, %8560
  %8562 = zext i1 %8561 to i8
  %8563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8562, i8* %8563, align 1
  %8564 = and i32 %8557, 255
  %8565 = call i32 @llvm.ctpop.i32(i32 %8564)
  %8566 = trunc i32 %8565 to i8
  %8567 = and i8 %8566, 1
  %8568 = xor i8 %8567, 1
  %8569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8568, i8* %8569, align 1
  %8570 = xor i64 1, %8554
  %8571 = trunc i64 %8570 to i32
  %8572 = xor i32 %8571, %8557
  %8573 = lshr i32 %8572, 4
  %8574 = trunc i32 %8573 to i8
  %8575 = and i8 %8574, 1
  %8576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8575, i8* %8576, align 1
  %8577 = icmp eq i32 %8557, 0
  %8578 = zext i1 %8577 to i8
  %8579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8578, i8* %8579, align 1
  %8580 = lshr i32 %8557, 31
  %8581 = trunc i32 %8580 to i8
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8581, i8* %8582, align 1
  %8583 = lshr i32 %8553, 31
  %8584 = xor i32 %8580, %8583
  %8585 = add i32 %8584, %8580
  %8586 = icmp eq i32 %8585, 2
  %8587 = zext i1 %8586 to i8
  %8588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8587, i8* %8588, align 1
  store %struct.Memory* %loadMem_408b22, %struct.Memory** %MEMORY
  %loadMem_408b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8590 = getelementptr inbounds %struct.GPR, %struct.GPR* %8589, i32 0, i32 33
  %8591 = getelementptr inbounds %struct.Reg, %struct.Reg* %8590, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %8591 to i64*
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8593 = getelementptr inbounds %struct.GPR, %struct.GPR* %8592, i32 0, i32 17
  %8594 = getelementptr inbounds %struct.Reg, %struct.Reg* %8593, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %8594 to i32*
  %8595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8596 = getelementptr inbounds %struct.GPR, %struct.GPR* %8595, i32 0, i32 7
  %8597 = getelementptr inbounds %struct.Reg, %struct.Reg* %8596, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %8597 to i64*
  %8598 = load i32, i32* %R8D.i
  %8599 = zext i32 %8598 to i64
  %8600 = load i64, i64* %PC.i42
  %8601 = add i64 %8600, 3
  store i64 %8601, i64* %PC.i42
  %8602 = shl i64 %8599, 32
  %8603 = ashr exact i64 %8602, 32
  store i64 %8603, i64* %RDX.i43, align 8
  store %struct.Memory* %loadMem_408b26, %struct.Memory** %MEMORY
  %loadMem_408b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8605 = getelementptr inbounds %struct.GPR, %struct.GPR* %8604, i32 0, i32 33
  %8606 = getelementptr inbounds %struct.Reg, %struct.Reg* %8605, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8606 to i64*
  %8607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8608 = getelementptr inbounds %struct.GPR, %struct.GPR* %8607, i32 0, i32 7
  %8609 = getelementptr inbounds %struct.Reg, %struct.Reg* %8608, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %8609 to i64*
  %8610 = load i64, i64* %RDX.i41
  %8611 = mul i64 %8610, 4
  %8612 = add i64 %8611, 11187184
  %8613 = load i64, i64* %PC.i40
  %8614 = add i64 %8613, 8
  store i64 %8614, i64* %PC.i40
  %8615 = inttoptr i64 %8612 to i32*
  %8616 = load i32, i32* %8615
  %8617 = sext i32 %8616 to i64
  store i64 %8617, i64* %RDX.i41, align 8
  store %struct.Memory* %loadMem_408b29, %struct.Memory** %MEMORY
  %loadMem_408b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8619 = getelementptr inbounds %struct.GPR, %struct.GPR* %8618, i32 0, i32 33
  %8620 = getelementptr inbounds %struct.Reg, %struct.Reg* %8619, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8620 to i64*
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 7
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %8623 to i64*
  %8624 = load i64, i64* %RDX.i39
  %8625 = load i64, i64* %PC.i38
  %8626 = add i64 %8625, 7
  store i64 %8626, i64* %PC.i38
  %8627 = sext i64 %8624 to i128
  %8628 = and i128 %8627, -18446744073709551616
  %8629 = zext i64 %8624 to i128
  %8630 = or i128 %8628, %8629
  %8631 = mul i128 744, %8630
  %8632 = trunc i128 %8631 to i64
  store i64 %8632, i64* %RDX.i39, align 8
  %8633 = sext i64 %8632 to i128
  %8634 = icmp ne i128 %8633, %8631
  %8635 = zext i1 %8634 to i8
  %8636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8635, i8* %8636, align 1
  %8637 = trunc i128 %8631 to i32
  %8638 = and i32 %8637, 255
  %8639 = call i32 @llvm.ctpop.i32(i32 %8638)
  %8640 = trunc i32 %8639 to i8
  %8641 = and i8 %8640, 1
  %8642 = xor i8 %8641, 1
  %8643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8642, i8* %8643, align 1
  %8644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8644, align 1
  %8645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8645, align 1
  %8646 = lshr i64 %8632, 63
  %8647 = trunc i64 %8646 to i8
  %8648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8647, i8* %8648, align 1
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8635, i8* %8649, align 1
  store %struct.Memory* %loadMem_408b31, %struct.Memory** %MEMORY
  %loadMem_408b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8651 = getelementptr inbounds %struct.GPR, %struct.GPR* %8650, i32 0, i32 33
  %8652 = getelementptr inbounds %struct.Reg, %struct.Reg* %8651, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8652 to i64*
  %8653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8654 = getelementptr inbounds %struct.GPR, %struct.GPR* %8653, i32 0, i32 1
  %8655 = getelementptr inbounds %struct.Reg, %struct.Reg* %8654, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %8655 to i64*
  %8656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8657 = getelementptr inbounds %struct.GPR, %struct.GPR* %8656, i32 0, i32 7
  %8658 = getelementptr inbounds %struct.Reg, %struct.Reg* %8657, i32 0, i32 0
  %RDX.i37 = bitcast %union.anon* %8658 to i64*
  %8659 = load i64, i64* %RAX.i36
  %8660 = load i64, i64* %RDX.i37
  %8661 = load i64, i64* %PC.i35
  %8662 = add i64 %8661, 3
  store i64 %8662, i64* %PC.i35
  %8663 = add i64 %8660, %8659
  store i64 %8663, i64* %RAX.i36, align 8
  %8664 = icmp ult i64 %8663, %8659
  %8665 = icmp ult i64 %8663, %8660
  %8666 = or i1 %8664, %8665
  %8667 = zext i1 %8666 to i8
  %8668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8667, i8* %8668, align 1
  %8669 = trunc i64 %8663 to i32
  %8670 = and i32 %8669, 255
  %8671 = call i32 @llvm.ctpop.i32(i32 %8670)
  %8672 = trunc i32 %8671 to i8
  %8673 = and i8 %8672, 1
  %8674 = xor i8 %8673, 1
  %8675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8674, i8* %8675, align 1
  %8676 = xor i64 %8660, %8659
  %8677 = xor i64 %8676, %8663
  %8678 = lshr i64 %8677, 4
  %8679 = trunc i64 %8678 to i8
  %8680 = and i8 %8679, 1
  %8681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8680, i8* %8681, align 1
  %8682 = icmp eq i64 %8663, 0
  %8683 = zext i1 %8682 to i8
  %8684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8683, i8* %8684, align 1
  %8685 = lshr i64 %8663, 63
  %8686 = trunc i64 %8685 to i8
  %8687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8686, i8* %8687, align 1
  %8688 = lshr i64 %8659, 63
  %8689 = lshr i64 %8660, 63
  %8690 = xor i64 %8685, %8688
  %8691 = xor i64 %8685, %8689
  %8692 = add i64 %8690, %8691
  %8693 = icmp eq i64 %8692, 2
  %8694 = zext i1 %8693 to i8
  %8695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8694, i8* %8695, align 1
  store %struct.Memory* %loadMem_408b38, %struct.Memory** %MEMORY
  %loadMem_408b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8697 = getelementptr inbounds %struct.GPR, %struct.GPR* %8696, i32 0, i32 33
  %8698 = getelementptr inbounds %struct.Reg, %struct.Reg* %8697, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8698 to i64*
  %8699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8700 = getelementptr inbounds %struct.GPR, %struct.GPR* %8699, i32 0, i32 5
  %8701 = getelementptr inbounds %struct.Reg, %struct.Reg* %8700, i32 0, i32 0
  %ECX.i33 = bitcast %union.anon* %8701 to i32*
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8703 = getelementptr inbounds %struct.GPR, %struct.GPR* %8702, i32 0, i32 1
  %8704 = getelementptr inbounds %struct.Reg, %struct.Reg* %8703, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %8704 to i64*
  %8705 = load i64, i64* %RAX.i34
  %8706 = add i64 %8705, 740
  %8707 = load i32, i32* %ECX.i33
  %8708 = zext i32 %8707 to i64
  %8709 = load i64, i64* %PC.i32
  %8710 = add i64 %8709, 6
  store i64 %8710, i64* %PC.i32
  %8711 = inttoptr i64 %8706 to i32*
  store i32 %8707, i32* %8711
  store %struct.Memory* %loadMem_408b3b, %struct.Memory** %MEMORY
  br label %block_.L_408b41

block_.L_408b41:                                  ; preds = %block_408ac5, %block_408a8d, %block_.L_408a73
  %loadMem_408b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8713 = getelementptr inbounds %struct.GPR, %struct.GPR* %8712, i32 0, i32 33
  %8714 = getelementptr inbounds %struct.Reg, %struct.Reg* %8713, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8714 to i64*
  %8715 = load i64, i64* %PC.i31
  %8716 = add i64 %8715, 5
  %8717 = load i64, i64* %PC.i31
  %8718 = add i64 %8717, 5
  store i64 %8718, i64* %PC.i31
  %8719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8716, i64* %8719, align 8
  store %struct.Memory* %loadMem_408b41, %struct.Memory** %MEMORY
  br label %block_.L_408b46

block_.L_408b46:                                  ; preds = %block_.L_408b41, %block_.L_408a36
  %loadMem_408b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8721 = getelementptr inbounds %struct.GPR, %struct.GPR* %8720, i32 0, i32 33
  %8722 = getelementptr inbounds %struct.Reg, %struct.Reg* %8721, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8722 to i64*
  %8723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8724 = getelementptr inbounds %struct.GPR, %struct.GPR* %8723, i32 0, i32 1
  %8725 = getelementptr inbounds %struct.Reg, %struct.Reg* %8724, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8725 to i64*
  %8726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8727 = getelementptr inbounds %struct.GPR, %struct.GPR* %8726, i32 0, i32 15
  %8728 = getelementptr inbounds %struct.Reg, %struct.Reg* %8727, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %8728 to i64*
  %8729 = load i64, i64* %RBP.i30
  %8730 = sub i64 %8729, 8
  %8731 = load i64, i64* %PC.i28
  %8732 = add i64 %8731, 4
  store i64 %8732, i64* %PC.i28
  %8733 = inttoptr i64 %8730 to i32*
  %8734 = load i32, i32* %8733
  %8735 = sext i32 %8734 to i64
  store i64 %8735, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_408b46, %struct.Memory** %MEMORY
  %loadMem_408b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8737 = getelementptr inbounds %struct.GPR, %struct.GPR* %8736, i32 0, i32 33
  %8738 = getelementptr inbounds %struct.Reg, %struct.Reg* %8737, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8738 to i64*
  %8739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8740 = getelementptr inbounds %struct.GPR, %struct.GPR* %8739, i32 0, i32 1
  %8741 = getelementptr inbounds %struct.Reg, %struct.Reg* %8740, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8741 to i64*
  %8742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8743 = getelementptr inbounds %struct.GPR, %struct.GPR* %8742, i32 0, i32 5
  %8744 = getelementptr inbounds %struct.Reg, %struct.Reg* %8743, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %8744 to i64*
  %8745 = load i64, i64* %RAX.i26
  %8746 = mul i64 %8745, 4
  %8747 = add i64 %8746, 11188784
  %8748 = load i64, i64* %PC.i25
  %8749 = add i64 %8748, 7
  store i64 %8749, i64* %PC.i25
  %8750 = inttoptr i64 %8747 to i32*
  %8751 = load i32, i32* %8750
  %8752 = zext i32 %8751 to i64
  store i64 %8752, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_408b4a, %struct.Memory** %MEMORY
  %loadMem_408b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8754 = getelementptr inbounds %struct.GPR, %struct.GPR* %8753, i32 0, i32 33
  %8755 = getelementptr inbounds %struct.Reg, %struct.Reg* %8754, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8755 to i64*
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8757 = getelementptr inbounds %struct.GPR, %struct.GPR* %8756, i32 0, i32 5
  %8758 = getelementptr inbounds %struct.Reg, %struct.Reg* %8757, i32 0, i32 0
  %ECX.i23 = bitcast %union.anon* %8758 to i32*
  %8759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8760 = getelementptr inbounds %struct.GPR, %struct.GPR* %8759, i32 0, i32 15
  %8761 = getelementptr inbounds %struct.Reg, %struct.Reg* %8760, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8761 to i64*
  %8762 = load i64, i64* %RBP.i24
  %8763 = sub i64 %8762, 8
  %8764 = load i32, i32* %ECX.i23
  %8765 = zext i32 %8764 to i64
  %8766 = load i64, i64* %PC.i22
  %8767 = add i64 %8766, 3
  store i64 %8767, i64* %PC.i22
  %8768 = inttoptr i64 %8763 to i32*
  store i32 %8764, i32* %8768
  store %struct.Memory* %loadMem_408b51, %struct.Memory** %MEMORY
  %loadMem_408b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8770 = getelementptr inbounds %struct.GPR, %struct.GPR* %8769, i32 0, i32 33
  %8771 = getelementptr inbounds %struct.Reg, %struct.Reg* %8770, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8771 to i64*
  %8772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8773 = getelementptr inbounds %struct.GPR, %struct.GPR* %8772, i32 0, i32 1
  %8774 = getelementptr inbounds %struct.Reg, %struct.Reg* %8773, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %8774 to i64*
  %8775 = load i64, i64* %PC.i20
  %8776 = add i64 %8775, 10
  store i64 %8776, i64* %PC.i20
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_408b54, %struct.Memory** %MEMORY
  %loadMem_408b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8778 = getelementptr inbounds %struct.GPR, %struct.GPR* %8777, i32 0, i32 33
  %8779 = getelementptr inbounds %struct.Reg, %struct.Reg* %8778, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8779 to i64*
  %8780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8781 = getelementptr inbounds %struct.GPR, %struct.GPR* %8780, i32 0, i32 5
  %8782 = getelementptr inbounds %struct.Reg, %struct.Reg* %8781, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8782 to i64*
  %8783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8784 = getelementptr inbounds %struct.GPR, %struct.GPR* %8783, i32 0, i32 15
  %8785 = getelementptr inbounds %struct.Reg, %struct.Reg* %8784, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %8785 to i64*
  %8786 = load i64, i64* %RBP.i19
  %8787 = sub i64 %8786, 8
  %8788 = load i64, i64* %PC.i18
  %8789 = add i64 %8788, 3
  store i64 %8789, i64* %PC.i18
  %8790 = inttoptr i64 %8787 to i32*
  %8791 = load i32, i32* %8790
  %8792 = zext i32 %8791 to i64
  store i64 %8792, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_408b5e, %struct.Memory** %MEMORY
  %loadMem_408b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8794 = getelementptr inbounds %struct.GPR, %struct.GPR* %8793, i32 0, i32 33
  %8795 = getelementptr inbounds %struct.Reg, %struct.Reg* %8794, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8795 to i64*
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8797 = getelementptr inbounds %struct.GPR, %struct.GPR* %8796, i32 0, i32 7
  %8798 = getelementptr inbounds %struct.Reg, %struct.Reg* %8797, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %8798 to i64*
  %8799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8800 = getelementptr inbounds %struct.GPR, %struct.GPR* %8799, i32 0, i32 15
  %8801 = getelementptr inbounds %struct.Reg, %struct.Reg* %8800, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %8801 to i64*
  %8802 = load i64, i64* %RBP.i17
  %8803 = sub i64 %8802, 4
  %8804 = load i64, i64* %PC.i15
  %8805 = add i64 %8804, 4
  store i64 %8805, i64* %PC.i15
  %8806 = inttoptr i64 %8803 to i32*
  %8807 = load i32, i32* %8806
  %8808 = sext i32 %8807 to i64
  store i64 %8808, i64* %RDX.i16, align 8
  store %struct.Memory* %loadMem_408b61, %struct.Memory** %MEMORY
  %loadMem_408b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8810 = getelementptr inbounds %struct.GPR, %struct.GPR* %8809, i32 0, i32 33
  %8811 = getelementptr inbounds %struct.Reg, %struct.Reg* %8810, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8811 to i64*
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 7
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %RDX.i14 = bitcast %union.anon* %8814 to i64*
  %8815 = load i64, i64* %RDX.i14
  %8816 = load i64, i64* %PC.i13
  %8817 = add i64 %8816, 7
  store i64 %8817, i64* %PC.i13
  %8818 = sext i64 %8815 to i128
  %8819 = and i128 %8818, -18446744073709551616
  %8820 = zext i64 %8815 to i128
  %8821 = or i128 %8819, %8820
  %8822 = mul i128 744, %8821
  %8823 = trunc i128 %8822 to i64
  store i64 %8823, i64* %RDX.i14, align 8
  %8824 = sext i64 %8823 to i128
  %8825 = icmp ne i128 %8824, %8822
  %8826 = zext i1 %8825 to i8
  %8827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8826, i8* %8827, align 1
  %8828 = trunc i128 %8822 to i32
  %8829 = and i32 %8828, 255
  %8830 = call i32 @llvm.ctpop.i32(i32 %8829)
  %8831 = trunc i32 %8830 to i8
  %8832 = and i8 %8831, 1
  %8833 = xor i8 %8832, 1
  %8834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8833, i8* %8834, align 1
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8835, align 1
  %8836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8836, align 1
  %8837 = lshr i64 %8823, 63
  %8838 = trunc i64 %8837 to i8
  %8839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8838, i8* %8839, align 1
  %8840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8826, i8* %8840, align 1
  store %struct.Memory* %loadMem_408b65, %struct.Memory** %MEMORY
  %loadMem_408b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8842 = getelementptr inbounds %struct.GPR, %struct.GPR* %8841, i32 0, i32 33
  %8843 = getelementptr inbounds %struct.Reg, %struct.Reg* %8842, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8843 to i64*
  %8844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8845 = getelementptr inbounds %struct.GPR, %struct.GPR* %8844, i32 0, i32 1
  %8846 = getelementptr inbounds %struct.Reg, %struct.Reg* %8845, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %8846 to i64*
  %8847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8848 = getelementptr inbounds %struct.GPR, %struct.GPR* %8847, i32 0, i32 7
  %8849 = getelementptr inbounds %struct.Reg, %struct.Reg* %8848, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8849 to i64*
  %8850 = load i64, i64* %RAX.i12
  %8851 = load i64, i64* %RDX.i
  %8852 = load i64, i64* %PC.i11
  %8853 = add i64 %8852, 3
  store i64 %8853, i64* %PC.i11
  %8854 = add i64 %8851, %8850
  store i64 %8854, i64* %RAX.i12, align 8
  %8855 = icmp ult i64 %8854, %8850
  %8856 = icmp ult i64 %8854, %8851
  %8857 = or i1 %8855, %8856
  %8858 = zext i1 %8857 to i8
  %8859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8858, i8* %8859, align 1
  %8860 = trunc i64 %8854 to i32
  %8861 = and i32 %8860, 255
  %8862 = call i32 @llvm.ctpop.i32(i32 %8861)
  %8863 = trunc i32 %8862 to i8
  %8864 = and i8 %8863, 1
  %8865 = xor i8 %8864, 1
  %8866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8865, i8* %8866, align 1
  %8867 = xor i64 %8851, %8850
  %8868 = xor i64 %8867, %8854
  %8869 = lshr i64 %8868, 4
  %8870 = trunc i64 %8869 to i8
  %8871 = and i8 %8870, 1
  %8872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8871, i8* %8872, align 1
  %8873 = icmp eq i64 %8854, 0
  %8874 = zext i1 %8873 to i8
  %8875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8874, i8* %8875, align 1
  %8876 = lshr i64 %8854, 63
  %8877 = trunc i64 %8876 to i8
  %8878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8877, i8* %8878, align 1
  %8879 = lshr i64 %8850, 63
  %8880 = lshr i64 %8851, 63
  %8881 = xor i64 %8876, %8879
  %8882 = xor i64 %8876, %8880
  %8883 = add i64 %8881, %8882
  %8884 = icmp eq i64 %8883, 2
  %8885 = zext i1 %8884 to i8
  %8886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8885, i8* %8886, align 1
  store %struct.Memory* %loadMem_408b6c, %struct.Memory** %MEMORY
  %loadMem_408b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8888 = getelementptr inbounds %struct.GPR, %struct.GPR* %8887, i32 0, i32 33
  %8889 = getelementptr inbounds %struct.Reg, %struct.Reg* %8888, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8889 to i64*
  %8890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8891 = getelementptr inbounds %struct.GPR, %struct.GPR* %8890, i32 0, i32 5
  %8892 = getelementptr inbounds %struct.Reg, %struct.Reg* %8891, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8892 to i32*
  %8893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8894 = getelementptr inbounds %struct.GPR, %struct.GPR* %8893, i32 0, i32 1
  %8895 = getelementptr inbounds %struct.Reg, %struct.Reg* %8894, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8895 to i64*
  %8896 = load i32, i32* %ECX.i
  %8897 = zext i32 %8896 to i64
  %8898 = load i64, i64* %RAX.i
  %8899 = add i64 %8898, 8
  %8900 = load i64, i64* %PC.i10
  %8901 = add i64 %8900, 3
  store i64 %8901, i64* %PC.i10
  %8902 = inttoptr i64 %8899 to i32*
  %8903 = load i32, i32* %8902
  %8904 = sub i32 %8896, %8903
  %8905 = icmp ult i32 %8896, %8903
  %8906 = zext i1 %8905 to i8
  %8907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8906, i8* %8907, align 1
  %8908 = and i32 %8904, 255
  %8909 = call i32 @llvm.ctpop.i32(i32 %8908)
  %8910 = trunc i32 %8909 to i8
  %8911 = and i8 %8910, 1
  %8912 = xor i8 %8911, 1
  %8913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8912, i8* %8913, align 1
  %8914 = xor i32 %8903, %8896
  %8915 = xor i32 %8914, %8904
  %8916 = lshr i32 %8915, 4
  %8917 = trunc i32 %8916 to i8
  %8918 = and i8 %8917, 1
  %8919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8918, i8* %8919, align 1
  %8920 = icmp eq i32 %8904, 0
  %8921 = zext i1 %8920 to i8
  %8922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8921, i8* %8922, align 1
  %8923 = lshr i32 %8904, 31
  %8924 = trunc i32 %8923 to i8
  %8925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8924, i8* %8925, align 1
  %8926 = lshr i32 %8896, 31
  %8927 = lshr i32 %8903, 31
  %8928 = xor i32 %8927, %8926
  %8929 = xor i32 %8923, %8926
  %8930 = add i32 %8929, %8928
  %8931 = icmp eq i32 %8930, 2
  %8932 = zext i1 %8931 to i8
  %8933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8932, i8* %8933, align 1
  store %struct.Memory* %loadMem_408b6f, %struct.Memory** %MEMORY
  %loadMem_408b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8935 = getelementptr inbounds %struct.GPR, %struct.GPR* %8934, i32 0, i32 33
  %8936 = getelementptr inbounds %struct.Reg, %struct.Reg* %8935, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8936 to i64*
  %8937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8938 = getelementptr inbounds %struct.GPR, %struct.GPR* %8937, i32 0, i32 9
  %8939 = getelementptr inbounds %struct.Reg, %struct.Reg* %8938, i32 0, i32 0
  %8940 = bitcast %union.anon* %8939 to %struct.anon.2*
  %SIL.i9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8940, i32 0, i32 0
  %8941 = load i64, i64* %PC.i8
  %8942 = add i64 %8941, 4
  store i64 %8942, i64* %PC.i8
  %8943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8944 = load i8, i8* %8943, align 1
  store i8 %8944, i8* %SIL.i9, align 1
  store %struct.Memory* %loadMem_408b72, %struct.Memory** %MEMORY
  %loadMem_408b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8946 = getelementptr inbounds %struct.GPR, %struct.GPR* %8945, i32 0, i32 33
  %8947 = getelementptr inbounds %struct.Reg, %struct.Reg* %8946, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8947 to i64*
  %8948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8949 = getelementptr inbounds %struct.GPR, %struct.GPR* %8948, i32 0, i32 9
  %8950 = getelementptr inbounds %struct.Reg, %struct.Reg* %8949, i32 0, i32 0
  %8951 = bitcast %union.anon* %8950 to %struct.anon.2*
  %SIL.i7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8951, i32 0, i32 0
  %8952 = load i8, i8* %SIL.i7
  %8953 = zext i8 %8952 to i64
  %8954 = load i64, i64* %PC.i6
  %8955 = add i64 %8954, 4
  store i64 %8955, i64* %PC.i6
  %8956 = xor i64 255, %8953
  %8957 = trunc i64 %8956 to i8
  store i8 %8957, i8* %SIL.i7, align 1
  %8958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8958, align 1
  %8959 = trunc i64 %8956 to i32
  %8960 = and i32 %8959, 255
  %8961 = call i32 @llvm.ctpop.i32(i32 %8960)
  %8962 = trunc i32 %8961 to i8
  %8963 = and i8 %8962, 1
  %8964 = xor i8 %8963, 1
  %8965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8964, i8* %8965, align 1
  %8966 = icmp eq i8 %8957, 0
  %8967 = zext i1 %8966 to i8
  %8968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8967, i8* %8968, align 1
  %8969 = lshr i8 %8957, 7
  %8970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8969, i8* %8970, align 1
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8971, align 1
  %8972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8972, align 1
  store %struct.Memory* %loadMem_408b76, %struct.Memory** %MEMORY
  %loadMem_408b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8974 = getelementptr inbounds %struct.GPR, %struct.GPR* %8973, i32 0, i32 33
  %8975 = getelementptr inbounds %struct.Reg, %struct.Reg* %8974, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8975 to i64*
  %8976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8977 = getelementptr inbounds %struct.GPR, %struct.GPR* %8976, i32 0, i32 9
  %8978 = getelementptr inbounds %struct.Reg, %struct.Reg* %8977, i32 0, i32 0
  %8979 = bitcast %union.anon* %8978 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8979, i32 0, i32 0
  %8980 = load i8, i8* %SIL.i
  %8981 = zext i8 %8980 to i64
  %8982 = load i64, i64* %PC.i5
  %8983 = add i64 %8982, 4
  store i64 %8983, i64* %PC.i5
  %8984 = and i64 1, %8981
  %8985 = trunc i64 %8984 to i8
  %8986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8986, align 1
  %8987 = trunc i64 %8984 to i32
  %8988 = and i32 %8987, 255
  %8989 = call i32 @llvm.ctpop.i32(i32 %8988)
  %8990 = trunc i32 %8989 to i8
  %8991 = and i8 %8990, 1
  %8992 = xor i8 %8991, 1
  %8993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8992, i8* %8993, align 1
  %8994 = icmp eq i8 %8985, 0
  %8995 = zext i1 %8994 to i8
  %8996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8995, i8* %8996, align 1
  %8997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8997, align 1
  %8998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8998, align 1
  %8999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8999, align 1
  store %struct.Memory* %loadMem_408b7a, %struct.Memory** %MEMORY
  %loadMem_408b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9001 = getelementptr inbounds %struct.GPR, %struct.GPR* %9000, i32 0, i32 33
  %9002 = getelementptr inbounds %struct.Reg, %struct.Reg* %9001, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9002 to i64*
  %9003 = load i64, i64* %PC.i4
  %9004 = add i64 %9003, -1740
  %9005 = load i64, i64* %PC.i4
  %9006 = add i64 %9005, 6
  %9007 = load i64, i64* %PC.i4
  %9008 = add i64 %9007, 6
  store i64 %9008, i64* %PC.i4
  %9009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9010 = load i8, i8* %9009, align 1
  %9011 = icmp eq i8 %9010, 0
  %9012 = zext i1 %9011 to i8
  store i8 %9012, i8* %BRANCH_TAKEN, align 1
  %9013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9014 = select i1 %9011, i64 %9004, i64 %9006
  store i64 %9014, i64* %9013, align 8
  store %struct.Memory* %loadMem_408b7e, %struct.Memory** %MEMORY
  %loadBr_408b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408b7e = icmp eq i8 %loadBr_408b7e, 1
  br i1 %cmpBr_408b7e, label %block_.L_4084b2, label %block_408b84

block_408b84:                                     ; preds = %block_.L_408b46
  %loadMem_408b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9016 = getelementptr inbounds %struct.GPR, %struct.GPR* %9015, i32 0, i32 33
  %9017 = getelementptr inbounds %struct.Reg, %struct.Reg* %9016, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9017 to i64*
  %9018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9019 = getelementptr inbounds %struct.GPR, %struct.GPR* %9018, i32 0, i32 15
  %9020 = getelementptr inbounds %struct.Reg, %struct.Reg* %9019, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9020 to i64*
  %9021 = load i64, i64* %PC.i2
  %9022 = add i64 %9021, 1
  store i64 %9022, i64* %PC.i2
  %9023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9024 = load i64, i64* %9023, align 8
  %9025 = add i64 %9024, 8
  %9026 = inttoptr i64 %9024 to i64*
  %9027 = load i64, i64* %9026
  store i64 %9027, i64* %RBP.i3, align 8
  store i64 %9025, i64* %9023, align 8
  store %struct.Memory* %loadMem_408b84, %struct.Memory** %MEMORY
  %loadMem_408b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9029 = getelementptr inbounds %struct.GPR, %struct.GPR* %9028, i32 0, i32 33
  %9030 = getelementptr inbounds %struct.Reg, %struct.Reg* %9029, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9030 to i64*
  %9031 = load i64, i64* %PC.i1
  %9032 = add i64 %9031, 1
  store i64 %9032, i64* %PC.i1
  %9033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9035 = load i64, i64* %9034, align 8
  %9036 = inttoptr i64 %9035 to i64*
  %9037 = load i64, i64* %9036
  store i64 %9037, i64* %9033, align 8
  %9038 = add i64 %9035, 8
  store i64 %9038, i64* %9034, align 8
  store %struct.Memory* %loadMem_408b85, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_408b85
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

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
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

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_subl___rsi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = trunc i64 %12 to i32
  %17 = inttoptr i64 %13 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %16, %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  %21 = icmp ult i32 %16, %18
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %19, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %18, %16
  %31 = xor i32 %30, %19
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %19, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %16, 31
  %43 = lshr i32 %18, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_408584(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
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

define %struct.Memory* @routine_je_.L_408584(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4084ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jge_.L_408547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_408657(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jne_.L_408652(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_je_.L_408652(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 96
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_addl__0x14___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i32 20, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 20
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
  %27 = xor i64 20, %11
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

define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_408729(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_408729(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_408693(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4086ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4087fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4087f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4087f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %10, 1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %10, 1
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
  %25 = xor i64 1, %11
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

define %struct.Memory* @routine_jne_.L_4088ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4088ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_408838(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_408891(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4089a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40899c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40899c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %10, 20
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %10, 20
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
  %25 = xor i64 20, %11
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

define %struct.Memory* @routine_jne_.L_408a73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_408a73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4089dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_408a36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_408b46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_408b41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_408b41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_sete__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = xor i64 255, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
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

define %struct.Memory* @routine_jne_.L_4084b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
