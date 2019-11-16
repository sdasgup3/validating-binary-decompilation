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
define %struct.Memory* @update_tree(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_404090 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_404090, %struct.Memory** %MEMORY
  %loadMem_404091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i752 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i752
  %27 = load i64, i64* %PC.i751
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i751
  store i64 %26, i64* %RBP.i753, align 8
  store %struct.Memory* %loadMem_404091, %struct.Memory** %MEMORY
  %loadMem_404094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i750 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i750
  %36 = load i64, i64* %PC.i749
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i749
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_404094, %struct.Memory** %MEMORY
  %loadMem_404096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i748 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i748
  %49 = load i64, i64* %PC.i747
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i747
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_404096, %struct.Memory** %MEMORY
  %loadMem_404098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i746 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i746
  %62 = load i64, i64* %PC.i745
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i745
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_404098, %struct.Memory** %MEMORY
  %loadMem_404099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i744 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i744
  %75 = load i64, i64* %PC.i743
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC.i743
  %77 = sub i64 %74, 64
  store i64 %77, i64* %RSP.i744, align 8
  %78 = icmp ult i64 %74, 64
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1
  %81 = trunc i64 %77 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1
  %88 = xor i64 64, %74
  %89 = xor i64 %88, %77
  %90 = lshr i64 %89, 4
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1
  %94 = icmp eq i64 %77, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1
  %97 = lshr i64 %77, 63
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1
  %100 = lshr i64 %74, 63
  %101 = xor i64 %97, %100
  %102 = add i64 %101, %100
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1
  store %struct.Memory* %loadMem_404099, %struct.Memory** %MEMORY
  %loadMem_40409d = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i742
  %116 = add i64 %115, 56
  %117 = load i64, i64* %PC.i740
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i740
  %119 = inttoptr i64 %116 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_40409d, %struct.Memory** %MEMORY
  %loadMem_4040a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 21
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %R10.i739 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i738
  %131 = add i64 %130, 48
  %132 = load i64, i64* %PC.i737
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i737
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %R10.i739, align 8
  store %struct.Memory* %loadMem_4040a1, %struct.Memory** %MEMORY
  %loadMem_4040a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 23
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %R11.i736 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %RBP.i735
  %146 = add i64 %145, 40
  %147 = load i64, i64* %PC.i734
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i734
  %149 = inttoptr i64 %146 to i64*
  %150 = load i64, i64* %149
  store i64 %150, i64* %R11.i736, align 8
  store %struct.Memory* %loadMem_4040a5, %struct.Memory** %MEMORY
  %loadMem_4040a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBX.i732 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i733
  %161 = add i64 %160, 32
  %162 = load i64, i64* %PC.i731
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i731
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164
  store i64 %165, i64* %RBX.i732, align 8
  store %struct.Memory* %loadMem_4040a9, %struct.Memory** %MEMORY
  %loadMem_4040ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 29
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %R14.i730 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i729
  %176 = add i64 %175, 24
  %177 = load i64, i64* %PC.i728
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i728
  %179 = inttoptr i64 %176 to i64*
  %180 = load i64, i64* %179
  store i64 %180, i64* %R14.i730, align 8
  store %struct.Memory* %loadMem_4040ad, %struct.Memory** %MEMORY
  %loadMem_4040b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 15
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 31
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %R15.i727 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %RBP.i726
  %191 = add i64 %190, 16
  %192 = load i64, i64* %PC.i725
  %193 = add i64 %192, 4
  store i64 %193, i64* %PC.i725
  %194 = inttoptr i64 %191 to i64*
  %195 = load i64, i64* %194
  store i64 %195, i64* %R15.i727, align 8
  store %struct.Memory* %loadMem_4040b1, %struct.Memory** %MEMORY
  %loadMem_4040b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i724
  %206 = sub i64 %205, 32
  %207 = load i64, i64* %RDI.i
  %208 = load i64, i64* %PC.i723
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC.i723
  %210 = inttoptr i64 %206 to i64*
  store i64 %207, i64* %210
  store %struct.Memory* %loadMem_4040b5, %struct.Memory** %MEMORY
  %loadMem_4040b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 9
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RSI.i721 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RBP.i722
  %221 = sub i64 %220, 40
  %222 = load i64, i64* %RSI.i721
  %223 = load i64, i64* %PC.i720
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i720
  %225 = inttoptr i64 %221 to i64*
  store i64 %222, i64* %225
  store %struct.Memory* %loadMem_4040b9, %struct.Memory** %MEMORY
  %loadMem_4040bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i719
  %236 = sub i64 %235, 48
  %237 = load i64, i64* %RDX.i718
  %238 = load i64, i64* %PC.i717
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC.i717
  %240 = inttoptr i64 %236 to i64*
  store i64 %237, i64* %240
  store %struct.Memory* %loadMem_4040bd, %struct.Memory** %MEMORY
  %loadMem_4040c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i716
  %251 = sub i64 %250, 56
  %252 = load i64, i64* %RCX.i715
  %253 = load i64, i64* %PC.i714
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC.i714
  %255 = inttoptr i64 %251 to i64*
  store i64 %252, i64* %255
  store %struct.Memory* %loadMem_4040c1, %struct.Memory** %MEMORY
  %loadMem_4040c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 17
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %R8.i = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i713
  %266 = sub i64 %265, 64
  %267 = load i64, i64* %R8.i
  %268 = load i64, i64* %PC.i712
  %269 = add i64 %268, 4
  store i64 %269, i64* %PC.i712
  %270 = inttoptr i64 %266 to i64*
  store i64 %267, i64* %270
  store %struct.Memory* %loadMem_4040c5, %struct.Memory** %MEMORY
  %loadMem_4040c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 19
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %R9.i = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RBP.i711
  %281 = sub i64 %280, 72
  %282 = load i64, i64* %R9.i
  %283 = load i64, i64* %PC.i710
  %284 = add i64 %283, 4
  store i64 %284, i64* %PC.i710
  %285 = inttoptr i64 %281 to i64*
  store i64 %282, i64* %285
  store %struct.Memory* %loadMem_4040c9, %struct.Memory** %MEMORY
  %loadMem_4040cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 31
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %R15.i709 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i708
  %296 = sub i64 %295, 80
  %297 = load i64, i64* %R15.i709
  %298 = load i64, i64* %PC.i707
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC.i707
  %300 = inttoptr i64 %296 to i64*
  store i64 %297, i64* %300
  store %struct.Memory* %loadMem_4040cd, %struct.Memory** %MEMORY
  %loadMem_4040d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 15
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 29
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %R14.i706 = bitcast %union.anon* %309 to i64*
  %310 = load i64, i64* %RBP.i705
  %311 = sub i64 %310, 88
  %312 = load i64, i64* %R14.i706
  %313 = load i64, i64* %PC.i704
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC.i704
  %315 = inttoptr i64 %311 to i64*
  store i64 %312, i64* %315
  store %struct.Memory* %loadMem_4040d1, %struct.Memory** %MEMORY
  %loadMem_4040d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RBX.i702 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i703
  %326 = sub i64 %325, 96
  %327 = load i64, i64* %RBX.i702
  %328 = load i64, i64* %PC.i701
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC.i701
  %330 = inttoptr i64 %326 to i64*
  store i64 %327, i64* %330
  store %struct.Memory* %loadMem_4040d5, %struct.Memory** %MEMORY
  %loadMem_4040d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 23
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %R11.i = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i700
  %341 = sub i64 %340, 104
  %342 = load i64, i64* %R11.i
  %343 = load i64, i64* %PC.i699
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i699
  %345 = inttoptr i64 %341 to i64*
  store i64 %342, i64* %345
  store %struct.Memory* %loadMem_4040d9, %struct.Memory** %MEMORY
  %loadMem_4040dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 15
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 21
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %R10.i = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RBP.i698
  %356 = sub i64 %355, 112
  %357 = load i64, i64* %R10.i
  %358 = load i64, i64* %PC.i697
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC.i697
  %360 = inttoptr i64 %356 to i64*
  store i64 %357, i64* %360
  store %struct.Memory* %loadMem_4040dd, %struct.Memory** %MEMORY
  %loadMem_4040e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i696
  %371 = sub i64 %370, 120
  %372 = load i64, i64* %RAX.i695
  %373 = load i64, i64* %PC.i694
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i694
  %375 = inttoptr i64 %371 to i64*
  store i64 %372, i64* %375
  store %struct.Memory* %loadMem_4040e1, %struct.Memory** %MEMORY
  %loadMem_4040e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i693
  %386 = sub i64 %385, 104
  %387 = load i64, i64* %PC.i691
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC.i691
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389
  store i64 %390, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_4040e5, %struct.Memory** %MEMORY
  %loadMem_4040e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RAX.i690
  %398 = add i64 %397, 8
  %399 = load i64, i64* %PC.i689
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i689
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401
  store i64 %402, i64* %RAX.i690, align 8
  store %struct.Memory* %loadMem_4040e9, %struct.Memory** %MEMORY
  %loadMem_4040ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RAX.i687
  %413 = load i64, i64* %RBP.i688
  %414 = sub i64 %413, 72
  %415 = load i64, i64* %PC.i686
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC.i686
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417
  %419 = sub i64 %412, %418
  %420 = icmp ugt i64 %418, %412
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %421, i8* %422, align 1
  %423 = trunc i64 %419 to i32
  %424 = and i32 %423, 255
  %425 = call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %428, i8* %429, align 1
  %430 = xor i64 %418, %412
  %431 = xor i64 %430, %419
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %434, i8* %435, align 1
  %436 = icmp eq i64 %419, 0
  %437 = zext i1 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %437, i8* %438, align 1
  %439 = lshr i64 %419, 63
  %440 = trunc i64 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %440, i8* %441, align 1
  %442 = lshr i64 %412, 63
  %443 = lshr i64 %418, 63
  %444 = xor i64 %443, %442
  %445 = xor i64 %439, %442
  %446 = add i64 %445, %444
  %447 = icmp eq i64 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1
  store %struct.Memory* %loadMem_4040ed, %struct.Memory** %MEMORY
  %loadMem_4040f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i685
  %454 = add i64 %453, 17
  %455 = load i64, i64* %PC.i685
  %456 = add i64 %455, 6
  %457 = load i64, i64* %PC.i685
  %458 = add i64 %457, 6
  store i64 %458, i64* %PC.i685
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %460 = load i8, i8* %459, align 1
  %461 = icmp eq i8 %460, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %BRANCH_TAKEN, align 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %464 = select i1 %461, i64 %454, i64 %456
  store i64 %464, i64* %463, align 8
  store %struct.Memory* %loadMem_4040f1, %struct.Memory** %MEMORY
  %loadBr_4040f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4040f1 = icmp eq i8 %loadBr_4040f1, 1
  br i1 %cmpBr_4040f1, label %block_.L_404102, label %block_4040f7

block_4040f7:                                     ; preds = %entry
  %loadMem_4040f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RBP.i684
  %472 = sub i64 %471, 112
  %473 = load i64, i64* %PC.i683
  %474 = add i64 %473, 5
  store i64 %474, i64* %PC.i683
  %475 = inttoptr i64 %472 to i64*
  %476 = load i64, i64* %475
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %477, align 1
  %478 = trunc i64 %476 to i32
  %479 = and i32 %478, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %485, align 1
  %486 = icmp eq i64 %476, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1
  %489 = lshr i64 %476, 63
  %490 = trunc i64 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1
  %492 = lshr i64 %476, 63
  %493 = xor i64 %489, %492
  %494 = add i64 %493, %492
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1
  store %struct.Memory* %loadMem_4040f7, %struct.Memory** %MEMORY
  %loadMem_4040fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %PC.i682
  %502 = add i64 %501, 35
  %503 = load i64, i64* %PC.i682
  %504 = add i64 %503, 6
  %505 = load i64, i64* %PC.i682
  %506 = add i64 %505, 6
  store i64 %506, i64* %PC.i682
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %508 = load i8, i8* %507, align 1
  %509 = icmp ne i8 %508, 0
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %511 = load i8, i8* %510, align 1
  %512 = icmp ne i8 %511, 0
  %513 = xor i1 %509, %512
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %BRANCH_TAKEN, align 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %516 = select i1 %513, i64 %502, i64 %504
  store i64 %516, i64* %515, align 8
  store %struct.Memory* %loadMem_4040fc, %struct.Memory** %MEMORY
  %loadBr_4040fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4040fc = icmp eq i8 %loadBr_4040fc, 1
  br i1 %cmpBr_4040fc, label %block_.L_40411f, label %block_.L_404102

block_.L_404102:                                  ; preds = %block_4040f7, %entry
  %loadMem_404102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RBP.i681
  %527 = sub i64 %526, 104
  %528 = load i64, i64* %PC.i679
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC.i679
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530
  store i64 %531, i64* %RAX.i680, align 8
  store %struct.Memory* %loadMem_404102, %struct.Memory** %MEMORY
  %loadMem_404106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RAX.i678
  %539 = add i64 %538, 8
  %540 = load i64, i64* %PC.i677
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC.i677
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_404106, %struct.Memory** %MEMORY
  %loadMem_40410a = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 15
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RAX.i675
  %554 = load i64, i64* %RBP.i676
  %555 = sub i64 %554, 64
  %556 = load i64, i64* %PC.i674
  %557 = add i64 %556, 4
  store i64 %557, i64* %PC.i674
  %558 = inttoptr i64 %555 to i64*
  %559 = load i64, i64* %558
  %560 = sub i64 %553, %559
  %561 = icmp ugt i64 %559, %553
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %562, i8* %563, align 1
  %564 = trunc i64 %560 to i32
  %565 = and i32 %564, 255
  %566 = call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %569, i8* %570, align 1
  %571 = xor i64 %559, %553
  %572 = xor i64 %571, %560
  %573 = lshr i64 %572, 4
  %574 = trunc i64 %573 to i8
  %575 = and i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %575, i8* %576, align 1
  %577 = icmp eq i64 %560, 0
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %578, i8* %579, align 1
  %580 = lshr i64 %560, 63
  %581 = trunc i64 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %581, i8* %582, align 1
  %583 = lshr i64 %553, 63
  %584 = lshr i64 %559, 63
  %585 = xor i64 %584, %583
  %586 = xor i64 %580, %583
  %587 = add i64 %586, %585
  %588 = icmp eq i64 %587, 2
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %589, i8* %590, align 1
  store %struct.Memory* %loadMem_40410a, %struct.Memory** %MEMORY
  %loadMem_40410e = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i673
  %595 = add i64 %594, 75
  %596 = load i64, i64* %PC.i673
  %597 = add i64 %596, 6
  %598 = load i64, i64* %PC.i673
  %599 = add i64 %598, 6
  store i64 %599, i64* %PC.i673
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %601 = load i8, i8* %600, align 1
  %602 = icmp eq i8 %601, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %BRANCH_TAKEN, align 1
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %605 = select i1 %602, i64 %595, i64 %597
  store i64 %605, i64* %604, align 8
  store %struct.Memory* %loadMem_40410e, %struct.Memory** %MEMORY
  %loadBr_40410e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40410e = icmp eq i8 %loadBr_40410e, 1
  br i1 %cmpBr_40410e, label %block_.L_404159, label %block_404114

block_404114:                                     ; preds = %block_.L_404102
  %loadMem_404114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 15
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %RBP.i672
  %613 = sub i64 %612, 112
  %614 = load i64, i64* %PC.i671
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC.i671
  %616 = inttoptr i64 %613 to i64*
  %617 = load i64, i64* %616
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %618, align 1
  %619 = trunc i64 %617 to i32
  %620 = and i32 %619, 255
  %621 = call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %624, i8* %625, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %626, align 1
  %627 = icmp eq i64 %617, 0
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %628, i8* %629, align 1
  %630 = lshr i64 %617, 63
  %631 = trunc i64 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %631, i8* %632, align 1
  %633 = lshr i64 %617, 63
  %634 = xor i64 %630, %633
  %635 = add i64 %634, %633
  %636 = icmp eq i64 %635, 2
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %637, i8* %638, align 1
  store %struct.Memory* %loadMem_404114, %struct.Memory** %MEMORY
  %loadMem_404119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i670
  %643 = add i64 %642, 64
  %644 = load i64, i64* %PC.i670
  %645 = add i64 %644, 6
  %646 = load i64, i64* %PC.i670
  %647 = add i64 %646, 6
  store i64 %647, i64* %PC.i670
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %649 = load i8, i8* %648, align 1
  %650 = icmp ne i8 %649, 0
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %652 = load i8, i8* %651, align 1
  %653 = icmp ne i8 %652, 0
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %655 = load i8, i8* %654, align 1
  %656 = icmp ne i8 %655, 0
  %657 = xor i1 %653, %656
  %658 = or i1 %650, %657
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %BRANCH_TAKEN, align 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %661 = select i1 %658, i64 %643, i64 %645
  store i64 %661, i64* %660, align 8
  store %struct.Memory* %loadMem_404119, %struct.Memory** %MEMORY
  %loadBr_404119 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404119 = icmp eq i8 %loadBr_404119, 1
  br i1 %cmpBr_404119, label %block_.L_404159, label %block_.L_40411f

block_.L_40411f:                                  ; preds = %block_404114, %block_4040f7
  %loadMem_40411f = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 15
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RBP.i669
  %669 = sub i64 %668, 112
  %670 = load i64, i64* %PC.i668
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC.i668
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %674, align 1
  %675 = trunc i64 %673 to i32
  %676 = and i32 %675, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %682, align 1
  %683 = icmp eq i64 %673, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i64 %673, 63
  %687 = trunc i64 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = lshr i64 %673, 63
  %690 = xor i64 %686, %689
  %691 = add i64 %690, %689
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %693, i8* %694, align 1
  store %struct.Memory* %loadMem_40411f, %struct.Memory** %MEMORY
  %loadMem_404124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %697 to i64*
  %698 = load i64, i64* %PC.i667
  %699 = add i64 %698, 22
  %700 = load i64, i64* %PC.i667
  %701 = add i64 %700, 6
  %702 = load i64, i64* %PC.i667
  %703 = add i64 %702, 6
  store i64 %703, i64* %PC.i667
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %705 = load i8, i8* %704, align 1
  %706 = icmp ne i8 %705, 0
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %708 = load i8, i8* %707, align 1
  %709 = icmp ne i8 %708, 0
  %710 = xor i1 %706, %709
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %BRANCH_TAKEN, align 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %713 = select i1 %710, i64 %699, i64 %701
  store i64 %713, i64* %712, align 8
  store %struct.Memory* %loadMem_404124, %struct.Memory** %MEMORY
  %loadBr_404124 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404124 = icmp eq i8 %loadBr_404124, 1
  br i1 %cmpBr_404124, label %block_.L_40413a, label %block_40412a

block_40412a:                                     ; preds = %block_.L_40411f
  %loadMem_40412a = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i666
  %724 = sub i64 %723, 112
  %725 = load i64, i64* %PC.i664
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC.i664
  %727 = inttoptr i64 %724 to i64*
  %728 = load i64, i64* %727
  store i64 %728, i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_40412a, %struct.Memory** %MEMORY
  %loadMem_40412e = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i663
  %739 = sub i64 %738, 208
  %740 = load i64, i64* %RAX.i662
  %741 = load i64, i64* %PC.i661
  %742 = add i64 %741, 7
  store i64 %742, i64* %PC.i661
  %743 = inttoptr i64 %739 to i64*
  store i64 %740, i64* %743
  store %struct.Memory* %loadMem_40412e, %struct.Memory** %MEMORY
  %loadMem_404135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i660
  %748 = add i64 %747, 20
  %749 = load i64, i64* %PC.i660
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC.i660
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %748, i64* %751, align 8
  store %struct.Memory* %loadMem_404135, %struct.Memory** %MEMORY
  br label %block_.L_404149

block_.L_40413a:                                  ; preds = %block_.L_40411f
  %loadMem_40413a = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 1
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %EAX.i658 = bitcast %union.anon* %757 to i32*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 1
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RAX.i659
  %762 = load i32, i32* %EAX.i658
  %763 = zext i32 %762 to i64
  %764 = load i64, i64* %PC.i657
  %765 = add i64 %764, 2
  store i64 %765, i64* %PC.i657
  %766 = xor i64 %763, %761
  %767 = trunc i64 %766 to i32
  %768 = and i64 %766, 4294967295
  store i64 %768, i64* %RAX.i659, align 8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %769, align 1
  %770 = and i32 %767, 255
  %771 = call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %774, i8* %775, align 1
  %776 = icmp eq i32 %767, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %767, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %782, align 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %783, align 1
  store %struct.Memory* %loadMem_40413a, %struct.Memory** %MEMORY
  %loadMem_40413c = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 1
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %EAX.i655 = bitcast %union.anon* %789 to i32*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 5
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %792 to i64*
  %793 = load i32, i32* %EAX.i655
  %794 = zext i32 %793 to i64
  %795 = load i64, i64* %PC.i654
  %796 = add i64 %795, 2
  store i64 %796, i64* %PC.i654
  %797 = and i64 %794, 4294967295
  store i64 %797, i64* %RCX.i656, align 8
  store %struct.Memory* %loadMem_40413c, %struct.Memory** %MEMORY
  %loadMem_40413e = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 15
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RCX.i652
  %808 = load i64, i64* %RBP.i653
  %809 = sub i64 %808, 112
  %810 = load i64, i64* %PC.i651
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC.i651
  %812 = inttoptr i64 %809 to i64*
  %813 = load i64, i64* %812
  %814 = sub i64 %807, %813
  store i64 %814, i64* %RCX.i652, align 8
  %815 = icmp ugt i64 %813, %807
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %816, i8* %817, align 1
  %818 = trunc i64 %814 to i32
  %819 = and i32 %818, 255
  %820 = call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %823, i8* %824, align 1
  %825 = xor i64 %813, %807
  %826 = xor i64 %825, %814
  %827 = lshr i64 %826, 4
  %828 = trunc i64 %827 to i8
  %829 = and i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %829, i8* %830, align 1
  %831 = icmp eq i64 %814, 0
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %832, i8* %833, align 1
  %834 = lshr i64 %814, 63
  %835 = trunc i64 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %835, i8* %836, align 1
  %837 = lshr i64 %807, 63
  %838 = lshr i64 %813, 63
  %839 = xor i64 %838, %837
  %840 = xor i64 %834, %837
  %841 = add i64 %840, %839
  %842 = icmp eq i64 %841, 2
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %843, i8* %844, align 1
  store %struct.Memory* %loadMem_40413e, %struct.Memory** %MEMORY
  %loadMem_404142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 5
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 15
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RBP.i650
  %855 = sub i64 %854, 208
  %856 = load i64, i64* %RCX.i649
  %857 = load i64, i64* %PC.i648
  %858 = add i64 %857, 7
  store i64 %858, i64* %PC.i648
  %859 = inttoptr i64 %855 to i64*
  store i64 %856, i64* %859
  store %struct.Memory* %loadMem_404142, %struct.Memory** %MEMORY
  br label %block_.L_404149

block_.L_404149:                                  ; preds = %block_.L_40413a, %block_40412a
  %loadMem_404149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i647
  %870 = sub i64 %869, 208
  %871 = load i64, i64* %PC.i645
  %872 = add i64 %871, 7
  store i64 %872, i64* %PC.i645
  %873 = inttoptr i64 %870 to i64*
  %874 = load i64, i64* %873
  store i64 %874, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_404149, %struct.Memory** %MEMORY
  %loadMem_404150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 1
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 15
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RBP.i644
  %885 = sub i64 %884, 112
  %886 = load i64, i64* %RAX.i643
  %887 = load i64, i64* %PC.i642
  %888 = add i64 %887, 4
  store i64 %888, i64* %PC.i642
  %889 = inttoptr i64 %885 to i64*
  store i64 %886, i64* %889
  store %struct.Memory* %loadMem_404150, %struct.Memory** %MEMORY
  %loadMem_404154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i641
  %894 = add i64 %893, 65
  %895 = load i64, i64* %PC.i641
  %896 = add i64 %895, 5
  store i64 %896, i64* %PC.i641
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %894, i64* %897, align 8
  store %struct.Memory* %loadMem_404154, %struct.Memory** %MEMORY
  br label %block_.L_404195

block_.L_404159:                                  ; preds = %block_404114, %block_.L_404102
  %loadMem_404159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 15
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RBP.i640
  %905 = sub i64 %904, 112
  %906 = load i64, i64* %PC.i639
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i639
  %908 = inttoptr i64 %905 to i64*
  %909 = load i64, i64* %908
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %910, align 1
  %911 = trunc i64 %909 to i32
  %912 = and i32 %911, 255
  %913 = call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %916, i8* %917, align 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %918, align 1
  %919 = icmp eq i64 %909, 0
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %920, i8* %921, align 1
  %922 = lshr i64 %909, 63
  %923 = trunc i64 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %923, i8* %924, align 1
  %925 = lshr i64 %909, 63
  %926 = xor i64 %922, %925
  %927 = add i64 %926, %925
  %928 = icmp eq i64 %927, 2
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %929, i8* %930, align 1
  store %struct.Memory* %loadMem_404159, %struct.Memory** %MEMORY
  %loadMem_40415e = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %PC.i638
  %935 = add i64 %934, 22
  %936 = load i64, i64* %PC.i638
  %937 = add i64 %936, 6
  %938 = load i64, i64* %PC.i638
  %939 = add i64 %938, 6
  store i64 %939, i64* %PC.i638
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %941 = load i8, i8* %940, align 1
  %942 = icmp ne i8 %941, 0
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %944 = load i8, i8* %943, align 1
  %945 = icmp ne i8 %944, 0
  %946 = xor i1 %942, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %BRANCH_TAKEN, align 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %949 = select i1 %946, i64 %935, i64 %937
  store i64 %949, i64* %948, align 8
  store %struct.Memory* %loadMem_40415e, %struct.Memory** %MEMORY
  %loadBr_40415e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40415e = icmp eq i8 %loadBr_40415e, 1
  br i1 %cmpBr_40415e, label %block_.L_404174, label %block_404164

block_404164:                                     ; preds = %block_.L_404159
  %loadMem_404164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 15
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RBP.i637
  %960 = sub i64 %959, 112
  %961 = load i64, i64* %PC.i635
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC.i635
  %963 = inttoptr i64 %960 to i64*
  %964 = load i64, i64* %963
  store i64 %964, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_404164, %struct.Memory** %MEMORY
  %loadMem_404168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 1
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RBP.i634
  %975 = sub i64 %974, 216
  %976 = load i64, i64* %RAX.i633
  %977 = load i64, i64* %PC.i632
  %978 = add i64 %977, 7
  store i64 %978, i64* %PC.i632
  %979 = inttoptr i64 %975 to i64*
  store i64 %976, i64* %979
  store %struct.Memory* %loadMem_404168, %struct.Memory** %MEMORY
  %loadMem_40416f = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %PC.i631
  %984 = add i64 %983, 20
  %985 = load i64, i64* %PC.i631
  %986 = add i64 %985, 5
  store i64 %986, i64* %PC.i631
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %984, i64* %987, align 8
  store %struct.Memory* %loadMem_40416f, %struct.Memory** %MEMORY
  br label %block_.L_404183

block_.L_404174:                                  ; preds = %block_.L_404159
  %loadMem_404174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 1
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %EAX.i629 = bitcast %union.anon* %993 to i32*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RAX.i630
  %998 = load i32, i32* %EAX.i629
  %999 = zext i32 %998 to i64
  %1000 = load i64, i64* %PC.i628
  %1001 = add i64 %1000, 2
  store i64 %1001, i64* %PC.i628
  %1002 = xor i64 %999, %997
  %1003 = trunc i64 %1002 to i32
  %1004 = and i64 %1002, 4294967295
  store i64 %1004, i64* %RAX.i630, align 8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1005, align 1
  %1006 = and i32 %1003, 255
  %1007 = call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1010, i8* %1011, align 1
  %1012 = icmp eq i32 %1003, 0
  %1013 = zext i1 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1013, i8* %1014, align 1
  %1015 = lshr i32 %1003, 31
  %1016 = trunc i32 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1016, i8* %1017, align 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1018, align 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1019, align 1
  store %struct.Memory* %loadMem_404174, %struct.Memory** %MEMORY
  %loadMem_404176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 1
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %EAX.i626 = bitcast %union.anon* %1025 to i32*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 5
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %1028 to i64*
  %1029 = load i32, i32* %EAX.i626
  %1030 = zext i32 %1029 to i64
  %1031 = load i64, i64* %PC.i625
  %1032 = add i64 %1031, 2
  store i64 %1032, i64* %PC.i625
  %1033 = and i64 %1030, 4294967295
  store i64 %1033, i64* %RCX.i627, align 8
  store %struct.Memory* %loadMem_404176, %struct.Memory** %MEMORY
  %loadMem_404178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 5
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 15
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RCX.i623
  %1044 = load i64, i64* %RBP.i624
  %1045 = sub i64 %1044, 112
  %1046 = load i64, i64* %PC.i622
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC.i622
  %1048 = inttoptr i64 %1045 to i64*
  %1049 = load i64, i64* %1048
  %1050 = sub i64 %1043, %1049
  store i64 %1050, i64* %RCX.i623, align 8
  %1051 = icmp ugt i64 %1049, %1043
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1
  %1054 = trunc i64 %1050 to i32
  %1055 = and i32 %1054, 255
  %1056 = call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1059, i8* %1060, align 1
  %1061 = xor i64 %1049, %1043
  %1062 = xor i64 %1061, %1050
  %1063 = lshr i64 %1062, 4
  %1064 = trunc i64 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i64 %1050, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i64 %1050, 63
  %1071 = trunc i64 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = lshr i64 %1043, 63
  %1074 = lshr i64 %1049, 63
  %1075 = xor i64 %1074, %1073
  %1076 = xor i64 %1070, %1073
  %1077 = add i64 %1076, %1075
  %1078 = icmp eq i64 %1077, 2
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1079, i8* %1080, align 1
  store %struct.Memory* %loadMem_404178, %struct.Memory** %MEMORY
  %loadMem_40417c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 5
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 15
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RBP.i621
  %1091 = sub i64 %1090, 216
  %1092 = load i64, i64* %RCX.i620
  %1093 = load i64, i64* %PC.i619
  %1094 = add i64 %1093, 7
  store i64 %1094, i64* %PC.i619
  %1095 = inttoptr i64 %1091 to i64*
  store i64 %1092, i64* %1095
  store %struct.Memory* %loadMem_40417c, %struct.Memory** %MEMORY
  br label %block_.L_404183

block_.L_404183:                                  ; preds = %block_.L_404174, %block_404164
  %loadMem_404183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RBP.i618
  %1106 = sub i64 %1105, 216
  %1107 = load i64, i64* %PC.i616
  %1108 = add i64 %1107, 7
  store i64 %1108, i64* %PC.i616
  %1109 = inttoptr i64 %1106 to i64*
  %1110 = load i64, i64* %1109
  store i64 %1110, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_404183, %struct.Memory** %MEMORY
  %loadMem_40418a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 5
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %ECX.i614 = bitcast %union.anon* %1116 to i32*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 5
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RCX.i615
  %1121 = load i32, i32* %ECX.i614
  %1122 = zext i32 %1121 to i64
  %1123 = load i64, i64* %PC.i613
  %1124 = add i64 %1123, 2
  store i64 %1124, i64* %PC.i613
  %1125 = xor i64 %1122, %1120
  %1126 = trunc i64 %1125 to i32
  %1127 = and i64 %1125, 4294967295
  store i64 %1127, i64* %RCX.i615, align 8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1128, align 1
  %1129 = and i32 %1126, 255
  %1130 = call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1133, i8* %1134, align 1
  %1135 = icmp eq i32 %1126, 0
  %1136 = zext i1 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1136, i8* %1137, align 1
  %1138 = lshr i32 %1126, 31
  %1139 = trunc i32 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1139, i8* %1140, align 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1141, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1142, align 1
  store %struct.Memory* %loadMem_40418a, %struct.Memory** %MEMORY
  %loadMem_40418c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 5
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %ECX.i611 = bitcast %union.anon* %1148 to i32*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 7
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %1151 to i64*
  %1152 = load i32, i32* %ECX.i611
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC.i610
  %1155 = add i64 %1154, 2
  store i64 %1155, i64* %PC.i610
  %1156 = and i64 %1153, 4294967295
  store i64 %1156, i64* %RDX.i612, align 8
  store %struct.Memory* %loadMem_40418c, %struct.Memory** %MEMORY
  %loadMem_40418e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 7
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RDX.i609
  %1167 = load i64, i64* %RAX.i608
  %1168 = load i64, i64* %PC.i607
  %1169 = add i64 %1168, 3
  store i64 %1169, i64* %PC.i607
  %1170 = sub i64 %1166, %1167
  store i64 %1170, i64* %RDX.i609, align 8
  %1171 = icmp ult i64 %1166, %1167
  %1172 = zext i1 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1172, i8* %1173, align 1
  %1174 = trunc i64 %1170 to i32
  %1175 = and i32 %1174, 255
  %1176 = call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1179, i8* %1180, align 1
  %1181 = xor i64 %1167, %1166
  %1182 = xor i64 %1181, %1170
  %1183 = lshr i64 %1182, 4
  %1184 = trunc i64 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1185, i8* %1186, align 1
  %1187 = icmp eq i64 %1170, 0
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1188, i8* %1189, align 1
  %1190 = lshr i64 %1170, 63
  %1191 = trunc i64 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1191, i8* %1192, align 1
  %1193 = lshr i64 %1166, 63
  %1194 = lshr i64 %1167, 63
  %1195 = xor i64 %1194, %1193
  %1196 = xor i64 %1190, %1193
  %1197 = add i64 %1196, %1195
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1
  store %struct.Memory* %loadMem_40418e, %struct.Memory** %MEMORY
  %loadMem_404191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 7
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i606
  %1211 = sub i64 %1210, 112
  %1212 = load i64, i64* %RDX.i605
  %1213 = load i64, i64* %PC.i604
  %1214 = add i64 %1213, 4
  store i64 %1214, i64* %PC.i604
  %1215 = inttoptr i64 %1211 to i64*
  store i64 %1212, i64* %1215
  store %struct.Memory* %loadMem_404191, %struct.Memory** %MEMORY
  br label %block_.L_404195

block_.L_404195:                                  ; preds = %block_.L_404183, %block_.L_404149
  %loadMem_404195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 1
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 15
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %RBP.i603
  %1226 = sub i64 %1225, 80
  %1227 = load i64, i64* %PC.i601
  %1228 = add i64 %1227, 4
  store i64 %1228, i64* %PC.i601
  %1229 = inttoptr i64 %1226 to i64*
  %1230 = load i64, i64* %1229
  store i64 %1230, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_404195, %struct.Memory** %MEMORY
  %loadMem_404199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 15
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RBP.i600
  %1241 = sub i64 %1240, 144
  %1242 = load i64, i64* %RAX.i599
  %1243 = load i64, i64* %PC.i598
  %1244 = add i64 %1243, 7
  store i64 %1244, i64* %PC.i598
  %1245 = inttoptr i64 %1241 to i64*
  store i64 %1242, i64* %1245
  store %struct.Memory* %loadMem_404199, %struct.Memory** %MEMORY
  %loadMem_4041a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RBP.i597
  %1256 = sub i64 %1255, 112
  %1257 = load i64, i64* %PC.i595
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %PC.i595
  %1259 = inttoptr i64 %1256 to i64*
  %1260 = load i64, i64* %1259
  store i64 %1260, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_4041a0, %struct.Memory** %MEMORY
  %loadMem_4041a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 5
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 15
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RBP.i594
  %1271 = sub i64 %1270, 144
  %1272 = load i64, i64* %PC.i592
  %1273 = add i64 %1272, 7
  store i64 %1273, i64* %PC.i592
  %1274 = inttoptr i64 %1271 to i64*
  %1275 = load i64, i64* %1274
  store i64 %1275, i64* %RCX.i593, align 8
  store %struct.Memory* %loadMem_4041a4, %struct.Memory** %MEMORY
  %loadMem_4041ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 1
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 5
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %1284 to i64*
  %1285 = load i64, i64* %RAX.i590
  %1286 = load i64, i64* %RCX.i591
  %1287 = load i64, i64* %PC.i589
  %1288 = add i64 %1287, 3
  store i64 %1288, i64* %PC.i589
  %1289 = inttoptr i64 %1286 to i64*
  %1290 = load i64, i64* %1289
  %1291 = add i64 %1290, %1285
  store i64 %1291, i64* %RAX.i590, align 8
  %1292 = icmp ult i64 %1291, %1285
  %1293 = icmp ult i64 %1291, %1290
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1295, i8* %1296, align 1
  %1297 = trunc i64 %1291 to i32
  %1298 = and i32 %1297, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1
  %1304 = xor i64 %1290, %1285
  %1305 = xor i64 %1304, %1291
  %1306 = lshr i64 %1305, 4
  %1307 = trunc i64 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1308, i8* %1309, align 1
  %1310 = icmp eq i64 %1291, 0
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1311, i8* %1312, align 1
  %1313 = lshr i64 %1291, 63
  %1314 = trunc i64 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1314, i8* %1315, align 1
  %1316 = lshr i64 %1285, 63
  %1317 = lshr i64 %1290, 63
  %1318 = xor i64 %1313, %1316
  %1319 = xor i64 %1313, %1317
  %1320 = add i64 %1318, %1319
  %1321 = icmp eq i64 %1320, 2
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1322, i8* %1323, align 1
  store %struct.Memory* %loadMem_4041ab, %struct.Memory** %MEMORY
  %loadMem_4041ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 5
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RCX.i588
  %1334 = load i64, i64* %RAX.i587
  %1335 = load i64, i64* %PC.i586
  %1336 = add i64 %1335, 3
  store i64 %1336, i64* %PC.i586
  %1337 = inttoptr i64 %1333 to i64*
  store i64 %1334, i64* %1337
  store %struct.Memory* %loadMem_4041ae, %struct.Memory** %MEMORY
  br label %block_.L_4041b1

block_.L_4041b1:                                  ; preds = %block_.L_4041d6, %block_.L_404195
  %loadMem_4041b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 1
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 15
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %RBP.i585
  %1348 = sub i64 %1347, 144
  %1349 = load i64, i64* %PC.i583
  %1350 = add i64 %1349, 7
  store i64 %1350, i64* %PC.i583
  %1351 = inttoptr i64 %1348 to i64*
  %1352 = load i64, i64* %1351
  store i64 %1352, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_4041b1, %struct.Memory** %MEMORY
  %loadMem_4041b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 1
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RAX.i582
  %1360 = add i64 %1359, 16
  %1361 = load i64, i64* %PC.i581
  %1362 = add i64 %1361, 4
  store i64 %1362, i64* %PC.i581
  %1363 = inttoptr i64 %1360 to i64*
  %1364 = load i64, i64* %1363
  store i64 %1364, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_4041b8, %struct.Memory** %MEMORY
  %loadMem_4041bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i580
  %1375 = sub i64 %1374, 152
  %1376 = load i64, i64* %RAX.i579
  %1377 = load i64, i64* %PC.i578
  %1378 = add i64 %1377, 7
  store i64 %1378, i64* %PC.i578
  %1379 = inttoptr i64 %1375 to i64*
  store i64 %1376, i64* %1379
  store %struct.Memory* %loadMem_4041bc, %struct.Memory** %MEMORY
  %loadMem_4041c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 15
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RBP.i577
  %1387 = sub i64 %1386, 152
  %1388 = load i64, i64* %PC.i576
  %1389 = add i64 %1388, 8
  store i64 %1389, i64* %PC.i576
  %1390 = inttoptr i64 %1387 to i64*
  %1391 = load i64, i64* %1390
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1392, align 1
  %1393 = trunc i64 %1391 to i32
  %1394 = and i32 %1393, 255
  %1395 = call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1398, i8* %1399, align 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1400, align 1
  %1401 = icmp eq i64 %1391, 0
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1402, i8* %1403, align 1
  %1404 = lshr i64 %1391, 63
  %1405 = trunc i64 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1405, i8* %1406, align 1
  %1407 = lshr i64 %1391, 63
  %1408 = xor i64 %1404, %1407
  %1409 = add i64 %1408, %1407
  %1410 = icmp eq i64 %1409, 2
  %1411 = zext i1 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1411, i8* %1412, align 1
  store %struct.Memory* %loadMem_4041c3, %struct.Memory** %MEMORY
  %loadMem_4041cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %PC.i575
  %1417 = add i64 %1416, 47
  %1418 = load i64, i64* %PC.i575
  %1419 = add i64 %1418, 6
  %1420 = load i64, i64* %PC.i575
  %1421 = add i64 %1420, 6
  store i64 %1421, i64* %PC.i575
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1423 = load i8, i8* %1422, align 1
  store i8 %1423, i8* %BRANCH_TAKEN, align 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1425 = icmp ne i8 %1423, 0
  %1426 = select i1 %1425, i64 %1417, i64 %1419
  store i64 %1426, i64* %1424, align 8
  store %struct.Memory* %loadMem_4041cb, %struct.Memory** %MEMORY
  %loadBr_4041cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4041cb = icmp eq i8 %loadBr_4041cb, 1
  br i1 %cmpBr_4041cb, label %block_.L_4041fa, label %block_4041d1

block_4041d1:                                     ; preds = %block_.L_4041b1
  %loadMem_4041d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %PC.i574
  %1431 = add i64 %1430, 5
  %1432 = load i64, i64* %PC.i574
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i574
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1431, i64* %1434, align 8
  store %struct.Memory* %loadMem_4041d1, %struct.Memory** %MEMORY
  br label %block_.L_4041d6

block_.L_4041d6:                                  ; preds = %block_404235, %block_4041d1
  %loadMem_4041d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 1
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i573
  %1445 = sub i64 %1444, 112
  %1446 = load i64, i64* %PC.i571
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %PC.i571
  %1448 = inttoptr i64 %1445 to i64*
  %1449 = load i64, i64* %1448
  store i64 %1449, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_4041d6, %struct.Memory** %MEMORY
  %loadMem_4041da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 5
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i570
  %1460 = sub i64 %1459, 152
  %1461 = load i64, i64* %PC.i568
  %1462 = add i64 %1461, 7
  store i64 %1462, i64* %PC.i568
  %1463 = inttoptr i64 %1460 to i64*
  %1464 = load i64, i64* %1463
  store i64 %1464, i64* %RCX.i569, align 8
  store %struct.Memory* %loadMem_4041da, %struct.Memory** %MEMORY
  %loadMem_4041e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 5
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %RAX.i566
  %1475 = load i64, i64* %RCX.i567
  %1476 = load i64, i64* %PC.i565
  %1477 = add i64 %1476, 3
  store i64 %1477, i64* %PC.i565
  %1478 = inttoptr i64 %1475 to i64*
  %1479 = load i64, i64* %1478
  %1480 = add i64 %1479, %1474
  store i64 %1480, i64* %RAX.i566, align 8
  %1481 = icmp ult i64 %1480, %1474
  %1482 = icmp ult i64 %1480, %1479
  %1483 = or i1 %1481, %1482
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1484, i8* %1485, align 1
  %1486 = trunc i64 %1480 to i32
  %1487 = and i32 %1486, 255
  %1488 = call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1491, i8* %1492, align 1
  %1493 = xor i64 %1479, %1474
  %1494 = xor i64 %1493, %1480
  %1495 = lshr i64 %1494, 4
  %1496 = trunc i64 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1497, i8* %1498, align 1
  %1499 = icmp eq i64 %1480, 0
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1500, i8* %1501, align 1
  %1502 = lshr i64 %1480, 63
  %1503 = trunc i64 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1503, i8* %1504, align 1
  %1505 = lshr i64 %1474, 63
  %1506 = lshr i64 %1479, 63
  %1507 = xor i64 %1502, %1505
  %1508 = xor i64 %1502, %1506
  %1509 = add i64 %1507, %1508
  %1510 = icmp eq i64 %1509, 2
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1511, i8* %1512, align 1
  store %struct.Memory* %loadMem_4041e1, %struct.Memory** %MEMORY
  %loadMem_4041e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 5
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %RCX.i564
  %1523 = load i64, i64* %RAX.i563
  %1524 = load i64, i64* %PC.i562
  %1525 = add i64 %1524, 3
  store i64 %1525, i64* %PC.i562
  %1526 = inttoptr i64 %1522 to i64*
  store i64 %1523, i64* %1526
  store %struct.Memory* %loadMem_4041e4, %struct.Memory** %MEMORY
  %loadMem_4041e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 1
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RBP.i561
  %1537 = sub i64 %1536, 152
  %1538 = load i64, i64* %PC.i559
  %1539 = add i64 %1538, 7
  store i64 %1539, i64* %PC.i559
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540
  store i64 %1541, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_4041e7, %struct.Memory** %MEMORY
  %loadMem_4041ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i558
  %1552 = sub i64 %1551, 144
  %1553 = load i64, i64* %RAX.i557
  %1554 = load i64, i64* %PC.i556
  %1555 = add i64 %1554, 7
  store i64 %1555, i64* %PC.i556
  %1556 = inttoptr i64 %1552 to i64*
  store i64 %1553, i64* %1556
  store %struct.Memory* %loadMem_4041ee, %struct.Memory** %MEMORY
  %loadMem_4041f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %PC.i555
  %1561 = add i64 %1560, -68
  %1562 = load i64, i64* %PC.i555
  %1563 = add i64 %1562, 5
  store i64 %1563, i64* %PC.i555
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1561, i64* %1564, align 8
  store %struct.Memory* %loadMem_4041f5, %struct.Memory** %MEMORY
  br label %block_.L_4041b1

block_.L_4041fa:                                  ; preds = %block_.L_4041b1
  %loadMem_4041fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %PC.i554
  %1569 = add i64 %1568, 5
  %1570 = load i64, i64* %PC.i554
  %1571 = add i64 %1570, 5
  store i64 %1571, i64* %PC.i554
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1569, i64* %1572, align 8
  store %struct.Memory* %loadMem_4041fa, %struct.Memory** %MEMORY
  br label %block_.L_4041ff

block_.L_4041ff:                                  ; preds = %block_.L_40423a, %block_.L_4041fa
  %loadMem_4041ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 1
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 15
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %RBP.i553
  %1583 = sub i64 %1582, 144
  %1584 = load i64, i64* %PC.i551
  %1585 = add i64 %1584, 7
  store i64 %1585, i64* %PC.i551
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586
  store i64 %1587, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_4041ff, %struct.Memory** %MEMORY
  %loadMem_404206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RAX.i549
  %1598 = load i64, i64* %RBP.i550
  %1599 = sub i64 %1598, 80
  %1600 = load i64, i64* %PC.i548
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i548
  %1602 = inttoptr i64 %1599 to i64*
  %1603 = load i64, i64* %1602
  %1604 = sub i64 %1597, %1603
  %1605 = icmp ugt i64 %1603, %1597
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1606, i8* %1607, align 1
  %1608 = trunc i64 %1604 to i32
  %1609 = and i32 %1608, 255
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1613, i8* %1614, align 1
  %1615 = xor i64 %1603, %1597
  %1616 = xor i64 %1615, %1604
  %1617 = lshr i64 %1616, 4
  %1618 = trunc i64 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1619, i8* %1620, align 1
  %1621 = icmp eq i64 %1604, 0
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1622, i8* %1623, align 1
  %1624 = lshr i64 %1604, 63
  %1625 = trunc i64 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1625, i8* %1626, align 1
  %1627 = lshr i64 %1597, 63
  %1628 = lshr i64 %1603, 63
  %1629 = xor i64 %1628, %1627
  %1630 = xor i64 %1624, %1627
  %1631 = add i64 %1630, %1629
  %1632 = icmp eq i64 %1631, 2
  %1633 = zext i1 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1633, i8* %1634, align 1
  store %struct.Memory* %loadMem_404206, %struct.Memory** %MEMORY
  %loadMem_40420a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %PC.i547
  %1639 = add i64 %1638, 11
  %1640 = load i64, i64* %PC.i547
  %1641 = add i64 %1640, 6
  %1642 = load i64, i64* %PC.i547
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC.i547
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1645 = load i8, i8* %1644, align 1
  %1646 = icmp eq i8 %1645, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %BRANCH_TAKEN, align 1
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1649 = select i1 %1646, i64 %1639, i64 %1641
  store i64 %1649, i64* %1648, align 8
  store %struct.Memory* %loadMem_40420a, %struct.Memory** %MEMORY
  %loadBr_40420a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40420a = icmp eq i8 %loadBr_40420a, 1
  br i1 %cmpBr_40420a, label %block_.L_404215, label %block_404210

block_404210:                                     ; preds = %block_.L_4041ff
  %loadMem_404210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %PC.i546
  %1654 = add i64 %1653, 65
  %1655 = load i64, i64* %PC.i546
  %1656 = add i64 %1655, 5
  store i64 %1656, i64* %PC.i546
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1654, i64* %1657, align 8
  store %struct.Memory* %loadMem_404210, %struct.Memory** %MEMORY
  br label %block_.L_404251

block_.L_404215:                                  ; preds = %block_.L_4041ff
  %loadMem_404215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 15
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RBP.i545
  %1668 = sub i64 %1667, 144
  %1669 = load i64, i64* %PC.i543
  %1670 = add i64 %1669, 7
  store i64 %1670, i64* %PC.i543
  %1671 = inttoptr i64 %1668 to i64*
  %1672 = load i64, i64* %1671
  store i64 %1672, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_404215, %struct.Memory** %MEMORY
  %loadMem_40421c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 1
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %RAX.i542
  %1680 = add i64 %1679, 32
  %1681 = load i64, i64* %PC.i541
  %1682 = add i64 %1681, 4
  store i64 %1682, i64* %PC.i541
  %1683 = inttoptr i64 %1680 to i64*
  %1684 = load i64, i64* %1683
  store i64 %1684, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_40421c, %struct.Memory** %MEMORY
  %loadMem_404220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 1
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %RBP.i540
  %1695 = sub i64 %1694, 152
  %1696 = load i64, i64* %RAX.i539
  %1697 = load i64, i64* %PC.i538
  %1698 = add i64 %1697, 7
  store i64 %1698, i64* %PC.i538
  %1699 = inttoptr i64 %1695 to i64*
  store i64 %1696, i64* %1699
  store %struct.Memory* %loadMem_404220, %struct.Memory** %MEMORY
  %loadMem_404227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i537
  %1707 = sub i64 %1706, 152
  %1708 = load i64, i64* %PC.i536
  %1709 = add i64 %1708, 8
  store i64 %1709, i64* %PC.i536
  %1710 = inttoptr i64 %1707 to i64*
  %1711 = load i64, i64* %1710
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1712, align 1
  %1713 = trunc i64 %1711 to i32
  %1714 = and i32 %1713, 255
  %1715 = call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1718, i8* %1719, align 1
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1720, align 1
  %1721 = icmp eq i64 %1711, 0
  %1722 = zext i1 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1722, i8* %1723, align 1
  %1724 = lshr i64 %1711, 63
  %1725 = trunc i64 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1725, i8* %1726, align 1
  %1727 = lshr i64 %1711, 63
  %1728 = xor i64 %1724, %1727
  %1729 = add i64 %1728, %1727
  %1730 = icmp eq i64 %1729, 2
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1731, i8* %1732, align 1
  store %struct.Memory* %loadMem_404227, %struct.Memory** %MEMORY
  %loadMem_40422f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %PC.i535
  %1737 = add i64 %1736, 11
  %1738 = load i64, i64* %PC.i535
  %1739 = add i64 %1738, 6
  %1740 = load i64, i64* %PC.i535
  %1741 = add i64 %1740, 6
  store i64 %1741, i64* %PC.i535
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1743 = load i8, i8* %1742, align 1
  store i8 %1743, i8* %BRANCH_TAKEN, align 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1745 = icmp ne i8 %1743, 0
  %1746 = select i1 %1745, i64 %1737, i64 %1739
  store i64 %1746, i64* %1744, align 8
  store %struct.Memory* %loadMem_40422f, %struct.Memory** %MEMORY
  %loadBr_40422f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40422f = icmp eq i8 %loadBr_40422f, 1
  br i1 %cmpBr_40422f, label %block_.L_40423a, label %block_404235

block_404235:                                     ; preds = %block_.L_404215
  %loadMem_404235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i534
  %1751 = add i64 %1750, -95
  %1752 = load i64, i64* %PC.i534
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC.i534
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1751, i64* %1754, align 8
  store %struct.Memory* %loadMem_404235, %struct.Memory** %MEMORY
  br label %block_.L_4041d6

block_.L_40423a:                                  ; preds = %block_.L_404215
  %loadMem_40423a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 1
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 15
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i533
  %1765 = sub i64 %1764, 144
  %1766 = load i64, i64* %PC.i531
  %1767 = add i64 %1766, 7
  store i64 %1767, i64* %PC.i531
  %1768 = inttoptr i64 %1765 to i64*
  %1769 = load i64, i64* %1768
  store i64 %1769, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_40423a, %struct.Memory** %MEMORY
  %loadMem_404241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %1775 to i64*
  %1776 = load i64, i64* %RAX.i530
  %1777 = add i64 %1776, 24
  %1778 = load i64, i64* %PC.i529
  %1779 = add i64 %1778, 4
  store i64 %1779, i64* %PC.i529
  %1780 = inttoptr i64 %1777 to i64*
  %1781 = load i64, i64* %1780
  store i64 %1781, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_404241, %struct.Memory** %MEMORY
  %loadMem_404245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 1
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 15
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RBP.i528
  %1792 = sub i64 %1791, 144
  %1793 = load i64, i64* %RAX.i527
  %1794 = load i64, i64* %PC.i526
  %1795 = add i64 %1794, 7
  store i64 %1795, i64* %PC.i526
  %1796 = inttoptr i64 %1792 to i64*
  store i64 %1793, i64* %1796
  store %struct.Memory* %loadMem_404245, %struct.Memory** %MEMORY
  %loadMem_40424c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %PC.i525
  %1801 = add i64 %1800, -77
  %1802 = load i64, i64* %PC.i525
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i525
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1801, i64* %1804, align 8
  store %struct.Memory* %loadMem_40424c, %struct.Memory** %MEMORY
  br label %block_.L_4041ff

block_.L_404251:                                  ; preds = %block_404210
  %loadMem_404251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 1
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RBP.i524
  %1815 = sub i64 %1814, 64
  %1816 = load i64, i64* %PC.i522
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %PC.i522
  %1818 = inttoptr i64 %1815 to i64*
  %1819 = load i64, i64* %1818
  store i64 %1819, i64* %RAX.i523, align 8
  store %struct.Memory* %loadMem_404251, %struct.Memory** %MEMORY
  %loadMem_404255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 1
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i521
  %1830 = sub i64 %1829, 152
  %1831 = load i64, i64* %RAX.i520
  %1832 = load i64, i64* %PC.i519
  %1833 = add i64 %1832, 7
  store i64 %1833, i64* %PC.i519
  %1834 = inttoptr i64 %1830 to i64*
  store i64 %1831, i64* %1834
  store %struct.Memory* %loadMem_404255, %struct.Memory** %MEMORY
  %loadMem_40425c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 1
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i518
  %1845 = sub i64 %1844, 152
  %1846 = load i64, i64* %PC.i516
  %1847 = add i64 %1846, 7
  store i64 %1847, i64* %PC.i516
  %1848 = inttoptr i64 %1845 to i64*
  %1849 = load i64, i64* %1848
  store i64 %1849, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_40425c, %struct.Memory** %MEMORY
  %loadMem_404263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 1
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %1855 to i64*
  %1856 = load i64, i64* %RAX.i515
  %1857 = add i64 %1856, 24
  %1858 = load i64, i64* %PC.i514
  %1859 = add i64 %1858, 4
  store i64 %1859, i64* %PC.i514
  %1860 = inttoptr i64 %1857 to i64*
  %1861 = load i64, i64* %1860
  store i64 %1861, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_404263, %struct.Memory** %MEMORY
  %loadMem_404267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 15
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RBP.i513
  %1872 = sub i64 %1871, 144
  %1873 = load i64, i64* %RAX.i512
  %1874 = load i64, i64* %PC.i511
  %1875 = add i64 %1874, 7
  store i64 %1875, i64* %PC.i511
  %1876 = inttoptr i64 %1872 to i64*
  store i64 %1873, i64* %1876
  store %struct.Memory* %loadMem_404267, %struct.Memory** %MEMORY
  %loadMem_40426e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 1
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RBP.i510
  %1887 = sub i64 %1886, 80
  %1888 = load i64, i64* %PC.i508
  %1889 = add i64 %1888, 4
  store i64 %1889, i64* %PC.i508
  %1890 = inttoptr i64 %1887 to i64*
  %1891 = load i64, i64* %1890
  store i64 %1891, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_40426e, %struct.Memory** %MEMORY
  %loadMem_404272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %RAX.i507
  %1899 = add i64 %1898, 88
  %1900 = load i64, i64* %PC.i506
  %1901 = add i64 %1900, 4
  store i64 %1901, i64* %PC.i506
  %1902 = inttoptr i64 %1899 to i64*
  %1903 = load i64, i64* %1902
  store i64 %1903, i64* %RAX.i507, align 8
  store %struct.Memory* %loadMem_404272, %struct.Memory** %MEMORY
  %loadMem_404276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 1
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 15
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %RBP.i505
  %1914 = sub i64 %1913, 184
  %1915 = load i64, i64* %RAX.i504
  %1916 = load i64, i64* %PC.i503
  %1917 = add i64 %1916, 7
  store i64 %1917, i64* %PC.i503
  %1918 = inttoptr i64 %1914 to i64*
  store i64 %1915, i64* %1918
  store %struct.Memory* %loadMem_404276, %struct.Memory** %MEMORY
  %loadMem_40427d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 1
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 15
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %RBP.i502
  %1929 = sub i64 %1928, 192
  %1930 = load i64, i64* %RAX.i501
  %1931 = load i64, i64* %PC.i500
  %1932 = add i64 %1931, 7
  store i64 %1932, i64* %PC.i500
  %1933 = inttoptr i64 %1929 to i64*
  store i64 %1930, i64* %1933
  store %struct.Memory* %loadMem_40427d, %struct.Memory** %MEMORY
  %loadMem_404284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i499
  %1944 = sub i64 %1943, 72
  %1945 = load i64, i64* %PC.i497
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %PC.i497
  %1947 = inttoptr i64 %1944 to i64*
  %1948 = load i64, i64* %1947
  store i64 %1948, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_404284, %struct.Memory** %MEMORY
  %loadMem_404288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 1
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 15
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RBP.i496
  %1959 = sub i64 %1958, 160
  %1960 = load i64, i64* %RAX.i495
  %1961 = load i64, i64* %PC.i494
  %1962 = add i64 %1961, 7
  store i64 %1962, i64* %PC.i494
  %1963 = inttoptr i64 %1959 to i64*
  store i64 %1960, i64* %1963
  store %struct.Memory* %loadMem_404288, %struct.Memory** %MEMORY
  %loadMem_40428f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 15
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %RBP.i493
  %1974 = sub i64 %1973, 104
  %1975 = load i64, i64* %PC.i491
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC.i491
  %1977 = inttoptr i64 %1974 to i64*
  %1978 = load i64, i64* %1977
  store i64 %1978, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_40428f, %struct.Memory** %MEMORY
  %loadMem_404293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RBP.i490
  %1989 = sub i64 %1988, 136
  %1990 = load i64, i64* %RAX.i489
  %1991 = load i64, i64* %PC.i488
  %1992 = add i64 %1991, 7
  store i64 %1992, i64* %PC.i488
  %1993 = inttoptr i64 %1989 to i64*
  store i64 %1990, i64* %1993
  store %struct.Memory* %loadMem_404293, %struct.Memory** %MEMORY
  br label %block_.L_40429a

block_.L_40429a:                                  ; preds = %block_.L_4043f2, %block_.L_404251
  %loadMem_40429a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i487
  %2004 = sub i64 %2003, 152
  %2005 = load i64, i64* %PC.i485
  %2006 = add i64 %2005, 7
  store i64 %2006, i64* %PC.i485
  %2007 = inttoptr i64 %2004 to i64*
  %2008 = load i64, i64* %2007
  store i64 %2008, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_40429a, %struct.Memory** %MEMORY
  %loadMem_4042a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 1
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %RAX.i483
  %2019 = load i64, i64* %RBP.i484
  %2020 = sub i64 %2019, 88
  %2021 = load i64, i64* %PC.i482
  %2022 = add i64 %2021, 4
  store i64 %2022, i64* %PC.i482
  %2023 = inttoptr i64 %2020 to i64*
  %2024 = load i64, i64* %2023
  %2025 = sub i64 %2018, %2024
  %2026 = icmp ugt i64 %2024, %2018
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2027, i8* %2028, align 1
  %2029 = trunc i64 %2025 to i32
  %2030 = and i32 %2029, 255
  %2031 = call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2034, i8* %2035, align 1
  %2036 = xor i64 %2024, %2018
  %2037 = xor i64 %2036, %2025
  %2038 = lshr i64 %2037, 4
  %2039 = trunc i64 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2040, i8* %2041, align 1
  %2042 = icmp eq i64 %2025, 0
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2043, i8* %2044, align 1
  %2045 = lshr i64 %2025, 63
  %2046 = trunc i64 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2046, i8* %2047, align 1
  %2048 = lshr i64 %2018, 63
  %2049 = lshr i64 %2024, 63
  %2050 = xor i64 %2049, %2048
  %2051 = xor i64 %2045, %2048
  %2052 = add i64 %2051, %2050
  %2053 = icmp eq i64 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1
  store %struct.Memory* %loadMem_4042a1, %struct.Memory** %MEMORY
  %loadMem_4042a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i481
  %2060 = add i64 %2059, 538
  %2061 = load i64, i64* %PC.i481
  %2062 = add i64 %2061, 6
  %2063 = load i64, i64* %PC.i481
  %2064 = add i64 %2063, 6
  store i64 %2064, i64* %PC.i481
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2066 = load i8, i8* %2065, align 1
  store i8 %2066, i8* %BRANCH_TAKEN, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2068 = icmp ne i8 %2066, 0
  %2069 = select i1 %2068, i64 %2060, i64 %2062
  store i64 %2069, i64* %2067, align 8
  store %struct.Memory* %loadMem_4042a5, %struct.Memory** %MEMORY
  %loadBr_4042a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4042a5 = icmp eq i8 %loadBr_4042a5, 1
  br i1 %cmpBr_4042a5, label %block_.L_4044bf, label %block_4042ab

block_4042ab:                                     ; preds = %block_.L_40429a
  %loadMem_4042ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 1
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 15
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %2078 to i64*
  %2079 = load i64, i64* %RBP.i480
  %2080 = sub i64 %2079, 152
  %2081 = load i64, i64* %PC.i478
  %2082 = add i64 %2081, 7
  store i64 %2082, i64* %PC.i478
  %2083 = inttoptr i64 %2080 to i64*
  %2084 = load i64, i64* %2083
  store i64 %2084, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_4042ab, %struct.Memory** %MEMORY
  %loadMem_4042b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RAX.i477
  %2092 = add i64 %2091, 32
  %2093 = load i64, i64* %PC.i476
  %2094 = add i64 %2093, 5
  store i64 %2094, i64* %PC.i476
  %2095 = inttoptr i64 %2092 to i64*
  %2096 = load i64, i64* %2095
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2097, align 1
  %2098 = trunc i64 %2096 to i32
  %2099 = and i32 %2098, 255
  %2100 = call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2103, i8* %2104, align 1
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2105, align 1
  %2106 = icmp eq i64 %2096, 0
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2107, i8* %2108, align 1
  %2109 = lshr i64 %2096, 63
  %2110 = trunc i64 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2110, i8* %2111, align 1
  %2112 = lshr i64 %2096, 63
  %2113 = xor i64 %2109, %2112
  %2114 = add i64 %2113, %2112
  %2115 = icmp eq i64 %2114, 2
  %2116 = zext i1 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2116, i8* %2117, align 1
  store %struct.Memory* %loadMem_4042b2, %struct.Memory** %MEMORY
  %loadMem_4042b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %PC.i475
  %2122 = add i64 %2121, 32
  %2123 = load i64, i64* %PC.i475
  %2124 = add i64 %2123, 6
  %2125 = load i64, i64* %PC.i475
  %2126 = add i64 %2125, 6
  store i64 %2126, i64* %PC.i475
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2128 = load i8, i8* %2127, align 1
  store i8 %2128, i8* %BRANCH_TAKEN, align 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2130 = icmp ne i8 %2128, 0
  %2131 = select i1 %2130, i64 %2122, i64 %2124
  store i64 %2131, i64* %2129, align 8
  store %struct.Memory* %loadMem_4042b7, %struct.Memory** %MEMORY
  %loadBr_4042b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4042b7 = icmp eq i8 %loadBr_4042b7, 1
  br i1 %cmpBr_4042b7, label %block_.L_4042d7, label %block_4042bd

block_4042bd:                                     ; preds = %block_4042ab
  %loadMem_4042bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 15
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RBP.i474
  %2142 = sub i64 %2141, 152
  %2143 = load i64, i64* %PC.i472
  %2144 = add i64 %2143, 7
  store i64 %2144, i64* %PC.i472
  %2145 = inttoptr i64 %2142 to i64*
  %2146 = load i64, i64* %2145
  store i64 %2146, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_4042bd, %struct.Memory** %MEMORY
  %loadMem_4042c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 1
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RAX.i471
  %2154 = add i64 %2153, 40
  %2155 = load i64, i64* %PC.i470
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %PC.i470
  %2157 = inttoptr i64 %2154 to i64*
  %2158 = load i64, i64* %2157
  store i64 %2158, i64* %RAX.i471, align 8
  store %struct.Memory* %loadMem_4042c4, %struct.Memory** %MEMORY
  %loadMem_4042c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 5
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i469
  %2169 = sub i64 %2168, 152
  %2170 = load i64, i64* %PC.i467
  %2171 = add i64 %2170, 7
  store i64 %2171, i64* %PC.i467
  %2172 = inttoptr i64 %2169 to i64*
  %2173 = load i64, i64* %2172
  store i64 %2173, i64* %RCX.i468, align 8
  store %struct.Memory* %loadMem_4042c8, %struct.Memory** %MEMORY
  %loadMem_4042cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 5
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RCX.i466
  %2181 = add i64 %2180, 32
  %2182 = load i64, i64* %PC.i465
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %PC.i465
  %2184 = inttoptr i64 %2181 to i64*
  %2185 = load i64, i64* %2184
  store i64 %2185, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_4042cf, %struct.Memory** %MEMORY
  %loadMem_4042d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 1
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 5
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %RCX.i464
  %2196 = add i64 %2195, 40
  %2197 = load i64, i64* %RAX.i463
  %2198 = load i64, i64* %PC.i462
  %2199 = add i64 %2198, 4
  store i64 %2199, i64* %PC.i462
  %2200 = inttoptr i64 %2196 to i64*
  store i64 %2197, i64* %2200
  store %struct.Memory* %loadMem_4042d3, %struct.Memory** %MEMORY
  br label %block_.L_4042d7

block_.L_4042d7:                                  ; preds = %block_4042bd, %block_4042ab
  %loadMem_4042d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i461
  %2211 = sub i64 %2210, 152
  %2212 = load i64, i64* %PC.i459
  %2213 = add i64 %2212, 7
  store i64 %2213, i64* %PC.i459
  %2214 = inttoptr i64 %2211 to i64*
  %2215 = load i64, i64* %2214
  store i64 %2215, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_4042d7, %struct.Memory** %MEMORY
  %loadMem_4042de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 1
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RAX.i458
  %2223 = add i64 %2222, 40
  %2224 = load i64, i64* %PC.i457
  %2225 = add i64 %2224, 5
  store i64 %2225, i64* %PC.i457
  %2226 = inttoptr i64 %2223 to i64*
  %2227 = load i64, i64* %2226
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2228, align 1
  %2229 = trunc i64 %2227 to i32
  %2230 = and i32 %2229, 255
  %2231 = call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2234, i8* %2235, align 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2236, align 1
  %2237 = icmp eq i64 %2227, 0
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2238, i8* %2239, align 1
  %2240 = lshr i64 %2227, 63
  %2241 = trunc i64 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2241, i8* %2242, align 1
  %2243 = lshr i64 %2227, 63
  %2244 = xor i64 %2240, %2243
  %2245 = add i64 %2244, %2243
  %2246 = icmp eq i64 %2245, 2
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2247, i8* %2248, align 1
  store %struct.Memory* %loadMem_4042de, %struct.Memory** %MEMORY
  %loadMem_4042e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %PC.i456
  %2253 = add i64 %2252, 37
  %2254 = load i64, i64* %PC.i456
  %2255 = add i64 %2254, 6
  %2256 = load i64, i64* %PC.i456
  %2257 = add i64 %2256, 6
  store i64 %2257, i64* %PC.i456
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2259 = load i8, i8* %2258, align 1
  store i8 %2259, i8* %BRANCH_TAKEN, align 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2261 = icmp ne i8 %2259, 0
  %2262 = select i1 %2261, i64 %2253, i64 %2255
  store i64 %2262, i64* %2260, align 8
  store %struct.Memory* %loadMem_4042e3, %struct.Memory** %MEMORY
  %loadBr_4042e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4042e3 = icmp eq i8 %loadBr_4042e3, 1
  br i1 %cmpBr_4042e3, label %block_.L_404308, label %block_4042e9

block_4042e9:                                     ; preds = %block_.L_4042d7
  %loadMem_4042e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 15
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RBP.i455
  %2273 = sub i64 %2272, 152
  %2274 = load i64, i64* %PC.i453
  %2275 = add i64 %2274, 7
  store i64 %2275, i64* %PC.i453
  %2276 = inttoptr i64 %2273 to i64*
  %2277 = load i64, i64* %2276
  store i64 %2277, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4042e9, %struct.Memory** %MEMORY
  %loadMem_4042f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 1
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RAX.i452
  %2285 = add i64 %2284, 32
  %2286 = load i64, i64* %PC.i451
  %2287 = add i64 %2286, 4
  store i64 %2287, i64* %PC.i451
  %2288 = inttoptr i64 %2285 to i64*
  %2289 = load i64, i64* %2288
  store i64 %2289, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_4042f0, %struct.Memory** %MEMORY
  %loadMem_4042f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 5
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 15
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %2298 to i64*
  %2299 = load i64, i64* %RBP.i450
  %2300 = sub i64 %2299, 152
  %2301 = load i64, i64* %PC.i448
  %2302 = add i64 %2301, 7
  store i64 %2302, i64* %PC.i448
  %2303 = inttoptr i64 %2300 to i64*
  %2304 = load i64, i64* %2303
  store i64 %2304, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_4042f4, %struct.Memory** %MEMORY
  %loadMem_4042fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 5
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %RCX.i447
  %2312 = add i64 %2311, 40
  %2313 = load i64, i64* %PC.i446
  %2314 = add i64 %2313, 4
  store i64 %2314, i64* %PC.i446
  %2315 = inttoptr i64 %2312 to i64*
  %2316 = load i64, i64* %2315
  store i64 %2316, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_4042fb, %struct.Memory** %MEMORY
  %loadMem_4042ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i445
  %2327 = add i64 %2326, 32
  %2328 = load i64, i64* %RAX.i444
  %2329 = load i64, i64* %PC.i443
  %2330 = add i64 %2329, 4
  store i64 %2330, i64* %PC.i443
  %2331 = inttoptr i64 %2327 to i64*
  store i64 %2328, i64* %2331
  store %struct.Memory* %loadMem_4042ff, %struct.Memory** %MEMORY
  %loadMem_404303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %PC.i442
  %2336 = add i64 %2335, 27
  %2337 = load i64, i64* %PC.i442
  %2338 = add i64 %2337, 5
  store i64 %2338, i64* %PC.i442
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2336, i64* %2339, align 8
  store %struct.Memory* %loadMem_404303, %struct.Memory** %MEMORY
  br label %block_.L_40431e

block_.L_404308:                                  ; preds = %block_.L_4042d7
  %loadMem_404308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RBP.i441
  %2350 = sub i64 %2349, 152
  %2351 = load i64, i64* %PC.i439
  %2352 = add i64 %2351, 7
  store i64 %2352, i64* %PC.i439
  %2353 = inttoptr i64 %2350 to i64*
  %2354 = load i64, i64* %2353
  store i64 %2354, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_404308, %struct.Memory** %MEMORY
  %loadMem_40430f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 1
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RAX.i438
  %2362 = add i64 %2361, 32
  %2363 = load i64, i64* %PC.i437
  %2364 = add i64 %2363, 4
  store i64 %2364, i64* %PC.i437
  %2365 = inttoptr i64 %2362 to i64*
  %2366 = load i64, i64* %2365
  store i64 %2366, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_40430f, %struct.Memory** %MEMORY
  %loadMem_404313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 5
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 15
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RBP.i436
  %2377 = sub i64 %2376, 144
  %2378 = load i64, i64* %PC.i434
  %2379 = add i64 %2378, 7
  store i64 %2379, i64* %PC.i434
  %2380 = inttoptr i64 %2377 to i64*
  %2381 = load i64, i64* %2380
  store i64 %2381, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_404313, %struct.Memory** %MEMORY
  %loadMem_40431a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 1
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 5
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %2390 to i64*
  %2391 = load i64, i64* %RCX.i433
  %2392 = add i64 %2391, 16
  %2393 = load i64, i64* %RAX.i432
  %2394 = load i64, i64* %PC.i431
  %2395 = add i64 %2394, 4
  store i64 %2395, i64* %PC.i431
  %2396 = inttoptr i64 %2392 to i64*
  store i64 %2393, i64* %2396
  store %struct.Memory* %loadMem_40431a, %struct.Memory** %MEMORY
  br label %block_.L_40431e

block_.L_40431e:                                  ; preds = %block_.L_404308, %block_4042e9
  %loadMem_40431e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i430
  %2407 = sub i64 %2406, 160
  %2408 = load i64, i64* %PC.i428
  %2409 = add i64 %2408, 7
  store i64 %2409, i64* %PC.i428
  %2410 = inttoptr i64 %2407 to i64*
  %2411 = load i64, i64* %2410
  store i64 %2411, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_40431e, %struct.Memory** %MEMORY
  %loadMem_404325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 5
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RBP.i427
  %2422 = sub i64 %2421, 152
  %2423 = load i64, i64* %PC.i425
  %2424 = add i64 %2423, 7
  store i64 %2424, i64* %PC.i425
  %2425 = inttoptr i64 %2422 to i64*
  %2426 = load i64, i64* %2425
  store i64 %2426, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_404325, %struct.Memory** %MEMORY
  %loadMem_40432c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 1
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 5
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RCX.i424
  %2437 = add i64 %2436, 24
  %2438 = load i64, i64* %RAX.i423
  %2439 = load i64, i64* %PC.i422
  %2440 = add i64 %2439, 4
  store i64 %2440, i64* %PC.i422
  %2441 = inttoptr i64 %2437 to i64*
  store i64 %2438, i64* %2441
  store %struct.Memory* %loadMem_40432c, %struct.Memory** %MEMORY
  %loadMem_404330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 1
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 15
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %RBP.i421
  %2452 = sub i64 %2451, 160
  %2453 = load i64, i64* %PC.i419
  %2454 = add i64 %2453, 7
  store i64 %2454, i64* %PC.i419
  %2455 = inttoptr i64 %2452 to i64*
  %2456 = load i64, i64* %2455
  store i64 %2456, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_404330, %struct.Memory** %MEMORY
  %loadMem_404337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 33
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2459 to i64*
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 1
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %RAX.i418
  %2464 = add i64 %2463, 16
  %2465 = load i64, i64* %PC.i417
  %2466 = add i64 %2465, 4
  store i64 %2466, i64* %PC.i417
  %2467 = inttoptr i64 %2464 to i64*
  %2468 = load i64, i64* %2467
  store i64 %2468, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_404337, %struct.Memory** %MEMORY
  %loadMem_40433b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 5
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RBP.i416
  %2479 = sub i64 %2478, 152
  %2480 = load i64, i64* %PC.i414
  %2481 = add i64 %2480, 7
  store i64 %2481, i64* %PC.i414
  %2482 = inttoptr i64 %2479 to i64*
  %2483 = load i64, i64* %2482
  store i64 %2483, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_40433b, %struct.Memory** %MEMORY
  %loadMem_404342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 5
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RCX.i413
  %2494 = add i64 %2493, 32
  %2495 = load i64, i64* %RAX.i412
  %2496 = load i64, i64* %PC.i411
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC.i411
  %2498 = inttoptr i64 %2494 to i64*
  store i64 %2495, i64* %2498
  store %struct.Memory* %loadMem_404342, %struct.Memory** %MEMORY
  %loadMem_404346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i410
  %2509 = sub i64 %2508, 152
  %2510 = load i64, i64* %PC.i408
  %2511 = add i64 %2510, 7
  store i64 %2511, i64* %PC.i408
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_404346, %struct.Memory** %MEMORY
  %loadMem_40434d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RAX.i407
  %2521 = add i64 %2520, 32
  %2522 = load i64, i64* %PC.i406
  %2523 = add i64 %2522, 5
  store i64 %2523, i64* %PC.i406
  %2524 = inttoptr i64 %2521 to i64*
  %2525 = load i64, i64* %2524
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2526, align 1
  %2527 = trunc i64 %2525 to i32
  %2528 = and i32 %2527, 255
  %2529 = call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2532, i8* %2533, align 1
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2534, align 1
  %2535 = icmp eq i64 %2525, 0
  %2536 = zext i1 %2535 to i8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2536, i8* %2537, align 1
  %2538 = lshr i64 %2525, 63
  %2539 = trunc i64 %2538 to i8
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2539, i8* %2540, align 1
  %2541 = lshr i64 %2525, 63
  %2542 = xor i64 %2538, %2541
  %2543 = add i64 %2542, %2541
  %2544 = icmp eq i64 %2543, 2
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2545, i8* %2546, align 1
  store %struct.Memory* %loadMem_40434d, %struct.Memory** %MEMORY
  %loadMem_404352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2549 to i64*
  %2550 = load i64, i64* %PC.i405
  %2551 = add i64 %2550, 28
  %2552 = load i64, i64* %PC.i405
  %2553 = add i64 %2552, 6
  %2554 = load i64, i64* %PC.i405
  %2555 = add i64 %2554, 6
  store i64 %2555, i64* %PC.i405
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2557 = load i8, i8* %2556, align 1
  store i8 %2557, i8* %BRANCH_TAKEN, align 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2559 = icmp ne i8 %2557, 0
  %2560 = select i1 %2559, i64 %2551, i64 %2553
  store i64 %2560, i64* %2558, align 8
  store %struct.Memory* %loadMem_404352, %struct.Memory** %MEMORY
  %loadBr_404352 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404352 = icmp eq i8 %loadBr_404352, 1
  br i1 %cmpBr_404352, label %block_.L_40436e, label %block_404358

block_404358:                                     ; preds = %block_.L_40431e
  %loadMem_404358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 1
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RBP.i404
  %2571 = sub i64 %2570, 152
  %2572 = load i64, i64* %PC.i402
  %2573 = add i64 %2572, 7
  store i64 %2573, i64* %PC.i402
  %2574 = inttoptr i64 %2571 to i64*
  %2575 = load i64, i64* %2574
  store i64 %2575, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_404358, %struct.Memory** %MEMORY
  %loadMem_40435f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 5
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 15
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2584 to i64*
  %2585 = load i64, i64* %RBP.i401
  %2586 = sub i64 %2585, 152
  %2587 = load i64, i64* %PC.i399
  %2588 = add i64 %2587, 7
  store i64 %2588, i64* %PC.i399
  %2589 = inttoptr i64 %2586 to i64*
  %2590 = load i64, i64* %2589
  store i64 %2590, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_40435f, %struct.Memory** %MEMORY
  %loadMem_404366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 5
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RCX.i398
  %2598 = add i64 %2597, 32
  %2599 = load i64, i64* %PC.i397
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC.i397
  %2601 = inttoptr i64 %2598 to i64*
  %2602 = load i64, i64* %2601
  store i64 %2602, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_404366, %struct.Memory** %MEMORY
  %loadMem_40436a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 1
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 5
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %RCX.i396
  %2613 = add i64 %2612, 40
  %2614 = load i64, i64* %RAX.i395
  %2615 = load i64, i64* %PC.i394
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i394
  %2617 = inttoptr i64 %2613 to i64*
  store i64 %2614, i64* %2617
  store %struct.Memory* %loadMem_40436a, %struct.Memory** %MEMORY
  br label %block_.L_40436e

block_.L_40436e:                                  ; preds = %block_404358, %block_.L_40431e
  %loadMem_40436e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 1
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i393
  %2628 = sub i64 %2627, 152
  %2629 = load i64, i64* %PC.i391
  %2630 = add i64 %2629, 7
  store i64 %2630, i64* %PC.i391
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631
  store i64 %2632, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_40436e, %struct.Memory** %MEMORY
  %loadMem_404375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 5
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i390
  %2643 = sub i64 %2642, 160
  %2644 = load i64, i64* %PC.i388
  %2645 = add i64 %2644, 7
  store i64 %2645, i64* %PC.i388
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_404375, %struct.Memory** %MEMORY
  %loadMem_40437c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 5
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RCX.i387
  %2658 = add i64 %2657, 16
  %2659 = load i64, i64* %RAX.i386
  %2660 = load i64, i64* %PC.i385
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i385
  %2662 = inttoptr i64 %2658 to i64*
  store i64 %2659, i64* %2662
  store %struct.Memory* %loadMem_40437c, %struct.Memory** %MEMORY
  %loadMem_404380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 1
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %RBP.i384
  %2673 = sub i64 %2672, 152
  %2674 = load i64, i64* %PC.i382
  %2675 = add i64 %2674, 7
  store i64 %2675, i64* %PC.i382
  %2676 = inttoptr i64 %2673 to i64*
  %2677 = load i64, i64* %2676
  store i64 %2677, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_404380, %struct.Memory** %MEMORY
  %loadMem_404387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RAX.i381
  %2685 = add i64 %2684, 40
  %2686 = load i64, i64* %PC.i380
  %2687 = add i64 %2686, 8
  store i64 %2687, i64* %PC.i380
  %2688 = inttoptr i64 %2685 to i64*
  store i64 0, i64* %2688
  store %struct.Memory* %loadMem_404387, %struct.Memory** %MEMORY
  %loadMem_40438f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 1
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 15
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2697 to i64*
  %2698 = load i64, i64* %RBP.i379
  %2699 = sub i64 %2698, 152
  %2700 = load i64, i64* %PC.i377
  %2701 = add i64 %2700, 7
  store i64 %2701, i64* %PC.i377
  %2702 = inttoptr i64 %2699 to i64*
  %2703 = load i64, i64* %2702
  store i64 %2703, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_40438f, %struct.Memory** %MEMORY
  %loadMem_404396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 1
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RAX.i376
  %2711 = add i64 %2710, 8
  %2712 = load i64, i64* %PC.i375
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i375
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2716, align 1
  %2717 = and i32 %2715, 255
  %2718 = call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2721, i8* %2722, align 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2723, align 1
  %2724 = icmp eq i32 %2715, 0
  %2725 = zext i1 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2715, 31
  %2728 = trunc i32 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i32 %2715, 31
  %2731 = xor i32 %2727, %2730
  %2732 = add i32 %2731, %2730
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2734, i8* %2735, align 1
  store %struct.Memory* %loadMem_404396, %struct.Memory** %MEMORY
  %loadMem_40439a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 7
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %2742 = bitcast %union.anon* %2741 to %struct.anon.2*
  %DL.i374 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2742, i32 0, i32 0
  %2743 = load i64, i64* %PC.i373
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %PC.i373
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2746 = load i8, i8* %2745, align 1
  %2747 = icmp eq i8 %2746, 0
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %DL.i374, align 1
  store %struct.Memory* %loadMem_40439a, %struct.Memory** %MEMORY
  %loadMem_40439d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 7
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %2755 = bitcast %union.anon* %2754 to %struct.anon.2*
  %DL.i372 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2755, i32 0, i32 0
  %2756 = load i8, i8* %DL.i372
  %2757 = zext i8 %2756 to i64
  %2758 = load i64, i64* %PC.i371
  %2759 = add i64 %2758, 3
  store i64 %2759, i64* %PC.i371
  %2760 = xor i64 255, %2757
  %2761 = trunc i64 %2760 to i8
  store i8 %2761, i8* %DL.i372, align 1
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2762, align 1
  %2763 = trunc i64 %2760 to i32
  %2764 = and i32 %2763, 255
  %2765 = call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2768, i8* %2769, align 1
  %2770 = icmp eq i8 %2761, 0
  %2771 = zext i1 %2770 to i8
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2771, i8* %2772, align 1
  %2773 = lshr i8 %2761, 7
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2773, i8* %2774, align 1
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2775, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2776, align 1
  store %struct.Memory* %loadMem_40439d, %struct.Memory** %MEMORY
  %loadMem_4043a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 7
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %2783 = bitcast %union.anon* %2782 to %struct.anon.2*
  %DL.i370 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2783, i32 0, i32 0
  %2784 = load i8, i8* %DL.i370
  %2785 = zext i8 %2784 to i64
  %2786 = load i64, i64* %PC.i369
  %2787 = add i64 %2786, 3
  store i64 %2787, i64* %PC.i369
  %2788 = and i64 1, %2785
  %2789 = trunc i64 %2788 to i8
  store i8 %2789, i8* %DL.i370, align 1
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2790, align 1
  %2791 = trunc i64 %2788 to i32
  %2792 = and i32 %2791, 255
  %2793 = call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2796, i8* %2797, align 1
  %2798 = icmp eq i8 %2789, 0
  %2799 = zext i1 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2799, i8* %2800, align 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2801, align 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2802, align 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2803, align 1
  store %struct.Memory* %loadMem_4043a0, %struct.Memory** %MEMORY
  %loadMem_4043a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 7
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %2810 = bitcast %union.anon* %2809 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2810, i32 0, i32 0
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 9
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2813 to i64*
  %2814 = load i8, i8* %DL.i
  %2815 = zext i8 %2814 to i64
  %2816 = load i64, i64* %PC.i368
  %2817 = add i64 %2816, 3
  store i64 %2817, i64* %PC.i368
  %2818 = and i64 %2815, 255
  store i64 %2818, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4043a3, %struct.Memory** %MEMORY
  %loadMem_4043a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 9
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2824 to i32*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %2827 to i64*
  %2828 = load i32, i32* %ESI.i
  %2829 = zext i32 %2828 to i64
  %2830 = load i64, i64* %PC.i366
  %2831 = add i64 %2830, 3
  store i64 %2831, i64* %PC.i366
  %2832 = shl i64 %2829, 32
  %2833 = ashr exact i64 %2832, 32
  store i64 %2833, i64* %RAX.i367, align 8
  store %struct.Memory* %loadMem_4043a6, %struct.Memory** %MEMORY
  %loadMem_4043a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 1
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 15
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %2842 to i64*
  %2843 = load i64, i64* %RBP.i365
  %2844 = sub i64 %2843, 168
  %2845 = load i64, i64* %RAX.i364
  %2846 = load i64, i64* %PC.i363
  %2847 = add i64 %2846, 7
  store i64 %2847, i64* %PC.i363
  %2848 = inttoptr i64 %2844 to i64*
  store i64 %2845, i64* %2848
  store %struct.Memory* %loadMem_4043a9, %struct.Memory** %MEMORY
  %loadMem_4043b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 1
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 15
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %RBP.i362
  %2859 = sub i64 %2858, 168
  %2860 = load i64, i64* %PC.i360
  %2861 = add i64 %2860, 7
  store i64 %2861, i64* %PC.i360
  %2862 = inttoptr i64 %2859 to i64*
  %2863 = load i64, i64* %2862
  store i64 %2863, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_4043b0, %struct.Memory** %MEMORY
  %loadMem_4043b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 1
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RAX.i358
  %2874 = load i64, i64* %RBP.i359
  %2875 = sub i64 %2874, 32
  %2876 = load i64, i64* %PC.i357
  %2877 = add i64 %2876, 4
  store i64 %2877, i64* %PC.i357
  %2878 = inttoptr i64 %2875 to i64*
  %2879 = load i64, i64* %2878
  %2880 = sub i64 %2873, %2879
  %2881 = icmp ugt i64 %2879, %2873
  %2882 = zext i1 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2882, i8* %2883, align 1
  %2884 = trunc i64 %2880 to i32
  %2885 = and i32 %2884, 255
  %2886 = call i32 @llvm.ctpop.i32(i32 %2885)
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2889, i8* %2890, align 1
  %2891 = xor i64 %2879, %2873
  %2892 = xor i64 %2891, %2880
  %2893 = lshr i64 %2892, 4
  %2894 = trunc i64 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2895, i8* %2896, align 1
  %2897 = icmp eq i64 %2880, 0
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2898, i8* %2899, align 1
  %2900 = lshr i64 %2880, 63
  %2901 = trunc i64 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2901, i8* %2902, align 1
  %2903 = lshr i64 %2873, 63
  %2904 = lshr i64 %2879, 63
  %2905 = xor i64 %2904, %2903
  %2906 = xor i64 %2900, %2903
  %2907 = add i64 %2906, %2905
  %2908 = icmp eq i64 %2907, 2
  %2909 = zext i1 %2908 to i8
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2909, i8* %2910, align 1
  store %struct.Memory* %loadMem_4043b7, %struct.Memory** %MEMORY
  %loadMem_4043bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %PC.i356
  %2915 = add i64 %2914, 33
  %2916 = load i64, i64* %PC.i356
  %2917 = add i64 %2916, 6
  %2918 = load i64, i64* %PC.i356
  %2919 = add i64 %2918, 6
  store i64 %2919, i64* %PC.i356
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2921 = load i8, i8* %2920, align 1
  %2922 = icmp eq i8 %2921, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %BRANCH_TAKEN, align 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2925 = select i1 %2922, i64 %2915, i64 %2917
  store i64 %2925, i64* %2924, align 8
  store %struct.Memory* %loadMem_4043bb, %struct.Memory** %MEMORY
  %loadBr_4043bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4043bb = icmp eq i8 %loadBr_4043bb, 1
  br i1 %cmpBr_4043bb, label %block_.L_4043dc, label %block_4043c1

block_4043c1:                                     ; preds = %block_.L_40436e
  %loadMem_4043c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 1
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 15
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2934 to i64*
  %2935 = load i64, i64* %RBP.i355
  %2936 = sub i64 %2935, 152
  %2937 = load i64, i64* %PC.i353
  %2938 = add i64 %2937, 7
  store i64 %2938, i64* %PC.i353
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939
  store i64 %2940, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_4043c1, %struct.Memory** %MEMORY
  %loadMem_4043c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 1
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RAX.i352
  %2948 = add i64 %2947, 80
  %2949 = load i64, i64* %PC.i351
  %2950 = add i64 %2949, 4
  store i64 %2950, i64* %PC.i351
  %2951 = inttoptr i64 %2948 to i64*
  %2952 = load i64, i64* %2951
  store i64 %2952, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_4043c8, %struct.Memory** %MEMORY
  %loadMem_4043cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 1
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 15
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %RAX.i349
  %2963 = load i64, i64* %RBP.i350
  %2964 = sub i64 %2963, 48
  %2965 = load i64, i64* %PC.i348
  %2966 = add i64 %2965, 4
  store i64 %2966, i64* %PC.i348
  %2967 = inttoptr i64 %2964 to i64*
  %2968 = load i64, i64* %2967
  %2969 = add i64 %2968, %2962
  store i64 %2969, i64* %RAX.i349, align 8
  %2970 = icmp ult i64 %2969, %2962
  %2971 = icmp ult i64 %2969, %2968
  %2972 = or i1 %2970, %2971
  %2973 = zext i1 %2972 to i8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2973, i8* %2974, align 1
  %2975 = trunc i64 %2969 to i32
  %2976 = and i32 %2975, 255
  %2977 = call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2980, i8* %2981, align 1
  %2982 = xor i64 %2968, %2962
  %2983 = xor i64 %2982, %2969
  %2984 = lshr i64 %2983, 4
  %2985 = trunc i64 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2986, i8* %2987, align 1
  %2988 = icmp eq i64 %2969, 0
  %2989 = zext i1 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2989, i8* %2990, align 1
  %2991 = lshr i64 %2969, 63
  %2992 = trunc i64 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2992, i8* %2993, align 1
  %2994 = lshr i64 %2962, 63
  %2995 = lshr i64 %2968, 63
  %2996 = xor i64 %2991, %2994
  %2997 = xor i64 %2991, %2995
  %2998 = add i64 %2996, %2997
  %2999 = icmp eq i64 %2998, 2
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3000, i8* %3001, align 1
  store %struct.Memory* %loadMem_4043cc, %struct.Memory** %MEMORY
  %loadMem_4043d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i347
  %3012 = sub i64 %3011, 200
  %3013 = load i64, i64* %RAX.i346
  %3014 = load i64, i64* %PC.i345
  %3015 = add i64 %3014, 7
  store i64 %3015, i64* %PC.i345
  %3016 = inttoptr i64 %3012 to i64*
  store i64 %3013, i64* %3016
  store %struct.Memory* %loadMem_4043d0, %struct.Memory** %MEMORY
  %loadMem_4043d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %PC.i344
  %3021 = add i64 %3020, 27
  %3022 = load i64, i64* %PC.i344
  %3023 = add i64 %3022, 5
  store i64 %3023, i64* %PC.i344
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3021, i64* %3024, align 8
  store %struct.Memory* %loadMem_4043d7, %struct.Memory** %MEMORY
  br label %block_.L_4043f2

block_.L_4043dc:                                  ; preds = %block_.L_40436e
  %loadMem_4043dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 1
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RBP.i343
  %3035 = sub i64 %3034, 152
  %3036 = load i64, i64* %PC.i341
  %3037 = add i64 %3036, 7
  store i64 %3037, i64* %PC.i341
  %3038 = inttoptr i64 %3035 to i64*
  %3039 = load i64, i64* %3038
  store i64 %3039, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_4043dc, %struct.Memory** %MEMORY
  %loadMem_4043e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 1
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %RAX.i340
  %3047 = add i64 %3046, 80
  %3048 = load i64, i64* %PC.i339
  %3049 = add i64 %3048, 4
  store i64 %3049, i64* %PC.i339
  %3050 = inttoptr i64 %3047 to i64*
  %3051 = load i64, i64* %3050
  store i64 %3051, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_4043e3, %struct.Memory** %MEMORY
  %loadMem_4043e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 33
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 1
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 15
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %RAX.i337
  %3062 = load i64, i64* %RBP.i338
  %3063 = sub i64 %3062, 48
  %3064 = load i64, i64* %PC.i336
  %3065 = add i64 %3064, 4
  store i64 %3065, i64* %PC.i336
  %3066 = inttoptr i64 %3063 to i64*
  %3067 = load i64, i64* %3066
  %3068 = sub i64 %3061, %3067
  store i64 %3068, i64* %RAX.i337, align 8
  %3069 = icmp ugt i64 %3067, %3061
  %3070 = zext i1 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3070, i8* %3071, align 1
  %3072 = trunc i64 %3068 to i32
  %3073 = and i32 %3072, 255
  %3074 = call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3077, i8* %3078, align 1
  %3079 = xor i64 %3067, %3061
  %3080 = xor i64 %3079, %3068
  %3081 = lshr i64 %3080, 4
  %3082 = trunc i64 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3083, i8* %3084, align 1
  %3085 = icmp eq i64 %3068, 0
  %3086 = zext i1 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i64 %3068, 63
  %3089 = trunc i64 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3089, i8* %3090, align 1
  %3091 = lshr i64 %3061, 63
  %3092 = lshr i64 %3067, 63
  %3093 = xor i64 %3092, %3091
  %3094 = xor i64 %3088, %3091
  %3095 = add i64 %3094, %3093
  %3096 = icmp eq i64 %3095, 2
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3097, i8* %3098, align 1
  store %struct.Memory* %loadMem_4043e7, %struct.Memory** %MEMORY
  %loadMem_4043eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 1
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i335
  %3109 = sub i64 %3108, 200
  %3110 = load i64, i64* %RAX.i334
  %3111 = load i64, i64* %PC.i333
  %3112 = add i64 %3111, 7
  store i64 %3112, i64* %PC.i333
  %3113 = inttoptr i64 %3109 to i64*
  store i64 %3110, i64* %3113
  store %struct.Memory* %loadMem_4043eb, %struct.Memory** %MEMORY
  br label %block_.L_4043f2

block_.L_4043f2:                                  ; preds = %block_.L_4043dc, %block_4043c1
  %loadMem_4043f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 1
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 15
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %3122 to i64*
  %3123 = load i64, i64* %RBP.i332
  %3124 = sub i64 %3123, 152
  %3125 = load i64, i64* %PC.i330
  %3126 = add i64 %3125, 7
  store i64 %3126, i64* %PC.i330
  %3127 = inttoptr i64 %3124 to i64*
  %3128 = load i64, i64* %3127
  store i64 %3128, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_4043f2, %struct.Memory** %MEMORY
  %loadMem_4043f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %RAX.i329
  %3136 = add i64 %3135, 48
  %3137 = load i64, i64* %PC.i328
  %3138 = add i64 %3137, 4
  store i64 %3138, i64* %PC.i328
  %3139 = inttoptr i64 %3136 to i64*
  %3140 = load i64, i64* %3139
  store i64 %3140, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_4043f9, %struct.Memory** %MEMORY
  %loadMem_4043fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 15
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %RBP.i327
  %3151 = sub i64 %3150, 128
  %3152 = load i64, i64* %RAX.i326
  %3153 = load i64, i64* %PC.i325
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %PC.i325
  %3155 = inttoptr i64 %3151 to i64*
  store i64 %3152, i64* %3155
  store %struct.Memory* %loadMem_4043fd, %struct.Memory** %MEMORY
  %loadMem_404401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i324
  %3166 = sub i64 %3165, 152
  %3167 = load i64, i64* %PC.i322
  %3168 = add i64 %3167, 7
  store i64 %3168, i64* %PC.i322
  %3169 = inttoptr i64 %3166 to i64*
  %3170 = load i64, i64* %3169
  store i64 %3170, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_404401, %struct.Memory** %MEMORY
  %loadMem_404408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RAX.i321
  %3178 = add i64 %3177, 88
  %3179 = load i64, i64* %PC.i320
  %3180 = add i64 %3179, 4
  store i64 %3180, i64* %PC.i320
  %3181 = inttoptr i64 %3178 to i64*
  %3182 = load i64, i64* %3181
  store i64 %3182, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_404408, %struct.Memory** %MEMORY
  %loadMem_40440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 1
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 15
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RBP.i319
  %3193 = sub i64 %3192, 176
  %3194 = load i64, i64* %RAX.i318
  %3195 = load i64, i64* %PC.i317
  %3196 = add i64 %3195, 7
  store i64 %3196, i64* %PC.i317
  %3197 = inttoptr i64 %3193 to i64*
  store i64 %3194, i64* %3197
  store %struct.Memory* %loadMem_40440c, %struct.Memory** %MEMORY
  %loadMem_404413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 15
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RBP.i316
  %3208 = sub i64 %3207, 40
  %3209 = load i64, i64* %PC.i314
  %3210 = add i64 %3209, 4
  store i64 %3210, i64* %PC.i314
  %3211 = inttoptr i64 %3208 to i64*
  %3212 = load i64, i64* %3211
  store i64 %3212, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_404413, %struct.Memory** %MEMORY
  %loadMem_404417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 1
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3218 to i32*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 5
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3221 to i64*
  %3222 = load i32, i32* %EAX.i
  %3223 = zext i32 %3222 to i64
  %3224 = load i64, i64* %PC.i312
  %3225 = add i64 %3224, 2
  store i64 %3225, i64* %PC.i312
  %3226 = and i64 %3223, 4294967295
  store i64 %3226, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_404417, %struct.Memory** %MEMORY
  %loadMem_404419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 1
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 15
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RBP.i311
  %3237 = sub i64 %3236, 152
  %3238 = load i64, i64* %PC.i309
  %3239 = add i64 %3238, 7
  store i64 %3239, i64* %PC.i309
  %3240 = inttoptr i64 %3237 to i64*
  %3241 = load i64, i64* %3240
  store i64 %3241, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_404419, %struct.Memory** %MEMORY
  %loadMem_404420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 5
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3247 to i32*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 1
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %3250 to i64*
  %3251 = load i64, i64* %RAX.i308
  %3252 = add i64 %3251, 8
  %3253 = load i32, i32* %ECX.i
  %3254 = zext i32 %3253 to i64
  %3255 = load i64, i64* %PC.i307
  %3256 = add i64 %3255, 3
  store i64 %3256, i64* %PC.i307
  %3257 = inttoptr i64 %3252 to i32*
  store i32 %3253, i32* %3257
  store %struct.Memory* %loadMem_404420, %struct.Memory** %MEMORY
  %loadMem_404423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 1
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 15
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RBP.i306
  %3268 = sub i64 %3267, 56
  %3269 = load i64, i64* %PC.i304
  %3270 = add i64 %3269, 4
  store i64 %3270, i64* %PC.i304
  %3271 = inttoptr i64 %3268 to i64*
  %3272 = load i64, i64* %3271
  store i64 %3272, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_404423, %struct.Memory** %MEMORY
  %loadMem_404427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 7
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 15
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RBP.i303
  %3283 = sub i64 %3282, 152
  %3284 = load i64, i64* %PC.i301
  %3285 = add i64 %3284, 7
  store i64 %3285, i64* %PC.i301
  %3286 = inttoptr i64 %3283 to i64*
  %3287 = load i64, i64* %3286
  store i64 %3287, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_404427, %struct.Memory** %MEMORY
  %loadMem_40442e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 7
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RDX.i300
  %3298 = add i64 %3297, 80
  %3299 = load i64, i64* %RAX.i299
  %3300 = load i64, i64* %PC.i298
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %PC.i298
  %3302 = inttoptr i64 %3298 to i64*
  store i64 %3299, i64* %3302
  store %struct.Memory* %loadMem_40442e, %struct.Memory** %MEMORY
  %loadMem_404432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 1
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 15
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %RBP.i297
  %3313 = sub i64 %3312, 136
  %3314 = load i64, i64* %PC.i295
  %3315 = add i64 %3314, 7
  store i64 %3315, i64* %PC.i295
  %3316 = inttoptr i64 %3313 to i64*
  %3317 = load i64, i64* %3316
  store i64 %3317, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_404432, %struct.Memory** %MEMORY
  %loadMem_404439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 7
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 15
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RBP.i294
  %3328 = sub i64 %3327, 152
  %3329 = load i64, i64* %PC.i292
  %3330 = add i64 %3329, 7
  store i64 %3330, i64* %PC.i292
  %3331 = inttoptr i64 %3328 to i64*
  %3332 = load i64, i64* %3331
  store i64 %3332, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_404439, %struct.Memory** %MEMORY
  %loadMem_404440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 1
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 7
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RDX.i291
  %3343 = add i64 %3342, 48
  %3344 = load i64, i64* %RAX.i290
  %3345 = load i64, i64* %PC.i289
  %3346 = add i64 %3345, 4
  store i64 %3346, i64* %PC.i289
  %3347 = inttoptr i64 %3343 to i64*
  store i64 %3344, i64* %3347
  store %struct.Memory* %loadMem_404440, %struct.Memory** %MEMORY
  %loadMem_404444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i288
  %3358 = sub i64 %3357, 192
  %3359 = load i64, i64* %PC.i286
  %3360 = add i64 %3359, 7
  store i64 %3360, i64* %PC.i286
  %3361 = inttoptr i64 %3358 to i64*
  %3362 = load i64, i64* %3361
  store i64 %3362, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_404444, %struct.Memory** %MEMORY
  %loadMem_40444b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 7
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RBP.i285
  %3373 = sub i64 %3372, 152
  %3374 = load i64, i64* %PC.i283
  %3375 = add i64 %3374, 7
  store i64 %3375, i64* %PC.i283
  %3376 = inttoptr i64 %3373 to i64*
  %3377 = load i64, i64* %3376
  store i64 %3377, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_40444b, %struct.Memory** %MEMORY
  %loadMem_404452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 1
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 7
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %RDX.i282
  %3388 = add i64 %3387, 88
  %3389 = load i64, i64* %RAX.i281
  %3390 = load i64, i64* %PC.i280
  %3391 = add i64 %3390, 4
  store i64 %3391, i64* %PC.i280
  %3392 = inttoptr i64 %3388 to i64*
  store i64 %3389, i64* %3392
  store %struct.Memory* %loadMem_404452, %struct.Memory** %MEMORY
  %loadMem_404456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RBP.i279
  %3403 = sub i64 %3402, 152
  %3404 = load i64, i64* %PC.i277
  %3405 = add i64 %3404, 7
  store i64 %3405, i64* %PC.i277
  %3406 = inttoptr i64 %3403 to i64*
  %3407 = load i64, i64* %3406
  store i64 %3407, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_404456, %struct.Memory** %MEMORY
  %loadMem_40445d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 1
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 15
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %RBP.i276
  %3418 = sub i64 %3417, 160
  %3419 = load i64, i64* %RAX.i275
  %3420 = load i64, i64* %PC.i274
  %3421 = add i64 %3420, 7
  store i64 %3421, i64* %PC.i274
  %3422 = inttoptr i64 %3418 to i64*
  store i64 %3419, i64* %3422
  store %struct.Memory* %loadMem_40445d, %struct.Memory** %MEMORY
  %loadMem_404464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 1
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 15
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %3431 to i64*
  %3432 = load i64, i64* %RBP.i273
  %3433 = sub i64 %3432, 168
  %3434 = load i64, i64* %PC.i271
  %3435 = add i64 %3434, 7
  store i64 %3435, i64* %PC.i271
  %3436 = inttoptr i64 %3433 to i64*
  %3437 = load i64, i64* %3436
  store i64 %3437, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_404464, %struct.Memory** %MEMORY
  %loadMem_40446b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 33
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 1
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 15
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3446 to i64*
  %3447 = load i64, i64* %RBP.i270
  %3448 = sub i64 %3447, 40
  %3449 = load i64, i64* %RAX.i269
  %3450 = load i64, i64* %PC.i268
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %PC.i268
  %3452 = inttoptr i64 %3448 to i64*
  store i64 %3449, i64* %3452
  store %struct.Memory* %loadMem_40446b, %struct.Memory** %MEMORY
  %loadMem_40446f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 1
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RBP.i267
  %3463 = sub i64 %3462, 200
  %3464 = load i64, i64* %PC.i265
  %3465 = add i64 %3464, 7
  store i64 %3465, i64* %PC.i265
  %3466 = inttoptr i64 %3463 to i64*
  %3467 = load i64, i64* %3466
  store i64 %3467, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_40446f, %struct.Memory** %MEMORY
  %loadMem_404476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 15
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3476 to i64*
  %3477 = load i64, i64* %RBP.i264
  %3478 = sub i64 %3477, 56
  %3479 = load i64, i64* %RAX.i263
  %3480 = load i64, i64* %PC.i262
  %3481 = add i64 %3480, 4
  store i64 %3481, i64* %PC.i262
  %3482 = inttoptr i64 %3478 to i64*
  store i64 %3479, i64* %3482
  store %struct.Memory* %loadMem_404476, %struct.Memory** %MEMORY
  %loadMem_40447a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 1
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RBP.i261
  %3493 = sub i64 %3492, 128
  %3494 = load i64, i64* %PC.i259
  %3495 = add i64 %3494, 4
  store i64 %3495, i64* %PC.i259
  %3496 = inttoptr i64 %3493 to i64*
  %3497 = load i64, i64* %3496
  store i64 %3497, i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_40447a, %struct.Memory** %MEMORY
  %loadMem_40447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 1
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 15
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RBP.i258
  %3508 = sub i64 %3507, 136
  %3509 = load i64, i64* %RAX.i257
  %3510 = load i64, i64* %PC.i256
  %3511 = add i64 %3510, 7
  store i64 %3511, i64* %PC.i256
  %3512 = inttoptr i64 %3508 to i64*
  store i64 %3509, i64* %3512
  store %struct.Memory* %loadMem_40447e, %struct.Memory** %MEMORY
  %loadMem_404485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 1
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 15
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %RBP.i255
  %3523 = sub i64 %3522, 184
  %3524 = load i64, i64* %PC.i253
  %3525 = add i64 %3524, 7
  store i64 %3525, i64* %PC.i253
  %3526 = inttoptr i64 %3523 to i64*
  %3527 = load i64, i64* %3526
  store i64 %3527, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_404485, %struct.Memory** %MEMORY
  %loadMem_40448c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RAX.i251
  %3538 = load i64, i64* %RBP.i252
  %3539 = sub i64 %3538, 176
  %3540 = load i64, i64* %PC.i250
  %3541 = add i64 %3540, 7
  store i64 %3541, i64* %PC.i250
  %3542 = inttoptr i64 %3539 to i64*
  %3543 = load i64, i64* %3542
  %3544 = sub i64 %3537, %3543
  store i64 %3544, i64* %RAX.i251, align 8
  %3545 = icmp ugt i64 %3543, %3537
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3546, i8* %3547, align 1
  %3548 = trunc i64 %3544 to i32
  %3549 = and i32 %3548, 255
  %3550 = call i32 @llvm.ctpop.i32(i32 %3549)
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3553, i8* %3554, align 1
  %3555 = xor i64 %3543, %3537
  %3556 = xor i64 %3555, %3544
  %3557 = lshr i64 %3556, 4
  %3558 = trunc i64 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3559, i8* %3560, align 1
  %3561 = icmp eq i64 %3544, 0
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3562, i8* %3563, align 1
  %3564 = lshr i64 %3544, 63
  %3565 = trunc i64 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3565, i8* %3566, align 1
  %3567 = lshr i64 %3537, 63
  %3568 = lshr i64 %3543, 63
  %3569 = xor i64 %3568, %3567
  %3570 = xor i64 %3564, %3567
  %3571 = add i64 %3570, %3569
  %3572 = icmp eq i64 %3571, 2
  %3573 = zext i1 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3573, i8* %3574, align 1
  store %struct.Memory* %loadMem_40448c, %struct.Memory** %MEMORY
  %loadMem_404493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 15
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %RBP.i249
  %3585 = sub i64 %3584, 192
  %3586 = load i64, i64* %RAX.i248
  %3587 = load i64, i64* %PC.i247
  %3588 = add i64 %3587, 7
  store i64 %3588, i64* %PC.i247
  %3589 = inttoptr i64 %3585 to i64*
  store i64 %3586, i64* %3589
  store %struct.Memory* %loadMem_404493, %struct.Memory** %MEMORY
  %loadMem_40449a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i246
  %3600 = sub i64 %3599, 144
  %3601 = load i64, i64* %PC.i244
  %3602 = add i64 %3601, 7
  store i64 %3602, i64* %PC.i244
  %3603 = inttoptr i64 %3600 to i64*
  %3604 = load i64, i64* %3603
  store i64 %3604, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_40449a, %struct.Memory** %MEMORY
  %loadMem_4044a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 1
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 15
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %RBP.i243
  %3615 = sub i64 %3614, 152
  %3616 = load i64, i64* %RAX.i242
  %3617 = load i64, i64* %PC.i241
  %3618 = add i64 %3617, 7
  store i64 %3618, i64* %PC.i241
  %3619 = inttoptr i64 %3615 to i64*
  store i64 %3616, i64* %3619
  store %struct.Memory* %loadMem_4044a1, %struct.Memory** %MEMORY
  %loadMem_4044a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 1
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 15
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %RBP.i240
  %3630 = sub i64 %3629, 152
  %3631 = load i64, i64* %PC.i238
  %3632 = add i64 %3631, 7
  store i64 %3632, i64* %PC.i238
  %3633 = inttoptr i64 %3630 to i64*
  %3634 = load i64, i64* %3633
  store i64 %3634, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_4044a8, %struct.Memory** %MEMORY
  %loadMem_4044af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 1
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %3640 to i64*
  %3641 = load i64, i64* %RAX.i237
  %3642 = add i64 %3641, 24
  %3643 = load i64, i64* %PC.i236
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i236
  %3645 = inttoptr i64 %3642 to i64*
  %3646 = load i64, i64* %3645
  store i64 %3646, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_4044af, %struct.Memory** %MEMORY
  %loadMem_4044b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 1
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RBP.i235
  %3657 = sub i64 %3656, 144
  %3658 = load i64, i64* %RAX.i234
  %3659 = load i64, i64* %PC.i233
  %3660 = add i64 %3659, 7
  store i64 %3660, i64* %PC.i233
  %3661 = inttoptr i64 %3657 to i64*
  store i64 %3658, i64* %3661
  store %struct.Memory* %loadMem_4044b3, %struct.Memory** %MEMORY
  %loadMem_4044ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i232
  %3666 = add i64 %3665, -544
  %3667 = load i64, i64* %PC.i232
  %3668 = add i64 %3667, 5
  store i64 %3668, i64* %PC.i232
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3666, i64* %3669, align 8
  store %struct.Memory* %loadMem_4044ba, %struct.Memory** %MEMORY
  br label %block_.L_40429a

block_.L_4044bf:                                  ; preds = %block_.L_40429a
  %loadMem_4044bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i231
  %3680 = sub i64 %3679, 48
  %3681 = load i64, i64* %PC.i229
  %3682 = add i64 %3681, 4
  store i64 %3682, i64* %PC.i229
  %3683 = inttoptr i64 %3680 to i64*
  %3684 = load i64, i64* %3683
  store i64 %3684, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_4044bf, %struct.Memory** %MEMORY
  %loadMem_4044c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i227
  %3695 = load i64, i64* %RBP.i228
  %3696 = sub i64 %3695, 120
  %3697 = load i64, i64* %PC.i226
  %3698 = add i64 %3697, 4
  store i64 %3698, i64* %PC.i226
  %3699 = inttoptr i64 %3696 to i64*
  %3700 = load i64, i64* %3699
  %3701 = sub i64 %3694, %3700
  %3702 = icmp ugt i64 %3700, %3694
  %3703 = zext i1 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3703, i8* %3704, align 1
  %3705 = trunc i64 %3701 to i32
  %3706 = and i32 %3705, 255
  %3707 = call i32 @llvm.ctpop.i32(i32 %3706)
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  %3710 = xor i8 %3709, 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3710, i8* %3711, align 1
  %3712 = xor i64 %3700, %3694
  %3713 = xor i64 %3712, %3701
  %3714 = lshr i64 %3713, 4
  %3715 = trunc i64 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3716, i8* %3717, align 1
  %3718 = icmp eq i64 %3701, 0
  %3719 = zext i1 %3718 to i8
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3719, i8* %3720, align 1
  %3721 = lshr i64 %3701, 63
  %3722 = trunc i64 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3722, i8* %3723, align 1
  %3724 = lshr i64 %3694, 63
  %3725 = lshr i64 %3700, 63
  %3726 = xor i64 %3725, %3724
  %3727 = xor i64 %3721, %3724
  %3728 = add i64 %3727, %3726
  %3729 = icmp eq i64 %3728, 2
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3730, i8* %3731, align 1
  store %struct.Memory* %loadMem_4044c3, %struct.Memory** %MEMORY
  %loadMem_4044c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %PC.i225
  %3736 = add i64 %3735, 304
  %3737 = load i64, i64* %PC.i225
  %3738 = add i64 %3737, 6
  %3739 = load i64, i64* %PC.i225
  %3740 = add i64 %3739, 6
  store i64 %3740, i64* %PC.i225
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3742 = load i8, i8* %3741, align 1
  %3743 = icmp ne i8 %3742, 0
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3745 = load i8, i8* %3744, align 1
  %3746 = icmp ne i8 %3745, 0
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3748 = load i8, i8* %3747, align 1
  %3749 = icmp ne i8 %3748, 0
  %3750 = xor i1 %3746, %3749
  %3751 = or i1 %3743, %3750
  %3752 = zext i1 %3751 to i8
  store i8 %3752, i8* %BRANCH_TAKEN, align 1
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3754 = select i1 %3751, i64 %3736, i64 %3738
  store i64 %3754, i64* %3753, align 8
  store %struct.Memory* %loadMem_4044c7, %struct.Memory** %MEMORY
  %loadBr_4044c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4044c7 = icmp eq i8 %loadBr_4044c7, 1
  br i1 %cmpBr_4044c7, label %block_.L_4045f7, label %block_4044cd

block_4044cd:                                     ; preds = %block_.L_4044bf
  %loadMem_4044cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 15
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %RBP.i224
  %3765 = sub i64 %3764, 88
  %3766 = load i64, i64* %PC.i222
  %3767 = add i64 %3766, 4
  store i64 %3767, i64* %PC.i222
  %3768 = inttoptr i64 %3765 to i64*
  %3769 = load i64, i64* %3768
  store i64 %3769, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_4044cd, %struct.Memory** %MEMORY
  %loadMem_4044d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 1
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 15
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RBP.i221
  %3780 = sub i64 %3779, 152
  %3781 = load i64, i64* %RAX.i220
  %3782 = load i64, i64* %PC.i219
  %3783 = add i64 %3782, 7
  store i64 %3783, i64* %PC.i219
  %3784 = inttoptr i64 %3780 to i64*
  store i64 %3781, i64* %3784
  store %struct.Memory* %loadMem_4044d1, %struct.Memory** %MEMORY
  br label %block_.L_4044d8

block_.L_4044d8:                                  ; preds = %block_.L_40454a, %block_4044cd
  %loadMem_4044d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 15
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RBP.i218
  %3795 = sub i64 %3794, 152
  %3796 = load i64, i64* %PC.i216
  %3797 = add i64 %3796, 7
  store i64 %3797, i64* %PC.i216
  %3798 = inttoptr i64 %3795 to i64*
  %3799 = load i64, i64* %3798
  store i64 %3799, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_4044d8, %struct.Memory** %MEMORY
  %loadMem_4044df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 1
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RAX.i214
  %3810 = load i64, i64* %RBP.i215
  %3811 = sub i64 %3810, 96
  %3812 = load i64, i64* %PC.i213
  %3813 = add i64 %3812, 4
  store i64 %3813, i64* %PC.i213
  %3814 = inttoptr i64 %3811 to i64*
  %3815 = load i64, i64* %3814
  %3816 = sub i64 %3809, %3815
  %3817 = icmp ugt i64 %3815, %3809
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3818, i8* %3819, align 1
  %3820 = trunc i64 %3816 to i32
  %3821 = and i32 %3820, 255
  %3822 = call i32 @llvm.ctpop.i32(i32 %3821)
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  %3825 = xor i8 %3824, 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3825, i8* %3826, align 1
  %3827 = xor i64 %3815, %3809
  %3828 = xor i64 %3827, %3816
  %3829 = lshr i64 %3828, 4
  %3830 = trunc i64 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3831, i8* %3832, align 1
  %3833 = icmp eq i64 %3816, 0
  %3834 = zext i1 %3833 to i8
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3834, i8* %3835, align 1
  %3836 = lshr i64 %3816, 63
  %3837 = trunc i64 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3837, i8* %3838, align 1
  %3839 = lshr i64 %3809, 63
  %3840 = lshr i64 %3815, 63
  %3841 = xor i64 %3840, %3839
  %3842 = xor i64 %3836, %3839
  %3843 = add i64 %3842, %3841
  %3844 = icmp eq i64 %3843, 2
  %3845 = zext i1 %3844 to i8
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3845, i8* %3846, align 1
  store %struct.Memory* %loadMem_4044df, %struct.Memory** %MEMORY
  %loadMem_4044e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %PC.i212
  %3851 = add i64 %3850, 126
  %3852 = load i64, i64* %PC.i212
  %3853 = add i64 %3852, 6
  %3854 = load i64, i64* %PC.i212
  %3855 = add i64 %3854, 6
  store i64 %3855, i64* %PC.i212
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3857 = load i8, i8* %3856, align 1
  store i8 %3857, i8* %BRANCH_TAKEN, align 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3859 = icmp ne i8 %3857, 0
  %3860 = select i1 %3859, i64 %3851, i64 %3853
  store i64 %3860, i64* %3858, align 8
  store %struct.Memory* %loadMem_4044e3, %struct.Memory** %MEMORY
  %loadBr_4044e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4044e3 = icmp eq i8 %loadBr_4044e3, 1
  br i1 %cmpBr_4044e3, label %block_.L_404561, label %block_4044e9

block_4044e9:                                     ; preds = %block_.L_4044d8
  %loadMem_4044e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 1
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 15
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %RBP.i211
  %3871 = sub i64 %3870, 184
  %3872 = load i64, i64* %PC.i209
  %3873 = add i64 %3872, 7
  store i64 %3873, i64* %PC.i209
  %3874 = inttoptr i64 %3871 to i64*
  %3875 = load i64, i64* %3874
  store i64 %3875, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_4044e9, %struct.Memory** %MEMORY
  %loadMem_4044f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 5
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i208
  %3886 = sub i64 %3885, 152
  %3887 = load i64, i64* %PC.i206
  %3888 = add i64 %3887, 7
  store i64 %3888, i64* %PC.i206
  %3889 = inttoptr i64 %3886 to i64*
  %3890 = load i64, i64* %3889
  store i64 %3890, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_4044f0, %struct.Memory** %MEMORY
  %loadMem_4044f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 5
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 7
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %RCX.i204
  %3901 = add i64 %3900, 88
  %3902 = load i64, i64* %PC.i203
  %3903 = add i64 %3902, 4
  store i64 %3903, i64* %PC.i203
  %3904 = inttoptr i64 %3901 to i64*
  %3905 = load i64, i64* %3904
  store i64 %3905, i64* %RDX.i205, align 8
  store %struct.Memory* %loadMem_4044f7, %struct.Memory** %MEMORY
  %loadMem_4044fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 1
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 7
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RDX.i202
  %3916 = load i64, i64* %RAX.i201
  %3917 = load i64, i64* %PC.i200
  %3918 = add i64 %3917, 3
  store i64 %3918, i64* %PC.i200
  %3919 = sub i64 %3915, %3916
  store i64 %3919, i64* %RDX.i202, align 8
  %3920 = icmp ult i64 %3915, %3916
  %3921 = zext i1 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3921, i8* %3922, align 1
  %3923 = trunc i64 %3919 to i32
  %3924 = and i32 %3923, 255
  %3925 = call i32 @llvm.ctpop.i32(i32 %3924)
  %3926 = trunc i32 %3925 to i8
  %3927 = and i8 %3926, 1
  %3928 = xor i8 %3927, 1
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3928, i8* %3929, align 1
  %3930 = xor i64 %3916, %3915
  %3931 = xor i64 %3930, %3919
  %3932 = lshr i64 %3931, 4
  %3933 = trunc i64 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3934, i8* %3935, align 1
  %3936 = icmp eq i64 %3919, 0
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3937, i8* %3938, align 1
  %3939 = lshr i64 %3919, 63
  %3940 = trunc i64 %3939 to i8
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3940, i8* %3941, align 1
  %3942 = lshr i64 %3915, 63
  %3943 = lshr i64 %3916, 63
  %3944 = xor i64 %3943, %3942
  %3945 = xor i64 %3939, %3942
  %3946 = add i64 %3945, %3944
  %3947 = icmp eq i64 %3946, 2
  %3948 = zext i1 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3948, i8* %3949, align 1
  store %struct.Memory* %loadMem_4044fb, %struct.Memory** %MEMORY
  %loadMem_4044fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 5
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 7
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RCX.i198
  %3960 = add i64 %3959, 88
  %3961 = load i64, i64* %RDX.i199
  %3962 = load i64, i64* %PC.i197
  %3963 = add i64 %3962, 4
  store i64 %3963, i64* %PC.i197
  %3964 = inttoptr i64 %3960 to i64*
  store i64 %3961, i64* %3964
  store %struct.Memory* %loadMem_4044fe, %struct.Memory** %MEMORY
  %loadMem_404502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 1
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 15
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RBP.i196
  %3975 = sub i64 %3974, 152
  %3976 = load i64, i64* %PC.i194
  %3977 = add i64 %3976, 7
  store i64 %3977, i64* %PC.i194
  %3978 = inttoptr i64 %3975 to i64*
  %3979 = load i64, i64* %3978
  store i64 %3979, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_404502, %struct.Memory** %MEMORY
  %loadMem_404509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 1
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %RAX.i193
  %3987 = add i64 %3986, 8
  %3988 = load i64, i64* %PC.i192
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %PC.i192
  %3990 = inttoptr i64 %3987 to i32*
  %3991 = load i32, i32* %3990
  %3992 = sext i32 %3991 to i64
  store i64 %3992, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_404509, %struct.Memory** %MEMORY
  %loadMem_40450d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 15
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %RAX.i190
  %4003 = load i64, i64* %RBP.i191
  %4004 = sub i64 %4003, 32
  %4005 = load i64, i64* %PC.i189
  %4006 = add i64 %4005, 4
  store i64 %4006, i64* %PC.i189
  %4007 = inttoptr i64 %4004 to i64*
  %4008 = load i64, i64* %4007
  %4009 = sub i64 %4002, %4008
  %4010 = icmp ugt i64 %4008, %4002
  %4011 = zext i1 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4011, i8* %4012, align 1
  %4013 = trunc i64 %4009 to i32
  %4014 = and i32 %4013, 255
  %4015 = call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4018, i8* %4019, align 1
  %4020 = xor i64 %4008, %4002
  %4021 = xor i64 %4020, %4009
  %4022 = lshr i64 %4021, 4
  %4023 = trunc i64 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4024, i8* %4025, align 1
  %4026 = icmp eq i64 %4009, 0
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4027, i8* %4028, align 1
  %4029 = lshr i64 %4009, 63
  %4030 = trunc i64 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4030, i8* %4031, align 1
  %4032 = lshr i64 %4002, 63
  %4033 = lshr i64 %4008, 63
  %4034 = xor i64 %4033, %4032
  %4035 = xor i64 %4029, %4032
  %4036 = add i64 %4035, %4034
  %4037 = icmp eq i64 %4036, 2
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4038, i8* %4039, align 1
  store %struct.Memory* %loadMem_40450d, %struct.Memory** %MEMORY
  %loadMem_404511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4042 to i64*
  %4043 = load i64, i64* %PC.i188
  %4044 = add i64 %4043, 30
  %4045 = load i64, i64* %PC.i188
  %4046 = add i64 %4045, 6
  %4047 = load i64, i64* %PC.i188
  %4048 = add i64 %4047, 6
  store i64 %4048, i64* %PC.i188
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4050 = load i8, i8* %4049, align 1
  store i8 %4050, i8* %BRANCH_TAKEN, align 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4052 = icmp ne i8 %4050, 0
  %4053 = select i1 %4052, i64 %4044, i64 %4046
  store i64 %4053, i64* %4051, align 8
  store %struct.Memory* %loadMem_404511, %struct.Memory** %MEMORY
  %loadBr_404511 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404511 = icmp eq i8 %loadBr_404511, 1
  br i1 %cmpBr_404511, label %block_.L_40452f, label %block_404517

block_404517:                                     ; preds = %block_4044e9
  %loadMem_404517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i187
  %4064 = sub i64 %4063, 48
  %4065 = load i64, i64* %PC.i185
  %4066 = add i64 %4065, 4
  store i64 %4066, i64* %PC.i185
  %4067 = inttoptr i64 %4064 to i64*
  %4068 = load i64, i64* %4067
  store i64 %4068, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_404517, %struct.Memory** %MEMORY
  %loadMem_40451b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 5
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 15
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %RBP.i184
  %4079 = sub i64 %4078, 152
  %4080 = load i64, i64* %PC.i182
  %4081 = add i64 %4080, 7
  store i64 %4081, i64* %PC.i182
  %4082 = inttoptr i64 %4079 to i64*
  %4083 = load i64, i64* %4082
  store i64 %4083, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_40451b, %struct.Memory** %MEMORY
  %loadMem_404522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 1
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 5
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RAX.i180
  %4094 = load i64, i64* %RCX.i181
  %4095 = add i64 %4094, 80
  %4096 = load i64, i64* %PC.i179
  %4097 = add i64 %4096, 4
  store i64 %4097, i64* %PC.i179
  %4098 = inttoptr i64 %4095 to i64*
  %4099 = load i64, i64* %4098
  %4100 = add i64 %4099, %4093
  store i64 %4100, i64* %RAX.i180, align 8
  %4101 = icmp ult i64 %4100, %4093
  %4102 = icmp ult i64 %4100, %4099
  %4103 = or i1 %4101, %4102
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4104, i8* %4105, align 1
  %4106 = trunc i64 %4100 to i32
  %4107 = and i32 %4106, 255
  %4108 = call i32 @llvm.ctpop.i32(i32 %4107)
  %4109 = trunc i32 %4108 to i8
  %4110 = and i8 %4109, 1
  %4111 = xor i8 %4110, 1
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4111, i8* %4112, align 1
  %4113 = xor i64 %4099, %4093
  %4114 = xor i64 %4113, %4100
  %4115 = lshr i64 %4114, 4
  %4116 = trunc i64 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4117, i8* %4118, align 1
  %4119 = icmp eq i64 %4100, 0
  %4120 = zext i1 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4120, i8* %4121, align 1
  %4122 = lshr i64 %4100, 63
  %4123 = trunc i64 %4122 to i8
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4123, i8* %4124, align 1
  %4125 = lshr i64 %4093, 63
  %4126 = lshr i64 %4099, 63
  %4127 = xor i64 %4122, %4125
  %4128 = xor i64 %4122, %4126
  %4129 = add i64 %4127, %4128
  %4130 = icmp eq i64 %4129, 2
  %4131 = zext i1 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4131, i8* %4132, align 1
  store %struct.Memory* %loadMem_404522, %struct.Memory** %MEMORY
  %loadMem_404526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RCX.i178
  %4143 = add i64 %4142, 80
  %4144 = load i64, i64* %RAX.i177
  %4145 = load i64, i64* %PC.i176
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %PC.i176
  %4147 = inttoptr i64 %4143 to i64*
  store i64 %4144, i64* %4147
  store %struct.Memory* %loadMem_404526, %struct.Memory** %MEMORY
  %loadMem_40452a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %PC.i175
  %4152 = add i64 %4151, 27
  %4153 = load i64, i64* %PC.i175
  %4154 = add i64 %4153, 5
  store i64 %4154, i64* %PC.i175
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4152, i64* %4155, align 8
  store %struct.Memory* %loadMem_40452a, %struct.Memory** %MEMORY
  br label %block_.L_404545

block_.L_40452f:                                  ; preds = %block_4044e9
  %loadMem_40452f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 15
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RBP.i174
  %4166 = sub i64 %4165, 48
  %4167 = load i64, i64* %PC.i172
  %4168 = add i64 %4167, 4
  store i64 %4168, i64* %PC.i172
  %4169 = inttoptr i64 %4166 to i64*
  %4170 = load i64, i64* %4169
  store i64 %4170, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_40452f, %struct.Memory** %MEMORY
  %loadMem_404533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 5
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 15
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %4179 to i64*
  %4180 = load i64, i64* %RBP.i171
  %4181 = sub i64 %4180, 152
  %4182 = load i64, i64* %PC.i169
  %4183 = add i64 %4182, 7
  store i64 %4183, i64* %PC.i169
  %4184 = inttoptr i64 %4181 to i64*
  %4185 = load i64, i64* %4184
  store i64 %4185, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_404533, %struct.Memory** %MEMORY
  %loadMem_40453a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 5
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 7
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RCX.i167
  %4196 = add i64 %4195, 80
  %4197 = load i64, i64* %PC.i166
  %4198 = add i64 %4197, 4
  store i64 %4198, i64* %PC.i166
  %4199 = inttoptr i64 %4196 to i64*
  %4200 = load i64, i64* %4199
  store i64 %4200, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_40453a, %struct.Memory** %MEMORY
  %loadMem_40453e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 33
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 1
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 7
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RDX.i165 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RDX.i165
  %4211 = load i64, i64* %RAX.i164
  %4212 = load i64, i64* %PC.i163
  %4213 = add i64 %4212, 3
  store i64 %4213, i64* %PC.i163
  %4214 = sub i64 %4210, %4211
  store i64 %4214, i64* %RDX.i165, align 8
  %4215 = icmp ult i64 %4210, %4211
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4216, i8* %4217, align 1
  %4218 = trunc i64 %4214 to i32
  %4219 = and i32 %4218, 255
  %4220 = call i32 @llvm.ctpop.i32(i32 %4219)
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4223, i8* %4224, align 1
  %4225 = xor i64 %4211, %4210
  %4226 = xor i64 %4225, %4214
  %4227 = lshr i64 %4226, 4
  %4228 = trunc i64 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4229, i8* %4230, align 1
  %4231 = icmp eq i64 %4214, 0
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4232, i8* %4233, align 1
  %4234 = lshr i64 %4214, 63
  %4235 = trunc i64 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i64 %4210, 63
  %4238 = lshr i64 %4211, 63
  %4239 = xor i64 %4238, %4237
  %4240 = xor i64 %4234, %4237
  %4241 = add i64 %4240, %4239
  %4242 = icmp eq i64 %4241, 2
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4243, i8* %4244, align 1
  store %struct.Memory* %loadMem_40453e, %struct.Memory** %MEMORY
  %loadMem_404541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 5
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 7
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %RCX.i161
  %4255 = add i64 %4254, 80
  %4256 = load i64, i64* %RDX.i162
  %4257 = load i64, i64* %PC.i160
  %4258 = add i64 %4257, 4
  store i64 %4258, i64* %PC.i160
  %4259 = inttoptr i64 %4255 to i64*
  store i64 %4256, i64* %4259
  store %struct.Memory* %loadMem_404541, %struct.Memory** %MEMORY
  br label %block_.L_404545

block_.L_404545:                                  ; preds = %block_.L_40452f, %block_404517
  %loadMem_404545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4262 to i64*
  %4263 = load i64, i64* %PC.i159
  %4264 = add i64 %4263, 5
  %4265 = load i64, i64* %PC.i159
  %4266 = add i64 %4265, 5
  store i64 %4266, i64* %PC.i159
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4264, i64* %4267, align 8
  store %struct.Memory* %loadMem_404545, %struct.Memory** %MEMORY
  br label %block_.L_40454a

block_.L_40454a:                                  ; preds = %block_.L_404545
  %loadMem_40454a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4270 to i64*
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 1
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %4273 to i64*
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 15
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %RBP.i158
  %4278 = sub i64 %4277, 152
  %4279 = load i64, i64* %PC.i156
  %4280 = add i64 %4279, 7
  store i64 %4280, i64* %PC.i156
  %4281 = inttoptr i64 %4278 to i64*
  %4282 = load i64, i64* %4281
  store i64 %4282, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_40454a, %struct.Memory** %MEMORY
  %loadMem_404551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 33
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 1
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RAX.i155
  %4290 = add i64 %4289, 24
  %4291 = load i64, i64* %PC.i154
  %4292 = add i64 %4291, 4
  store i64 %4292, i64* %PC.i154
  %4293 = inttoptr i64 %4290 to i64*
  %4294 = load i64, i64* %4293
  store i64 %4294, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_404551, %struct.Memory** %MEMORY
  %loadMem_404555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 1
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 15
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RBP.i153
  %4305 = sub i64 %4304, 152
  %4306 = load i64, i64* %RAX.i152
  %4307 = load i64, i64* %PC.i151
  %4308 = add i64 %4307, 7
  store i64 %4308, i64* %PC.i151
  %4309 = inttoptr i64 %4305 to i64*
  store i64 %4306, i64* %4309
  store %struct.Memory* %loadMem_404555, %struct.Memory** %MEMORY
  %loadMem_40455c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4312 to i64*
  %4313 = load i64, i64* %PC.i150
  %4314 = add i64 %4313, -132
  %4315 = load i64, i64* %PC.i150
  %4316 = add i64 %4315, 5
  store i64 %4316, i64* %PC.i150
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4314, i64* %4317, align 8
  store %struct.Memory* %loadMem_40455c, %struct.Memory** %MEMORY
  br label %block_.L_4044d8

block_.L_404561:                                  ; preds = %block_.L_4044d8
  %loadMem_404561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 1
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 15
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4326 to i64*
  %4327 = load i64, i64* %RBP.i149
  %4328 = sub i64 %4327, 72
  %4329 = load i64, i64* %PC.i147
  %4330 = add i64 %4329, 4
  store i64 %4330, i64* %PC.i147
  %4331 = inttoptr i64 %4328 to i64*
  %4332 = load i64, i64* %4331
  store i64 %4332, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_404561, %struct.Memory** %MEMORY
  %loadMem_404565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 1
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 15
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %RBP.i146
  %4343 = sub i64 %4342, 152
  %4344 = load i64, i64* %RAX.i145
  %4345 = load i64, i64* %PC.i144
  %4346 = add i64 %4345, 7
  store i64 %4346, i64* %PC.i144
  %4347 = inttoptr i64 %4343 to i64*
  store i64 %4344, i64* %4347
  store %struct.Memory* %loadMem_404565, %struct.Memory** %MEMORY
  br label %block_.L_40456c

block_.L_40456c:                                  ; preds = %block_.L_4045db, %block_.L_404561
  %loadMem_40456c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 15
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %RBP.i143
  %4358 = sub i64 %4357, 152
  %4359 = load i64, i64* %PC.i141
  %4360 = add i64 %4359, 7
  store i64 %4360, i64* %PC.i141
  %4361 = inttoptr i64 %4358 to i64*
  %4362 = load i64, i64* %4361
  store i64 %4362, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_40456c, %struct.Memory** %MEMORY
  %loadMem_404573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 1
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 15
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4371 to i64*
  %4372 = load i64, i64* %RAX.i139
  %4373 = load i64, i64* %RBP.i140
  %4374 = sub i64 %4373, 96
  %4375 = load i64, i64* %PC.i138
  %4376 = add i64 %4375, 4
  store i64 %4376, i64* %PC.i138
  %4377 = inttoptr i64 %4374 to i64*
  %4378 = load i64, i64* %4377
  %4379 = sub i64 %4372, %4378
  %4380 = icmp ugt i64 %4378, %4372
  %4381 = zext i1 %4380 to i8
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4381, i8* %4382, align 1
  %4383 = trunc i64 %4379 to i32
  %4384 = and i32 %4383, 255
  %4385 = call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4388, i8* %4389, align 1
  %4390 = xor i64 %4378, %4372
  %4391 = xor i64 %4390, %4379
  %4392 = lshr i64 %4391, 4
  %4393 = trunc i64 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4394, i8* %4395, align 1
  %4396 = icmp eq i64 %4379, 0
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4397, i8* %4398, align 1
  %4399 = lshr i64 %4379, 63
  %4400 = trunc i64 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4400, i8* %4401, align 1
  %4402 = lshr i64 %4372, 63
  %4403 = lshr i64 %4378, 63
  %4404 = xor i64 %4403, %4402
  %4405 = xor i64 %4399, %4402
  %4406 = add i64 %4405, %4404
  %4407 = icmp eq i64 %4406, 2
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4408, i8* %4409, align 1
  store %struct.Memory* %loadMem_404573, %struct.Memory** %MEMORY
  %loadMem_404577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 33
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %PC.i137
  %4414 = add i64 %4413, 123
  %4415 = load i64, i64* %PC.i137
  %4416 = add i64 %4415, 6
  %4417 = load i64, i64* %PC.i137
  %4418 = add i64 %4417, 6
  store i64 %4418, i64* %PC.i137
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4420 = load i8, i8* %4419, align 1
  store i8 %4420, i8* %BRANCH_TAKEN, align 1
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4422 = icmp ne i8 %4420, 0
  %4423 = select i1 %4422, i64 %4414, i64 %4416
  store i64 %4423, i64* %4421, align 8
  store %struct.Memory* %loadMem_404577, %struct.Memory** %MEMORY
  %loadBr_404577 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404577 = icmp eq i8 %loadBr_404577, 1
  br i1 %cmpBr_404577, label %block_.L_4045f2, label %block_40457d

block_40457d:                                     ; preds = %block_.L_40456c
  %loadMem_40457d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4429 to i64*
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 15
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %4432 to i64*
  %4433 = load i64, i64* %RBP.i136
  %4434 = sub i64 %4433, 184
  %4435 = load i64, i64* %PC.i134
  %4436 = add i64 %4435, 7
  store i64 %4436, i64* %PC.i134
  %4437 = inttoptr i64 %4434 to i64*
  %4438 = load i64, i64* %4437
  store i64 %4438, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_40457d, %struct.Memory** %MEMORY
  %loadMem_404584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 5
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 15
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RBP.i133
  %4449 = sub i64 %4448, 152
  %4450 = load i64, i64* %PC.i131
  %4451 = add i64 %4450, 7
  store i64 %4451, i64* %PC.i131
  %4452 = inttoptr i64 %4449 to i64*
  %4453 = load i64, i64* %4452
  store i64 %4453, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_404584, %struct.Memory** %MEMORY
  %loadMem_40458b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 1
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 5
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %RAX.i129
  %4464 = load i64, i64* %RCX.i130
  %4465 = add i64 %4464, 88
  %4466 = load i64, i64* %PC.i128
  %4467 = add i64 %4466, 4
  store i64 %4467, i64* %PC.i128
  %4468 = inttoptr i64 %4465 to i64*
  %4469 = load i64, i64* %4468
  %4470 = add i64 %4469, %4463
  store i64 %4470, i64* %RAX.i129, align 8
  %4471 = icmp ult i64 %4470, %4463
  %4472 = icmp ult i64 %4470, %4469
  %4473 = or i1 %4471, %4472
  %4474 = zext i1 %4473 to i8
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4474, i8* %4475, align 1
  %4476 = trunc i64 %4470 to i32
  %4477 = and i32 %4476, 255
  %4478 = call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4481, i8* %4482, align 1
  %4483 = xor i64 %4469, %4463
  %4484 = xor i64 %4483, %4470
  %4485 = lshr i64 %4484, 4
  %4486 = trunc i64 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4487, i8* %4488, align 1
  %4489 = icmp eq i64 %4470, 0
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4490, i8* %4491, align 1
  %4492 = lshr i64 %4470, 63
  %4493 = trunc i64 %4492 to i8
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4493, i8* %4494, align 1
  %4495 = lshr i64 %4463, 63
  %4496 = lshr i64 %4469, 63
  %4497 = xor i64 %4492, %4495
  %4498 = xor i64 %4492, %4496
  %4499 = add i64 %4497, %4498
  %4500 = icmp eq i64 %4499, 2
  %4501 = zext i1 %4500 to i8
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4501, i8* %4502, align 1
  store %struct.Memory* %loadMem_40458b, %struct.Memory** %MEMORY
  %loadMem_40458f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 5
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RCX.i127
  %4513 = add i64 %4512, 88
  %4514 = load i64, i64* %RAX.i126
  %4515 = load i64, i64* %PC.i125
  %4516 = add i64 %4515, 4
  store i64 %4516, i64* %PC.i125
  %4517 = inttoptr i64 %4513 to i64*
  store i64 %4514, i64* %4517
  store %struct.Memory* %loadMem_40458f, %struct.Memory** %MEMORY
  %loadMem_404593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 1
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 15
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %4526 to i64*
  %4527 = load i64, i64* %RBP.i124
  %4528 = sub i64 %4527, 152
  %4529 = load i64, i64* %PC.i122
  %4530 = add i64 %4529, 7
  store i64 %4530, i64* %PC.i122
  %4531 = inttoptr i64 %4528 to i64*
  %4532 = load i64, i64* %4531
  store i64 %4532, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_404593, %struct.Memory** %MEMORY
  %loadMem_40459a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 1
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %RAX.i121
  %4540 = add i64 %4539, 8
  %4541 = load i64, i64* %PC.i120
  %4542 = add i64 %4541, 4
  store i64 %4542, i64* %PC.i120
  %4543 = inttoptr i64 %4540 to i32*
  %4544 = load i32, i32* %4543
  %4545 = sext i32 %4544 to i64
  store i64 %4545, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_40459a, %struct.Memory** %MEMORY
  %loadMem_40459e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 1
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 15
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RAX.i118
  %4556 = load i64, i64* %RBP.i119
  %4557 = sub i64 %4556, 32
  %4558 = load i64, i64* %PC.i117
  %4559 = add i64 %4558, 4
  store i64 %4559, i64* %PC.i117
  %4560 = inttoptr i64 %4557 to i64*
  %4561 = load i64, i64* %4560
  %4562 = sub i64 %4555, %4561
  %4563 = icmp ugt i64 %4561, %4555
  %4564 = zext i1 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4564, i8* %4565, align 1
  %4566 = trunc i64 %4562 to i32
  %4567 = and i32 %4566, 255
  %4568 = call i32 @llvm.ctpop.i32(i32 %4567)
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  %4571 = xor i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4571, i8* %4572, align 1
  %4573 = xor i64 %4561, %4555
  %4574 = xor i64 %4573, %4562
  %4575 = lshr i64 %4574, 4
  %4576 = trunc i64 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4577, i8* %4578, align 1
  %4579 = icmp eq i64 %4562, 0
  %4580 = zext i1 %4579 to i8
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4580, i8* %4581, align 1
  %4582 = lshr i64 %4562, 63
  %4583 = trunc i64 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4583, i8* %4584, align 1
  %4585 = lshr i64 %4555, 63
  %4586 = lshr i64 %4561, 63
  %4587 = xor i64 %4586, %4585
  %4588 = xor i64 %4582, %4585
  %4589 = add i64 %4588, %4587
  %4590 = icmp eq i64 %4589, 2
  %4591 = zext i1 %4590 to i8
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4591, i8* %4592, align 1
  store %struct.Memory* %loadMem_40459e, %struct.Memory** %MEMORY
  %loadMem_4045a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 33
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %PC.i116
  %4597 = add i64 %4596, 30
  %4598 = load i64, i64* %PC.i116
  %4599 = add i64 %4598, 6
  %4600 = load i64, i64* %PC.i116
  %4601 = add i64 %4600, 6
  store i64 %4601, i64* %PC.i116
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4603 = load i8, i8* %4602, align 1
  %4604 = icmp eq i8 %4603, 0
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %BRANCH_TAKEN, align 1
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4607 = select i1 %4604, i64 %4597, i64 %4599
  store i64 %4607, i64* %4606, align 8
  store %struct.Memory* %loadMem_4045a2, %struct.Memory** %MEMORY
  %loadBr_4045a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4045a2 = icmp eq i8 %loadBr_4045a2, 1
  br i1 %cmpBr_4045a2, label %block_.L_4045c0, label %block_4045a8

block_4045a8:                                     ; preds = %block_40457d
  %loadMem_4045a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 1
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 15
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %RBP.i115
  %4618 = sub i64 %4617, 48
  %4619 = load i64, i64* %PC.i113
  %4620 = add i64 %4619, 4
  store i64 %4620, i64* %PC.i113
  %4621 = inttoptr i64 %4618 to i64*
  %4622 = load i64, i64* %4621
  store i64 %4622, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_4045a8, %struct.Memory** %MEMORY
  %loadMem_4045ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 33
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 5
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 15
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RBP.i112
  %4633 = sub i64 %4632, 152
  %4634 = load i64, i64* %PC.i110
  %4635 = add i64 %4634, 7
  store i64 %4635, i64* %PC.i110
  %4636 = inttoptr i64 %4633 to i64*
  %4637 = load i64, i64* %4636
  store i64 %4637, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_4045ac, %struct.Memory** %MEMORY
  %loadMem_4045b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 1
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 5
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4646 to i64*
  %4647 = load i64, i64* %RAX.i108
  %4648 = load i64, i64* %RCX.i109
  %4649 = add i64 %4648, 80
  %4650 = load i64, i64* %PC.i107
  %4651 = add i64 %4650, 4
  store i64 %4651, i64* %PC.i107
  %4652 = inttoptr i64 %4649 to i64*
  %4653 = load i64, i64* %4652
  %4654 = add i64 %4653, %4647
  store i64 %4654, i64* %RAX.i108, align 8
  %4655 = icmp ult i64 %4654, %4647
  %4656 = icmp ult i64 %4654, %4653
  %4657 = or i1 %4655, %4656
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4658, i8* %4659, align 1
  %4660 = trunc i64 %4654 to i32
  %4661 = and i32 %4660, 255
  %4662 = call i32 @llvm.ctpop.i32(i32 %4661)
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = xor i8 %4664, 1
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4665, i8* %4666, align 1
  %4667 = xor i64 %4653, %4647
  %4668 = xor i64 %4667, %4654
  %4669 = lshr i64 %4668, 4
  %4670 = trunc i64 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4671, i8* %4672, align 1
  %4673 = icmp eq i64 %4654, 0
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4674, i8* %4675, align 1
  %4676 = lshr i64 %4654, 63
  %4677 = trunc i64 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4677, i8* %4678, align 1
  %4679 = lshr i64 %4647, 63
  %4680 = lshr i64 %4653, 63
  %4681 = xor i64 %4676, %4679
  %4682 = xor i64 %4676, %4680
  %4683 = add i64 %4681, %4682
  %4684 = icmp eq i64 %4683, 2
  %4685 = zext i1 %4684 to i8
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4685, i8* %4686, align 1
  store %struct.Memory* %loadMem_4045b3, %struct.Memory** %MEMORY
  %loadMem_4045b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 1
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 5
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %4695 to i64*
  %4696 = load i64, i64* %RCX.i106
  %4697 = add i64 %4696, 80
  %4698 = load i64, i64* %RAX.i105
  %4699 = load i64, i64* %PC.i104
  %4700 = add i64 %4699, 4
  store i64 %4700, i64* %PC.i104
  %4701 = inttoptr i64 %4697 to i64*
  store i64 %4698, i64* %4701
  store %struct.Memory* %loadMem_4045b7, %struct.Memory** %MEMORY
  %loadMem_4045bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %PC.i103
  %4706 = add i64 %4705, 27
  %4707 = load i64, i64* %PC.i103
  %4708 = add i64 %4707, 5
  store i64 %4708, i64* %PC.i103
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4706, i64* %4709, align 8
  store %struct.Memory* %loadMem_4045bb, %struct.Memory** %MEMORY
  br label %block_.L_4045d6

block_.L_4045c0:                                  ; preds = %block_40457d
  %loadMem_4045c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 33
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 1
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 15
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4718 to i64*
  %4719 = load i64, i64* %RBP.i102
  %4720 = sub i64 %4719, 48
  %4721 = load i64, i64* %PC.i100
  %4722 = add i64 %4721, 4
  store i64 %4722, i64* %PC.i100
  %4723 = inttoptr i64 %4720 to i64*
  %4724 = load i64, i64* %4723
  store i64 %4724, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_4045c0, %struct.Memory** %MEMORY
  %loadMem_4045c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 5
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i99
  %4735 = sub i64 %4734, 152
  %4736 = load i64, i64* %PC.i97
  %4737 = add i64 %4736, 7
  store i64 %4737, i64* %PC.i97
  %4738 = inttoptr i64 %4735 to i64*
  %4739 = load i64, i64* %4738
  store i64 %4739, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_4045c4, %struct.Memory** %MEMORY
  %loadMem_4045cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 5
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %4745 to i64*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 7
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %RCX.i95
  %4750 = add i64 %4749, 80
  %4751 = load i64, i64* %PC.i94
  %4752 = add i64 %4751, 4
  store i64 %4752, i64* %PC.i94
  %4753 = inttoptr i64 %4750 to i64*
  %4754 = load i64, i64* %4753
  store i64 %4754, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_4045cb, %struct.Memory** %MEMORY
  %loadMem_4045cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 1
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 7
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %4763 to i64*
  %4764 = load i64, i64* %RDX.i93
  %4765 = load i64, i64* %RAX.i92
  %4766 = load i64, i64* %PC.i91
  %4767 = add i64 %4766, 3
  store i64 %4767, i64* %PC.i91
  %4768 = sub i64 %4764, %4765
  store i64 %4768, i64* %RDX.i93, align 8
  %4769 = icmp ult i64 %4764, %4765
  %4770 = zext i1 %4769 to i8
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4770, i8* %4771, align 1
  %4772 = trunc i64 %4768 to i32
  %4773 = and i32 %4772, 255
  %4774 = call i32 @llvm.ctpop.i32(i32 %4773)
  %4775 = trunc i32 %4774 to i8
  %4776 = and i8 %4775, 1
  %4777 = xor i8 %4776, 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4777, i8* %4778, align 1
  %4779 = xor i64 %4765, %4764
  %4780 = xor i64 %4779, %4768
  %4781 = lshr i64 %4780, 4
  %4782 = trunc i64 %4781 to i8
  %4783 = and i8 %4782, 1
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4783, i8* %4784, align 1
  %4785 = icmp eq i64 %4768, 0
  %4786 = zext i1 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4786, i8* %4787, align 1
  %4788 = lshr i64 %4768, 63
  %4789 = trunc i64 %4788 to i8
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4789, i8* %4790, align 1
  %4791 = lshr i64 %4764, 63
  %4792 = lshr i64 %4765, 63
  %4793 = xor i64 %4792, %4791
  %4794 = xor i64 %4788, %4791
  %4795 = add i64 %4794, %4793
  %4796 = icmp eq i64 %4795, 2
  %4797 = zext i1 %4796 to i8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4797, i8* %4798, align 1
  store %struct.Memory* %loadMem_4045cf, %struct.Memory** %MEMORY
  %loadMem_4045d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 5
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 7
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %RCX.i89
  %4809 = add i64 %4808, 80
  %4810 = load i64, i64* %RDX.i90
  %4811 = load i64, i64* %PC.i88
  %4812 = add i64 %4811, 4
  store i64 %4812, i64* %PC.i88
  %4813 = inttoptr i64 %4809 to i64*
  store i64 %4810, i64* %4813
  store %struct.Memory* %loadMem_4045d2, %struct.Memory** %MEMORY
  br label %block_.L_4045d6

block_.L_4045d6:                                  ; preds = %block_.L_4045c0, %block_4045a8
  %loadMem_4045d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 33
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %PC.i87
  %4818 = add i64 %4817, 5
  %4819 = load i64, i64* %PC.i87
  %4820 = add i64 %4819, 5
  store i64 %4820, i64* %PC.i87
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4818, i64* %4821, align 8
  store %struct.Memory* %loadMem_4045d6, %struct.Memory** %MEMORY
  br label %block_.L_4045db

block_.L_4045db:                                  ; preds = %block_.L_4045d6
  %loadMem_4045db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 1
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 15
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4830 to i64*
  %4831 = load i64, i64* %RBP.i86
  %4832 = sub i64 %4831, 152
  %4833 = load i64, i64* %PC.i84
  %4834 = add i64 %4833, 7
  store i64 %4834, i64* %PC.i84
  %4835 = inttoptr i64 %4832 to i64*
  %4836 = load i64, i64* %4835
  store i64 %4836, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_4045db, %struct.Memory** %MEMORY
  %loadMem_4045e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 33
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 1
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %4842 to i64*
  %4843 = load i64, i64* %RAX.i83
  %4844 = add i64 %4843, 24
  %4845 = load i64, i64* %PC.i82
  %4846 = add i64 %4845, 4
  store i64 %4846, i64* %PC.i82
  %4847 = inttoptr i64 %4844 to i64*
  %4848 = load i64, i64* %4847
  store i64 %4848, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_4045e2, %struct.Memory** %MEMORY
  %loadMem_4045e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 15
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %RBP.i81
  %4859 = sub i64 %4858, 152
  %4860 = load i64, i64* %RAX.i80
  %4861 = load i64, i64* %PC.i79
  %4862 = add i64 %4861, 7
  store i64 %4862, i64* %PC.i79
  %4863 = inttoptr i64 %4859 to i64*
  store i64 %4860, i64* %4863
  store %struct.Memory* %loadMem_4045e6, %struct.Memory** %MEMORY
  %loadMem_4045ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %PC.i78
  %4868 = add i64 %4867, -129
  %4869 = load i64, i64* %PC.i78
  %4870 = add i64 %4869, 5
  store i64 %4870, i64* %PC.i78
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4868, i64* %4871, align 8
  store %struct.Memory* %loadMem_4045ed, %struct.Memory** %MEMORY
  br label %block_.L_40456c

block_.L_4045f2:                                  ; preds = %block_.L_40456c
  %loadMem_4045f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %PC.i77
  %4876 = add i64 %4875, 159
  %4877 = load i64, i64* %PC.i77
  %4878 = add i64 %4877, 5
  store i64 %4878, i64* %PC.i77
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4876, i64* %4879, align 8
  store %struct.Memory* %loadMem_4045f2, %struct.Memory** %MEMORY
  br label %block_.L_404691

block_.L_4045f7:                                  ; preds = %block_.L_4044bf
  %loadMem_4045f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 1
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %4885 to i64*
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4887 = getelementptr inbounds %struct.GPR, %struct.GPR* %4886, i32 0, i32 15
  %4888 = getelementptr inbounds %struct.Reg, %struct.Reg* %4887, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4888 to i64*
  %4889 = load i64, i64* %RBP.i76
  %4890 = sub i64 %4889, 88
  %4891 = load i64, i64* %PC.i74
  %4892 = add i64 %4891, 4
  store i64 %4892, i64* %PC.i74
  %4893 = inttoptr i64 %4890 to i64*
  %4894 = load i64, i64* %4893
  store i64 %4894, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_4045f7, %struct.Memory** %MEMORY
  %loadMem_4045fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 33
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4897 to i64*
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 1
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %4900 to i64*
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 15
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %4903 to i64*
  %4904 = load i64, i64* %RBP.i73
  %4905 = sub i64 %4904, 152
  %4906 = load i64, i64* %RAX.i72
  %4907 = load i64, i64* %PC.i71
  %4908 = add i64 %4907, 7
  store i64 %4908, i64* %PC.i71
  %4909 = inttoptr i64 %4905 to i64*
  store i64 %4906, i64* %4909
  store %struct.Memory* %loadMem_4045fb, %struct.Memory** %MEMORY
  br label %block_.L_404602

block_.L_404602:                                  ; preds = %block_404613, %block_.L_4045f7
  %loadMem_404602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 1
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 15
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4918 to i64*
  %4919 = load i64, i64* %RBP.i70
  %4920 = sub i64 %4919, 152
  %4921 = load i64, i64* %PC.i68
  %4922 = add i64 %4921, 7
  store i64 %4922, i64* %PC.i68
  %4923 = inttoptr i64 %4920 to i64*
  %4924 = load i64, i64* %4923
  store i64 %4924, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_404602, %struct.Memory** %MEMORY
  %loadMem_404609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 1
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 15
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %RAX.i66
  %4935 = load i64, i64* %RBP.i67
  %4936 = sub i64 %4935, 96
  %4937 = load i64, i64* %PC.i65
  %4938 = add i64 %4937, 4
  store i64 %4938, i64* %PC.i65
  %4939 = inttoptr i64 %4936 to i64*
  %4940 = load i64, i64* %4939
  %4941 = sub i64 %4934, %4940
  %4942 = icmp ugt i64 %4940, %4934
  %4943 = zext i1 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4943, i8* %4944, align 1
  %4945 = trunc i64 %4941 to i32
  %4946 = and i32 %4945, 255
  %4947 = call i32 @llvm.ctpop.i32(i32 %4946)
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  %4950 = xor i8 %4949, 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4950, i8* %4951, align 1
  %4952 = xor i64 %4940, %4934
  %4953 = xor i64 %4952, %4941
  %4954 = lshr i64 %4953, 4
  %4955 = trunc i64 %4954 to i8
  %4956 = and i8 %4955, 1
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4956, i8* %4957, align 1
  %4958 = icmp eq i64 %4941, 0
  %4959 = zext i1 %4958 to i8
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4959, i8* %4960, align 1
  %4961 = lshr i64 %4941, 63
  %4962 = trunc i64 %4961 to i8
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4962, i8* %4963, align 1
  %4964 = lshr i64 %4934, 63
  %4965 = lshr i64 %4940, 63
  %4966 = xor i64 %4965, %4964
  %4967 = xor i64 %4961, %4964
  %4968 = add i64 %4967, %4966
  %4969 = icmp eq i64 %4968, 2
  %4970 = zext i1 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4970, i8* %4971, align 1
  store %struct.Memory* %loadMem_404609, %struct.Memory** %MEMORY
  %loadMem_40460d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 33
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %PC.i64
  %4976 = add i64 %4975, 54
  %4977 = load i64, i64* %PC.i64
  %4978 = add i64 %4977, 6
  %4979 = load i64, i64* %PC.i64
  %4980 = add i64 %4979, 6
  store i64 %4980, i64* %PC.i64
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4982 = load i8, i8* %4981, align 1
  store i8 %4982, i8* %BRANCH_TAKEN, align 1
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4984 = icmp ne i8 %4982, 0
  %4985 = select i1 %4984, i64 %4976, i64 %4978
  store i64 %4985, i64* %4983, align 8
  store %struct.Memory* %loadMem_40460d, %struct.Memory** %MEMORY
  %loadBr_40460d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40460d = icmp eq i8 %loadBr_40460d, 1
  br i1 %cmpBr_40460d, label %block_.L_404643, label %block_404613

block_404613:                                     ; preds = %block_.L_404602
  %loadMem_404613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 1
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 15
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RBP.i63
  %4996 = sub i64 %4995, 184
  %4997 = load i64, i64* %PC.i61
  %4998 = add i64 %4997, 7
  store i64 %4998, i64* %PC.i61
  %4999 = inttoptr i64 %4996 to i64*
  %5000 = load i64, i64* %4999
  store i64 %5000, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_404613, %struct.Memory** %MEMORY
  %loadMem_40461a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 5
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 15
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RBP.i60
  %5011 = sub i64 %5010, 152
  %5012 = load i64, i64* %PC.i58
  %5013 = add i64 %5012, 7
  store i64 %5013, i64* %PC.i58
  %5014 = inttoptr i64 %5011 to i64*
  %5015 = load i64, i64* %5014
  store i64 %5015, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_40461a, %struct.Memory** %MEMORY
  %loadMem_404621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 33
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 5
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 7
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %RCX.i56
  %5026 = add i64 %5025, 88
  %5027 = load i64, i64* %PC.i55
  %5028 = add i64 %5027, 4
  store i64 %5028, i64* %PC.i55
  %5029 = inttoptr i64 %5026 to i64*
  %5030 = load i64, i64* %5029
  store i64 %5030, i64* %RDX.i57, align 8
  store %struct.Memory* %loadMem_404621, %struct.Memory** %MEMORY
  %loadMem_404625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 1
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %5036 to i64*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 7
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RDX.i54 = bitcast %union.anon* %5039 to i64*
  %5040 = load i64, i64* %RDX.i54
  %5041 = load i64, i64* %RAX.i53
  %5042 = load i64, i64* %PC.i52
  %5043 = add i64 %5042, 3
  store i64 %5043, i64* %PC.i52
  %5044 = sub i64 %5040, %5041
  store i64 %5044, i64* %RDX.i54, align 8
  %5045 = icmp ult i64 %5040, %5041
  %5046 = zext i1 %5045 to i8
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5046, i8* %5047, align 1
  %5048 = trunc i64 %5044 to i32
  %5049 = and i32 %5048, 255
  %5050 = call i32 @llvm.ctpop.i32(i32 %5049)
  %5051 = trunc i32 %5050 to i8
  %5052 = and i8 %5051, 1
  %5053 = xor i8 %5052, 1
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5053, i8* %5054, align 1
  %5055 = xor i64 %5041, %5040
  %5056 = xor i64 %5055, %5044
  %5057 = lshr i64 %5056, 4
  %5058 = trunc i64 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5059, i8* %5060, align 1
  %5061 = icmp eq i64 %5044, 0
  %5062 = zext i1 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5062, i8* %5063, align 1
  %5064 = lshr i64 %5044, 63
  %5065 = trunc i64 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5065, i8* %5066, align 1
  %5067 = lshr i64 %5040, 63
  %5068 = lshr i64 %5041, 63
  %5069 = xor i64 %5068, %5067
  %5070 = xor i64 %5064, %5067
  %5071 = add i64 %5070, %5069
  %5072 = icmp eq i64 %5071, 2
  %5073 = zext i1 %5072 to i8
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5073, i8* %5074, align 1
  store %struct.Memory* %loadMem_404625, %struct.Memory** %MEMORY
  %loadMem_404628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 33
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 5
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 7
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5083 to i64*
  %5084 = load i64, i64* %RCX.i51
  %5085 = add i64 %5084, 88
  %5086 = load i64, i64* %RDX.i
  %5087 = load i64, i64* %PC.i50
  %5088 = add i64 %5087, 4
  store i64 %5088, i64* %PC.i50
  %5089 = inttoptr i64 %5085 to i64*
  store i64 %5086, i64* %5089
  store %struct.Memory* %loadMem_404628, %struct.Memory** %MEMORY
  %loadMem_40462c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 1
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 15
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %RBP.i49
  %5100 = sub i64 %5099, 152
  %5101 = load i64, i64* %PC.i47
  %5102 = add i64 %5101, 7
  store i64 %5102, i64* %PC.i47
  %5103 = inttoptr i64 %5100 to i64*
  %5104 = load i64, i64* %5103
  store i64 %5104, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_40462c, %struct.Memory** %MEMORY
  %loadMem_404633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 1
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RAX.i46
  %5112 = add i64 %5111, 24
  %5113 = load i64, i64* %PC.i45
  %5114 = add i64 %5113, 4
  store i64 %5114, i64* %PC.i45
  %5115 = inttoptr i64 %5112 to i64*
  %5116 = load i64, i64* %5115
  store i64 %5116, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_404633, %struct.Memory** %MEMORY
  %loadMem_404637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 1
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 15
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5125 to i64*
  %5126 = load i64, i64* %RBP.i44
  %5127 = sub i64 %5126, 152
  %5128 = load i64, i64* %RAX.i43
  %5129 = load i64, i64* %PC.i42
  %5130 = add i64 %5129, 7
  store i64 %5130, i64* %PC.i42
  %5131 = inttoptr i64 %5127 to i64*
  store i64 %5128, i64* %5131
  store %struct.Memory* %loadMem_404637, %struct.Memory** %MEMORY
  %loadMem_40463e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 33
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %PC.i41
  %5136 = add i64 %5135, -60
  %5137 = load i64, i64* %PC.i41
  %5138 = add i64 %5137, 5
  store i64 %5138, i64* %PC.i41
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5136, i64* %5139, align 8
  store %struct.Memory* %loadMem_40463e, %struct.Memory** %MEMORY
  br label %block_.L_404602

block_.L_404643:                                  ; preds = %block_.L_404602
  %loadMem_404643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 1
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %5145 to i64*
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 15
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %5148 to i64*
  %5149 = load i64, i64* %RBP.i40
  %5150 = sub i64 %5149, 72
  %5151 = load i64, i64* %PC.i38
  %5152 = add i64 %5151, 4
  store i64 %5152, i64* %PC.i38
  %5153 = inttoptr i64 %5150 to i64*
  %5154 = load i64, i64* %5153
  store i64 %5154, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_404643, %struct.Memory** %MEMORY
  %loadMem_404647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5157 to i64*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 1
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %5160 to i64*
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 15
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5163 to i64*
  %5164 = load i64, i64* %RBP.i37
  %5165 = sub i64 %5164, 152
  %5166 = load i64, i64* %RAX.i36
  %5167 = load i64, i64* %PC.i35
  %5168 = add i64 %5167, 7
  store i64 %5168, i64* %PC.i35
  %5169 = inttoptr i64 %5165 to i64*
  store i64 %5166, i64* %5169
  store %struct.Memory* %loadMem_404647, %struct.Memory** %MEMORY
  br label %block_.L_40464e

block_.L_40464e:                                  ; preds = %block_40465f, %block_.L_404643
  %loadMem_40464e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 1
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 15
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %RBP.i34
  %5180 = sub i64 %5179, 152
  %5181 = load i64, i64* %PC.i32
  %5182 = add i64 %5181, 7
  store i64 %5182, i64* %PC.i32
  %5183 = inttoptr i64 %5180 to i64*
  %5184 = load i64, i64* %5183
  store i64 %5184, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_40464e, %struct.Memory** %MEMORY
  %loadMem_404655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 1
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 15
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RAX.i30
  %5195 = load i64, i64* %RBP.i31
  %5196 = sub i64 %5195, 96
  %5197 = load i64, i64* %PC.i29
  %5198 = add i64 %5197, 4
  store i64 %5198, i64* %PC.i29
  %5199 = inttoptr i64 %5196 to i64*
  %5200 = load i64, i64* %5199
  %5201 = sub i64 %5194, %5200
  %5202 = icmp ugt i64 %5200, %5194
  %5203 = zext i1 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5203, i8* %5204, align 1
  %5205 = trunc i64 %5201 to i32
  %5206 = and i32 %5205, 255
  %5207 = call i32 @llvm.ctpop.i32(i32 %5206)
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  %5210 = xor i8 %5209, 1
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5210, i8* %5211, align 1
  %5212 = xor i64 %5200, %5194
  %5213 = xor i64 %5212, %5201
  %5214 = lshr i64 %5213, 4
  %5215 = trunc i64 %5214 to i8
  %5216 = and i8 %5215, 1
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5216, i8* %5217, align 1
  %5218 = icmp eq i64 %5201, 0
  %5219 = zext i1 %5218 to i8
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5219, i8* %5220, align 1
  %5221 = lshr i64 %5201, 63
  %5222 = trunc i64 %5221 to i8
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5222, i8* %5223, align 1
  %5224 = lshr i64 %5194, 63
  %5225 = lshr i64 %5200, 63
  %5226 = xor i64 %5225, %5224
  %5227 = xor i64 %5221, %5224
  %5228 = add i64 %5227, %5226
  %5229 = icmp eq i64 %5228, 2
  %5230 = zext i1 %5229 to i8
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5230, i8* %5231, align 1
  store %struct.Memory* %loadMem_404655, %struct.Memory** %MEMORY
  %loadMem_404659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 33
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %PC.i28
  %5236 = add i64 %5235, 51
  %5237 = load i64, i64* %PC.i28
  %5238 = add i64 %5237, 6
  %5239 = load i64, i64* %PC.i28
  %5240 = add i64 %5239, 6
  store i64 %5240, i64* %PC.i28
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5242 = load i8, i8* %5241, align 1
  store i8 %5242, i8* %BRANCH_TAKEN, align 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5244 = icmp ne i8 %5242, 0
  %5245 = select i1 %5244, i64 %5236, i64 %5238
  store i64 %5245, i64* %5243, align 8
  store %struct.Memory* %loadMem_404659, %struct.Memory** %MEMORY
  %loadBr_404659 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404659 = icmp eq i8 %loadBr_404659, 1
  br i1 %cmpBr_404659, label %block_.L_40468c, label %block_40465f

block_40465f:                                     ; preds = %block_.L_40464e
  %loadMem_40465f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 33
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 1
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 15
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5254 to i64*
  %5255 = load i64, i64* %RBP.i27
  %5256 = sub i64 %5255, 184
  %5257 = load i64, i64* %PC.i25
  %5258 = add i64 %5257, 7
  store i64 %5258, i64* %PC.i25
  %5259 = inttoptr i64 %5256 to i64*
  %5260 = load i64, i64* %5259
  store i64 %5260, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_40465f, %struct.Memory** %MEMORY
  %loadMem_404666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 33
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 5
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 15
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %RBP.i24
  %5271 = sub i64 %5270, 152
  %5272 = load i64, i64* %PC.i22
  %5273 = add i64 %5272, 7
  store i64 %5273, i64* %PC.i22
  %5274 = inttoptr i64 %5271 to i64*
  %5275 = load i64, i64* %5274
  store i64 %5275, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_404666, %struct.Memory** %MEMORY
  %loadMem_40466d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 33
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5278 to i64*
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 1
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %5281 to i64*
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 5
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %5284 to i64*
  %5285 = load i64, i64* %RAX.i20
  %5286 = load i64, i64* %RCX.i21
  %5287 = add i64 %5286, 88
  %5288 = load i64, i64* %PC.i19
  %5289 = add i64 %5288, 4
  store i64 %5289, i64* %PC.i19
  %5290 = inttoptr i64 %5287 to i64*
  %5291 = load i64, i64* %5290
  %5292 = add i64 %5291, %5285
  store i64 %5292, i64* %RAX.i20, align 8
  %5293 = icmp ult i64 %5292, %5285
  %5294 = icmp ult i64 %5292, %5291
  %5295 = or i1 %5293, %5294
  %5296 = zext i1 %5295 to i8
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5296, i8* %5297, align 1
  %5298 = trunc i64 %5292 to i32
  %5299 = and i32 %5298, 255
  %5300 = call i32 @llvm.ctpop.i32(i32 %5299)
  %5301 = trunc i32 %5300 to i8
  %5302 = and i8 %5301, 1
  %5303 = xor i8 %5302, 1
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5303, i8* %5304, align 1
  %5305 = xor i64 %5291, %5285
  %5306 = xor i64 %5305, %5292
  %5307 = lshr i64 %5306, 4
  %5308 = trunc i64 %5307 to i8
  %5309 = and i8 %5308, 1
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5309, i8* %5310, align 1
  %5311 = icmp eq i64 %5292, 0
  %5312 = zext i1 %5311 to i8
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5312, i8* %5313, align 1
  %5314 = lshr i64 %5292, 63
  %5315 = trunc i64 %5314 to i8
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5315, i8* %5316, align 1
  %5317 = lshr i64 %5285, 63
  %5318 = lshr i64 %5291, 63
  %5319 = xor i64 %5314, %5317
  %5320 = xor i64 %5314, %5318
  %5321 = add i64 %5319, %5320
  %5322 = icmp eq i64 %5321, 2
  %5323 = zext i1 %5322 to i8
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5323, i8* %5324, align 1
  store %struct.Memory* %loadMem_40466d, %struct.Memory** %MEMORY
  %loadMem_404671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 33
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5327 to i64*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 1
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 5
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %RCX.i
  %5335 = add i64 %5334, 88
  %5336 = load i64, i64* %RAX.i18
  %5337 = load i64, i64* %PC.i17
  %5338 = add i64 %5337, 4
  store i64 %5338, i64* %PC.i17
  %5339 = inttoptr i64 %5335 to i64*
  store i64 %5336, i64* %5339
  store %struct.Memory* %loadMem_404671, %struct.Memory** %MEMORY
  %loadMem_404675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 1
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 15
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5348 to i64*
  %5349 = load i64, i64* %RBP.i16
  %5350 = sub i64 %5349, 152
  %5351 = load i64, i64* %PC.i14
  %5352 = add i64 %5351, 7
  store i64 %5352, i64* %PC.i14
  %5353 = inttoptr i64 %5350 to i64*
  %5354 = load i64, i64* %5353
  store i64 %5354, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_404675, %struct.Memory** %MEMORY
  %loadMem_40467c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 1
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RAX.i13
  %5362 = add i64 %5361, 24
  %5363 = load i64, i64* %PC.i12
  %5364 = add i64 %5363, 4
  store i64 %5364, i64* %PC.i12
  %5365 = inttoptr i64 %5362 to i64*
  %5366 = load i64, i64* %5365
  store i64 %5366, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_40467c, %struct.Memory** %MEMORY
  %loadMem_404680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 33
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5369 to i64*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 1
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 15
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5375 to i64*
  %5376 = load i64, i64* %RBP.i11
  %5377 = sub i64 %5376, 152
  %5378 = load i64, i64* %RAX.i
  %5379 = load i64, i64* %PC.i10
  %5380 = add i64 %5379, 7
  store i64 %5380, i64* %PC.i10
  %5381 = inttoptr i64 %5377 to i64*
  store i64 %5378, i64* %5381
  store %struct.Memory* %loadMem_404680, %struct.Memory** %MEMORY
  %loadMem_404687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5384 to i64*
  %5385 = load i64, i64* %PC.i9
  %5386 = add i64 %5385, -57
  %5387 = load i64, i64* %PC.i9
  %5388 = add i64 %5387, 5
  store i64 %5388, i64* %PC.i9
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5386, i64* %5389, align 8
  store %struct.Memory* %loadMem_404687, %struct.Memory** %MEMORY
  br label %block_.L_40464e

block_.L_40468c:                                  ; preds = %block_.L_40464e
  %loadMem_40468c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 33
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5392 to i64*
  %5393 = load i64, i64* %PC.i8
  %5394 = add i64 %5393, 5
  %5395 = load i64, i64* %PC.i8
  %5396 = add i64 %5395, 5
  store i64 %5396, i64* %PC.i8
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5394, i64* %5397, align 8
  store %struct.Memory* %loadMem_40468c, %struct.Memory** %MEMORY
  br label %block_.L_404691

block_.L_404691:                                  ; preds = %block_.L_40468c, %block_.L_4045f2
  %loadMem_404691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 33
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 13
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RSP.i
  %5405 = load i64, i64* %PC.i7
  %5406 = add i64 %5405, 4
  store i64 %5406, i64* %PC.i7
  %5407 = add i64 64, %5404
  store i64 %5407, i64* %RSP.i, align 8
  %5408 = icmp ult i64 %5407, %5404
  %5409 = icmp ult i64 %5407, 64
  %5410 = or i1 %5408, %5409
  %5411 = zext i1 %5410 to i8
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5411, i8* %5412, align 1
  %5413 = trunc i64 %5407 to i32
  %5414 = and i32 %5413, 255
  %5415 = call i32 @llvm.ctpop.i32(i32 %5414)
  %5416 = trunc i32 %5415 to i8
  %5417 = and i8 %5416, 1
  %5418 = xor i8 %5417, 1
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5418, i8* %5419, align 1
  %5420 = xor i64 64, %5404
  %5421 = xor i64 %5420, %5407
  %5422 = lshr i64 %5421, 4
  %5423 = trunc i64 %5422 to i8
  %5424 = and i8 %5423, 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5424, i8* %5425, align 1
  %5426 = icmp eq i64 %5407, 0
  %5427 = zext i1 %5426 to i8
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5427, i8* %5428, align 1
  %5429 = lshr i64 %5407, 63
  %5430 = trunc i64 %5429 to i8
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5430, i8* %5431, align 1
  %5432 = lshr i64 %5404, 63
  %5433 = xor i64 %5429, %5432
  %5434 = add i64 %5433, %5429
  %5435 = icmp eq i64 %5434, 2
  %5436 = zext i1 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5436, i8* %5437, align 1
  store %struct.Memory* %loadMem_404691, %struct.Memory** %MEMORY
  %loadMem_404695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 3
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %5443 to i64*
  %5444 = load i64, i64* %PC.i6
  %5445 = add i64 %5444, 1
  store i64 %5445, i64* %PC.i6
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5447 = load i64, i64* %5446, align 8
  %5448 = add i64 %5447, 8
  %5449 = inttoptr i64 %5447 to i64*
  %5450 = load i64, i64* %5449
  store i64 %5450, i64* %RBX.i, align 8
  store i64 %5448, i64* %5446, align 8
  store %struct.Memory* %loadMem_404695, %struct.Memory** %MEMORY
  %loadMem_404696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 29
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %R14.i = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %PC.i5
  %5458 = add i64 %5457, 2
  store i64 %5458, i64* %PC.i5
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5460 = load i64, i64* %5459, align 8
  %5461 = add i64 %5460, 8
  %5462 = inttoptr i64 %5460 to i64*
  %5463 = load i64, i64* %5462
  store i64 %5463, i64* %R14.i, align 8
  store i64 %5461, i64* %5459, align 8
  store %struct.Memory* %loadMem_404696, %struct.Memory** %MEMORY
  %loadMem_404698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 33
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5466 to i64*
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 31
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %R15.i = bitcast %union.anon* %5469 to i64*
  %5470 = load i64, i64* %PC.i4
  %5471 = add i64 %5470, 2
  store i64 %5471, i64* %PC.i4
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5473 = load i64, i64* %5472, align 8
  %5474 = add i64 %5473, 8
  %5475 = inttoptr i64 %5473 to i64*
  %5476 = load i64, i64* %5475
  store i64 %5476, i64* %R15.i, align 8
  store i64 %5474, i64* %5472, align 8
  store %struct.Memory* %loadMem_404698, %struct.Memory** %MEMORY
  %loadMem_40469a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 15
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %PC.i2
  %5484 = add i64 %5483, 1
  store i64 %5484, i64* %PC.i2
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5486 = load i64, i64* %5485, align 8
  %5487 = add i64 %5486, 8
  %5488 = inttoptr i64 %5486 to i64*
  %5489 = load i64, i64* %5488
  store i64 %5489, i64* %RBP.i3, align 8
  store i64 %5487, i64* %5485, align 8
  store %struct.Memory* %loadMem_40469a, %struct.Memory** %MEMORY
  %loadMem_40469b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %PC.i1
  %5494 = add i64 %5493, 1
  store i64 %5494, i64* %PC.i1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5497 = load i64, i64* %5496, align 8
  %5498 = inttoptr i64 %5497 to i64*
  %5499 = load i64, i64* %5498
  store i64 %5499, i64* %5495, align 8
  %5500 = add i64 %5497, 8
  store i64 %5500, i64* %5496, align 8
  store %struct.Memory* %loadMem_40469b, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40469b
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
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

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404102(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_40411f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404159(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_404159(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_40413a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404149(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404195(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_404174(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404183(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rcx__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_subq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = sub i64 %12, %13
  store i64 %16, i64* %RDX, align 8
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq___rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = add i64 %17, %12
  store i64 %18, i64* %RAX, align 8
  %19 = icmp ult i64 %18, %12
  %20 = icmp ult i64 %18, %17
  %21 = or i1 %19, %20
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = trunc i64 %18 to i32
  %25 = and i32 %24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %17, %12
  %32 = xor i64 %31, %18
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %18, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %12, 63
  %44 = lshr i64 %17, 63
  %45 = xor i64 %40, %43
  %46 = xor i64 %40, %44
  %47 = add i64 %45, %46
  %48 = icmp eq i64 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4041fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4041d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4041b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4041ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_404251(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40423a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4044bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4042d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_404308(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40431e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40436e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_setne__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = xor i64 255, %11
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
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

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4043dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4043f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x50__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x30__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x58__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq_MINUS0xb0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40429a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4045f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_404561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x58__rcx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x58__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40452f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq_0x50__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x50__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404545(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x50__rcx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x50__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40454a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4044d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4045f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq_0x58__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x58__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4045c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4045d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4045db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40456c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404691(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_404643(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_404602(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40468c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40464e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R14, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R15, align 8
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
