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

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7EmitterPosterior(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_435fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_435fc0, %struct.Memory** %MEMORY
  %loadMem_435fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1072 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1073 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1074 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1073
  %27 = load i64, i64* %PC.i1072
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1072
  store i64 %26, i64* %RBP.i1074, align 8
  store %struct.Memory* %loadMem_435fc1, %struct.Memory** %MEMORY
  %loadMem_435fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1070 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1071 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1071
  %36 = load i64, i64* %PC.i1070
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1070
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i1071, align 8
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
  store %struct.Memory* %loadMem_435fc4, %struct.Memory** %MEMORY
  %loadMem_435fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1067 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i1068 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1069 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1069
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i1068
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i1067
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i1067
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_435fc8, %struct.Memory** %MEMORY
  %loadMem_435fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i1064 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i1065 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i1066 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i1066
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i1065
  %95 = load i64, i64* %PC.i1064
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i1064
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_435fcb, %struct.Memory** %MEMORY
  %loadMem_435fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i1061 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDX.i1062 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i1063 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i1063
  %108 = sub i64 %107, 24
  %109 = load i64, i64* %RDX.i1062
  %110 = load i64, i64* %PC.i1061
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i1061
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_435fcf, %struct.Memory** %MEMORY
  %loadMem_435fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i1058 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RCX.i1059 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i1060 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i1060
  %123 = sub i64 %122, 32
  %124 = load i64, i64* %RCX.i1059
  %125 = load i64, i64* %PC.i1058
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i1058
  %127 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %127
  store %struct.Memory* %loadMem_435fd3, %struct.Memory** %MEMORY
  %loadMem_435fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i1055 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RBP.i1056 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 17
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %R8.i1057 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i1056
  %138 = sub i64 %137, 40
  %139 = load i64, i64* %R8.i1057
  %140 = load i64, i64* %PC.i1055
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i1055
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142
  store %struct.Memory* %loadMem_435fd7, %struct.Memory** %MEMORY
  %loadMem_435fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RCX.i1053 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i1054 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i1054
  %153 = sub i64 %152, 32
  %154 = load i64, i64* %PC.i1052
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i1052
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %RCX.i1053, align 8
  store %struct.Memory* %loadMem_435fdb, %struct.Memory** %MEMORY
  %loadMem_435fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i1050 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RCX.i1051 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RCX.i1051
  %165 = load i64, i64* %PC.i1050
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC.i1050
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167
  store i64 %168, i64* %RCX.i1051, align 8
  store %struct.Memory* %loadMem_435fdf, %struct.Memory** %MEMORY
  %loadMem_435fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i1048 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RCX.i1049 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RCX.i1049
  %176 = load i64, i64* %PC.i1048
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC.i1048
  %178 = inttoptr i64 %175 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %RCX.i1049, align 8
  store %struct.Memory* %loadMem_435fe2, %struct.Memory** %MEMORY
  %loadMem_435fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RCX.i1046 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RDI.i1047 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RCX.i1046
  %190 = add i64 %189, 16
  %191 = load i64, i64* %PC.i1045
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC.i1045
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RDI.i1047, align 8
  store %struct.Memory* %loadMem_435fe5, %struct.Memory** %MEMORY
  %loadMem_435fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %EDI.i1043 = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i1044 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i1044
  %206 = sub i64 %205, 52
  %207 = load i32, i32* %EDI.i1043
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC.i1042
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC.i1042
  %211 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %211
  store %struct.Memory* %loadMem_435fe8, %struct.Memory** %MEMORY
  %loadMem_435feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RDI.i1040 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i1041 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i1041
  %222 = sub i64 %221, 4
  %223 = load i64, i64* %PC.i1039
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC.i1039
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDI.i1040, align 8
  store %struct.Memory* %loadMem_435feb, %struct.Memory** %MEMORY
  %loadMem_435fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i1036 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 11
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %EDI.i1037 = bitcast %union.anon* %233 to i32*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 15
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RBP.i1038
  %238 = sub i64 %237, 44
  %239 = load i32, i32* %EDI.i1037
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %PC.i1036
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i1036
  %243 = inttoptr i64 %238 to i32*
  store i32 %239, i32* %243
  store %struct.Memory* %loadMem_435fee, %struct.Memory** %MEMORY
  br label %block_.L_435ff1

block_.L_435ff1:                                  ; preds = %block_.L_436384, %entry
  %loadMem_435ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i1035 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i1035
  %251 = sub i64 %250, 44
  %252 = load i64, i64* %PC.i1034
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC.i1034
  %254 = inttoptr i64 %251 to i32*
  %255 = load i32, i32* %254
  %256 = sub i32 %255, 1
  %257 = icmp ult i32 %255, 1
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %258, i8* %259, align 1
  %260 = and i32 %256, 255
  %261 = call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %264, i8* %265, align 1
  %266 = xor i32 %255, 1
  %267 = xor i32 %266, %256
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %270, i8* %271, align 1
  %272 = icmp eq i32 %256, 0
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %273, i8* %274, align 1
  %275 = lshr i32 %256, 31
  %276 = trunc i32 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %276, i8* %277, align 1
  %278 = lshr i32 %255, 31
  %279 = xor i32 %275, %278
  %280 = add i32 %279, %278
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %282, i8* %283, align 1
  store %struct.Memory* %loadMem_435ff1, %struct.Memory** %MEMORY
  %loadMem_435ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i1033 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %PC.i1033
  %288 = add i64 %287, 1452
  %289 = load i64, i64* %PC.i1033
  %290 = add i64 %289, 6
  %291 = load i64, i64* %PC.i1033
  %292 = add i64 %291, 6
  store i64 %292, i64* %PC.i1033
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %294 = load i8, i8* %293, align 1
  %295 = icmp ne i8 %294, 0
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %297 = load i8, i8* %296, align 1
  %298 = icmp ne i8 %297, 0
  %299 = xor i1 %295, %298
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %BRANCH_TAKEN, align 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %302 = select i1 %299, i64 %288, i64 %290
  store i64 %302, i64* %301, align 8
  store %struct.Memory* %loadMem_435ff5, %struct.Memory** %MEMORY
  %loadBr_435ff5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435ff5 = icmp eq i8 %loadBr_435ff5, 1
  br i1 %cmpBr_435ff5, label %block_.L_4365a1, label %block_435ffb

block_435ffb:                                     ; preds = %block_.L_435ff1
  %loadMem_435ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RAX.i1031 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i1032 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i1032
  %313 = sub i64 %312, 24
  %314 = load i64, i64* %PC.i1030
  %315 = add i64 %314, 4
  store i64 %315, i64* %PC.i1030
  %316 = inttoptr i64 %313 to i64*
  %317 = load i64, i64* %316
  store i64 %317, i64* %RAX.i1031, align 8
  store %struct.Memory* %loadMem_435ffb, %struct.Memory** %MEMORY
  %loadMem_435fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RAX.i1029 = bitcast %union.anon* %323 to i64*
  %324 = load i64, i64* %RAX.i1029
  %325 = load i64, i64* %PC.i1028
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC.i1028
  %327 = inttoptr i64 %324 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %RAX.i1029, align 8
  store %struct.Memory* %loadMem_435fff, %struct.Memory** %MEMORY
  %loadMem_436002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RCX.i1026 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i1027 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i1027
  %339 = sub i64 %338, 44
  %340 = load i64, i64* %PC.i1025
  %341 = add i64 %340, 3
  store i64 %341, i64* %PC.i1025
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RCX.i1026, align 8
  store %struct.Memory* %loadMem_436002, %struct.Memory** %MEMORY
  %loadMem_436005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RCX.i1024 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RCX.i1024
  %352 = load i64, i64* %PC.i1023
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC.i1023
  %354 = trunc i64 %351 to i32
  %355 = sub i32 %354, 1
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RCX.i1024, align 8
  %357 = icmp ult i32 %354, 1
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %358, i8* %359, align 1
  %360 = and i32 %355, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1
  %366 = xor i64 1, %351
  %367 = trunc i64 %366 to i32
  %368 = xor i32 %367, %355
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %371, i8* %372, align 1
  %373 = icmp eq i32 %355, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1
  %376 = lshr i32 %355, 31
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1
  %379 = lshr i32 %354, 31
  %380 = xor i32 %376, %379
  %381 = add i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1
  store %struct.Memory* %loadMem_436005, %struct.Memory** %MEMORY
  %loadMem_436008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %ECX.i1021 = bitcast %union.anon* %390 to i32*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RDX.i1022 = bitcast %union.anon* %393 to i64*
  %394 = load i32, i32* %ECX.i1021
  %395 = zext i32 %394 to i64
  %396 = load i64, i64* %PC.i1020
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC.i1020
  %398 = shl i64 %395, 32
  %399 = ashr exact i64 %398, 32
  store i64 %399, i64* %RDX.i1022, align 8
  store %struct.Memory* %loadMem_436008, %struct.Memory** %MEMORY
  %loadMem_43600b = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RAX.i1018 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 7
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RDX.i1019 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RAX.i1018
  %410 = load i64, i64* %RDX.i1019
  %411 = mul i64 %410, 8
  %412 = add i64 %411, %409
  %413 = load i64, i64* %PC.i1017
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC.i1017
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415
  store i64 %416, i64* %RAX.i1018, align 8
  store %struct.Memory* %loadMem_43600b, %struct.Memory** %MEMORY
  %loadMem_43600f = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RAX.i1015 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RCX.i1016 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RAX.i1015
  %427 = add i64 %426, 8
  %428 = load i64, i64* %PC.i1014
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i1014
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RCX.i1016, align 8
  store %struct.Memory* %loadMem_43600f, %struct.Memory** %MEMORY
  %loadMem_436012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RAX.i1012 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i1013 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RBP.i1013
  %443 = sub i64 %442, 16
  %444 = load i64, i64* %PC.i1011
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC.i1011
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446
  store i64 %447, i64* %RAX.i1012, align 8
  store %struct.Memory* %loadMem_436012, %struct.Memory** %MEMORY
  %loadMem_436016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RAX.i1009 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RCX.i1010 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RCX.i1010
  %458 = load i64, i64* %RAX.i1009
  %459 = add i64 %458, 356
  %460 = load i64, i64* %PC.i1008
  %461 = add i64 %460, 6
  store i64 %461, i64* %PC.i1008
  %462 = trunc i64 %457 to i32
  %463 = inttoptr i64 %459 to i32*
  %464 = load i32, i32* %463
  %465 = add i32 %464, %462
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RCX.i1010, align 8
  %467 = icmp ult i32 %465, %462
  %468 = icmp ult i32 %465, %464
  %469 = or i1 %467, %468
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %470, i8* %471, align 1
  %472 = and i32 %465, 255
  %473 = call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %476, i8* %477, align 1
  %478 = xor i32 %464, %462
  %479 = xor i32 %478, %465
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1
  %484 = icmp eq i32 %465, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %465, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %462, 31
  %491 = lshr i32 %464, 31
  %492 = xor i32 %487, %490
  %493 = xor i32 %487, %491
  %494 = add i32 %492, %493
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1
  store %struct.Memory* %loadMem_436016, %struct.Memory** %MEMORY
  %loadMem_43601c = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i1006 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i1007 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i1007
  %508 = sub i64 %507, 32
  %509 = load i64, i64* %PC.i1005
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i1005
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RAX.i1006, align 8
  store %struct.Memory* %loadMem_43601c, %struct.Memory** %MEMORY
  %loadMem_436020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RAX.i1004 = bitcast %union.anon* %518 to i64*
  %519 = load i64, i64* %RAX.i1004
  %520 = load i64, i64* %PC.i1003
  %521 = add i64 %520, 3
  store i64 %521, i64* %PC.i1003
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522
  store i64 %523, i64* %RAX.i1004, align 8
  store %struct.Memory* %loadMem_436020, %struct.Memory** %MEMORY
  %loadMem_436023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 7
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RDX.i1001 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i1002 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i1002
  %534 = sub i64 %533, 44
  %535 = load i64, i64* %PC.i1000
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i1000
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537
  %539 = sext i32 %538 to i64
  store i64 %539, i64* %RDX.i1001, align 8
  store %struct.Memory* %loadMem_436023, %struct.Memory** %MEMORY
  %loadMem_436027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RAX.i998 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 7
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RDX.i999 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RAX.i998
  %550 = load i64, i64* %RDX.i999
  %551 = mul i64 %550, 8
  %552 = add i64 %551, %549
  %553 = load i64, i64* %PC.i997
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC.i997
  %555 = inttoptr i64 %552 to i64*
  %556 = load i64, i64* %555
  store i64 %556, i64* %RAX.i998, align 8
  store %struct.Memory* %loadMem_436027, %struct.Memory** %MEMORY
  %loadMem_43602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i995 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RCX.i996
  %567 = load i64, i64* %RAX.i995
  %568 = add i64 %567, 8
  %569 = load i64, i64* %PC.i994
  %570 = add i64 %569, 3
  store i64 %570, i64* %PC.i994
  %571 = trunc i64 %566 to i32
  %572 = inttoptr i64 %568 to i32*
  %573 = load i32, i32* %572
  %574 = add i32 %573, %571
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RCX.i996, align 8
  %576 = icmp ult i32 %574, %571
  %577 = icmp ult i32 %574, %573
  %578 = or i1 %576, %577
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %579, i8* %580, align 1
  %581 = and i32 %574, 255
  %582 = call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %585, i8* %586, align 1
  %587 = xor i32 %573, %571
  %588 = xor i32 %587, %574
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %591, i8* %592, align 1
  %593 = icmp eq i32 %574, 0
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %594, i8* %595, align 1
  %596 = lshr i32 %574, 31
  %597 = trunc i32 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %597, i8* %598, align 1
  %599 = lshr i32 %571, 31
  %600 = lshr i32 %573, 31
  %601 = xor i32 %596, %599
  %602 = xor i32 %596, %600
  %603 = add i32 %601, %602
  %604 = icmp eq i32 %603, 2
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %606, align 1
  store %struct.Memory* %loadMem_43602b, %struct.Memory** %MEMORY
  %loadMem_43602e = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RCX.i992 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 15
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RBP.i993 = bitcast %union.anon* %615 to i64*
  %616 = load i64, i64* %RCX.i992
  %617 = load i64, i64* %RBP.i993
  %618 = sub i64 %617, 52
  %619 = load i64, i64* %PC.i991
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC.i991
  %621 = trunc i64 %616 to i32
  %622 = inttoptr i64 %618 to i32*
  %623 = load i32, i32* %622
  %624 = sub i32 %621, %623
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RCX.i992, align 8
  %626 = icmp ult i32 %621, %623
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %627, i8* %628, align 1
  %629 = and i32 %624, 255
  %630 = call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %633, i8* %634, align 1
  %635 = xor i32 %623, %621
  %636 = xor i32 %635, %624
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %639, i8* %640, align 1
  %641 = icmp eq i32 %624, 0
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %642, i8* %643, align 1
  %644 = lshr i32 %624, 31
  %645 = trunc i32 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %645, i8* %646, align 1
  %647 = lshr i32 %621, 31
  %648 = lshr i32 %623, 31
  %649 = xor i32 %648, %647
  %650 = xor i32 %644, %647
  %651 = add i32 %650, %649
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %653, i8* %654, align 1
  store %struct.Memory* %loadMem_43602e, %struct.Memory** %MEMORY
  %loadMem_436031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i989 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i990 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i990
  %665 = sub i64 %664, 40
  %666 = load i64, i64* %PC.i988
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i988
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RAX.i989, align 8
  store %struct.Memory* %loadMem_436031, %struct.Memory** %MEMORY
  %loadMem_436035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i987 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RAX.i987
  %677 = load i64, i64* %PC.i986
  %678 = add i64 %677, 3
  store i64 %678, i64* %PC.i986
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679
  store i64 %680, i64* %RAX.i987, align 8
  store %struct.Memory* %loadMem_436035, %struct.Memory** %MEMORY
  %loadMem_436038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 7
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RDX.i984 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 15
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RBP.i985 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RBP.i985
  %691 = sub i64 %690, 44
  %692 = load i64, i64* %PC.i983
  %693 = add i64 %692, 4
  store i64 %693, i64* %PC.i983
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RDX.i984, align 8
  store %struct.Memory* %loadMem_436038, %struct.Memory** %MEMORY
  %loadMem_43603c = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 7
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RDX.i982 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RAX.i981
  %707 = load i64, i64* %RDX.i982
  %708 = mul i64 %707, 8
  %709 = add i64 %708, %706
  %710 = load i64, i64* %PC.i980
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i980
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712
  store i64 %713, i64* %RAX.i981, align 8
  store %struct.Memory* %loadMem_43603c, %struct.Memory** %MEMORY
  %loadMem_436040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 5
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %ECX.i978 = bitcast %union.anon* %719 to i32*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i979 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RAX.i979
  %724 = add i64 %723, 8
  %725 = load i32, i32* %ECX.i978
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %PC.i977
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC.i977
  %729 = inttoptr i64 %724 to i32*
  store i32 %725, i32* %729
  store %struct.Memory* %loadMem_436040, %struct.Memory** %MEMORY
  %loadMem_436043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 15
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RBP.i976 = bitcast %union.anon* %738 to i64*
  %739 = load i64, i64* %RBP.i976
  %740 = sub i64 %739, 24
  %741 = load i64, i64* %PC.i974
  %742 = add i64 %741, 4
  store i64 %742, i64* %PC.i974
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743
  store i64 %744, i64* %RAX.i975, align 8
  store %struct.Memory* %loadMem_436043, %struct.Memory** %MEMORY
  %loadMem_436047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 1
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RAX.i973 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RAX.i973
  %752 = load i64, i64* %PC.i972
  %753 = add i64 %752, 3
  store i64 %753, i64* %PC.i972
  %754 = inttoptr i64 %751 to i64*
  %755 = load i64, i64* %754
  store i64 %755, i64* %RAX.i973, align 8
  store %struct.Memory* %loadMem_436047, %struct.Memory** %MEMORY
  %loadMem_43604a = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 5
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RCX.i970 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 15
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RBP.i971 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RBP.i971
  %766 = sub i64 %765, 44
  %767 = load i64, i64* %PC.i969
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i969
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RCX.i970, align 8
  store %struct.Memory* %loadMem_43604a, %struct.Memory** %MEMORY
  %loadMem_43604d = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 5
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RCX.i968 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RCX.i968
  %779 = load i64, i64* %PC.i967
  %780 = add i64 %779, 3
  store i64 %780, i64* %PC.i967
  %781 = trunc i64 %778 to i32
  %782 = sub i32 %781, 1
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RCX.i968, align 8
  %784 = icmp ult i32 %781, 1
  %785 = zext i1 %784 to i8
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %785, i8* %786, align 1
  %787 = and i32 %782, 255
  %788 = call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %791, i8* %792, align 1
  %793 = xor i64 1, %778
  %794 = trunc i64 %793 to i32
  %795 = xor i32 %794, %782
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %798, i8* %799, align 1
  %800 = icmp eq i32 %782, 0
  %801 = zext i1 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %801, i8* %802, align 1
  %803 = lshr i32 %782, 31
  %804 = trunc i32 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %804, i8* %805, align 1
  %806 = lshr i32 %781, 31
  %807 = xor i32 %803, %806
  %808 = add i32 %807, %806
  %809 = icmp eq i32 %808, 2
  %810 = zext i1 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %810, i8* %811, align 1
  store %struct.Memory* %loadMem_43604d, %struct.Memory** %MEMORY
  %loadMem_436050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %ECX.i965 = bitcast %union.anon* %817 to i32*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 7
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RDX.i966 = bitcast %union.anon* %820 to i64*
  %821 = load i32, i32* %ECX.i965
  %822 = zext i32 %821 to i64
  %823 = load i64, i64* %PC.i964
  %824 = add i64 %823, 3
  store i64 %824, i64* %PC.i964
  %825 = shl i64 %822, 32
  %826 = ashr exact i64 %825, 32
  store i64 %826, i64* %RDX.i966, align 8
  store %struct.Memory* %loadMem_436050, %struct.Memory** %MEMORY
  %loadMem_436053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RAX.i962 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 7
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RDX.i963 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RAX.i962
  %837 = load i64, i64* %RDX.i963
  %838 = mul i64 %837, 8
  %839 = add i64 %838, %836
  %840 = load i64, i64* %PC.i961
  %841 = add i64 %840, 4
  store i64 %841, i64* %PC.i961
  %842 = inttoptr i64 %839 to i64*
  %843 = load i64, i64* %842
  store i64 %843, i64* %RAX.i962, align 8
  store %struct.Memory* %loadMem_436053, %struct.Memory** %MEMORY
  %loadMem_436057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i959 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 5
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RCX.i960 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RAX.i959
  %854 = add i64 %853, 12
  %855 = load i64, i64* %PC.i958
  %856 = add i64 %855, 3
  store i64 %856, i64* %PC.i958
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RCX.i960, align 8
  store %struct.Memory* %loadMem_436057, %struct.Memory** %MEMORY
  %loadMem_43605a = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i956 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i957
  %870 = sub i64 %869, 16
  %871 = load i64, i64* %PC.i955
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i955
  %873 = inttoptr i64 %870 to i64*
  %874 = load i64, i64* %873
  store i64 %874, i64* %RAX.i956, align 8
  store %struct.Memory* %loadMem_43605a, %struct.Memory** %MEMORY
  %loadMem_43605e = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 1
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 5
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RCX.i954 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RCX.i954
  %885 = load i64, i64* %RAX.i953
  %886 = add i64 %885, 364
  %887 = load i64, i64* %PC.i952
  %888 = add i64 %887, 6
  store i64 %888, i64* %PC.i952
  %889 = trunc i64 %884 to i32
  %890 = inttoptr i64 %886 to i32*
  %891 = load i32, i32* %890
  %892 = add i32 %891, %889
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RCX.i954, align 8
  %894 = icmp ult i32 %892, %889
  %895 = icmp ult i32 %892, %891
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %897, i8* %898, align 1
  %899 = and i32 %892, 255
  %900 = call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %903, i8* %904, align 1
  %905 = xor i32 %891, %889
  %906 = xor i32 %905, %892
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %909, i8* %910, align 1
  %911 = icmp eq i32 %892, 0
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %912, i8* %913, align 1
  %914 = lshr i32 %892, 31
  %915 = trunc i32 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %915, i8* %916, align 1
  %917 = lshr i32 %889, 31
  %918 = lshr i32 %891, 31
  %919 = xor i32 %914, %917
  %920 = xor i32 %914, %918
  %921 = add i32 %919, %920
  %922 = icmp eq i32 %921, 2
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %923, i8* %924, align 1
  store %struct.Memory* %loadMem_43605e, %struct.Memory** %MEMORY
  %loadMem_436064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 15
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RBP.i951
  %935 = sub i64 %934, 32
  %936 = load i64, i64* %PC.i949
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC.i949
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938
  store i64 %939, i64* %RAX.i950, align 8
  store %struct.Memory* %loadMem_436064, %struct.Memory** %MEMORY
  %loadMem_436068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i948 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RAX.i948
  %947 = load i64, i64* %PC.i947
  %948 = add i64 %947, 3
  store i64 %948, i64* %PC.i947
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949
  store i64 %950, i64* %RAX.i948, align 8
  store %struct.Memory* %loadMem_436068, %struct.Memory** %MEMORY
  %loadMem_43606b = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 7
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RDX.i945 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 15
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %RBP.i946
  %961 = sub i64 %960, 44
  %962 = load i64, i64* %PC.i944
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i944
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RDX.i945, align 8
  store %struct.Memory* %loadMem_43606b, %struct.Memory** %MEMORY
  %loadMem_43606f = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RAX.i942 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 7
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RDX.i943 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RAX.i942
  %977 = load i64, i64* %RDX.i943
  %978 = mul i64 %977, 8
  %979 = add i64 %978, %976
  %980 = load i64, i64* %PC.i941
  %981 = add i64 %980, 4
  store i64 %981, i64* %PC.i941
  %982 = inttoptr i64 %979 to i64*
  %983 = load i64, i64* %982
  store i64 %983, i64* %RAX.i942, align 8
  store %struct.Memory* %loadMem_43606f, %struct.Memory** %MEMORY
  %loadMem_436073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RAX.i939 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 5
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RCX.i940 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RCX.i940
  %994 = load i64, i64* %RAX.i939
  %995 = add i64 %994, 12
  %996 = load i64, i64* %PC.i938
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC.i938
  %998 = trunc i64 %993 to i32
  %999 = inttoptr i64 %995 to i32*
  %1000 = load i32, i32* %999
  %1001 = add i32 %1000, %998
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i940, align 8
  %1003 = icmp ult i32 %1001, %998
  %1004 = icmp ult i32 %1001, %1000
  %1005 = or i1 %1003, %1004
  %1006 = zext i1 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1006, i8* %1007, align 1
  %1008 = and i32 %1001, 255
  %1009 = call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1012, i8* %1013, align 1
  %1014 = xor i32 %1000, %998
  %1015 = xor i32 %1014, %1001
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1018, i8* %1019, align 1
  %1020 = icmp eq i32 %1001, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1
  %1023 = lshr i32 %1001, 31
  %1024 = trunc i32 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1024, i8* %1025, align 1
  %1026 = lshr i32 %998, 31
  %1027 = lshr i32 %1000, 31
  %1028 = xor i32 %1023, %1026
  %1029 = xor i32 %1023, %1027
  %1030 = add i32 %1028, %1029
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1032, i8* %1033, align 1
  store %struct.Memory* %loadMem_436073, %struct.Memory** %MEMORY
  %loadMem_436076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 5
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RCX.i936 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 15
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RCX.i936
  %1044 = load i64, i64* %RBP.i937
  %1045 = sub i64 %1044, 52
  %1046 = load i64, i64* %PC.i935
  %1047 = add i64 %1046, 3
  store i64 %1047, i64* %PC.i935
  %1048 = trunc i64 %1043 to i32
  %1049 = inttoptr i64 %1045 to i32*
  %1050 = load i32, i32* %1049
  %1051 = sub i32 %1048, %1050
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RCX.i936, align 8
  %1053 = icmp ult i32 %1048, %1050
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1054, i8* %1055, align 1
  %1056 = and i32 %1051, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1
  %1062 = xor i32 %1050, %1048
  %1063 = xor i32 %1062, %1051
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1066, i8* %1067, align 1
  %1068 = icmp eq i32 %1051, 0
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1069, i8* %1070, align 1
  %1071 = lshr i32 %1051, 31
  %1072 = trunc i32 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1072, i8* %1073, align 1
  %1074 = lshr i32 %1048, 31
  %1075 = lshr i32 %1050, 31
  %1076 = xor i32 %1075, %1074
  %1077 = xor i32 %1071, %1074
  %1078 = add i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1080, i8* %1081, align 1
  store %struct.Memory* %loadMem_436076, %struct.Memory** %MEMORY
  %loadMem_436079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RAX.i933 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 15
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %RBP.i934
  %1092 = sub i64 %1091, 40
  %1093 = load i64, i64* %PC.i932
  %1094 = add i64 %1093, 4
  store i64 %1094, i64* %PC.i932
  %1095 = inttoptr i64 %1092 to i64*
  %1096 = load i64, i64* %1095
  store i64 %1096, i64* %RAX.i933, align 8
  store %struct.Memory* %loadMem_436079, %struct.Memory** %MEMORY
  %loadMem_43607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %RAX.i931
  %1104 = load i64, i64* %PC.i930
  %1105 = add i64 %1104, 3
  store i64 %1105, i64* %PC.i930
  %1106 = inttoptr i64 %1103 to i64*
  %1107 = load i64, i64* %1106
  store i64 %1107, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_43607d, %struct.Memory** %MEMORY
  %loadMem_436080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 7
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RDX.i928 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 15
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RBP.i929
  %1118 = sub i64 %1117, 44
  %1119 = load i64, i64* %PC.i927
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i927
  %1121 = inttoptr i64 %1118 to i32*
  %1122 = load i32, i32* %1121
  %1123 = sext i32 %1122 to i64
  store i64 %1123, i64* %RDX.i928, align 8
  store %struct.Memory* %loadMem_436080, %struct.Memory** %MEMORY
  %loadMem_436084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RAX.i925 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 7
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RAX.i925
  %1134 = load i64, i64* %RDX.i926
  %1135 = mul i64 %1134, 8
  %1136 = add i64 %1135, %1133
  %1137 = load i64, i64* %PC.i924
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC.i924
  %1139 = inttoptr i64 %1136 to i64*
  %1140 = load i64, i64* %1139
  store i64 %1140, i64* %RAX.i925, align 8
  store %struct.Memory* %loadMem_436084, %struct.Memory** %MEMORY
  %loadMem_436088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 5
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %ECX.i922 = bitcast %union.anon* %1146 to i32*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 1
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RAX.i923 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RAX.i923
  %1151 = add i64 %1150, 12
  %1152 = load i32, i32* %ECX.i922
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC.i921
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i921
  %1156 = inttoptr i64 %1151 to i32*
  store i32 %1152, i32* %1156
  store %struct.Memory* %loadMem_436088, %struct.Memory** %MEMORY
  %loadMem_43608b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i919 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 15
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RBP.i920
  %1167 = sub i64 %1166, 24
  %1168 = load i64, i64* %PC.i918
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC.i918
  %1170 = inttoptr i64 %1167 to i64*
  %1171 = load i64, i64* %1170
  store i64 %1171, i64* %RAX.i919, align 8
  store %struct.Memory* %loadMem_43608b, %struct.Memory** %MEMORY
  %loadMem_43608f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 1
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RAX.i917 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RAX.i917
  %1179 = load i64, i64* %PC.i916
  %1180 = add i64 %1179, 3
  store i64 %1180, i64* %PC.i916
  %1181 = inttoptr i64 %1178 to i64*
  %1182 = load i64, i64* %1181
  store i64 %1182, i64* %RAX.i917, align 8
  store %struct.Memory* %loadMem_43608f, %struct.Memory** %MEMORY
  %loadMem_436092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 5
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RCX.i914 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i915
  %1193 = sub i64 %1192, 44
  %1194 = load i64, i64* %PC.i913
  %1195 = add i64 %1194, 3
  store i64 %1195, i64* %PC.i913
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RCX.i914, align 8
  store %struct.Memory* %loadMem_436092, %struct.Memory** %MEMORY
  %loadMem_436095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 5
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RCX.i912 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RCX.i912
  %1206 = load i64, i64* %PC.i911
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %PC.i911
  %1208 = trunc i64 %1205 to i32
  %1209 = sub i32 %1208, 1
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RCX.i912, align 8
  %1211 = icmp ult i32 %1208, 1
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1212, i8* %1213, align 1
  %1214 = and i32 %1209, 255
  %1215 = call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1218, i8* %1219, align 1
  %1220 = xor i64 1, %1205
  %1221 = trunc i64 %1220 to i32
  %1222 = xor i32 %1221, %1209
  %1223 = lshr i32 %1222, 4
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1225, i8* %1226, align 1
  %1227 = icmp eq i32 %1209, 0
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1228, i8* %1229, align 1
  %1230 = lshr i32 %1209, 31
  %1231 = trunc i32 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i32 %1208, 31
  %1234 = xor i32 %1230, %1233
  %1235 = add i32 %1234, %1233
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1237, i8* %1238, align 1
  store %struct.Memory* %loadMem_436095, %struct.Memory** %MEMORY
  %loadMem_436098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 5
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %ECX.i909 = bitcast %union.anon* %1244 to i32*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 7
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RDX.i910 = bitcast %union.anon* %1247 to i64*
  %1248 = load i32, i32* %ECX.i909
  %1249 = zext i32 %1248 to i64
  %1250 = load i64, i64* %PC.i908
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %PC.i908
  %1252 = shl i64 %1249, 32
  %1253 = ashr exact i64 %1252, 32
  store i64 %1253, i64* %RDX.i910, align 8
  store %struct.Memory* %loadMem_436098, %struct.Memory** %MEMORY
  %loadMem_43609b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 7
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RDX.i907 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RAX.i906
  %1264 = load i64, i64* %RDX.i907
  %1265 = mul i64 %1264, 8
  %1266 = add i64 %1265, %1263
  %1267 = load i64, i64* %PC.i905
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC.i905
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269
  store i64 %1270, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_43609b, %struct.Memory** %MEMORY
  %loadMem_43609f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RCX.i904 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RAX.i903
  %1281 = add i64 %1280, 16
  %1282 = load i64, i64* %PC.i902
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC.i902
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i904, align 8
  store %struct.Memory* %loadMem_43609f, %struct.Memory** %MEMORY
  %loadMem_4360a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 15
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RBP.i901
  %1297 = sub i64 %1296, 16
  %1298 = load i64, i64* %PC.i899
  %1299 = add i64 %1298, 4
  store i64 %1299, i64* %PC.i899
  %1300 = inttoptr i64 %1297 to i64*
  %1301 = load i64, i64* %1300
  store i64 %1301, i64* %RAX.i900, align 8
  store %struct.Memory* %loadMem_4360a2, %struct.Memory** %MEMORY
  %loadMem_4360a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 1
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 5
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %RCX.i898
  %1312 = load i64, i64* %RAX.i897
  %1313 = add i64 %1312, 340
  %1314 = load i64, i64* %PC.i896
  %1315 = add i64 %1314, 6
  store i64 %1315, i64* %PC.i896
  %1316 = trunc i64 %1311 to i32
  %1317 = inttoptr i64 %1313 to i32*
  %1318 = load i32, i32* %1317
  %1319 = add i32 %1318, %1316
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RCX.i898, align 8
  %1321 = icmp ult i32 %1319, %1316
  %1322 = icmp ult i32 %1319, %1318
  %1323 = or i1 %1321, %1322
  %1324 = zext i1 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1324, i8* %1325, align 1
  %1326 = and i32 %1319, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1331, align 1
  %1332 = xor i32 %1318, %1316
  %1333 = xor i32 %1332, %1319
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1336, i8* %1337, align 1
  %1338 = icmp eq i32 %1319, 0
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1339, i8* %1340, align 1
  %1341 = lshr i32 %1319, 31
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1342, i8* %1343, align 1
  %1344 = lshr i32 %1316, 31
  %1345 = lshr i32 %1318, 31
  %1346 = xor i32 %1341, %1344
  %1347 = xor i32 %1341, %1345
  %1348 = add i32 %1346, %1347
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1350, i8* %1351, align 1
  store %struct.Memory* %loadMem_4360a6, %struct.Memory** %MEMORY
  %loadMem_4360ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i895
  %1362 = sub i64 %1361, 32
  %1363 = load i64, i64* %PC.i893
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i893
  %1365 = inttoptr i64 %1362 to i64*
  %1366 = load i64, i64* %1365
  store i64 %1366, i64* %RAX.i894, align 8
  store %struct.Memory* %loadMem_4360ac, %struct.Memory** %MEMORY
  %loadMem_4360b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 1
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RAX.i892
  %1374 = load i64, i64* %PC.i891
  %1375 = add i64 %1374, 3
  store i64 %1375, i64* %PC.i891
  %1376 = inttoptr i64 %1373 to i64*
  %1377 = load i64, i64* %1376
  store i64 %1377, i64* %RAX.i892, align 8
  store %struct.Memory* %loadMem_4360b0, %struct.Memory** %MEMORY
  %loadMem_4360b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 7
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RDX.i889 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i890
  %1388 = sub i64 %1387, 44
  %1389 = load i64, i64* %PC.i888
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC.i888
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RDX.i889, align 8
  store %struct.Memory* %loadMem_4360b3, %struct.Memory** %MEMORY
  %loadMem_4360b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 7
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RDX.i887 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RAX.i886
  %1404 = load i64, i64* %RDX.i887
  %1405 = mul i64 %1404, 8
  %1406 = add i64 %1405, %1403
  %1407 = load i64, i64* %PC.i885
  %1408 = add i64 %1407, 4
  store i64 %1408, i64* %PC.i885
  %1409 = inttoptr i64 %1406 to i64*
  %1410 = load i64, i64* %1409
  store i64 %1410, i64* %RAX.i886, align 8
  store %struct.Memory* %loadMem_4360b7, %struct.Memory** %MEMORY
  %loadMem_4360bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 1
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 5
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RCX.i884 = bitcast %union.anon* %1419 to i64*
  %1420 = load i64, i64* %RCX.i884
  %1421 = load i64, i64* %RAX.i883
  %1422 = add i64 %1421, 16
  %1423 = load i64, i64* %PC.i882
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i882
  %1425 = trunc i64 %1420 to i32
  %1426 = inttoptr i64 %1422 to i32*
  %1427 = load i32, i32* %1426
  %1428 = add i32 %1427, %1425
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RCX.i884, align 8
  %1430 = icmp ult i32 %1428, %1425
  %1431 = icmp ult i32 %1428, %1427
  %1432 = or i1 %1430, %1431
  %1433 = zext i1 %1432 to i8
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1433, i8* %1434, align 1
  %1435 = and i32 %1428, 255
  %1436 = call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1439, i8* %1440, align 1
  %1441 = xor i32 %1427, %1425
  %1442 = xor i32 %1441, %1428
  %1443 = lshr i32 %1442, 4
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1445, i8* %1446, align 1
  %1447 = icmp eq i32 %1428, 0
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1448, i8* %1449, align 1
  %1450 = lshr i32 %1428, 31
  %1451 = trunc i32 %1450 to i8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1451, i8* %1452, align 1
  %1453 = lshr i32 %1425, 31
  %1454 = lshr i32 %1427, 31
  %1455 = xor i32 %1450, %1453
  %1456 = xor i32 %1450, %1454
  %1457 = add i32 %1455, %1456
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1459, i8* %1460, align 1
  store %struct.Memory* %loadMem_4360bb, %struct.Memory** %MEMORY
  %loadMem_4360be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 5
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 15
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RCX.i880
  %1471 = load i64, i64* %RBP.i881
  %1472 = sub i64 %1471, 52
  %1473 = load i64, i64* %PC.i879
  %1474 = add i64 %1473, 3
  store i64 %1474, i64* %PC.i879
  %1475 = trunc i64 %1470 to i32
  %1476 = inttoptr i64 %1472 to i32*
  %1477 = load i32, i32* %1476
  %1478 = sub i32 %1475, %1477
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RCX.i880, align 8
  %1480 = icmp ult i32 %1475, %1477
  %1481 = zext i1 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1481, i8* %1482, align 1
  %1483 = and i32 %1478, 255
  %1484 = call i32 @llvm.ctpop.i32(i32 %1483)
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = xor i8 %1486, 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1487, i8* %1488, align 1
  %1489 = xor i32 %1477, %1475
  %1490 = xor i32 %1489, %1478
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1493, i8* %1494, align 1
  %1495 = icmp eq i32 %1478, 0
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1496, i8* %1497, align 1
  %1498 = lshr i32 %1478, 31
  %1499 = trunc i32 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1499, i8* %1500, align 1
  %1501 = lshr i32 %1475, 31
  %1502 = lshr i32 %1477, 31
  %1503 = xor i32 %1502, %1501
  %1504 = xor i32 %1498, %1501
  %1505 = add i32 %1504, %1503
  %1506 = icmp eq i32 %1505, 2
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1507, i8* %1508, align 1
  store %struct.Memory* %loadMem_4360be, %struct.Memory** %MEMORY
  %loadMem_4360c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 1
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 15
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %RBP.i878
  %1519 = sub i64 %1518, 40
  %1520 = load i64, i64* %PC.i876
  %1521 = add i64 %1520, 4
  store i64 %1521, i64* %PC.i876
  %1522 = inttoptr i64 %1519 to i64*
  %1523 = load i64, i64* %1522
  store i64 %1523, i64* %RAX.i877, align 8
  store %struct.Memory* %loadMem_4360c1, %struct.Memory** %MEMORY
  %loadMem_4360c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 1
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %RAX.i875
  %1531 = load i64, i64* %PC.i874
  %1532 = add i64 %1531, 3
  store i64 %1532, i64* %PC.i874
  %1533 = inttoptr i64 %1530 to i64*
  %1534 = load i64, i64* %1533
  store i64 %1534, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_4360c5, %struct.Memory** %MEMORY
  %loadMem_4360c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 7
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 15
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %RBP.i873
  %1545 = sub i64 %1544, 44
  %1546 = load i64, i64* %PC.i871
  %1547 = add i64 %1546, 4
  store i64 %1547, i64* %PC.i871
  %1548 = inttoptr i64 %1545 to i32*
  %1549 = load i32, i32* %1548
  %1550 = sext i32 %1549 to i64
  store i64 %1550, i64* %RDX.i872, align 8
  store %struct.Memory* %loadMem_4360c8, %struct.Memory** %MEMORY
  %loadMem_4360cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 33
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 1
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 7
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RDX.i870 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %RAX.i869
  %1561 = load i64, i64* %RDX.i870
  %1562 = mul i64 %1561, 8
  %1563 = add i64 %1562, %1560
  %1564 = load i64, i64* %PC.i868
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %PC.i868
  %1566 = inttoptr i64 %1563 to i64*
  %1567 = load i64, i64* %1566
  store i64 %1567, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_4360cc, %struct.Memory** %MEMORY
  %loadMem_4360d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 5
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1573 to i32*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %RAX.i867
  %1578 = add i64 %1577, 16
  %1579 = load i32, i32* %ECX.i
  %1580 = zext i32 %1579 to i64
  %1581 = load i64, i64* %PC.i866
  %1582 = add i64 %1581, 3
  store i64 %1582, i64* %PC.i866
  %1583 = inttoptr i64 %1578 to i32*
  store i32 %1579, i32* %1583
  store %struct.Memory* %loadMem_4360d0, %struct.Memory** %MEMORY
  %loadMem_4360d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i865
  %1594 = sub i64 %1593, 40
  %1595 = load i64, i64* %PC.i863
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i863
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597
  store i64 %1598, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_4360d3, %struct.Memory** %MEMORY
  %loadMem_4360d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RAX.i862
  %1606 = load i64, i64* %PC.i861
  %1607 = add i64 %1606, 3
  store i64 %1607, i64* %PC.i861
  %1608 = inttoptr i64 %1605 to i64*
  %1609 = load i64, i64* %1608
  store i64 %1609, i64* %RAX.i862, align 8
  store %struct.Memory* %loadMem_4360d7, %struct.Memory** %MEMORY
  %loadMem_4360da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 7
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RDX.i859 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 15
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %RBP.i860
  %1620 = sub i64 %1619, 44
  %1621 = load i64, i64* %PC.i858
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %PC.i858
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623
  %1625 = sext i32 %1624 to i64
  store i64 %1625, i64* %RDX.i859, align 8
  store %struct.Memory* %loadMem_4360da, %struct.Memory** %MEMORY
  %loadMem_4360de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 1
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 7
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RDX.i857 = bitcast %union.anon* %1634 to i64*
  %1635 = load i64, i64* %RAX.i856
  %1636 = load i64, i64* %RDX.i857
  %1637 = mul i64 %1636, 8
  %1638 = add i64 %1637, %1635
  %1639 = load i64, i64* %PC.i855
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC.i855
  %1641 = inttoptr i64 %1638 to i64*
  %1642 = load i64, i64* %1641
  store i64 %1642, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_4360de, %struct.Memory** %MEMORY
  %loadMem_4360e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RAX.i854
  %1650 = add i64 %1649, 4
  %1651 = load i64, i64* %PC.i853
  %1652 = add i64 %1651, 7
  store i64 %1652, i64* %PC.i853
  %1653 = inttoptr i64 %1650 to i32*
  store i32 -987654321, i32* %1653
  store %struct.Memory* %loadMem_4360e2, %struct.Memory** %MEMORY
  %loadMem_4360e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 15
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RBP.i852
  %1664 = sub i64 %1663, 40
  %1665 = load i64, i64* %PC.i850
  %1666 = add i64 %1665, 4
  store i64 %1666, i64* %PC.i850
  %1667 = inttoptr i64 %1664 to i64*
  %1668 = load i64, i64* %1667
  store i64 %1668, i64* %RAX.i851, align 8
  store %struct.Memory* %loadMem_4360e9, %struct.Memory** %MEMORY
  %loadMem_4360ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 33
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 1
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RAX.i849
  %1676 = load i64, i64* %PC.i848
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %PC.i848
  %1678 = inttoptr i64 %1675 to i64*
  %1679 = load i64, i64* %1678
  store i64 %1679, i64* %RAX.i849, align 8
  store %struct.Memory* %loadMem_4360ed, %struct.Memory** %MEMORY
  %loadMem_4360f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 7
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i847
  %1690 = sub i64 %1689, 44
  %1691 = load i64, i64* %PC.i845
  %1692 = add i64 %1691, 4
  store i64 %1692, i64* %PC.i845
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693
  %1695 = sext i32 %1694 to i64
  store i64 %1695, i64* %RDX.i846, align 8
  store %struct.Memory* %loadMem_4360f0, %struct.Memory** %MEMORY
  %loadMem_4360f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 7
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RDX.i844 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RAX.i843
  %1706 = load i64, i64* %RDX.i844
  %1707 = mul i64 %1706, 8
  %1708 = add i64 %1707, %1705
  %1709 = load i64, i64* %PC.i842
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %PC.i842
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711
  store i64 %1712, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_4360f4, %struct.Memory** %MEMORY
  %loadMem_4360f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i841 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RAX.i841
  %1720 = load i64, i64* %PC.i840
  %1721 = add i64 %1720, 6
  store i64 %1721, i64* %PC.i840
  %1722 = inttoptr i64 %1719 to i32*
  store i32 -987654321, i32* %1722
  store %struct.Memory* %loadMem_4360f8, %struct.Memory** %MEMORY
  %loadMem_4360fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 15
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RBP.i839
  %1730 = sub i64 %1729, 48
  %1731 = load i64, i64* %PC.i838
  %1732 = add i64 %1731, 7
  store i64 %1732, i64* %PC.i838
  %1733 = inttoptr i64 %1730 to i32*
  store i32 1, i32* %1733
  store %struct.Memory* %loadMem_4360fe, %struct.Memory** %MEMORY
  br label %block_.L_436105

block_.L_436105:                                  ; preds = %block_436118, %block_435ffb
  %loadMem_436105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 1
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RBP.i837
  %1744 = sub i64 %1743, 48
  %1745 = load i64, i64* %PC.i835
  %1746 = add i64 %1745, 3
  store i64 %1746, i64* %PC.i835
  %1747 = inttoptr i64 %1744 to i32*
  %1748 = load i32, i32* %1747
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_436105, %struct.Memory** %MEMORY
  %loadMem_436108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 5
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 15
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %RBP.i834
  %1760 = sub i64 %1759, 16
  %1761 = load i64, i64* %PC.i832
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC.i832
  %1763 = inttoptr i64 %1760 to i64*
  %1764 = load i64, i64* %1763
  store i64 %1764, i64* %RCX.i833, align 8
  store %struct.Memory* %loadMem_436108, %struct.Memory** %MEMORY
  %loadMem_43610c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 1
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %EAX.i830 = bitcast %union.anon* %1770 to i32*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 5
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %1773 to i64*
  %1774 = load i32, i32* %EAX.i830
  %1775 = zext i32 %1774 to i64
  %1776 = load i64, i64* %RCX.i831
  %1777 = add i64 %1776, 136
  %1778 = load i64, i64* %PC.i829
  %1779 = add i64 %1778, 6
  store i64 %1779, i64* %PC.i829
  %1780 = inttoptr i64 %1777 to i32*
  %1781 = load i32, i32* %1780
  %1782 = sub i32 %1774, %1781
  %1783 = icmp ult i32 %1774, %1781
  %1784 = zext i1 %1783 to i8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1784, i8* %1785, align 1
  %1786 = and i32 %1782, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = xor i32 %1781, %1774
  %1793 = xor i32 %1792, %1782
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1796, i8* %1797, align 1
  %1798 = icmp eq i32 %1782, 0
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i32 %1782, 31
  %1802 = trunc i32 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i32 %1774, 31
  %1805 = lshr i32 %1781, 31
  %1806 = xor i32 %1805, %1804
  %1807 = xor i32 %1801, %1804
  %1808 = add i32 %1807, %1806
  %1809 = icmp eq i32 %1808, 2
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1810, i8* %1811, align 1
  store %struct.Memory* %loadMem_43610c, %struct.Memory** %MEMORY
  %loadMem_436112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %PC.i828
  %1816 = add i64 %1815, 626
  %1817 = load i64, i64* %PC.i828
  %1818 = add i64 %1817, 6
  %1819 = load i64, i64* %PC.i828
  %1820 = add i64 %1819, 6
  store i64 %1820, i64* %PC.i828
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1822 = load i8, i8* %1821, align 1
  %1823 = icmp ne i8 %1822, 0
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1825 = load i8, i8* %1824, align 1
  %1826 = icmp ne i8 %1825, 0
  %1827 = xor i1 %1823, %1826
  %1828 = xor i1 %1827, true
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %BRANCH_TAKEN, align 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1831 = select i1 %1827, i64 %1818, i64 %1816
  store i64 %1831, i64* %1830, align 8
  store %struct.Memory* %loadMem_436112, %struct.Memory** %MEMORY
  %loadBr_436112 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436112 = icmp eq i8 %loadBr_436112, 1
  br i1 %cmpBr_436112, label %block_.L_436384, label %block_436118

block_436118:                                     ; preds = %block_.L_436105
  %loadMem_436118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 15
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1840 to i64*
  %1841 = load i64, i64* %RBP.i827
  %1842 = sub i64 %1841, 32
  %1843 = load i64, i64* %PC.i825
  %1844 = add i64 %1843, 4
  store i64 %1844, i64* %PC.i825
  %1845 = inttoptr i64 %1842 to i64*
  %1846 = load i64, i64* %1845
  store i64 %1846, i64* %RAX.i826, align 8
  store %struct.Memory* %loadMem_436118, %struct.Memory** %MEMORY
  %loadMem_43611c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 1
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %RAX.i824
  %1854 = add i64 %1853, 8
  %1855 = load i64, i64* %PC.i823
  %1856 = add i64 %1855, 4
  store i64 %1856, i64* %PC.i823
  %1857 = inttoptr i64 %1854 to i64*
  %1858 = load i64, i64* %1857
  store i64 %1858, i64* %RAX.i824, align 8
  store %struct.Memory* %loadMem_43611c, %struct.Memory** %MEMORY
  %loadMem_436120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 5
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 15
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %RBP.i822
  %1869 = sub i64 %1868, 44
  %1870 = load i64, i64* %PC.i820
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %PC.i820
  %1872 = inttoptr i64 %1869 to i32*
  %1873 = load i32, i32* %1872
  %1874 = sext i32 %1873 to i64
  store i64 %1874, i64* %RCX.i821, align 8
  store %struct.Memory* %loadMem_436120, %struct.Memory** %MEMORY
  %loadMem_436124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 1
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 5
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RCX.i819 = bitcast %union.anon* %1883 to i64*
  %1884 = load i64, i64* %RAX.i818
  %1885 = load i64, i64* %RCX.i819
  %1886 = mul i64 %1885, 8
  %1887 = add i64 %1886, %1884
  %1888 = load i64, i64* %PC.i817
  %1889 = add i64 %1888, 4
  store i64 %1889, i64* %PC.i817
  %1890 = inttoptr i64 %1887 to i64*
  %1891 = load i64, i64* %1890
  store i64 %1891, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_436124, %struct.Memory** %MEMORY
  %loadMem_436128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 5
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 15
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %RBP.i816
  %1902 = sub i64 %1901, 48
  %1903 = load i64, i64* %PC.i814
  %1904 = add i64 %1903, 4
  store i64 %1904, i64* %PC.i814
  %1905 = inttoptr i64 %1902 to i32*
  %1906 = load i32, i32* %1905
  %1907 = sext i32 %1906 to i64
  store i64 %1907, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_436128, %struct.Memory** %MEMORY
  %loadMem_43612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 5
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 7
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RDX.i813 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %RAX.i811
  %1921 = load i64, i64* %RCX.i812
  %1922 = mul i64 %1921, 4
  %1923 = add i64 %1922, %1920
  %1924 = load i64, i64* %PC.i810
  %1925 = add i64 %1924, 3
  store i64 %1925, i64* %PC.i810
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RDX.i813, align 8
  store %struct.Memory* %loadMem_43612c, %struct.Memory** %MEMORY
  %loadMem_43612f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 1
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i809
  %1939 = sub i64 %1938, 40
  %1940 = load i64, i64* %PC.i807
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i807
  %1942 = inttoptr i64 %1939 to i64*
  %1943 = load i64, i64* %1942
  store i64 %1943, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_43612f, %struct.Memory** %MEMORY
  %loadMem_436133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RAX.i806
  %1951 = add i64 %1950, 8
  %1952 = load i64, i64* %PC.i805
  %1953 = add i64 %1952, 4
  store i64 %1953, i64* %PC.i805
  %1954 = inttoptr i64 %1951 to i64*
  %1955 = load i64, i64* %1954
  store i64 %1955, i64* %RAX.i806, align 8
  store %struct.Memory* %loadMem_436133, %struct.Memory** %MEMORY
  %loadMem_436137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 5
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1964 to i64*
  %1965 = load i64, i64* %RBP.i804
  %1966 = sub i64 %1965, 44
  %1967 = load i64, i64* %PC.i802
  %1968 = add i64 %1967, 4
  store i64 %1968, i64* %PC.i802
  %1969 = inttoptr i64 %1966 to i32*
  %1970 = load i32, i32* %1969
  %1971 = sext i32 %1970 to i64
  store i64 %1971, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_436137, %struct.Memory** %MEMORY
  %loadMem_43613b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 1
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 5
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RCX.i801 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %RAX.i800
  %1982 = load i64, i64* %RCX.i801
  %1983 = mul i64 %1982, 8
  %1984 = add i64 %1983, %1981
  %1985 = load i64, i64* %PC.i799
  %1986 = add i64 %1985, 4
  store i64 %1986, i64* %PC.i799
  %1987 = inttoptr i64 %1984 to i64*
  %1988 = load i64, i64* %1987
  store i64 %1988, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_43613b, %struct.Memory** %MEMORY
  %loadMem_43613f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 5
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i798
  %1999 = sub i64 %1998, 48
  %2000 = load i64, i64* %PC.i796
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %PC.i796
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = sext i32 %2003 to i64
  store i64 %2004, i64* %RCX.i797, align 8
  store %struct.Memory* %loadMem_43613f, %struct.Memory** %MEMORY
  %loadMem_436143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 7
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %EDX.i793 = bitcast %union.anon* %2010 to i32*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 1
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 5
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %2016 to i64*
  %2017 = load i64, i64* %RAX.i794
  %2018 = load i64, i64* %RCX.i795
  %2019 = mul i64 %2018, 4
  %2020 = add i64 %2019, %2017
  %2021 = load i32, i32* %EDX.i793
  %2022 = zext i32 %2021 to i64
  %2023 = load i64, i64* %PC.i792
  %2024 = add i64 %2023, 3
  store i64 %2024, i64* %PC.i792
  %2025 = inttoptr i64 %2020 to i32*
  store i32 %2021, i32* %2025
  store %struct.Memory* %loadMem_436143, %struct.Memory** %MEMORY
  %loadMem_436146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i791
  %2036 = sub i64 %2035, 24
  %2037 = load i64, i64* %PC.i789
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i789
  %2039 = inttoptr i64 %2036 to i64*
  %2040 = load i64, i64* %2039
  store i64 %2040, i64* %RAX.i790, align 8
  store %struct.Memory* %loadMem_436146, %struct.Memory** %MEMORY
  %loadMem_43614a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RAX.i788
  %2048 = add i64 %2047, 8
  %2049 = load i64, i64* %PC.i787
  %2050 = add i64 %2049, 4
  store i64 %2050, i64* %PC.i787
  %2051 = inttoptr i64 %2048 to i64*
  %2052 = load i64, i64* %2051
  store i64 %2052, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_43614a, %struct.Memory** %MEMORY
  %loadMem_43614e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 7
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RDX.i785 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i786
  %2063 = sub i64 %2062, 44
  %2064 = load i64, i64* %PC.i784
  %2065 = add i64 %2064, 3
  store i64 %2065, i64* %PC.i784
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RDX.i785, align 8
  store %struct.Memory* %loadMem_43614e, %struct.Memory** %MEMORY
  %loadMem_436151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 7
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RDX.i783 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %RDX.i783
  %2076 = load i64, i64* %PC.i782
  %2077 = add i64 %2076, 3
  store i64 %2077, i64* %PC.i782
  %2078 = trunc i64 %2075 to i32
  %2079 = sub i32 %2078, 1
  %2080 = zext i32 %2079 to i64
  store i64 %2080, i64* %RDX.i783, align 8
  %2081 = icmp ult i32 %2078, 1
  %2082 = zext i1 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2082, i8* %2083, align 1
  %2084 = and i32 %2079, 255
  %2085 = call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2088, i8* %2089, align 1
  %2090 = xor i64 1, %2075
  %2091 = trunc i64 %2090 to i32
  %2092 = xor i32 %2091, %2079
  %2093 = lshr i32 %2092, 4
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2095, i8* %2096, align 1
  %2097 = icmp eq i32 %2079, 0
  %2098 = zext i1 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2098, i8* %2099, align 1
  %2100 = lshr i32 %2079, 31
  %2101 = trunc i32 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i32 %2078, 31
  %2104 = xor i32 %2100, %2103
  %2105 = add i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2107, i8* %2108, align 1
  store %struct.Memory* %loadMem_436151, %struct.Memory** %MEMORY
  %loadMem_436154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 7
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %EDX.i780 = bitcast %union.anon* %2114 to i32*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i781 = bitcast %union.anon* %2117 to i64*
  %2118 = load i32, i32* %EDX.i780
  %2119 = zext i32 %2118 to i64
  %2120 = load i64, i64* %PC.i779
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %PC.i779
  %2122 = shl i64 %2119, 32
  %2123 = ashr exact i64 %2122, 32
  store i64 %2123, i64* %RCX.i781, align 8
  store %struct.Memory* %loadMem_436154, %struct.Memory** %MEMORY
  %loadMem_436157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 1
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RAX.i777 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 5
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RAX.i777
  %2134 = load i64, i64* %RCX.i778
  %2135 = mul i64 %2134, 8
  %2136 = add i64 %2135, %2133
  %2137 = load i64, i64* %PC.i776
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i776
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RAX.i777, align 8
  store %struct.Memory* %loadMem_436157, %struct.Memory** %MEMORY
  %loadMem_43615b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 7
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RDX.i774 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RBP.i775
  %2151 = sub i64 %2150, 48
  %2152 = load i64, i64* %PC.i773
  %2153 = add i64 %2152, 3
  store i64 %2153, i64* %PC.i773
  %2154 = inttoptr i64 %2151 to i32*
  %2155 = load i32, i32* %2154
  %2156 = zext i32 %2155 to i64
  store i64 %2156, i64* %RDX.i774, align 8
  store %struct.Memory* %loadMem_43615b, %struct.Memory** %MEMORY
  %loadMem_43615e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 7
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RDX.i772 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %RDX.i772
  %2164 = load i64, i64* %PC.i771
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i771
  %2166 = trunc i64 %2163 to i32
  %2167 = sub i32 %2166, 1
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RDX.i772, align 8
  %2169 = icmp ult i32 %2166, 1
  %2170 = zext i1 %2169 to i8
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2170, i8* %2171, align 1
  %2172 = and i32 %2167, 255
  %2173 = call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2176, i8* %2177, align 1
  %2178 = xor i64 1, %2163
  %2179 = trunc i64 %2178 to i32
  %2180 = xor i32 %2179, %2167
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2183, i8* %2184, align 1
  %2185 = icmp eq i32 %2167, 0
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2186, i8* %2187, align 1
  %2188 = lshr i32 %2167, 31
  %2189 = trunc i32 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i32 %2166, 31
  %2192 = xor i32 %2188, %2191
  %2193 = add i32 %2192, %2191
  %2194 = icmp eq i32 %2193, 2
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2195, i8* %2196, align 1
  store %struct.Memory* %loadMem_43615e, %struct.Memory** %MEMORY
  %loadMem_436161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 7
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %EDX.i769 = bitcast %union.anon* %2202 to i32*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 5
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %2205 to i64*
  %2206 = load i32, i32* %EDX.i769
  %2207 = zext i32 %2206 to i64
  %2208 = load i64, i64* %PC.i768
  %2209 = add i64 %2208, 3
  store i64 %2209, i64* %PC.i768
  %2210 = shl i64 %2207, 32
  %2211 = ashr exact i64 %2210, 32
  store i64 %2211, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_436161, %struct.Memory** %MEMORY
  %loadMem_436164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 7
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RDX.i767 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RAX.i765
  %2225 = load i64, i64* %RCX.i766
  %2226 = mul i64 %2225, 4
  %2227 = add i64 %2226, %2224
  %2228 = load i64, i64* %PC.i764
  %2229 = add i64 %2228, 3
  store i64 %2229, i64* %PC.i764
  %2230 = inttoptr i64 %2227 to i32*
  %2231 = load i32, i32* %2230
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RDX.i767, align 8
  store %struct.Memory* %loadMem_436164, %struct.Memory** %MEMORY
  %loadMem_436167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RBP.i763
  %2243 = sub i64 %2242, 16
  %2244 = load i64, i64* %PC.i761
  %2245 = add i64 %2244, 4
  store i64 %2245, i64* %PC.i761
  %2246 = inttoptr i64 %2243 to i64*
  %2247 = load i64, i64* %2246
  store i64 %2247, i64* %RAX.i762, align 8
  store %struct.Memory* %loadMem_436167, %struct.Memory** %MEMORY
  %loadMem_43616b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 1
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %2253 to i64*
  %2254 = load i64, i64* %RAX.i760
  %2255 = add i64 %2254, 312
  %2256 = load i64, i64* %PC.i759
  %2257 = add i64 %2256, 7
  store i64 %2257, i64* %PC.i759
  %2258 = inttoptr i64 %2255 to i64*
  %2259 = load i64, i64* %2258
  store i64 %2259, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_43616b, %struct.Memory** %MEMORY
  %loadMem_436172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 1
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i758
  %2267 = load i64, i64* %PC.i757
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i757
  %2269 = inttoptr i64 %2266 to i64*
  %2270 = load i64, i64* %2269
  store i64 %2270, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_436172, %struct.Memory** %MEMORY
  %loadMem_436175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 9
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RBP.i756
  %2281 = sub i64 %2280, 48
  %2282 = load i64, i64* %PC.i754
  %2283 = add i64 %2282, 3
  store i64 %2283, i64* %PC.i754
  %2284 = inttoptr i64 %2281 to i32*
  %2285 = load i32, i32* %2284
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RSI.i755, align 8
  store %struct.Memory* %loadMem_436175, %struct.Memory** %MEMORY
  %loadMem_436178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 9
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RSI.i753 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RSI.i753
  %2294 = load i64, i64* %PC.i752
  %2295 = add i64 %2294, 3
  store i64 %2295, i64* %PC.i752
  %2296 = trunc i64 %2293 to i32
  %2297 = sub i32 %2296, 1
  %2298 = zext i32 %2297 to i64
  store i64 %2298, i64* %RSI.i753, align 8
  %2299 = icmp ult i32 %2296, 1
  %2300 = zext i1 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2300, i8* %2301, align 1
  %2302 = and i32 %2297, 255
  %2303 = call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2306, i8* %2307, align 1
  %2308 = xor i64 1, %2293
  %2309 = trunc i64 %2308 to i32
  %2310 = xor i32 %2309, %2297
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2313, i8* %2314, align 1
  %2315 = icmp eq i32 %2297, 0
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2316, i8* %2317, align 1
  %2318 = lshr i32 %2297, 31
  %2319 = trunc i32 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2319, i8* %2320, align 1
  %2321 = lshr i32 %2296, 31
  %2322 = xor i32 %2318, %2321
  %2323 = add i32 %2322, %2321
  %2324 = icmp eq i32 %2323, 2
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2325, i8* %2326, align 1
  store %struct.Memory* %loadMem_436178, %struct.Memory** %MEMORY
  %loadMem_43617b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 9
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %ESI.i750 = bitcast %union.anon* %2332 to i32*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 5
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RCX.i751 = bitcast %union.anon* %2335 to i64*
  %2336 = load i32, i32* %ESI.i750
  %2337 = zext i32 %2336 to i64
  %2338 = load i64, i64* %PC.i749
  %2339 = add i64 %2338, 3
  store i64 %2339, i64* %PC.i749
  %2340 = shl i64 %2337, 32
  %2341 = ashr exact i64 %2340, 32
  store i64 %2341, i64* %RCX.i751, align 8
  store %struct.Memory* %loadMem_43617b, %struct.Memory** %MEMORY
  %loadMem_43617e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 1
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 5
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 7
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RDX.i748
  %2355 = load i64, i64* %RAX.i746
  %2356 = load i64, i64* %RCX.i747
  %2357 = mul i64 %2356, 4
  %2358 = add i64 %2357, %2355
  %2359 = load i64, i64* %PC.i745
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i745
  %2361 = trunc i64 %2354 to i32
  %2362 = inttoptr i64 %2358 to i32*
  %2363 = load i32, i32* %2362
  %2364 = add i32 %2363, %2361
  %2365 = zext i32 %2364 to i64
  store i64 %2365, i64* %RDX.i748, align 8
  %2366 = icmp ult i32 %2364, %2361
  %2367 = icmp ult i32 %2364, %2363
  %2368 = or i1 %2366, %2367
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2369, i8* %2370, align 1
  %2371 = and i32 %2364, 255
  %2372 = call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2375, i8* %2376, align 1
  %2377 = xor i32 %2363, %2361
  %2378 = xor i32 %2377, %2364
  %2379 = lshr i32 %2378, 4
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2381, i8* %2382, align 1
  %2383 = icmp eq i32 %2364, 0
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2384, i8* %2385, align 1
  %2386 = lshr i32 %2364, 31
  %2387 = trunc i32 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2387, i8* %2388, align 1
  %2389 = lshr i32 %2361, 31
  %2390 = lshr i32 %2363, 31
  %2391 = xor i32 %2386, %2389
  %2392 = xor i32 %2386, %2390
  %2393 = add i32 %2391, %2392
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2395, i8* %2396, align 1
  store %struct.Memory* %loadMem_43617e, %struct.Memory** %MEMORY
  %loadMem_436181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i744
  %2407 = sub i64 %2406, 24
  %2408 = load i64, i64* %PC.i742
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i742
  %2410 = inttoptr i64 %2407 to i64*
  %2411 = load i64, i64* %2410
  store i64 %2411, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_436181, %struct.Memory** %MEMORY
  %loadMem_436185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RAX.i741
  %2419 = add i64 %2418, 16
  %2420 = load i64, i64* %PC.i740
  %2421 = add i64 %2420, 4
  store i64 %2421, i64* %PC.i740
  %2422 = inttoptr i64 %2419 to i64*
  %2423 = load i64, i64* %2422
  store i64 %2423, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_436185, %struct.Memory** %MEMORY
  %loadMem_436189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 9
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RSI.i738 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i739
  %2434 = sub i64 %2433, 44
  %2435 = load i64, i64* %PC.i737
  %2436 = add i64 %2435, 3
  store i64 %2436, i64* %PC.i737
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RSI.i738, align 8
  store %struct.Memory* %loadMem_436189, %struct.Memory** %MEMORY
  %loadMem_43618c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 9
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RSI.i736 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %RSI.i736
  %2447 = load i64, i64* %PC.i735
  %2448 = add i64 %2447, 3
  store i64 %2448, i64* %PC.i735
  %2449 = trunc i64 %2446 to i32
  %2450 = sub i32 %2449, 1
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RSI.i736, align 8
  %2452 = icmp ult i32 %2449, 1
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2453, i8* %2454, align 1
  %2455 = and i32 %2450, 255
  %2456 = call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2459, i8* %2460, align 1
  %2461 = xor i64 1, %2446
  %2462 = trunc i64 %2461 to i32
  %2463 = xor i32 %2462, %2450
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2466, i8* %2467, align 1
  %2468 = icmp eq i32 %2450, 0
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2469, i8* %2470, align 1
  %2471 = lshr i32 %2450, 31
  %2472 = trunc i32 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2472, i8* %2473, align 1
  %2474 = lshr i32 %2449, 31
  %2475 = xor i32 %2471, %2474
  %2476 = add i32 %2475, %2474
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2478, i8* %2479, align 1
  store %struct.Memory* %loadMem_43618c, %struct.Memory** %MEMORY
  %loadMem_43618f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 9
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %ESI.i733 = bitcast %union.anon* %2485 to i32*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 5
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %2488 to i64*
  %2489 = load i32, i32* %ESI.i733
  %2490 = zext i32 %2489 to i64
  %2491 = load i64, i64* %PC.i732
  %2492 = add i64 %2491, 3
  store i64 %2492, i64* %PC.i732
  %2493 = shl i64 %2490, 32
  %2494 = ashr exact i64 %2493, 32
  store i64 %2494, i64* %RCX.i734, align 8
  store %struct.Memory* %loadMem_43618f, %struct.Memory** %MEMORY
  %loadMem_436192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 5
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RAX.i730
  %2505 = load i64, i64* %RCX.i731
  %2506 = mul i64 %2505, 8
  %2507 = add i64 %2506, %2504
  %2508 = load i64, i64* %PC.i729
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC.i729
  %2510 = inttoptr i64 %2507 to i64*
  %2511 = load i64, i64* %2510
  store i64 %2511, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_436192, %struct.Memory** %MEMORY
  %loadMem_436196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 9
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RSI.i727 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 15
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RBP.i728
  %2522 = sub i64 %2521, 48
  %2523 = load i64, i64* %PC.i726
  %2524 = add i64 %2523, 3
  store i64 %2524, i64* %PC.i726
  %2525 = inttoptr i64 %2522 to i32*
  %2526 = load i32, i32* %2525
  %2527 = zext i32 %2526 to i64
  store i64 %2527, i64* %RSI.i727, align 8
  store %struct.Memory* %loadMem_436196, %struct.Memory** %MEMORY
  %loadMem_436199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 9
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RSI.i725 = bitcast %union.anon* %2533 to i64*
  %2534 = load i64, i64* %RSI.i725
  %2535 = load i64, i64* %PC.i724
  %2536 = add i64 %2535, 3
  store i64 %2536, i64* %PC.i724
  %2537 = trunc i64 %2534 to i32
  %2538 = sub i32 %2537, 1
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RSI.i725, align 8
  %2540 = icmp ult i32 %2537, 1
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2541, i8* %2542, align 1
  %2543 = and i32 %2538, 255
  %2544 = call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2547, i8* %2548, align 1
  %2549 = xor i64 1, %2534
  %2550 = trunc i64 %2549 to i32
  %2551 = xor i32 %2550, %2538
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2554, i8* %2555, align 1
  %2556 = icmp eq i32 %2538, 0
  %2557 = zext i1 %2556 to i8
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2557, i8* %2558, align 1
  %2559 = lshr i32 %2538, 31
  %2560 = trunc i32 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2537, 31
  %2563 = xor i32 %2559, %2562
  %2564 = add i32 %2563, %2562
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2566, i8* %2567, align 1
  store %struct.Memory* %loadMem_436199, %struct.Memory** %MEMORY
  %loadMem_43619c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 9
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %ESI.i722 = bitcast %union.anon* %2573 to i32*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 5
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %2576 to i64*
  %2577 = load i32, i32* %ESI.i722
  %2578 = zext i32 %2577 to i64
  %2579 = load i64, i64* %PC.i721
  %2580 = add i64 %2579, 3
  store i64 %2580, i64* %PC.i721
  %2581 = shl i64 %2578, 32
  %2582 = ashr exact i64 %2581, 32
  store i64 %2582, i64* %RCX.i723, align 8
  store %struct.Memory* %loadMem_43619c, %struct.Memory** %MEMORY
  %loadMem_43619f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 1
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 5
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 9
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RSI.i720 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %RAX.i718
  %2596 = load i64, i64* %RCX.i719
  %2597 = mul i64 %2596, 4
  %2598 = add i64 %2597, %2595
  %2599 = load i64, i64* %PC.i717
  %2600 = add i64 %2599, 3
  store i64 %2600, i64* %PC.i717
  %2601 = inttoptr i64 %2598 to i32*
  %2602 = load i32, i32* %2601
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RSI.i720, align 8
  store %struct.Memory* %loadMem_43619f, %struct.Memory** %MEMORY
  %loadMem_4361a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i716
  %2614 = sub i64 %2613, 16
  %2615 = load i64, i64* %PC.i714
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i714
  %2617 = inttoptr i64 %2614 to i64*
  %2618 = load i64, i64* %2617
  store i64 %2618, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_4361a2, %struct.Memory** %MEMORY
  %loadMem_4361a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RAX.i713
  %2626 = add i64 %2625, 312
  %2627 = load i64, i64* %PC.i712
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC.i712
  %2629 = inttoptr i64 %2626 to i64*
  %2630 = load i64, i64* %2629
  store i64 %2630, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_4361a6, %struct.Memory** %MEMORY
  %loadMem_4361ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %2636 to i64*
  %2637 = load i64, i64* %RAX.i711
  %2638 = add i64 %2637, 24
  %2639 = load i64, i64* %PC.i710
  %2640 = add i64 %2639, 4
  store i64 %2640, i64* %PC.i710
  %2641 = inttoptr i64 %2638 to i64*
  %2642 = load i64, i64* %2641
  store i64 %2642, i64* %RAX.i711, align 8
  store %struct.Memory* %loadMem_4361ad, %struct.Memory** %MEMORY
  %loadMem_4361b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 11
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RDI.i708 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 15
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %RBP.i709
  %2653 = sub i64 %2652, 48
  %2654 = load i64, i64* %PC.i707
  %2655 = add i64 %2654, 3
  store i64 %2655, i64* %PC.i707
  %2656 = inttoptr i64 %2653 to i32*
  %2657 = load i32, i32* %2656
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RDI.i708, align 8
  store %struct.Memory* %loadMem_4361b1, %struct.Memory** %MEMORY
  %loadMem_4361b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 11
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RDI.i706 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RDI.i706
  %2666 = load i64, i64* %PC.i705
  %2667 = add i64 %2666, 3
  store i64 %2667, i64* %PC.i705
  %2668 = trunc i64 %2665 to i32
  %2669 = sub i32 %2668, 1
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RDI.i706, align 8
  %2671 = icmp ult i32 %2668, 1
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2672, i8* %2673, align 1
  %2674 = and i32 %2669, 255
  %2675 = call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2678, i8* %2679, align 1
  %2680 = xor i64 1, %2665
  %2681 = trunc i64 %2680 to i32
  %2682 = xor i32 %2681, %2669
  %2683 = lshr i32 %2682, 4
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2685, i8* %2686, align 1
  %2687 = icmp eq i32 %2669, 0
  %2688 = zext i1 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2688, i8* %2689, align 1
  %2690 = lshr i32 %2669, 31
  %2691 = trunc i32 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2691, i8* %2692, align 1
  %2693 = lshr i32 %2668, 31
  %2694 = xor i32 %2690, %2693
  %2695 = add i32 %2694, %2693
  %2696 = icmp eq i32 %2695, 2
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2697, i8* %2698, align 1
  store %struct.Memory* %loadMem_4361b4, %struct.Memory** %MEMORY
  %loadMem_4361b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 11
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %EDI.i703 = bitcast %union.anon* %2704 to i32*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 5
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %2707 to i64*
  %2708 = load i32, i32* %EDI.i703
  %2709 = zext i32 %2708 to i64
  %2710 = load i64, i64* %PC.i702
  %2711 = add i64 %2710, 3
  store i64 %2711, i64* %PC.i702
  %2712 = shl i64 %2709, 32
  %2713 = ashr exact i64 %2712, 32
  store i64 %2713, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_4361b7, %struct.Memory** %MEMORY
  %loadMem_4361ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 9
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RSI.i701 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RSI.i701
  %2727 = load i64, i64* %RAX.i699
  %2728 = load i64, i64* %RCX.i700
  %2729 = mul i64 %2728, 4
  %2730 = add i64 %2729, %2727
  %2731 = load i64, i64* %PC.i698
  %2732 = add i64 %2731, 3
  store i64 %2732, i64* %PC.i698
  %2733 = trunc i64 %2726 to i32
  %2734 = inttoptr i64 %2730 to i32*
  %2735 = load i32, i32* %2734
  %2736 = add i32 %2735, %2733
  %2737 = zext i32 %2736 to i64
  store i64 %2737, i64* %RSI.i701, align 8
  %2738 = icmp ult i32 %2736, %2733
  %2739 = icmp ult i32 %2736, %2735
  %2740 = or i1 %2738, %2739
  %2741 = zext i1 %2740 to i8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2741, i8* %2742, align 1
  %2743 = and i32 %2736, 255
  %2744 = call i32 @llvm.ctpop.i32(i32 %2743)
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  %2747 = xor i8 %2746, 1
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2747, i8* %2748, align 1
  %2749 = xor i32 %2735, %2733
  %2750 = xor i32 %2749, %2736
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2753, i8* %2754, align 1
  %2755 = icmp eq i32 %2736, 0
  %2756 = zext i1 %2755 to i8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2756, i8* %2757, align 1
  %2758 = lshr i32 %2736, 31
  %2759 = trunc i32 %2758 to i8
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2759, i8* %2760, align 1
  %2761 = lshr i32 %2733, 31
  %2762 = lshr i32 %2735, 31
  %2763 = xor i32 %2758, %2761
  %2764 = xor i32 %2758, %2762
  %2765 = add i32 %2763, %2764
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2767, i8* %2768, align 1
  store %struct.Memory* %loadMem_4361ba, %struct.Memory** %MEMORY
  %loadMem_4361bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 7
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %EDX.i696 = bitcast %union.anon* %2774 to i32*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 11
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RDI.i697 = bitcast %union.anon* %2777 to i64*
  %2778 = load i32, i32* %EDX.i696
  %2779 = zext i32 %2778 to i64
  %2780 = load i64, i64* %PC.i695
  %2781 = add i64 %2780, 2
  store i64 %2781, i64* %PC.i695
  %2782 = and i64 %2779, 4294967295
  store i64 %2782, i64* %RDI.i697, align 8
  store %struct.Memory* %loadMem_4361bd, %struct.Memory** %MEMORY
  %loadMem1_4361bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %PC.i694
  %2787 = add i64 %2786, -57359
  %2788 = load i64, i64* %PC.i694
  %2789 = add i64 %2788, 5
  %2790 = load i64, i64* %PC.i694
  %2791 = add i64 %2790, 5
  store i64 %2791, i64* %PC.i694
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2793 = load i64, i64* %2792, align 8
  %2794 = add i64 %2793, -8
  %2795 = inttoptr i64 %2794 to i64*
  store i64 %2789, i64* %2795
  store i64 %2794, i64* %2792, align 8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2787, i64* %2796, align 8
  store %struct.Memory* %loadMem1_4361bf, %struct.Memory** %MEMORY
  %loadMem2_4361bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4361bf = load i64, i64* %3
  %call2_4361bf = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4361bf, %struct.Memory* %loadMem2_4361bf)
  store %struct.Memory* %call2_4361bf, %struct.Memory** %MEMORY
  %loadMem_4361c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 5
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RCX.i692 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 15
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %RBP.i693
  %2807 = sub i64 %2806, 24
  %2808 = load i64, i64* %PC.i691
  %2809 = add i64 %2808, 4
  store i64 %2809, i64* %PC.i691
  %2810 = inttoptr i64 %2807 to i64*
  %2811 = load i64, i64* %2810
  store i64 %2811, i64* %RCX.i692, align 8
  store %struct.Memory* %loadMem_4361c4, %struct.Memory** %MEMORY
  %loadMem_4361c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 5
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RCX.i690
  %2819 = load i64, i64* %PC.i689
  %2820 = add i64 %2819, 3
  store i64 %2820, i64* %PC.i689
  %2821 = inttoptr i64 %2818 to i64*
  %2822 = load i64, i64* %2821
  store i64 %2822, i64* %RCX.i690, align 8
  store %struct.Memory* %loadMem_4361c8, %struct.Memory** %MEMORY
  %loadMem_4361cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 7
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RDX.i687 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RBP.i688
  %2833 = sub i64 %2832, 44
  %2834 = load i64, i64* %PC.i686
  %2835 = add i64 %2834, 3
  store i64 %2835, i64* %PC.i686
  %2836 = inttoptr i64 %2833 to i32*
  %2837 = load i32, i32* %2836
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RDX.i687, align 8
  store %struct.Memory* %loadMem_4361cb, %struct.Memory** %MEMORY
  %loadMem_4361ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 7
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RDX.i685 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RDX.i685
  %2846 = load i64, i64* %PC.i684
  %2847 = add i64 %2846, 3
  store i64 %2847, i64* %PC.i684
  %2848 = trunc i64 %2845 to i32
  %2849 = sub i32 %2848, 1
  %2850 = zext i32 %2849 to i64
  store i64 %2850, i64* %RDX.i685, align 8
  %2851 = icmp ult i32 %2848, 1
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2852, i8* %2853, align 1
  %2854 = and i32 %2849, 255
  %2855 = call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2858, i8* %2859, align 1
  %2860 = xor i64 1, %2845
  %2861 = trunc i64 %2860 to i32
  %2862 = xor i32 %2861, %2849
  %2863 = lshr i32 %2862, 4
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2865, i8* %2866, align 1
  %2867 = icmp eq i32 %2849, 0
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2868, i8* %2869, align 1
  %2870 = lshr i32 %2849, 31
  %2871 = trunc i32 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i32 %2848, 31
  %2874 = xor i32 %2870, %2873
  %2875 = add i32 %2874, %2873
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2877, i8* %2878, align 1
  store %struct.Memory* %loadMem_4361ce, %struct.Memory** %MEMORY
  %loadMem_4361d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 7
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %EDX.i682 = bitcast %union.anon* %2884 to i32*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 17
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %R8.i683 = bitcast %union.anon* %2887 to i64*
  %2888 = load i32, i32* %EDX.i682
  %2889 = zext i32 %2888 to i64
  %2890 = load i64, i64* %PC.i681
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i681
  %2892 = shl i64 %2889, 32
  %2893 = ashr exact i64 %2892, 32
  store i64 %2893, i64* %R8.i683, align 8
  store %struct.Memory* %loadMem_4361d1, %struct.Memory** %MEMORY
  %loadMem_4361d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 5
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RCX.i679 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 17
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %R8.i680 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RCX.i679
  %2904 = load i64, i64* %R8.i680
  %2905 = mul i64 %2904, 8
  %2906 = add i64 %2905, %2903
  %2907 = load i64, i64* %PC.i678
  %2908 = add i64 %2907, 4
  store i64 %2908, i64* %PC.i678
  %2909 = inttoptr i64 %2906 to i64*
  %2910 = load i64, i64* %2909
  store i64 %2910, i64* %RCX.i679, align 8
  store %struct.Memory* %loadMem_4361d4, %struct.Memory** %MEMORY
  %loadMem_4361d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RCX.i676 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 7
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RDX.i677 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RCX.i676
  %2921 = load i64, i64* %PC.i675
  %2922 = add i64 %2921, 2
  store i64 %2922, i64* %PC.i675
  %2923 = inttoptr i64 %2920 to i32*
  %2924 = load i32, i32* %2923
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RDX.i677, align 8
  store %struct.Memory* %loadMem_4361d8, %struct.Memory** %MEMORY
  %loadMem_4361da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 5
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 15
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2934 to i64*
  %2935 = load i64, i64* %RBP.i674
  %2936 = sub i64 %2935, 16
  %2937 = load i64, i64* %PC.i672
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %PC.i672
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939
  store i64 %2940, i64* %RCX.i673, align 8
  store %struct.Memory* %loadMem_4361da, %struct.Memory** %MEMORY
  %loadMem_4361de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i671 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RCX.i671
  %2948 = add i64 %2947, 368
  %2949 = load i64, i64* %PC.i670
  %2950 = add i64 %2949, 7
  store i64 %2950, i64* %PC.i670
  %2951 = inttoptr i64 %2948 to i64*
  %2952 = load i64, i64* %2951
  store i64 %2952, i64* %RCX.i671, align 8
  store %struct.Memory* %loadMem_4361de, %struct.Memory** %MEMORY
  %loadMem_4361e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 15
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 17
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %R8.i669 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %RBP.i668
  %2963 = sub i64 %2962, 48
  %2964 = load i64, i64* %PC.i667
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %PC.i667
  %2966 = inttoptr i64 %2963 to i32*
  %2967 = load i32, i32* %2966
  %2968 = sext i32 %2967 to i64
  store i64 %2968, i64* %R8.i669, align 8
  store %struct.Memory* %loadMem_4361e5, %struct.Memory** %MEMORY
  %loadMem_4361e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 5
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 7
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RDX.i665 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 17
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %R8.i666 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %RDX.i665
  %2982 = load i64, i64* %RCX.i664
  %2983 = load i64, i64* %R8.i666
  %2984 = mul i64 %2983, 4
  %2985 = add i64 %2984, %2982
  %2986 = load i64, i64* %PC.i663
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i663
  %2988 = trunc i64 %2981 to i32
  %2989 = inttoptr i64 %2985 to i32*
  %2990 = load i32, i32* %2989
  %2991 = add i32 %2990, %2988
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RDX.i665, align 8
  %2993 = icmp ult i32 %2991, %2988
  %2994 = icmp ult i32 %2991, %2990
  %2995 = or i1 %2993, %2994
  %2996 = zext i1 %2995 to i8
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2996, i8* %2997, align 1
  %2998 = and i32 %2991, 255
  %2999 = call i32 @llvm.ctpop.i32(i32 %2998)
  %3000 = trunc i32 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = xor i8 %3001, 1
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3002, i8* %3003, align 1
  %3004 = xor i32 %2990, %2988
  %3005 = xor i32 %3004, %2991
  %3006 = lshr i32 %3005, 4
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3008, i8* %3009, align 1
  %3010 = icmp eq i32 %2991, 0
  %3011 = zext i1 %3010 to i8
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3011, i8* %3012, align 1
  %3013 = lshr i32 %2991, 31
  %3014 = trunc i32 %3013 to i8
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3014, i8* %3015, align 1
  %3016 = lshr i32 %2988, 31
  %3017 = lshr i32 %2990, 31
  %3018 = xor i32 %3013, %3016
  %3019 = xor i32 %3013, %3017
  %3020 = add i32 %3018, %3019
  %3021 = icmp eq i32 %3020, 2
  %3022 = zext i1 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3022, i8* %3023, align 1
  store %struct.Memory* %loadMem_4361e9, %struct.Memory** %MEMORY
  %loadMem_4361ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 5
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 15
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %3032 to i64*
  %3033 = load i64, i64* %RBP.i662
  %3034 = sub i64 %3033, 24
  %3035 = load i64, i64* %PC.i660
  %3036 = add i64 %3035, 4
  store i64 %3036, i64* %PC.i660
  %3037 = inttoptr i64 %3034 to i64*
  %3038 = load i64, i64* %3037
  store i64 %3038, i64* %RCX.i661, align 8
  store %struct.Memory* %loadMem_4361ed, %struct.Memory** %MEMORY
  %loadMem_4361f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 5
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %3044 to i64*
  %3045 = load i64, i64* %RCX.i659
  %3046 = add i64 %3045, 24
  %3047 = load i64, i64* %PC.i658
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %PC.i658
  %3049 = inttoptr i64 %3046 to i64*
  %3050 = load i64, i64* %3049
  store i64 %3050, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_4361f1, %struct.Memory** %MEMORY
  %loadMem_4361f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 9
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RSI.i656 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 15
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RBP.i657
  %3061 = sub i64 %3060, 44
  %3062 = load i64, i64* %PC.i655
  %3063 = add i64 %3062, 3
  store i64 %3063, i64* %PC.i655
  %3064 = inttoptr i64 %3061 to i32*
  %3065 = load i32, i32* %3064
  %3066 = zext i32 %3065 to i64
  store i64 %3066, i64* %RSI.i656, align 8
  store %struct.Memory* %loadMem_4361f5, %struct.Memory** %MEMORY
  %loadMem_4361f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 9
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RSI.i654 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %RSI.i654
  %3074 = load i64, i64* %PC.i653
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i653
  %3076 = trunc i64 %3073 to i32
  %3077 = sub i32 %3076, 1
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RSI.i654, align 8
  %3079 = icmp ult i32 %3076, 1
  %3080 = zext i1 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3080, i8* %3081, align 1
  %3082 = and i32 %3077, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = xor i64 1, %3073
  %3089 = trunc i64 %3088 to i32
  %3090 = xor i32 %3089, %3077
  %3091 = lshr i32 %3090, 4
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3093, i8* %3094, align 1
  %3095 = icmp eq i32 %3077, 0
  %3096 = zext i1 %3095 to i8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3096, i8* %3097, align 1
  %3098 = lshr i32 %3077, 31
  %3099 = trunc i32 %3098 to i8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3099, i8* %3100, align 1
  %3101 = lshr i32 %3076, 31
  %3102 = xor i32 %3098, %3101
  %3103 = add i32 %3102, %3101
  %3104 = icmp eq i32 %3103, 2
  %3105 = zext i1 %3104 to i8
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3105, i8* %3106, align 1
  store %struct.Memory* %loadMem_4361f8, %struct.Memory** %MEMORY
  %loadMem_4361fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 9
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %ESI.i651 = bitcast %union.anon* %3112 to i32*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 17
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %R8.i652 = bitcast %union.anon* %3115 to i64*
  %3116 = load i32, i32* %ESI.i651
  %3117 = zext i32 %3116 to i64
  %3118 = load i64, i64* %PC.i650
  %3119 = add i64 %3118, 3
  store i64 %3119, i64* %PC.i650
  %3120 = shl i64 %3117, 32
  %3121 = ashr exact i64 %3120, 32
  store i64 %3121, i64* %R8.i652, align 8
  store %struct.Memory* %loadMem_4361fb, %struct.Memory** %MEMORY
  %loadMem_4361fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 5
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 17
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %R8.i649 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RCX.i648
  %3132 = load i64, i64* %R8.i649
  %3133 = mul i64 %3132, 8
  %3134 = add i64 %3133, %3131
  %3135 = load i64, i64* %PC.i647
  %3136 = add i64 %3135, 4
  store i64 %3136, i64* %PC.i647
  %3137 = inttoptr i64 %3134 to i64*
  %3138 = load i64, i64* %3137
  store i64 %3138, i64* %RCX.i648, align 8
  store %struct.Memory* %loadMem_4361fe, %struct.Memory** %MEMORY
  %loadMem_436202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 9
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RSI.i645 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %RBP.i646
  %3149 = sub i64 %3148, 48
  %3150 = load i64, i64* %PC.i644
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i644
  %3152 = inttoptr i64 %3149 to i32*
  %3153 = load i32, i32* %3152
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RSI.i645, align 8
  store %struct.Memory* %loadMem_436202, %struct.Memory** %MEMORY
  %loadMem_436205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 9
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RSI.i643 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RSI.i643
  %3162 = load i64, i64* %PC.i642
  %3163 = add i64 %3162, 3
  store i64 %3163, i64* %PC.i642
  %3164 = trunc i64 %3161 to i32
  %3165 = sub i32 %3164, 1
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RSI.i643, align 8
  %3167 = icmp ult i32 %3164, 1
  %3168 = zext i1 %3167 to i8
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3168, i8* %3169, align 1
  %3170 = and i32 %3165, 255
  %3171 = call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3174, i8* %3175, align 1
  %3176 = xor i64 1, %3161
  %3177 = trunc i64 %3176 to i32
  %3178 = xor i32 %3177, %3165
  %3179 = lshr i32 %3178, 4
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3181, i8* %3182, align 1
  %3183 = icmp eq i32 %3165, 0
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3184, i8* %3185, align 1
  %3186 = lshr i32 %3165, 31
  %3187 = trunc i32 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i32 %3164, 31
  %3190 = xor i32 %3186, %3189
  %3191 = add i32 %3190, %3189
  %3192 = icmp eq i32 %3191, 2
  %3193 = zext i1 %3192 to i8
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3193, i8* %3194, align 1
  store %struct.Memory* %loadMem_436205, %struct.Memory** %MEMORY
  %loadMem_436208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 9
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %ESI.i640 = bitcast %union.anon* %3200 to i32*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 17
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %R8.i641 = bitcast %union.anon* %3203 to i64*
  %3204 = load i32, i32* %ESI.i640
  %3205 = zext i32 %3204 to i64
  %3206 = load i64, i64* %PC.i639
  %3207 = add i64 %3206, 3
  store i64 %3207, i64* %PC.i639
  %3208 = shl i64 %3205, 32
  %3209 = ashr exact i64 %3208, 32
  store i64 %3209, i64* %R8.i641, align 8
  store %struct.Memory* %loadMem_436208, %struct.Memory** %MEMORY
  %loadMem_43620b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 5
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 9
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RSI.i637 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 17
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %R8.i638 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RCX.i636
  %3223 = load i64, i64* %R8.i638
  %3224 = mul i64 %3223, 4
  %3225 = add i64 %3224, %3222
  %3226 = load i64, i64* %PC.i635
  %3227 = add i64 %3226, 4
  store i64 %3227, i64* %PC.i635
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RSI.i637, align 8
  store %struct.Memory* %loadMem_43620b, %struct.Memory** %MEMORY
  %loadMem_43620f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 5
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i634
  %3241 = sub i64 %3240, 16
  %3242 = load i64, i64* %PC.i632
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i632
  %3244 = inttoptr i64 %3241 to i64*
  %3245 = load i64, i64* %3244
  store i64 %3245, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_43620f, %struct.Memory** %MEMORY
  %loadMem_436213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 5
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RCX.i631
  %3253 = add i64 %3252, 312
  %3254 = load i64, i64* %PC.i630
  %3255 = add i64 %3254, 7
  store i64 %3255, i64* %PC.i630
  %3256 = inttoptr i64 %3253 to i64*
  %3257 = load i64, i64* %3256
  store i64 %3257, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_436213, %struct.Memory** %MEMORY
  %loadMem_43621a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 5
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RCX.i629
  %3265 = add i64 %3264, 40
  %3266 = load i64, i64* %PC.i628
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i628
  %3268 = inttoptr i64 %3265 to i64*
  %3269 = load i64, i64* %3268
  store i64 %3269, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_43621a, %struct.Memory** %MEMORY
  %loadMem_43621e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 11
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RDI.i626 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 15
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %RBP.i627
  %3280 = sub i64 %3279, 48
  %3281 = load i64, i64* %PC.i625
  %3282 = add i64 %3281, 3
  store i64 %3282, i64* %PC.i625
  %3283 = inttoptr i64 %3280 to i32*
  %3284 = load i32, i32* %3283
  %3285 = zext i32 %3284 to i64
  store i64 %3285, i64* %RDI.i626, align 8
  store %struct.Memory* %loadMem_43621e, %struct.Memory** %MEMORY
  %loadMem_436221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 11
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RDI.i624 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %RDI.i624
  %3293 = load i64, i64* %PC.i623
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i623
  %3295 = trunc i64 %3292 to i32
  %3296 = sub i32 %3295, 1
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RDI.i624, align 8
  %3298 = icmp ult i32 %3295, 1
  %3299 = zext i1 %3298 to i8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3299, i8* %3300, align 1
  %3301 = and i32 %3296, 255
  %3302 = call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3305, i8* %3306, align 1
  %3307 = xor i64 1, %3292
  %3308 = trunc i64 %3307 to i32
  %3309 = xor i32 %3308, %3296
  %3310 = lshr i32 %3309, 4
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3312, i8* %3313, align 1
  %3314 = icmp eq i32 %3296, 0
  %3315 = zext i1 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3315, i8* %3316, align 1
  %3317 = lshr i32 %3296, 31
  %3318 = trunc i32 %3317 to i8
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3318, i8* %3319, align 1
  %3320 = lshr i32 %3295, 31
  %3321 = xor i32 %3317, %3320
  %3322 = add i32 %3321, %3320
  %3323 = icmp eq i32 %3322, 2
  %3324 = zext i1 %3323 to i8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3324, i8* %3325, align 1
  store %struct.Memory* %loadMem_436221, %struct.Memory** %MEMORY
  %loadMem_436224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 11
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %EDI.i621 = bitcast %union.anon* %3331 to i32*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 17
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %R8.i622 = bitcast %union.anon* %3334 to i64*
  %3335 = load i32, i32* %EDI.i621
  %3336 = zext i32 %3335 to i64
  %3337 = load i64, i64* %PC.i620
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC.i620
  %3339 = shl i64 %3336, 32
  %3340 = ashr exact i64 %3339, 32
  store i64 %3340, i64* %R8.i622, align 8
  store %struct.Memory* %loadMem_436224, %struct.Memory** %MEMORY
  %loadMem_436227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 5
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 9
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RSI.i618 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 17
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %R8.i619 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %RSI.i618
  %3354 = load i64, i64* %RCX.i617
  %3355 = load i64, i64* %R8.i619
  %3356 = mul i64 %3355, 4
  %3357 = add i64 %3356, %3354
  %3358 = load i64, i64* %PC.i616
  %3359 = add i64 %3358, 4
  store i64 %3359, i64* %PC.i616
  %3360 = trunc i64 %3353 to i32
  %3361 = inttoptr i64 %3357 to i32*
  %3362 = load i32, i32* %3361
  %3363 = add i32 %3362, %3360
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RSI.i618, align 8
  %3365 = icmp ult i32 %3363, %3360
  %3366 = icmp ult i32 %3363, %3362
  %3367 = or i1 %3365, %3366
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3368, i8* %3369, align 1
  %3370 = and i32 %3363, 255
  %3371 = call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3374, i8* %3375, align 1
  %3376 = xor i32 %3362, %3360
  %3377 = xor i32 %3376, %3363
  %3378 = lshr i32 %3377, 4
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3380, i8* %3381, align 1
  %3382 = icmp eq i32 %3363, 0
  %3383 = zext i1 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i32 %3363, 31
  %3386 = trunc i32 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i32 %3360, 31
  %3389 = lshr i32 %3362, 31
  %3390 = xor i32 %3385, %3388
  %3391 = xor i32 %3385, %3389
  %3392 = add i32 %3390, %3391
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3394, i8* %3395, align 1
  store %struct.Memory* %loadMem_436227, %struct.Memory** %MEMORY
  %loadMem_43622b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 7
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %EDX.i614 = bitcast %union.anon* %3401 to i32*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 11
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDI.i615 = bitcast %union.anon* %3404 to i64*
  %3405 = load i32, i32* %EDX.i614
  %3406 = zext i32 %3405 to i64
  %3407 = load i64, i64* %PC.i613
  %3408 = add i64 %3407, 2
  store i64 %3408, i64* %PC.i613
  %3409 = and i64 %3406, 4294967295
  store i64 %3409, i64* %RDI.i615, align 8
  store %struct.Memory* %loadMem_43622b, %struct.Memory** %MEMORY
  %loadMem_43622d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 1
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %EAX.i611 = bitcast %union.anon* %3415 to i32*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 15
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3418 to i64*
  %3419 = load i64, i64* %RBP.i612
  %3420 = sub i64 %3419, 56
  %3421 = load i32, i32* %EAX.i611
  %3422 = zext i32 %3421 to i64
  %3423 = load i64, i64* %PC.i610
  %3424 = add i64 %3423, 3
  store i64 %3424, i64* %PC.i610
  %3425 = inttoptr i64 %3420 to i32*
  store i32 %3421, i32* %3425
  store %struct.Memory* %loadMem_43622d, %struct.Memory** %MEMORY
  %loadMem1_436230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %PC.i609
  %3430 = add i64 %3429, -57472
  %3431 = load i64, i64* %PC.i609
  %3432 = add i64 %3431, 5
  %3433 = load i64, i64* %PC.i609
  %3434 = add i64 %3433, 5
  store i64 %3434, i64* %PC.i609
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3436 = load i64, i64* %3435, align 8
  %3437 = add i64 %3436, -8
  %3438 = inttoptr i64 %3437 to i64*
  store i64 %3432, i64* %3438
  store i64 %3437, i64* %3435, align 8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3430, i64* %3439, align 8
  store %struct.Memory* %loadMem1_436230, %struct.Memory** %MEMORY
  %loadMem2_436230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436230 = load i64, i64* %3
  %call2_436230 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436230, %struct.Memory* %loadMem2_436230)
  store %struct.Memory* %call2_436230, %struct.Memory** %MEMORY
  %loadMem_436235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 11
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RDI.i607 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 15
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %RBP.i608
  %3450 = sub i64 %3449, 56
  %3451 = load i64, i64* %PC.i606
  %3452 = add i64 %3451, 3
  store i64 %3452, i64* %PC.i606
  %3453 = inttoptr i64 %3450 to i32*
  %3454 = load i32, i32* %3453
  %3455 = zext i32 %3454 to i64
  store i64 %3455, i64* %RDI.i607, align 8
  store %struct.Memory* %loadMem_436235, %struct.Memory** %MEMORY
  %loadMem_436238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 1
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %EAX.i604 = bitcast %union.anon* %3461 to i32*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 9
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RSI.i605 = bitcast %union.anon* %3464 to i64*
  %3465 = load i32, i32* %EAX.i604
  %3466 = zext i32 %3465 to i64
  %3467 = load i64, i64* %PC.i603
  %3468 = add i64 %3467, 2
  store i64 %3468, i64* %PC.i603
  %3469 = and i64 %3466, 4294967295
  store i64 %3469, i64* %RSI.i605, align 8
  store %struct.Memory* %loadMem_436238, %struct.Memory** %MEMORY
  %loadMem1_43623a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3472 to i64*
  %3473 = load i64, i64* %PC.i602
  %3474 = add i64 %3473, -57482
  %3475 = load i64, i64* %PC.i602
  %3476 = add i64 %3475, 5
  %3477 = load i64, i64* %PC.i602
  %3478 = add i64 %3477, 5
  store i64 %3478, i64* %PC.i602
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3480 = load i64, i64* %3479, align 8
  %3481 = add i64 %3480, -8
  %3482 = inttoptr i64 %3481 to i64*
  store i64 %3476, i64* %3482
  store i64 %3481, i64* %3479, align 8
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3474, i64* %3483, align 8
  store %struct.Memory* %loadMem1_43623a, %struct.Memory** %MEMORY
  %loadMem2_43623a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43623a = load i64, i64* %3
  %call2_43623a = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_43623a, %struct.Memory* %loadMem2_43623a)
  store %struct.Memory* %call2_43623a, %struct.Memory** %MEMORY
  %loadMem_43623f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 5
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 15
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %3492 to i64*
  %3493 = load i64, i64* %RBP.i601
  %3494 = sub i64 %3493, 40
  %3495 = load i64, i64* %PC.i599
  %3496 = add i64 %3495, 4
  store i64 %3496, i64* %PC.i599
  %3497 = inttoptr i64 %3494 to i64*
  %3498 = load i64, i64* %3497
  store i64 %3498, i64* %RCX.i600, align 8
  store %struct.Memory* %loadMem_43623f, %struct.Memory** %MEMORY
  %loadMem_436243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 5
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RCX.i598
  %3506 = add i64 %3505, 8
  %3507 = load i64, i64* %PC.i597
  %3508 = add i64 %3507, 4
  store i64 %3508, i64* %PC.i597
  %3509 = inttoptr i64 %3506 to i64*
  %3510 = load i64, i64* %3509
  store i64 %3510, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_436243, %struct.Memory** %MEMORY
  %loadMem_436247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 15
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 17
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %R8.i596 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RBP.i595
  %3521 = sub i64 %3520, 44
  %3522 = load i64, i64* %PC.i594
  %3523 = add i64 %3522, 4
  store i64 %3523, i64* %PC.i594
  %3524 = inttoptr i64 %3521 to i32*
  %3525 = load i32, i32* %3524
  %3526 = sext i32 %3525 to i64
  store i64 %3526, i64* %R8.i596, align 8
  store %struct.Memory* %loadMem_436247, %struct.Memory** %MEMORY
  %loadMem_43624b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 5
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 17
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %R8.i593 = bitcast %union.anon* %3535 to i64*
  %3536 = load i64, i64* %RCX.i592
  %3537 = load i64, i64* %R8.i593
  %3538 = mul i64 %3537, 8
  %3539 = add i64 %3538, %3536
  %3540 = load i64, i64* %PC.i591
  %3541 = add i64 %3540, 4
  store i64 %3541, i64* %PC.i591
  %3542 = inttoptr i64 %3539 to i64*
  %3543 = load i64, i64* %3542
  store i64 %3543, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_43624b, %struct.Memory** %MEMORY
  %loadMem_43624f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 17
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %R8.i590 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RBP.i589
  %3554 = sub i64 %3553, 48
  %3555 = load i64, i64* %PC.i588
  %3556 = add i64 %3555, 4
  store i64 %3556, i64* %PC.i588
  %3557 = inttoptr i64 %3554 to i32*
  %3558 = load i32, i32* %3557
  %3559 = sext i32 %3558 to i64
  store i64 %3559, i64* %R8.i590, align 8
  store %struct.Memory* %loadMem_43624f, %struct.Memory** %MEMORY
  %loadMem_436253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 1
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 5
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 17
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %R8.i587 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RAX.i585
  %3573 = load i64, i64* %RCX.i586
  %3574 = load i64, i64* %R8.i587
  %3575 = mul i64 %3574, 4
  %3576 = add i64 %3575, %3573
  %3577 = load i64, i64* %PC.i584
  %3578 = add i64 %3577, 4
  store i64 %3578, i64* %PC.i584
  %3579 = trunc i64 %3572 to i32
  %3580 = inttoptr i64 %3576 to i32*
  %3581 = load i32, i32* %3580
  %3582 = add i32 %3581, %3579
  %3583 = zext i32 %3582 to i64
  store i64 %3583, i64* %RAX.i585, align 8
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
  store %struct.Memory* %loadMem_436253, %struct.Memory** %MEMORY
  %loadMem_436257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 1
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %3620 to i32*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 5
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 17
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %R8.i583 = bitcast %union.anon* %3626 to i64*
  %3627 = load i64, i64* %RCX.i582
  %3628 = load i64, i64* %R8.i583
  %3629 = mul i64 %3628, 4
  %3630 = add i64 %3629, %3627
  %3631 = load i32, i32* %EAX.i581
  %3632 = zext i32 %3631 to i64
  %3633 = load i64, i64* %PC.i580
  %3634 = add i64 %3633, 4
  store i64 %3634, i64* %PC.i580
  %3635 = inttoptr i64 %3630 to i32*
  store i32 %3631, i32* %3635
  store %struct.Memory* %loadMem_436257, %struct.Memory** %MEMORY
  %loadMem_43625b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 1
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 15
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %3644 to i64*
  %3645 = load i64, i64* %RBP.i579
  %3646 = sub i64 %3645, 52
  %3647 = load i64, i64* %PC.i577
  %3648 = add i64 %3647, 3
  store i64 %3648, i64* %PC.i577
  %3649 = inttoptr i64 %3646 to i32*
  %3650 = load i32, i32* %3649
  %3651 = zext i32 %3650 to i64
  store i64 %3651, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_43625b, %struct.Memory** %MEMORY
  %loadMem_43625e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 5
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 15
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %RBP.i576
  %3662 = sub i64 %3661, 40
  %3663 = load i64, i64* %PC.i574
  %3664 = add i64 %3663, 4
  store i64 %3664, i64* %PC.i574
  %3665 = inttoptr i64 %3662 to i64*
  %3666 = load i64, i64* %3665
  store i64 %3666, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_43625e, %struct.Memory** %MEMORY
  %loadMem_436262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 5
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RCX.i573
  %3674 = add i64 %3673, 8
  %3675 = load i64, i64* %PC.i572
  %3676 = add i64 %3675, 4
  store i64 %3676, i64* %PC.i572
  %3677 = inttoptr i64 %3674 to i64*
  %3678 = load i64, i64* %3677
  store i64 %3678, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_436262, %struct.Memory** %MEMORY
  %loadMem_436266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 15
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 17
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %R8.i571 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i570
  %3689 = sub i64 %3688, 44
  %3690 = load i64, i64* %PC.i569
  %3691 = add i64 %3690, 4
  store i64 %3691, i64* %PC.i569
  %3692 = inttoptr i64 %3689 to i32*
  %3693 = load i32, i32* %3692
  %3694 = sext i32 %3693 to i64
  store i64 %3694, i64* %R8.i571, align 8
  store %struct.Memory* %loadMem_436266, %struct.Memory** %MEMORY
  %loadMem_43626a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 5
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 17
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %R8.i568 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RCX.i567
  %3705 = load i64, i64* %R8.i568
  %3706 = mul i64 %3705, 8
  %3707 = add i64 %3706, %3704
  %3708 = load i64, i64* %PC.i566
  %3709 = add i64 %3708, 4
  store i64 %3709, i64* %PC.i566
  %3710 = inttoptr i64 %3707 to i64*
  %3711 = load i64, i64* %3710
  store i64 %3711, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_43626a, %struct.Memory** %MEMORY
  %loadMem_43626e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 17
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %R8.i565 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %RBP.i564
  %3722 = sub i64 %3721, 48
  %3723 = load i64, i64* %PC.i563
  %3724 = add i64 %3723, 4
  store i64 %3724, i64* %PC.i563
  %3725 = inttoptr i64 %3722 to i32*
  %3726 = load i32, i32* %3725
  %3727 = sext i32 %3726 to i64
  store i64 %3727, i64* %R8.i565, align 8
  store %struct.Memory* %loadMem_43626e, %struct.Memory** %MEMORY
  %loadMem_436272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 5
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 7
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 17
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %R8.i562 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %RCX.i560
  %3741 = load i64, i64* %R8.i562
  %3742 = mul i64 %3741, 4
  %3743 = add i64 %3742, %3740
  %3744 = load i64, i64* %PC.i559
  %3745 = add i64 %3744, 4
  store i64 %3745, i64* %PC.i559
  %3746 = inttoptr i64 %3743 to i32*
  %3747 = load i32, i32* %3746
  %3748 = zext i32 %3747 to i64
  store i64 %3748, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_436272, %struct.Memory** %MEMORY
  %loadMem_436276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 1
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %3754 to i32*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 7
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RDX.i558
  %3759 = load i32, i32* %EAX.i557
  %3760 = zext i32 %3759 to i64
  %3761 = load i64, i64* %PC.i556
  %3762 = add i64 %3761, 2
  store i64 %3762, i64* %PC.i556
  %3763 = trunc i64 %3758 to i32
  %3764 = sub i32 %3763, %3759
  %3765 = zext i32 %3764 to i64
  store i64 %3765, i64* %RDX.i558, align 8
  %3766 = icmp ult i32 %3763, %3759
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3767, i8* %3768, align 1
  %3769 = and i32 %3764, 255
  %3770 = call i32 @llvm.ctpop.i32(i32 %3769)
  %3771 = trunc i32 %3770 to i8
  %3772 = and i8 %3771, 1
  %3773 = xor i8 %3772, 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3773, i8* %3774, align 1
  %3775 = xor i64 %3760, %3758
  %3776 = trunc i64 %3775 to i32
  %3777 = xor i32 %3776, %3764
  %3778 = lshr i32 %3777, 4
  %3779 = trunc i32 %3778 to i8
  %3780 = and i8 %3779, 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3780, i8* %3781, align 1
  %3782 = icmp eq i32 %3764, 0
  %3783 = zext i1 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3783, i8* %3784, align 1
  %3785 = lshr i32 %3764, 31
  %3786 = trunc i32 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3786, i8* %3787, align 1
  %3788 = lshr i32 %3763, 31
  %3789 = lshr i32 %3759, 31
  %3790 = xor i32 %3789, %3788
  %3791 = xor i32 %3785, %3788
  %3792 = add i32 %3791, %3790
  %3793 = icmp eq i32 %3792, 2
  %3794 = zext i1 %3793 to i8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3794, i8* %3795, align 1
  store %struct.Memory* %loadMem_436276, %struct.Memory** %MEMORY
  %loadMem_436278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 7
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %EDX.i553 = bitcast %union.anon* %3801 to i32*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 5
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 17
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %R8.i555 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %RCX.i554
  %3809 = load i64, i64* %R8.i555
  %3810 = mul i64 %3809, 4
  %3811 = add i64 %3810, %3808
  %3812 = load i32, i32* %EDX.i553
  %3813 = zext i32 %3812 to i64
  %3814 = load i64, i64* %PC.i552
  %3815 = add i64 %3814, 4
  store i64 %3815, i64* %PC.i552
  %3816 = inttoptr i64 %3811 to i32*
  store i32 %3812, i32* %3816
  store %struct.Memory* %loadMem_436278, %struct.Memory** %MEMORY
  %loadMem_43627c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 5
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 15
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RBP.i551
  %3827 = sub i64 %3826, 32
  %3828 = load i64, i64* %PC.i549
  %3829 = add i64 %3828, 4
  store i64 %3829, i64* %PC.i549
  %3830 = inttoptr i64 %3827 to i64*
  %3831 = load i64, i64* %3830
  store i64 %3831, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_43627c, %struct.Memory** %MEMORY
  %loadMem_436280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 5
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RCX.i548
  %3839 = add i64 %3838, 16
  %3840 = load i64, i64* %PC.i547
  %3841 = add i64 %3840, 4
  store i64 %3841, i64* %PC.i547
  %3842 = inttoptr i64 %3839 to i64*
  %3843 = load i64, i64* %3842
  store i64 %3843, i64* %RCX.i548, align 8
  store %struct.Memory* %loadMem_436280, %struct.Memory** %MEMORY
  %loadMem_436284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 15
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 17
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %R8.i546 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i545
  %3854 = sub i64 %3853, 44
  %3855 = load i64, i64* %PC.i544
  %3856 = add i64 %3855, 4
  store i64 %3856, i64* %PC.i544
  %3857 = inttoptr i64 %3854 to i32*
  %3858 = load i32, i32* %3857
  %3859 = sext i32 %3858 to i64
  store i64 %3859, i64* %R8.i546, align 8
  store %struct.Memory* %loadMem_436284, %struct.Memory** %MEMORY
  %loadMem_436288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 5
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 17
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %R8.i543 = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %RCX.i542
  %3870 = load i64, i64* %R8.i543
  %3871 = mul i64 %3870, 8
  %3872 = add i64 %3871, %3869
  %3873 = load i64, i64* %PC.i541
  %3874 = add i64 %3873, 4
  store i64 %3874, i64* %PC.i541
  %3875 = inttoptr i64 %3872 to i64*
  %3876 = load i64, i64* %3875
  store i64 %3876, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_436288, %struct.Memory** %MEMORY
  %loadMem_43628c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 15
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 17
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %R8.i540 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RBP.i539
  %3887 = sub i64 %3886, 48
  %3888 = load i64, i64* %PC.i538
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %PC.i538
  %3890 = inttoptr i64 %3887 to i32*
  %3891 = load i32, i32* %3890
  %3892 = sext i32 %3891 to i64
  store i64 %3892, i64* %R8.i540, align 8
  store %struct.Memory* %loadMem_43628c, %struct.Memory** %MEMORY
  %loadMem_436290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 5
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 17
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %R8.i537 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %RCX.i536
  %3906 = load i64, i64* %R8.i537
  %3907 = mul i64 %3906, 4
  %3908 = add i64 %3907, %3905
  %3909 = load i64, i64* %PC.i534
  %3910 = add i64 %3909, 4
  store i64 %3910, i64* %PC.i534
  %3911 = inttoptr i64 %3908 to i32*
  %3912 = load i32, i32* %3911
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_436290, %struct.Memory** %MEMORY
  %loadMem_436294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 33
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3916 to i64*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 5
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 15
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %RBP.i533
  %3924 = sub i64 %3923, 40
  %3925 = load i64, i64* %PC.i531
  %3926 = add i64 %3925, 4
  store i64 %3926, i64* %PC.i531
  %3927 = inttoptr i64 %3924 to i64*
  %3928 = load i64, i64* %3927
  store i64 %3928, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_436294, %struct.Memory** %MEMORY
  %loadMem_436298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 5
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %RCX.i530
  %3936 = add i64 %3935, 16
  %3937 = load i64, i64* %PC.i529
  %3938 = add i64 %3937, 4
  store i64 %3938, i64* %PC.i529
  %3939 = inttoptr i64 %3936 to i64*
  %3940 = load i64, i64* %3939
  store i64 %3940, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_436298, %struct.Memory** %MEMORY
  %loadMem_43629c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 15
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 17
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %R8.i528 = bitcast %union.anon* %3949 to i64*
  %3950 = load i64, i64* %RBP.i527
  %3951 = sub i64 %3950, 44
  %3952 = load i64, i64* %PC.i526
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i526
  %3954 = inttoptr i64 %3951 to i32*
  %3955 = load i32, i32* %3954
  %3956 = sext i32 %3955 to i64
  store i64 %3956, i64* %R8.i528, align 8
  store %struct.Memory* %loadMem_43629c, %struct.Memory** %MEMORY
  %loadMem_4362a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 33
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 5
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 17
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %R8.i525 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %RCX.i524
  %3967 = load i64, i64* %R8.i525
  %3968 = mul i64 %3967, 8
  %3969 = add i64 %3968, %3966
  %3970 = load i64, i64* %PC.i523
  %3971 = add i64 %3970, 4
  store i64 %3971, i64* %PC.i523
  %3972 = inttoptr i64 %3969 to i64*
  %3973 = load i64, i64* %3972
  store i64 %3973, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_4362a0, %struct.Memory** %MEMORY
  %loadMem_4362a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 15
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 17
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %R8.i522 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i521
  %3984 = sub i64 %3983, 48
  %3985 = load i64, i64* %PC.i520
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i520
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987
  %3989 = sext i32 %3988 to i64
  store i64 %3989, i64* %R8.i522, align 8
  store %struct.Memory* %loadMem_4362a4, %struct.Memory** %MEMORY
  %loadMem_4362a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 1
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %EAX.i517 = bitcast %union.anon* %3995 to i32*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 5
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 17
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %R8.i519 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %RCX.i518
  %4003 = load i64, i64* %R8.i519
  %4004 = mul i64 %4003, 4
  %4005 = add i64 %4004, %4002
  %4006 = load i32, i32* %EAX.i517
  %4007 = zext i32 %4006 to i64
  %4008 = load i64, i64* %PC.i516
  %4009 = add i64 %4008, 4
  store i64 %4009, i64* %PC.i516
  %4010 = inttoptr i64 %4005 to i32*
  store i32 %4006, i32* %4010
  store %struct.Memory* %loadMem_4362a8, %struct.Memory** %MEMORY
  %loadMem_4362ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 33
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 5
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 15
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %4019 to i64*
  %4020 = load i64, i64* %RBP.i515
  %4021 = sub i64 %4020, 24
  %4022 = load i64, i64* %PC.i513
  %4023 = add i64 %4022, 4
  store i64 %4023, i64* %PC.i513
  %4024 = inttoptr i64 %4021 to i64*
  %4025 = load i64, i64* %4024
  store i64 %4025, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_4362ac, %struct.Memory** %MEMORY
  %loadMem_4362b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 5
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %4031 to i64*
  %4032 = load i64, i64* %RCX.i512
  %4033 = add i64 %4032, 8
  %4034 = load i64, i64* %PC.i511
  %4035 = add i64 %4034, 4
  store i64 %4035, i64* %PC.i511
  %4036 = inttoptr i64 %4033 to i64*
  %4037 = load i64, i64* %4036
  store i64 %4037, i64* %RCX.i512, align 8
  store %struct.Memory* %loadMem_4362b0, %struct.Memory** %MEMORY
  %loadMem_4362b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 1
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 15
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RBP.i510
  %4048 = sub i64 %4047, 44
  %4049 = load i64, i64* %PC.i508
  %4050 = add i64 %4049, 3
  store i64 %4050, i64* %PC.i508
  %4051 = inttoptr i64 %4048 to i32*
  %4052 = load i32, i32* %4051
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_4362b4, %struct.Memory** %MEMORY
  %loadMem_4362b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RAX.i507
  %4061 = load i64, i64* %PC.i506
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i506
  %4063 = trunc i64 %4060 to i32
  %4064 = sub i32 %4063, 1
  %4065 = zext i32 %4064 to i64
  store i64 %4065, i64* %RAX.i507, align 8
  %4066 = icmp ult i32 %4063, 1
  %4067 = zext i1 %4066 to i8
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4067, i8* %4068, align 1
  %4069 = and i32 %4064, 255
  %4070 = call i32 @llvm.ctpop.i32(i32 %4069)
  %4071 = trunc i32 %4070 to i8
  %4072 = and i8 %4071, 1
  %4073 = xor i8 %4072, 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4073, i8* %4074, align 1
  %4075 = xor i64 1, %4060
  %4076 = trunc i64 %4075 to i32
  %4077 = xor i32 %4076, %4064
  %4078 = lshr i32 %4077, 4
  %4079 = trunc i32 %4078 to i8
  %4080 = and i8 %4079, 1
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4080, i8* %4081, align 1
  %4082 = icmp eq i32 %4064, 0
  %4083 = zext i1 %4082 to i8
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4083, i8* %4084, align 1
  %4085 = lshr i32 %4064, 31
  %4086 = trunc i32 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4086, i8* %4087, align 1
  %4088 = lshr i32 %4063, 31
  %4089 = xor i32 %4085, %4088
  %4090 = add i32 %4089, %4088
  %4091 = icmp eq i32 %4090, 2
  %4092 = zext i1 %4091 to i8
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4092, i8* %4093, align 1
  store %struct.Memory* %loadMem_4362b7, %struct.Memory** %MEMORY
  %loadMem_4362ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 1
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %EAX.i504 = bitcast %union.anon* %4099 to i32*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 17
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %R8.i505 = bitcast %union.anon* %4102 to i64*
  %4103 = load i32, i32* %EAX.i504
  %4104 = zext i32 %4103 to i64
  %4105 = load i64, i64* %PC.i503
  %4106 = add i64 %4105, 3
  store i64 %4106, i64* %PC.i503
  %4107 = shl i64 %4104, 32
  %4108 = ashr exact i64 %4107, 32
  store i64 %4108, i64* %R8.i505, align 8
  store %struct.Memory* %loadMem_4362ba, %struct.Memory** %MEMORY
  %loadMem_4362bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 5
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 17
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %R8.i502 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RCX.i501
  %4119 = load i64, i64* %R8.i502
  %4120 = mul i64 %4119, 8
  %4121 = add i64 %4120, %4118
  %4122 = load i64, i64* %PC.i500
  %4123 = add i64 %4122, 4
  store i64 %4123, i64* %PC.i500
  %4124 = inttoptr i64 %4121 to i64*
  %4125 = load i64, i64* %4124
  store i64 %4125, i64* %RCX.i501, align 8
  store %struct.Memory* %loadMem_4362bd, %struct.Memory** %MEMORY
  %loadMem_4362c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4128 to i64*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 15
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 17
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %R8.i499 = bitcast %union.anon* %4134 to i64*
  %4135 = load i64, i64* %RBP.i498
  %4136 = sub i64 %4135, 48
  %4137 = load i64, i64* %PC.i497
  %4138 = add i64 %4137, 4
  store i64 %4138, i64* %PC.i497
  %4139 = inttoptr i64 %4136 to i32*
  %4140 = load i32, i32* %4139
  %4141 = sext i32 %4140 to i64
  store i64 %4141, i64* %R8.i499, align 8
  store %struct.Memory* %loadMem_4362c1, %struct.Memory** %MEMORY
  %loadMem_4362c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4144 to i64*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 1
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 5
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 17
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %R8.i496 = bitcast %union.anon* %4153 to i64*
  %4154 = load i64, i64* %RCX.i495
  %4155 = load i64, i64* %R8.i496
  %4156 = mul i64 %4155, 4
  %4157 = add i64 %4156, %4154
  %4158 = load i64, i64* %PC.i493
  %4159 = add i64 %4158, 4
  store i64 %4159, i64* %PC.i493
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_4362c5, %struct.Memory** %MEMORY
  %loadMem_4362c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 5
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RBP.i492
  %4173 = sub i64 %4172, 16
  %4174 = load i64, i64* %PC.i490
  %4175 = add i64 %4174, 4
  store i64 %4175, i64* %PC.i490
  %4176 = inttoptr i64 %4173 to i64*
  %4177 = load i64, i64* %4176
  store i64 %4177, i64* %RCX.i491, align 8
  store %struct.Memory* %loadMem_4362c9, %struct.Memory** %MEMORY
  %loadMem_4362cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 5
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RCX.i489
  %4185 = add i64 %4184, 312
  %4186 = load i64, i64* %PC.i488
  %4187 = add i64 %4186, 7
  store i64 %4187, i64* %PC.i488
  %4188 = inttoptr i64 %4185 to i64*
  %4189 = load i64, i64* %4188
  store i64 %4189, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_4362cd, %struct.Memory** %MEMORY
  %loadMem_4362d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 33
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 5
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %RCX.i487
  %4197 = add i64 %4196, 8
  %4198 = load i64, i64* %PC.i486
  %4199 = add i64 %4198, 4
  store i64 %4199, i64* %PC.i486
  %4200 = inttoptr i64 %4197 to i64*
  %4201 = load i64, i64* %4200
  store i64 %4201, i64* %RCX.i487, align 8
  store %struct.Memory* %loadMem_4362d4, %struct.Memory** %MEMORY
  %loadMem_4362d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 15
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 17
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %R8.i485 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RBP.i484
  %4212 = sub i64 %4211, 48
  %4213 = load i64, i64* %PC.i483
  %4214 = add i64 %4213, 4
  store i64 %4214, i64* %PC.i483
  %4215 = inttoptr i64 %4212 to i32*
  %4216 = load i32, i32* %4215
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %R8.i485, align 8
  store %struct.Memory* %loadMem_4362d8, %struct.Memory** %MEMORY
  %loadMem_4362dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 1
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 5
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 17
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %R8.i482 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %RAX.i480
  %4231 = load i64, i64* %RCX.i481
  %4232 = load i64, i64* %R8.i482
  %4233 = mul i64 %4232, 4
  %4234 = add i64 %4233, %4231
  %4235 = load i64, i64* %PC.i479
  %4236 = add i64 %4235, 4
  store i64 %4236, i64* %PC.i479
  %4237 = trunc i64 %4230 to i32
  %4238 = inttoptr i64 %4234 to i32*
  %4239 = load i32, i32* %4238
  %4240 = add i32 %4239, %4237
  %4241 = zext i32 %4240 to i64
  store i64 %4241, i64* %RAX.i480, align 8
  %4242 = icmp ult i32 %4240, %4237
  %4243 = icmp ult i32 %4240, %4239
  %4244 = or i1 %4242, %4243
  %4245 = zext i1 %4244 to i8
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4245, i8* %4246, align 1
  %4247 = and i32 %4240, 255
  %4248 = call i32 @llvm.ctpop.i32(i32 %4247)
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = xor i8 %4250, 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4251, i8* %4252, align 1
  %4253 = xor i32 %4239, %4237
  %4254 = xor i32 %4253, %4240
  %4255 = lshr i32 %4254, 4
  %4256 = trunc i32 %4255 to i8
  %4257 = and i8 %4256, 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4257, i8* %4258, align 1
  %4259 = icmp eq i32 %4240, 0
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4260, i8* %4261, align 1
  %4262 = lshr i32 %4240, 31
  %4263 = trunc i32 %4262 to i8
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4263, i8* %4264, align 1
  %4265 = lshr i32 %4237, 31
  %4266 = lshr i32 %4239, 31
  %4267 = xor i32 %4262, %4265
  %4268 = xor i32 %4262, %4266
  %4269 = add i32 %4267, %4268
  %4270 = icmp eq i32 %4269, 2
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4271, i8* %4272, align 1
  store %struct.Memory* %loadMem_4362dc, %struct.Memory** %MEMORY
  %loadMem_4362e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 5
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 15
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %RBP.i478
  %4283 = sub i64 %4282, 24
  %4284 = load i64, i64* %PC.i476
  %4285 = add i64 %4284, 4
  store i64 %4285, i64* %PC.i476
  %4286 = inttoptr i64 %4283 to i64*
  %4287 = load i64, i64* %4286
  store i64 %4287, i64* %RCX.i477, align 8
  store %struct.Memory* %loadMem_4362e0, %struct.Memory** %MEMORY
  %loadMem_4362e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 5
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RCX.i475
  %4295 = add i64 %4294, 16
  %4296 = load i64, i64* %PC.i474
  %4297 = add i64 %4296, 4
  store i64 %4297, i64* %PC.i474
  %4298 = inttoptr i64 %4295 to i64*
  %4299 = load i64, i64* %4298
  store i64 %4299, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_4362e4, %struct.Memory** %MEMORY
  %loadMem_4362e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 7
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 15
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %RBP.i473
  %4310 = sub i64 %4309, 44
  %4311 = load i64, i64* %PC.i471
  %4312 = add i64 %4311, 3
  store i64 %4312, i64* %PC.i471
  %4313 = inttoptr i64 %4310 to i32*
  %4314 = load i32, i32* %4313
  %4315 = zext i32 %4314 to i64
  store i64 %4315, i64* %RDX.i472, align 8
  store %struct.Memory* %loadMem_4362e8, %struct.Memory** %MEMORY
  %loadMem_4362eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 7
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %RDX.i470
  %4323 = load i64, i64* %PC.i469
  %4324 = add i64 %4323, 3
  store i64 %4324, i64* %PC.i469
  %4325 = trunc i64 %4322 to i32
  %4326 = sub i32 %4325, 1
  %4327 = zext i32 %4326 to i64
  store i64 %4327, i64* %RDX.i470, align 8
  %4328 = icmp ult i32 %4325, 1
  %4329 = zext i1 %4328 to i8
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4329, i8* %4330, align 1
  %4331 = and i32 %4326, 255
  %4332 = call i32 @llvm.ctpop.i32(i32 %4331)
  %4333 = trunc i32 %4332 to i8
  %4334 = and i8 %4333, 1
  %4335 = xor i8 %4334, 1
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4335, i8* %4336, align 1
  %4337 = xor i64 1, %4322
  %4338 = trunc i64 %4337 to i32
  %4339 = xor i32 %4338, %4326
  %4340 = lshr i32 %4339, 4
  %4341 = trunc i32 %4340 to i8
  %4342 = and i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4342, i8* %4343, align 1
  %4344 = icmp eq i32 %4326, 0
  %4345 = zext i1 %4344 to i8
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4345, i8* %4346, align 1
  %4347 = lshr i32 %4326, 31
  %4348 = trunc i32 %4347 to i8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4348, i8* %4349, align 1
  %4350 = lshr i32 %4325, 31
  %4351 = xor i32 %4347, %4350
  %4352 = add i32 %4351, %4350
  %4353 = icmp eq i32 %4352, 2
  %4354 = zext i1 %4353 to i8
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4354, i8* %4355, align 1
  store %struct.Memory* %loadMem_4362eb, %struct.Memory** %MEMORY
  %loadMem_4362ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 7
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %EDX.i467 = bitcast %union.anon* %4361 to i32*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 17
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %R8.i468 = bitcast %union.anon* %4364 to i64*
  %4365 = load i32, i32* %EDX.i467
  %4366 = zext i32 %4365 to i64
  %4367 = load i64, i64* %PC.i466
  %4368 = add i64 %4367, 3
  store i64 %4368, i64* %PC.i466
  %4369 = shl i64 %4366, 32
  %4370 = ashr exact i64 %4369, 32
  store i64 %4370, i64* %R8.i468, align 8
  store %struct.Memory* %loadMem_4362ee, %struct.Memory** %MEMORY
  %loadMem_4362f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 5
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 17
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %R8.i465 = bitcast %union.anon* %4379 to i64*
  %4380 = load i64, i64* %RCX.i464
  %4381 = load i64, i64* %R8.i465
  %4382 = mul i64 %4381, 8
  %4383 = add i64 %4382, %4380
  %4384 = load i64, i64* %PC.i463
  %4385 = add i64 %4384, 4
  store i64 %4385, i64* %PC.i463
  %4386 = inttoptr i64 %4383 to i64*
  %4387 = load i64, i64* %4386
  store i64 %4387, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_4362f1, %struct.Memory** %MEMORY
  %loadMem_4362f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 15
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 17
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %R8.i462 = bitcast %union.anon* %4396 to i64*
  %4397 = load i64, i64* %RBP.i461
  %4398 = sub i64 %4397, 48
  %4399 = load i64, i64* %PC.i460
  %4400 = add i64 %4399, 4
  store i64 %4400, i64* %PC.i460
  %4401 = inttoptr i64 %4398 to i32*
  %4402 = load i32, i32* %4401
  %4403 = sext i32 %4402 to i64
  store i64 %4403, i64* %R8.i462, align 8
  store %struct.Memory* %loadMem_4362f5, %struct.Memory** %MEMORY
  %loadMem_4362f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 5
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 7
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %4412 to i64*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 17
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %R8.i459 = bitcast %union.anon* %4415 to i64*
  %4416 = load i64, i64* %RCX.i457
  %4417 = load i64, i64* %R8.i459
  %4418 = mul i64 %4417, 4
  %4419 = add i64 %4418, %4416
  %4420 = load i64, i64* %PC.i456
  %4421 = add i64 %4420, 4
  store i64 %4421, i64* %PC.i456
  %4422 = inttoptr i64 %4419 to i32*
  %4423 = load i32, i32* %4422
  %4424 = zext i32 %4423 to i64
  store i64 %4424, i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_4362f9, %struct.Memory** %MEMORY
  %loadMem_4362fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 5
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 15
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %RBP.i455
  %4435 = sub i64 %4434, 16
  %4436 = load i64, i64* %PC.i453
  %4437 = add i64 %4436, 4
  store i64 %4437, i64* %PC.i453
  %4438 = inttoptr i64 %4435 to i64*
  %4439 = load i64, i64* %4438
  store i64 %4439, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_4362fd, %struct.Memory** %MEMORY
  %loadMem_436301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4442 to i64*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 5
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %4445 to i64*
  %4446 = load i64, i64* %RCX.i452
  %4447 = add i64 %4446, 312
  %4448 = load i64, i64* %PC.i451
  %4449 = add i64 %4448, 7
  store i64 %4449, i64* %PC.i451
  %4450 = inttoptr i64 %4447 to i64*
  %4451 = load i64, i64* %4450
  store i64 %4451, i64* %RCX.i452, align 8
  store %struct.Memory* %loadMem_436301, %struct.Memory** %MEMORY
  %loadMem_436308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 5
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %RCX.i450
  %4459 = add i64 %4458, 32
  %4460 = load i64, i64* %PC.i449
  %4461 = add i64 %4460, 4
  store i64 %4461, i64* %PC.i449
  %4462 = inttoptr i64 %4459 to i64*
  %4463 = load i64, i64* %4462
  store i64 %4463, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_436308, %struct.Memory** %MEMORY
  %loadMem_43630c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 15
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 17
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %R8.i448 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RBP.i447
  %4474 = sub i64 %4473, 48
  %4475 = load i64, i64* %PC.i446
  %4476 = add i64 %4475, 4
  store i64 %4476, i64* %PC.i446
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477
  %4479 = sext i32 %4478 to i64
  store i64 %4479, i64* %R8.i448, align 8
  store %struct.Memory* %loadMem_43630c, %struct.Memory** %MEMORY
  %loadMem_436310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 5
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 7
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 17
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %R8.i445 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RDX.i444
  %4493 = load i64, i64* %RCX.i443
  %4494 = load i64, i64* %R8.i445
  %4495 = mul i64 %4494, 4
  %4496 = add i64 %4495, %4493
  %4497 = load i64, i64* %PC.i442
  %4498 = add i64 %4497, 4
  store i64 %4498, i64* %PC.i442
  %4499 = trunc i64 %4492 to i32
  %4500 = inttoptr i64 %4496 to i32*
  %4501 = load i32, i32* %4500
  %4502 = add i32 %4501, %4499
  %4503 = zext i32 %4502 to i64
  store i64 %4503, i64* %RDX.i444, align 8
  %4504 = icmp ult i32 %4502, %4499
  %4505 = icmp ult i32 %4502, %4501
  %4506 = or i1 %4504, %4505
  %4507 = zext i1 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4507, i8* %4508, align 1
  %4509 = and i32 %4502, 255
  %4510 = call i32 @llvm.ctpop.i32(i32 %4509)
  %4511 = trunc i32 %4510 to i8
  %4512 = and i8 %4511, 1
  %4513 = xor i8 %4512, 1
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4513, i8* %4514, align 1
  %4515 = xor i32 %4501, %4499
  %4516 = xor i32 %4515, %4502
  %4517 = lshr i32 %4516, 4
  %4518 = trunc i32 %4517 to i8
  %4519 = and i8 %4518, 1
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4519, i8* %4520, align 1
  %4521 = icmp eq i32 %4502, 0
  %4522 = zext i1 %4521 to i8
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4522, i8* %4523, align 1
  %4524 = lshr i32 %4502, 31
  %4525 = trunc i32 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4525, i8* %4526, align 1
  %4527 = lshr i32 %4499, 31
  %4528 = lshr i32 %4501, 31
  %4529 = xor i32 %4524, %4527
  %4530 = xor i32 %4524, %4528
  %4531 = add i32 %4529, %4530
  %4532 = icmp eq i32 %4531, 2
  %4533 = zext i1 %4532 to i8
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4533, i8* %4534, align 1
  store %struct.Memory* %loadMem_436310, %struct.Memory** %MEMORY
  %loadMem_436314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 1
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %4540 to i32*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 11
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RDI.i441 = bitcast %union.anon* %4543 to i64*
  %4544 = load i32, i32* %EAX.i440
  %4545 = zext i32 %4544 to i64
  %4546 = load i64, i64* %PC.i439
  %4547 = add i64 %4546, 2
  store i64 %4547, i64* %PC.i439
  %4548 = and i64 %4545, 4294967295
  store i64 %4548, i64* %RDI.i441, align 8
  store %struct.Memory* %loadMem_436314, %struct.Memory** %MEMORY
  %loadMem_436316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 7
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %EDX.i437 = bitcast %union.anon* %4554 to i32*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 9
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RSI.i438 = bitcast %union.anon* %4557 to i64*
  %4558 = load i32, i32* %EDX.i437
  %4559 = zext i32 %4558 to i64
  %4560 = load i64, i64* %PC.i436
  %4561 = add i64 %4560, 2
  store i64 %4561, i64* %PC.i436
  %4562 = and i64 %4559, 4294967295
  store i64 %4562, i64* %RSI.i438, align 8
  store %struct.Memory* %loadMem_436316, %struct.Memory** %MEMORY
  %loadMem1_436318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4565 to i64*
  %4566 = load i64, i64* %PC.i435
  %4567 = add i64 %4566, -57704
  %4568 = load i64, i64* %PC.i435
  %4569 = add i64 %4568, 5
  %4570 = load i64, i64* %PC.i435
  %4571 = add i64 %4570, 5
  store i64 %4571, i64* %PC.i435
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4573 = load i64, i64* %4572, align 8
  %4574 = add i64 %4573, -8
  %4575 = inttoptr i64 %4574 to i64*
  store i64 %4569, i64* %4575
  store i64 %4574, i64* %4572, align 8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4567, i64* %4576, align 8
  store %struct.Memory* %loadMem1_436318, %struct.Memory** %MEMORY
  %loadMem2_436318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436318 = load i64, i64* %3
  %call2_436318 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436318, %struct.Memory* %loadMem2_436318)
  store %struct.Memory* %call2_436318, %struct.Memory** %MEMORY
  %loadMem_43631d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 5
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i434
  %4587 = sub i64 %4586, 40
  %4588 = load i64, i64* %PC.i432
  %4589 = add i64 %4588, 4
  store i64 %4589, i64* %PC.i432
  %4590 = inttoptr i64 %4587 to i64*
  %4591 = load i64, i64* %4590
  store i64 %4591, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_43631d, %struct.Memory** %MEMORY
  %loadMem_436321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 5
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %RCX.i431
  %4599 = add i64 %4598, 16
  %4600 = load i64, i64* %PC.i430
  %4601 = add i64 %4600, 4
  store i64 %4601, i64* %PC.i430
  %4602 = inttoptr i64 %4599 to i64*
  %4603 = load i64, i64* %4602
  store i64 %4603, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_436321, %struct.Memory** %MEMORY
  %loadMem_436325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 15
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 17
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %R8.i429 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i428
  %4614 = sub i64 %4613, 44
  %4615 = load i64, i64* %PC.i427
  %4616 = add i64 %4615, 4
  store i64 %4616, i64* %PC.i427
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = sext i32 %4618 to i64
  store i64 %4619, i64* %R8.i429, align 8
  store %struct.Memory* %loadMem_436325, %struct.Memory** %MEMORY
  %loadMem_436329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 17
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %R8.i426 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RCX.i425
  %4630 = load i64, i64* %R8.i426
  %4631 = mul i64 %4630, 8
  %4632 = add i64 %4631, %4629
  %4633 = load i64, i64* %PC.i424
  %4634 = add i64 %4633, 4
  store i64 %4634, i64* %PC.i424
  %4635 = inttoptr i64 %4632 to i64*
  %4636 = load i64, i64* %4635
  store i64 %4636, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_436329, %struct.Memory** %MEMORY
  %loadMem_43632d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 15
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 17
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %R8.i423 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RBP.i422
  %4647 = sub i64 %4646, 48
  %4648 = load i64, i64* %PC.i421
  %4649 = add i64 %4648, 4
  store i64 %4649, i64* %PC.i421
  %4650 = inttoptr i64 %4647 to i32*
  %4651 = load i32, i32* %4650
  %4652 = sext i32 %4651 to i64
  store i64 %4652, i64* %R8.i423, align 8
  store %struct.Memory* %loadMem_43632d, %struct.Memory** %MEMORY
  %loadMem_436331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 33
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 1
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 5
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 17
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %R8.i420 = bitcast %union.anon* %4664 to i64*
  %4665 = load i64, i64* %RAX.i418
  %4666 = load i64, i64* %RCX.i419
  %4667 = load i64, i64* %R8.i420
  %4668 = mul i64 %4667, 4
  %4669 = add i64 %4668, %4666
  %4670 = load i64, i64* %PC.i417
  %4671 = add i64 %4670, 4
  store i64 %4671, i64* %PC.i417
  %4672 = trunc i64 %4665 to i32
  %4673 = inttoptr i64 %4669 to i32*
  %4674 = load i32, i32* %4673
  %4675 = add i32 %4674, %4672
  %4676 = zext i32 %4675 to i64
  store i64 %4676, i64* %RAX.i418, align 8
  %4677 = icmp ult i32 %4675, %4672
  %4678 = icmp ult i32 %4675, %4674
  %4679 = or i1 %4677, %4678
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4680, i8* %4681, align 1
  %4682 = and i32 %4675, 255
  %4683 = call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4686, i8* %4687, align 1
  %4688 = xor i32 %4674, %4672
  %4689 = xor i32 %4688, %4675
  %4690 = lshr i32 %4689, 4
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4692, i8* %4693, align 1
  %4694 = icmp eq i32 %4675, 0
  %4695 = zext i1 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4695, i8* %4696, align 1
  %4697 = lshr i32 %4675, 31
  %4698 = trunc i32 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4698, i8* %4699, align 1
  %4700 = lshr i32 %4672, 31
  %4701 = lshr i32 %4674, 31
  %4702 = xor i32 %4697, %4700
  %4703 = xor i32 %4697, %4701
  %4704 = add i32 %4702, %4703
  %4705 = icmp eq i32 %4704, 2
  %4706 = zext i1 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4706, i8* %4707, align 1
  store %struct.Memory* %loadMem_436331, %struct.Memory** %MEMORY
  %loadMem_436335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %4713 to i32*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 5
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 17
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %R8.i416 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %RCX.i415
  %4721 = load i64, i64* %R8.i416
  %4722 = mul i64 %4721, 4
  %4723 = add i64 %4722, %4720
  %4724 = load i32, i32* %EAX.i414
  %4725 = zext i32 %4724 to i64
  %4726 = load i64, i64* %PC.i413
  %4727 = add i64 %4726, 4
  store i64 %4727, i64* %PC.i413
  %4728 = inttoptr i64 %4723 to i32*
  store i32 %4724, i32* %4728
  store %struct.Memory* %loadMem_436335, %struct.Memory** %MEMORY
  %loadMem_436339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 33
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 1
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 15
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %4737 to i64*
  %4738 = load i64, i64* %RBP.i412
  %4739 = sub i64 %4738, 52
  %4740 = load i64, i64* %PC.i410
  %4741 = add i64 %4740, 3
  store i64 %4741, i64* %PC.i410
  %4742 = inttoptr i64 %4739 to i32*
  %4743 = load i32, i32* %4742
  %4744 = zext i32 %4743 to i64
  store i64 %4744, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_436339, %struct.Memory** %MEMORY
  %loadMem_43633c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 33
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 5
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 15
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4753 to i64*
  %4754 = load i64, i64* %RBP.i409
  %4755 = sub i64 %4754, 40
  %4756 = load i64, i64* %PC.i407
  %4757 = add i64 %4756, 4
  store i64 %4757, i64* %PC.i407
  %4758 = inttoptr i64 %4755 to i64*
  %4759 = load i64, i64* %4758
  store i64 %4759, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_43633c, %struct.Memory** %MEMORY
  %loadMem_436340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 5
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RCX.i406
  %4767 = add i64 %4766, 16
  %4768 = load i64, i64* %PC.i405
  %4769 = add i64 %4768, 4
  store i64 %4769, i64* %PC.i405
  %4770 = inttoptr i64 %4767 to i64*
  %4771 = load i64, i64* %4770
  store i64 %4771, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_436340, %struct.Memory** %MEMORY
  %loadMem_436344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 15
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %4777 to i64*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 17
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %R8.i404 = bitcast %union.anon* %4780 to i64*
  %4781 = load i64, i64* %RBP.i403
  %4782 = sub i64 %4781, 44
  %4783 = load i64, i64* %PC.i402
  %4784 = add i64 %4783, 4
  store i64 %4784, i64* %PC.i402
  %4785 = inttoptr i64 %4782 to i32*
  %4786 = load i32, i32* %4785
  %4787 = sext i32 %4786 to i64
  store i64 %4787, i64* %R8.i404, align 8
  store %struct.Memory* %loadMem_436344, %struct.Memory** %MEMORY
  %loadMem_436348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 5
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 17
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %R8.i401 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RCX.i400
  %4798 = load i64, i64* %R8.i401
  %4799 = mul i64 %4798, 8
  %4800 = add i64 %4799, %4797
  %4801 = load i64, i64* %PC.i399
  %4802 = add i64 %4801, 4
  store i64 %4802, i64* %PC.i399
  %4803 = inttoptr i64 %4800 to i64*
  %4804 = load i64, i64* %4803
  store i64 %4804, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_436348, %struct.Memory** %MEMORY
  %loadMem_43634c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 15
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 17
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %R8.i398 = bitcast %union.anon* %4813 to i64*
  %4814 = load i64, i64* %RBP.i397
  %4815 = sub i64 %4814, 48
  %4816 = load i64, i64* %PC.i396
  %4817 = add i64 %4816, 4
  store i64 %4817, i64* %PC.i396
  %4818 = inttoptr i64 %4815 to i32*
  %4819 = load i32, i32* %4818
  %4820 = sext i32 %4819 to i64
  store i64 %4820, i64* %R8.i398, align 8
  store %struct.Memory* %loadMem_43634c, %struct.Memory** %MEMORY
  %loadMem_436350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 33
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 5
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %4826 to i64*
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 7
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %4829 to i64*
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 17
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %R8.i395 = bitcast %union.anon* %4832 to i64*
  %4833 = load i64, i64* %RCX.i393
  %4834 = load i64, i64* %R8.i395
  %4835 = mul i64 %4834, 4
  %4836 = add i64 %4835, %4833
  %4837 = load i64, i64* %PC.i392
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %PC.i392
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = zext i32 %4840 to i64
  store i64 %4841, i64* %RDX.i394, align 8
  store %struct.Memory* %loadMem_436350, %struct.Memory** %MEMORY
  %loadMem_436354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %4847 to i32*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 7
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RDX.i391
  %4852 = load i32, i32* %EAX.i390
  %4853 = zext i32 %4852 to i64
  %4854 = load i64, i64* %PC.i389
  %4855 = add i64 %4854, 2
  store i64 %4855, i64* %PC.i389
  %4856 = trunc i64 %4851 to i32
  %4857 = sub i32 %4856, %4852
  %4858 = zext i32 %4857 to i64
  store i64 %4858, i64* %RDX.i391, align 8
  %4859 = icmp ult i32 %4856, %4852
  %4860 = zext i1 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4860, i8* %4861, align 1
  %4862 = and i32 %4857, 255
  %4863 = call i32 @llvm.ctpop.i32(i32 %4862)
  %4864 = trunc i32 %4863 to i8
  %4865 = and i8 %4864, 1
  %4866 = xor i8 %4865, 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4866, i8* %4867, align 1
  %4868 = xor i64 %4853, %4851
  %4869 = trunc i64 %4868 to i32
  %4870 = xor i32 %4869, %4857
  %4871 = lshr i32 %4870, 4
  %4872 = trunc i32 %4871 to i8
  %4873 = and i8 %4872, 1
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4873, i8* %4874, align 1
  %4875 = icmp eq i32 %4857, 0
  %4876 = zext i1 %4875 to i8
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4876, i8* %4877, align 1
  %4878 = lshr i32 %4857, 31
  %4879 = trunc i32 %4878 to i8
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4879, i8* %4880, align 1
  %4881 = lshr i32 %4856, 31
  %4882 = lshr i32 %4852, 31
  %4883 = xor i32 %4882, %4881
  %4884 = xor i32 %4878, %4881
  %4885 = add i32 %4884, %4883
  %4886 = icmp eq i32 %4885, 2
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4887, i8* %4888, align 1
  store %struct.Memory* %loadMem_436354, %struct.Memory** %MEMORY
  %loadMem_436356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 7
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %EDX.i386 = bitcast %union.anon* %4894 to i32*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 5
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4897 to i64*
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 17
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %R8.i388 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %RCX.i387
  %4902 = load i64, i64* %R8.i388
  %4903 = mul i64 %4902, 4
  %4904 = add i64 %4903, %4901
  %4905 = load i32, i32* %EDX.i386
  %4906 = zext i32 %4905 to i64
  %4907 = load i64, i64* %PC.i385
  %4908 = add i64 %4907, 4
  store i64 %4908, i64* %PC.i385
  %4909 = inttoptr i64 %4904 to i32*
  store i32 %4905, i32* %4909
  store %struct.Memory* %loadMem_436356, %struct.Memory** %MEMORY
  %loadMem_43635a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 5
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 15
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4918 to i64*
  %4919 = load i64, i64* %RBP.i384
  %4920 = sub i64 %4919, 40
  %4921 = load i64, i64* %PC.i382
  %4922 = add i64 %4921, 4
  store i64 %4922, i64* %PC.i382
  %4923 = inttoptr i64 %4920 to i64*
  %4924 = load i64, i64* %4923
  store i64 %4924, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_43635a, %struct.Memory** %MEMORY
  %loadMem_43635e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 5
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RCX.i381
  %4932 = add i64 %4931, 24
  %4933 = load i64, i64* %PC.i380
  %4934 = add i64 %4933, 4
  store i64 %4934, i64* %PC.i380
  %4935 = inttoptr i64 %4932 to i64*
  %4936 = load i64, i64* %4935
  store i64 %4936, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_43635e, %struct.Memory** %MEMORY
  %loadMem_436362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 33
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 15
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %4942 to i64*
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 17
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %R8.i379 = bitcast %union.anon* %4945 to i64*
  %4946 = load i64, i64* %RBP.i378
  %4947 = sub i64 %4946, 44
  %4948 = load i64, i64* %PC.i377
  %4949 = add i64 %4948, 4
  store i64 %4949, i64* %PC.i377
  %4950 = inttoptr i64 %4947 to i32*
  %4951 = load i32, i32* %4950
  %4952 = sext i32 %4951 to i64
  store i64 %4952, i64* %R8.i379, align 8
  store %struct.Memory* %loadMem_436362, %struct.Memory** %MEMORY
  %loadMem_436366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 33
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 5
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %4958 to i64*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 17
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %R8.i376 = bitcast %union.anon* %4961 to i64*
  %4962 = load i64, i64* %RCX.i375
  %4963 = load i64, i64* %R8.i376
  %4964 = mul i64 %4963, 8
  %4965 = add i64 %4964, %4962
  %4966 = load i64, i64* %PC.i374
  %4967 = add i64 %4966, 4
  store i64 %4967, i64* %PC.i374
  %4968 = inttoptr i64 %4965 to i64*
  %4969 = load i64, i64* %4968
  store i64 %4969, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_436366, %struct.Memory** %MEMORY
  %loadMem_43636a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 33
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 15
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 17
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %R8.i373 = bitcast %union.anon* %4978 to i64*
  %4979 = load i64, i64* %RBP.i372
  %4980 = sub i64 %4979, 48
  %4981 = load i64, i64* %PC.i371
  %4982 = add i64 %4981, 4
  store i64 %4982, i64* %PC.i371
  %4983 = inttoptr i64 %4980 to i32*
  %4984 = load i32, i32* %4983
  %4985 = sext i32 %4984 to i64
  store i64 %4985, i64* %R8.i373, align 8
  store %struct.Memory* %loadMem_43636a, %struct.Memory** %MEMORY
  %loadMem_43636e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 5
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 17
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %R8.i370 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RCX.i369
  %4996 = load i64, i64* %R8.i370
  %4997 = mul i64 %4996, 4
  %4998 = add i64 %4997, %4995
  %4999 = load i64, i64* %PC.i368
  %5000 = add i64 %4999, 8
  store i64 %5000, i64* %PC.i368
  %5001 = inttoptr i64 %4998 to i32*
  store i32 -987654321, i32* %5001
  store %struct.Memory* %loadMem_43636e, %struct.Memory** %MEMORY
  %loadMem_436376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 33
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 1
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 15
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %5010 to i64*
  %5011 = load i64, i64* %RBP.i367
  %5012 = sub i64 %5011, 48
  %5013 = load i64, i64* %PC.i365
  %5014 = add i64 %5013, 3
  store i64 %5014, i64* %PC.i365
  %5015 = inttoptr i64 %5012 to i32*
  %5016 = load i32, i32* %5015
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_436376, %struct.Memory** %MEMORY
  %loadMem_436379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 1
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %RAX.i364
  %5025 = load i64, i64* %PC.i363
  %5026 = add i64 %5025, 3
  store i64 %5026, i64* %PC.i363
  %5027 = trunc i64 %5024 to i32
  %5028 = add i32 1, %5027
  %5029 = zext i32 %5028 to i64
  store i64 %5029, i64* %RAX.i364, align 8
  %5030 = icmp ult i32 %5028, %5027
  %5031 = icmp ult i32 %5028, 1
  %5032 = or i1 %5030, %5031
  %5033 = zext i1 %5032 to i8
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5033, i8* %5034, align 1
  %5035 = and i32 %5028, 255
  %5036 = call i32 @llvm.ctpop.i32(i32 %5035)
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  %5039 = xor i8 %5038, 1
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5039, i8* %5040, align 1
  %5041 = xor i64 1, %5024
  %5042 = trunc i64 %5041 to i32
  %5043 = xor i32 %5042, %5028
  %5044 = lshr i32 %5043, 4
  %5045 = trunc i32 %5044 to i8
  %5046 = and i8 %5045, 1
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5046, i8* %5047, align 1
  %5048 = icmp eq i32 %5028, 0
  %5049 = zext i1 %5048 to i8
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5049, i8* %5050, align 1
  %5051 = lshr i32 %5028, 31
  %5052 = trunc i32 %5051 to i8
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5052, i8* %5053, align 1
  %5054 = lshr i32 %5027, 31
  %5055 = xor i32 %5051, %5054
  %5056 = add i32 %5055, %5051
  %5057 = icmp eq i32 %5056, 2
  %5058 = zext i1 %5057 to i8
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5058, i8* %5059, align 1
  store %struct.Memory* %loadMem_436379, %struct.Memory** %MEMORY
  %loadMem_43637c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 1
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %5065 to i32*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 15
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5068 to i64*
  %5069 = load i64, i64* %RBP.i362
  %5070 = sub i64 %5069, 48
  %5071 = load i32, i32* %EAX.i361
  %5072 = zext i32 %5071 to i64
  %5073 = load i64, i64* %PC.i360
  %5074 = add i64 %5073, 3
  store i64 %5074, i64* %PC.i360
  %5075 = inttoptr i64 %5070 to i32*
  store i32 %5071, i32* %5075
  store %struct.Memory* %loadMem_43637c, %struct.Memory** %MEMORY
  %loadMem_43637f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %PC.i359
  %5080 = add i64 %5079, -634
  %5081 = load i64, i64* %PC.i359
  %5082 = add i64 %5081, 5
  store i64 %5082, i64* %PC.i359
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5080, i64* %5083, align 8
  store %struct.Memory* %loadMem_43637f, %struct.Memory** %MEMORY
  br label %block_.L_436105

block_.L_436384:                                  ; preds = %block_.L_436105
  %loadMem_436384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i358
  %5094 = sub i64 %5093, 32
  %5095 = load i64, i64* %PC.i356
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i356
  %5097 = inttoptr i64 %5094 to i64*
  %5098 = load i64, i64* %5097
  store i64 %5098, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_436384, %struct.Memory** %MEMORY
  %loadMem_436388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 1
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RAX.i355
  %5106 = add i64 %5105, 8
  %5107 = load i64, i64* %PC.i354
  %5108 = add i64 %5107, 4
  store i64 %5108, i64* %PC.i354
  %5109 = inttoptr i64 %5106 to i64*
  %5110 = load i64, i64* %5109
  store i64 %5110, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_436388, %struct.Memory** %MEMORY
  %loadMem_43638c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 5
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %RBP.i353
  %5121 = sub i64 %5120, 44
  %5122 = load i64, i64* %PC.i351
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %PC.i351
  %5124 = inttoptr i64 %5121 to i32*
  %5125 = load i32, i32* %5124
  %5126 = sext i32 %5125 to i64
  store i64 %5126, i64* %RCX.i352, align 8
  store %struct.Memory* %loadMem_43638c, %struct.Memory** %MEMORY
  %loadMem_436390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 1
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 5
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %RAX.i349
  %5137 = load i64, i64* %RCX.i350
  %5138 = mul i64 %5137, 8
  %5139 = add i64 %5138, %5136
  %5140 = load i64, i64* %PC.i348
  %5141 = add i64 %5140, 4
  store i64 %5141, i64* %PC.i348
  %5142 = inttoptr i64 %5139 to i64*
  %5143 = load i64, i64* %5142
  store i64 %5143, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_436390, %struct.Memory** %MEMORY
  %loadMem_436394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 5
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 15
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RBP.i347
  %5154 = sub i64 %5153, 16
  %5155 = load i64, i64* %PC.i345
  %5156 = add i64 %5155, 4
  store i64 %5156, i64* %PC.i345
  %5157 = inttoptr i64 %5154 to i64*
  %5158 = load i64, i64* %5157
  store i64 %5158, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_436394, %struct.Memory** %MEMORY
  %loadMem_436398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 33
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5161 to i64*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 5
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %RCX.i344
  %5166 = add i64 %5165, 136
  %5167 = load i64, i64* %PC.i343
  %5168 = add i64 %5167, 7
  store i64 %5168, i64* %PC.i343
  %5169 = inttoptr i64 %5166 to i32*
  %5170 = load i32, i32* %5169
  %5171 = sext i32 %5170 to i64
  store i64 %5171, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_436398, %struct.Memory** %MEMORY
  %loadMem_43639f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 33
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 1
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 5
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 7
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %RAX.i340
  %5185 = load i64, i64* %RCX.i341
  %5186 = mul i64 %5185, 4
  %5187 = add i64 %5186, %5184
  %5188 = load i64, i64* %PC.i339
  %5189 = add i64 %5188, 3
  store i64 %5189, i64* %PC.i339
  %5190 = inttoptr i64 %5187 to i32*
  %5191 = load i32, i32* %5190
  %5192 = zext i32 %5191 to i64
  store i64 %5192, i64* %RDX.i342, align 8
  store %struct.Memory* %loadMem_43639f, %struct.Memory** %MEMORY
  %loadMem_4363a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 1
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 15
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RBP.i338
  %5203 = sub i64 %5202, 40
  %5204 = load i64, i64* %PC.i336
  %5205 = add i64 %5204, 4
  store i64 %5205, i64* %PC.i336
  %5206 = inttoptr i64 %5203 to i64*
  %5207 = load i64, i64* %5206
  store i64 %5207, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_4363a2, %struct.Memory** %MEMORY
  %loadMem_4363a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 33
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 1
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %5213 to i64*
  %5214 = load i64, i64* %RAX.i335
  %5215 = add i64 %5214, 8
  %5216 = load i64, i64* %PC.i334
  %5217 = add i64 %5216, 4
  store i64 %5217, i64* %PC.i334
  %5218 = inttoptr i64 %5215 to i64*
  %5219 = load i64, i64* %5218
  store i64 %5219, i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_4363a6, %struct.Memory** %MEMORY
  %loadMem_4363aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 5
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 15
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %5228 to i64*
  %5229 = load i64, i64* %RBP.i333
  %5230 = sub i64 %5229, 44
  %5231 = load i64, i64* %PC.i331
  %5232 = add i64 %5231, 4
  store i64 %5232, i64* %PC.i331
  %5233 = inttoptr i64 %5230 to i32*
  %5234 = load i32, i32* %5233
  %5235 = sext i32 %5234 to i64
  store i64 %5235, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_4363aa, %struct.Memory** %MEMORY
  %loadMem_4363ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 1
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 5
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %RAX.i329
  %5246 = load i64, i64* %RCX.i330
  %5247 = mul i64 %5246, 8
  %5248 = add i64 %5247, %5245
  %5249 = load i64, i64* %PC.i328
  %5250 = add i64 %5249, 4
  store i64 %5250, i64* %PC.i328
  %5251 = inttoptr i64 %5248 to i64*
  %5252 = load i64, i64* %5251
  store i64 %5252, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_4363ae, %struct.Memory** %MEMORY
  %loadMem_4363b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 5
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 15
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %5261 to i64*
  %5262 = load i64, i64* %RBP.i327
  %5263 = sub i64 %5262, 16
  %5264 = load i64, i64* %PC.i325
  %5265 = add i64 %5264, 4
  store i64 %5265, i64* %PC.i325
  %5266 = inttoptr i64 %5263 to i64*
  %5267 = load i64, i64* %5266
  store i64 %5267, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_4363b2, %struct.Memory** %MEMORY
  %loadMem_4363b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 5
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %5273 to i64*
  %5274 = load i64, i64* %RCX.i324
  %5275 = add i64 %5274, 136
  %5276 = load i64, i64* %PC.i323
  %5277 = add i64 %5276, 7
  store i64 %5277, i64* %PC.i323
  %5278 = inttoptr i64 %5275 to i32*
  %5279 = load i32, i32* %5278
  %5280 = sext i32 %5279 to i64
  store i64 %5280, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_4363b6, %struct.Memory** %MEMORY
  %loadMem_4363bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 7
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %EDX.i320 = bitcast %union.anon* %5286 to i32*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 1
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 5
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RAX.i321
  %5294 = load i64, i64* %RCX.i322
  %5295 = mul i64 %5294, 4
  %5296 = add i64 %5295, %5293
  %5297 = load i32, i32* %EDX.i320
  %5298 = zext i32 %5297 to i64
  %5299 = load i64, i64* %PC.i319
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %PC.i319
  %5301 = inttoptr i64 %5296 to i32*
  store i32 %5297, i32* %5301
  store %struct.Memory* %loadMem_4363bd, %struct.Memory** %MEMORY
  %loadMem_4363c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 1
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 15
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RBP.i318
  %5312 = sub i64 %5311, 24
  %5313 = load i64, i64* %PC.i316
  %5314 = add i64 %5313, 4
  store i64 %5314, i64* %PC.i316
  %5315 = inttoptr i64 %5312 to i64*
  %5316 = load i64, i64* %5315
  store i64 %5316, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_4363c0, %struct.Memory** %MEMORY
  %loadMem_4363c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 1
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %5322 to i64*
  %5323 = load i64, i64* %RAX.i315
  %5324 = add i64 %5323, 8
  %5325 = load i64, i64* %PC.i314
  %5326 = add i64 %5325, 4
  store i64 %5326, i64* %PC.i314
  %5327 = inttoptr i64 %5324 to i64*
  %5328 = load i64, i64* %5327
  store i64 %5328, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_4363c4, %struct.Memory** %MEMORY
  %loadMem_4363c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 7
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RDX.i312 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 15
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5337 to i64*
  %5338 = load i64, i64* %RBP.i313
  %5339 = sub i64 %5338, 44
  %5340 = load i64, i64* %PC.i311
  %5341 = add i64 %5340, 3
  store i64 %5341, i64* %PC.i311
  %5342 = inttoptr i64 %5339 to i32*
  %5343 = load i32, i32* %5342
  %5344 = zext i32 %5343 to i64
  store i64 %5344, i64* %RDX.i312, align 8
  store %struct.Memory* %loadMem_4363c8, %struct.Memory** %MEMORY
  %loadMem_4363cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 7
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %5350 to i64*
  %5351 = load i64, i64* %RDX.i310
  %5352 = load i64, i64* %PC.i309
  %5353 = add i64 %5352, 3
  store i64 %5353, i64* %PC.i309
  %5354 = trunc i64 %5351 to i32
  %5355 = sub i32 %5354, 1
  %5356 = zext i32 %5355 to i64
  store i64 %5356, i64* %RDX.i310, align 8
  %5357 = icmp ult i32 %5354, 1
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5358, i8* %5359, align 1
  %5360 = and i32 %5355, 255
  %5361 = call i32 @llvm.ctpop.i32(i32 %5360)
  %5362 = trunc i32 %5361 to i8
  %5363 = and i8 %5362, 1
  %5364 = xor i8 %5363, 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5364, i8* %5365, align 1
  %5366 = xor i64 1, %5351
  %5367 = trunc i64 %5366 to i32
  %5368 = xor i32 %5367, %5355
  %5369 = lshr i32 %5368, 4
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5371, i8* %5372, align 1
  %5373 = icmp eq i32 %5355, 0
  %5374 = zext i1 %5373 to i8
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5374, i8* %5375, align 1
  %5376 = lshr i32 %5355, 31
  %5377 = trunc i32 %5376 to i8
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5377, i8* %5378, align 1
  %5379 = lshr i32 %5354, 31
  %5380 = xor i32 %5376, %5379
  %5381 = add i32 %5380, %5379
  %5382 = icmp eq i32 %5381, 2
  %5383 = zext i1 %5382 to i8
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5383, i8* %5384, align 1
  store %struct.Memory* %loadMem_4363cb, %struct.Memory** %MEMORY
  %loadMem_4363ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 7
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %EDX.i307 = bitcast %union.anon* %5390 to i32*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 5
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5393 to i64*
  %5394 = load i32, i32* %EDX.i307
  %5395 = zext i32 %5394 to i64
  %5396 = load i64, i64* %PC.i306
  %5397 = add i64 %5396, 3
  store i64 %5397, i64* %PC.i306
  %5398 = shl i64 %5395, 32
  %5399 = ashr exact i64 %5398, 32
  store i64 %5399, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_4363ce, %struct.Memory** %MEMORY
  %loadMem_4363d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 5
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RAX.i304
  %5410 = load i64, i64* %RCX.i305
  %5411 = mul i64 %5410, 8
  %5412 = add i64 %5411, %5409
  %5413 = load i64, i64* %PC.i303
  %5414 = add i64 %5413, 4
  store i64 %5414, i64* %PC.i303
  %5415 = inttoptr i64 %5412 to i64*
  %5416 = load i64, i64* %5415
  store i64 %5416, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_4363d1, %struct.Memory** %MEMORY
  %loadMem_4363d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 33
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5419 to i64*
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 5
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 15
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %RBP.i302
  %5427 = sub i64 %5426, 16
  %5428 = load i64, i64* %PC.i300
  %5429 = add i64 %5428, 4
  store i64 %5429, i64* %PC.i300
  %5430 = inttoptr i64 %5427 to i64*
  %5431 = load i64, i64* %5430
  store i64 %5431, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_4363d5, %struct.Memory** %MEMORY
  %loadMem_4363d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 33
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 5
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %5437 to i64*
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 7
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %5440 to i64*
  %5441 = load i64, i64* %RCX.i298
  %5442 = add i64 %5441, 136
  %5443 = load i64, i64* %PC.i297
  %5444 = add i64 %5443, 6
  store i64 %5444, i64* %PC.i297
  %5445 = inttoptr i64 %5442 to i32*
  %5446 = load i32, i32* %5445
  %5447 = zext i32 %5446 to i64
  store i64 %5447, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_4363d9, %struct.Memory** %MEMORY
  %loadMem_4363df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 33
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5450 to i64*
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 7
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %5453 to i64*
  %5454 = load i64, i64* %RDX.i296
  %5455 = load i64, i64* %PC.i295
  %5456 = add i64 %5455, 3
  store i64 %5456, i64* %PC.i295
  %5457 = trunc i64 %5454 to i32
  %5458 = sub i32 %5457, 1
  %5459 = zext i32 %5458 to i64
  store i64 %5459, i64* %RDX.i296, align 8
  %5460 = icmp ult i32 %5457, 1
  %5461 = zext i1 %5460 to i8
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5461, i8* %5462, align 1
  %5463 = and i32 %5458, 255
  %5464 = call i32 @llvm.ctpop.i32(i32 %5463)
  %5465 = trunc i32 %5464 to i8
  %5466 = and i8 %5465, 1
  %5467 = xor i8 %5466, 1
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5467, i8* %5468, align 1
  %5469 = xor i64 1, %5454
  %5470 = trunc i64 %5469 to i32
  %5471 = xor i32 %5470, %5458
  %5472 = lshr i32 %5471, 4
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5474, i8* %5475, align 1
  %5476 = icmp eq i32 %5458, 0
  %5477 = zext i1 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5477, i8* %5478, align 1
  %5479 = lshr i32 %5458, 31
  %5480 = trunc i32 %5479 to i8
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5480, i8* %5481, align 1
  %5482 = lshr i32 %5457, 31
  %5483 = xor i32 %5479, %5482
  %5484 = add i32 %5483, %5482
  %5485 = icmp eq i32 %5484, 2
  %5486 = zext i1 %5485 to i8
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5486, i8* %5487, align 1
  store %struct.Memory* %loadMem_4363df, %struct.Memory** %MEMORY
  %loadMem_4363e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 7
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %EDX.i293 = bitcast %union.anon* %5493 to i32*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 5
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %5496 to i64*
  %5497 = load i32, i32* %EDX.i293
  %5498 = zext i32 %5497 to i64
  %5499 = load i64, i64* %PC.i292
  %5500 = add i64 %5499, 3
  store i64 %5500, i64* %PC.i292
  %5501 = shl i64 %5498, 32
  %5502 = ashr exact i64 %5501, 32
  store i64 %5502, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_4363e2, %struct.Memory** %MEMORY
  %loadMem_4363e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5505 to i64*
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 1
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 5
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 7
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %5514 to i64*
  %5515 = load i64, i64* %RAX.i289
  %5516 = load i64, i64* %RCX.i290
  %5517 = mul i64 %5516, 4
  %5518 = add i64 %5517, %5515
  %5519 = load i64, i64* %PC.i288
  %5520 = add i64 %5519, 3
  store i64 %5520, i64* %PC.i288
  %5521 = inttoptr i64 %5518 to i32*
  %5522 = load i32, i32* %5521
  %5523 = zext i32 %5522 to i64
  store i64 %5523, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_4363e5, %struct.Memory** %MEMORY
  %loadMem_4363e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 1
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 15
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5532 to i64*
  %5533 = load i64, i64* %RBP.i287
  %5534 = sub i64 %5533, 16
  %5535 = load i64, i64* %PC.i285
  %5536 = add i64 %5535, 4
  store i64 %5536, i64* %PC.i285
  %5537 = inttoptr i64 %5534 to i64*
  %5538 = load i64, i64* %5537
  store i64 %5538, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_4363e8, %struct.Memory** %MEMORY
  %loadMem_4363ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 1
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %5544 to i64*
  %5545 = load i64, i64* %RAX.i284
  %5546 = add i64 %5545, 312
  %5547 = load i64, i64* %PC.i283
  %5548 = add i64 %5547, 7
  store i64 %5548, i64* %PC.i283
  %5549 = inttoptr i64 %5546 to i64*
  %5550 = load i64, i64* %5549
  store i64 %5550, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_4363ec, %struct.Memory** %MEMORY
  %loadMem_4363f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 1
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5556 to i64*
  %5557 = load i64, i64* %RAX.i282
  %5558 = load i64, i64* %PC.i281
  %5559 = add i64 %5558, 3
  store i64 %5559, i64* %PC.i281
  %5560 = inttoptr i64 %5557 to i64*
  %5561 = load i64, i64* %5560
  store i64 %5561, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_4363f3, %struct.Memory** %MEMORY
  %loadMem_4363f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 5
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 15
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %5570 to i64*
  %5571 = load i64, i64* %RBP.i280
  %5572 = sub i64 %5571, 16
  %5573 = load i64, i64* %PC.i278
  %5574 = add i64 %5573, 4
  store i64 %5574, i64* %PC.i278
  %5575 = inttoptr i64 %5572 to i64*
  %5576 = load i64, i64* %5575
  store i64 %5576, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_4363f6, %struct.Memory** %MEMORY
  %loadMem_4363fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 5
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 9
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %RCX.i276
  %5587 = add i64 %5586, 136
  %5588 = load i64, i64* %PC.i275
  %5589 = add i64 %5588, 6
  store i64 %5589, i64* %PC.i275
  %5590 = inttoptr i64 %5587 to i32*
  %5591 = load i32, i32* %5590
  %5592 = zext i32 %5591 to i64
  store i64 %5592, i64* %RSI.i277, align 8
  store %struct.Memory* %loadMem_4363fa, %struct.Memory** %MEMORY
  %loadMem_436400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 9
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RSI.i274
  %5600 = load i64, i64* %PC.i273
  %5601 = add i64 %5600, 3
  store i64 %5601, i64* %PC.i273
  %5602 = trunc i64 %5599 to i32
  %5603 = sub i32 %5602, 1
  %5604 = zext i32 %5603 to i64
  store i64 %5604, i64* %RSI.i274, align 8
  %5605 = icmp ult i32 %5602, 1
  %5606 = zext i1 %5605 to i8
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5606, i8* %5607, align 1
  %5608 = and i32 %5603, 255
  %5609 = call i32 @llvm.ctpop.i32(i32 %5608)
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  %5612 = xor i8 %5611, 1
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5612, i8* %5613, align 1
  %5614 = xor i64 1, %5599
  %5615 = trunc i64 %5614 to i32
  %5616 = xor i32 %5615, %5603
  %5617 = lshr i32 %5616, 4
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5619, i8* %5620, align 1
  %5621 = icmp eq i32 %5603, 0
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5622, i8* %5623, align 1
  %5624 = lshr i32 %5603, 31
  %5625 = trunc i32 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5625, i8* %5626, align 1
  %5627 = lshr i32 %5602, 31
  %5628 = xor i32 %5624, %5627
  %5629 = add i32 %5628, %5627
  %5630 = icmp eq i32 %5629, 2
  %5631 = zext i1 %5630 to i8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5631, i8* %5632, align 1
  store %struct.Memory* %loadMem_436400, %struct.Memory** %MEMORY
  %loadMem_436403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 9
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %ESI.i271 = bitcast %union.anon* %5638 to i32*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 5
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %5641 to i64*
  %5642 = load i32, i32* %ESI.i271
  %5643 = zext i32 %5642 to i64
  %5644 = load i64, i64* %PC.i270
  %5645 = add i64 %5644, 3
  store i64 %5645, i64* %PC.i270
  %5646 = shl i64 %5643, 32
  %5647 = ashr exact i64 %5646, 32
  store i64 %5647, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_436403, %struct.Memory** %MEMORY
  %loadMem_436406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 33
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5650 to i64*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 1
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 5
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 7
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RDX.i269
  %5661 = load i64, i64* %RAX.i267
  %5662 = load i64, i64* %RCX.i268
  %5663 = mul i64 %5662, 4
  %5664 = add i64 %5663, %5661
  %5665 = load i64, i64* %PC.i266
  %5666 = add i64 %5665, 3
  store i64 %5666, i64* %PC.i266
  %5667 = trunc i64 %5660 to i32
  %5668 = inttoptr i64 %5664 to i32*
  %5669 = load i32, i32* %5668
  %5670 = add i32 %5669, %5667
  %5671 = zext i32 %5670 to i64
  store i64 %5671, i64* %RDX.i269, align 8
  %5672 = icmp ult i32 %5670, %5667
  %5673 = icmp ult i32 %5670, %5669
  %5674 = or i1 %5672, %5673
  %5675 = zext i1 %5674 to i8
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5675, i8* %5676, align 1
  %5677 = and i32 %5670, 255
  %5678 = call i32 @llvm.ctpop.i32(i32 %5677)
  %5679 = trunc i32 %5678 to i8
  %5680 = and i8 %5679, 1
  %5681 = xor i8 %5680, 1
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5681, i8* %5682, align 1
  %5683 = xor i32 %5669, %5667
  %5684 = xor i32 %5683, %5670
  %5685 = lshr i32 %5684, 4
  %5686 = trunc i32 %5685 to i8
  %5687 = and i8 %5686, 1
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5687, i8* %5688, align 1
  %5689 = icmp eq i32 %5670, 0
  %5690 = zext i1 %5689 to i8
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5690, i8* %5691, align 1
  %5692 = lshr i32 %5670, 31
  %5693 = trunc i32 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5693, i8* %5694, align 1
  %5695 = lshr i32 %5667, 31
  %5696 = lshr i32 %5669, 31
  %5697 = xor i32 %5692, %5695
  %5698 = xor i32 %5692, %5696
  %5699 = add i32 %5697, %5698
  %5700 = icmp eq i32 %5699, 2
  %5701 = zext i1 %5700 to i8
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5701, i8* %5702, align 1
  store %struct.Memory* %loadMem_436406, %struct.Memory** %MEMORY
  %loadMem_436409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 33
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 1
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 15
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %5711 to i64*
  %5712 = load i64, i64* %RBP.i265
  %5713 = sub i64 %5712, 24
  %5714 = load i64, i64* %PC.i263
  %5715 = add i64 %5714, 4
  store i64 %5715, i64* %PC.i263
  %5716 = inttoptr i64 %5713 to i64*
  %5717 = load i64, i64* %5716
  store i64 %5717, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_436409, %struct.Memory** %MEMORY
  %loadMem_43640d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 33
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 1
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RAX.i262
  %5725 = add i64 %5724, 16
  %5726 = load i64, i64* %PC.i261
  %5727 = add i64 %5726, 4
  store i64 %5727, i64* %PC.i261
  %5728 = inttoptr i64 %5725 to i64*
  %5729 = load i64, i64* %5728
  store i64 %5729, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_43640d, %struct.Memory** %MEMORY
  %loadMem_436411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 33
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 9
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RSI.i259 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 15
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5738 to i64*
  %5739 = load i64, i64* %RBP.i260
  %5740 = sub i64 %5739, 44
  %5741 = load i64, i64* %PC.i258
  %5742 = add i64 %5741, 3
  store i64 %5742, i64* %PC.i258
  %5743 = inttoptr i64 %5740 to i32*
  %5744 = load i32, i32* %5743
  %5745 = zext i32 %5744 to i64
  store i64 %5745, i64* %RSI.i259, align 8
  store %struct.Memory* %loadMem_436411, %struct.Memory** %MEMORY
  %loadMem_436414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 9
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %RSI.i257 = bitcast %union.anon* %5751 to i64*
  %5752 = load i64, i64* %RSI.i257
  %5753 = load i64, i64* %PC.i256
  %5754 = add i64 %5753, 3
  store i64 %5754, i64* %PC.i256
  %5755 = trunc i64 %5752 to i32
  %5756 = sub i32 %5755, 1
  %5757 = zext i32 %5756 to i64
  store i64 %5757, i64* %RSI.i257, align 8
  %5758 = icmp ult i32 %5755, 1
  %5759 = zext i1 %5758 to i8
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5759, i8* %5760, align 1
  %5761 = and i32 %5756, 255
  %5762 = call i32 @llvm.ctpop.i32(i32 %5761)
  %5763 = trunc i32 %5762 to i8
  %5764 = and i8 %5763, 1
  %5765 = xor i8 %5764, 1
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5765, i8* %5766, align 1
  %5767 = xor i64 1, %5752
  %5768 = trunc i64 %5767 to i32
  %5769 = xor i32 %5768, %5756
  %5770 = lshr i32 %5769, 4
  %5771 = trunc i32 %5770 to i8
  %5772 = and i8 %5771, 1
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5772, i8* %5773, align 1
  %5774 = icmp eq i32 %5756, 0
  %5775 = zext i1 %5774 to i8
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5775, i8* %5776, align 1
  %5777 = lshr i32 %5756, 31
  %5778 = trunc i32 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5778, i8* %5779, align 1
  %5780 = lshr i32 %5755, 31
  %5781 = xor i32 %5777, %5780
  %5782 = add i32 %5781, %5780
  %5783 = icmp eq i32 %5782, 2
  %5784 = zext i1 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5784, i8* %5785, align 1
  store %struct.Memory* %loadMem_436414, %struct.Memory** %MEMORY
  %loadMem_436417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 9
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %ESI.i254 = bitcast %union.anon* %5791 to i32*
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 5
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %5794 to i64*
  %5795 = load i32, i32* %ESI.i254
  %5796 = zext i32 %5795 to i64
  %5797 = load i64, i64* %PC.i253
  %5798 = add i64 %5797, 3
  store i64 %5798, i64* %PC.i253
  %5799 = shl i64 %5796, 32
  %5800 = ashr exact i64 %5799, 32
  store i64 %5800, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_436417, %struct.Memory** %MEMORY
  %loadMem_43641a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 1
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 5
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %RAX.i251
  %5811 = load i64, i64* %RCX.i252
  %5812 = mul i64 %5811, 8
  %5813 = add i64 %5812, %5810
  %5814 = load i64, i64* %PC.i250
  %5815 = add i64 %5814, 4
  store i64 %5815, i64* %PC.i250
  %5816 = inttoptr i64 %5813 to i64*
  %5817 = load i64, i64* %5816
  store i64 %5817, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_43641a, %struct.Memory** %MEMORY
  %loadMem_43641e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 33
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5820 to i64*
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 5
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %5823 to i64*
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 15
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %5826 to i64*
  %5827 = load i64, i64* %RBP.i249
  %5828 = sub i64 %5827, 16
  %5829 = load i64, i64* %PC.i247
  %5830 = add i64 %5829, 4
  store i64 %5830, i64* %PC.i247
  %5831 = inttoptr i64 %5828 to i64*
  %5832 = load i64, i64* %5831
  store i64 %5832, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_43641e, %struct.Memory** %MEMORY
  %loadMem_436422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 33
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5835 to i64*
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 5
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %5838 to i64*
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 9
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %RSI.i246 = bitcast %union.anon* %5841 to i64*
  %5842 = load i64, i64* %RCX.i245
  %5843 = add i64 %5842, 136
  %5844 = load i64, i64* %PC.i244
  %5845 = add i64 %5844, 6
  store i64 %5845, i64* %PC.i244
  %5846 = inttoptr i64 %5843 to i32*
  %5847 = load i32, i32* %5846
  %5848 = zext i32 %5847 to i64
  store i64 %5848, i64* %RSI.i246, align 8
  store %struct.Memory* %loadMem_436422, %struct.Memory** %MEMORY
  %loadMem_436428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 33
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 9
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %RSI.i243
  %5856 = load i64, i64* %PC.i242
  %5857 = add i64 %5856, 3
  store i64 %5857, i64* %PC.i242
  %5858 = trunc i64 %5855 to i32
  %5859 = sub i32 %5858, 1
  %5860 = zext i32 %5859 to i64
  store i64 %5860, i64* %RSI.i243, align 8
  %5861 = icmp ult i32 %5858, 1
  %5862 = zext i1 %5861 to i8
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5862, i8* %5863, align 1
  %5864 = and i32 %5859, 255
  %5865 = call i32 @llvm.ctpop.i32(i32 %5864)
  %5866 = trunc i32 %5865 to i8
  %5867 = and i8 %5866, 1
  %5868 = xor i8 %5867, 1
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5868, i8* %5869, align 1
  %5870 = xor i64 1, %5855
  %5871 = trunc i64 %5870 to i32
  %5872 = xor i32 %5871, %5859
  %5873 = lshr i32 %5872, 4
  %5874 = trunc i32 %5873 to i8
  %5875 = and i8 %5874, 1
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5875, i8* %5876, align 1
  %5877 = icmp eq i32 %5859, 0
  %5878 = zext i1 %5877 to i8
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5878, i8* %5879, align 1
  %5880 = lshr i32 %5859, 31
  %5881 = trunc i32 %5880 to i8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5881, i8* %5882, align 1
  %5883 = lshr i32 %5858, 31
  %5884 = xor i32 %5880, %5883
  %5885 = add i32 %5884, %5883
  %5886 = icmp eq i32 %5885, 2
  %5887 = zext i1 %5886 to i8
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5887, i8* %5888, align 1
  store %struct.Memory* %loadMem_436428, %struct.Memory** %MEMORY
  %loadMem_43642b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 9
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %ESI.i240 = bitcast %union.anon* %5894 to i32*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 5
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %5897 to i64*
  %5898 = load i32, i32* %ESI.i240
  %5899 = zext i32 %5898 to i64
  %5900 = load i64, i64* %PC.i239
  %5901 = add i64 %5900, 3
  store i64 %5901, i64* %PC.i239
  %5902 = shl i64 %5899, 32
  %5903 = ashr exact i64 %5902, 32
  store i64 %5903, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_43642b, %struct.Memory** %MEMORY
  %loadMem_43642e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 33
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 1
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 5
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 9
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %5915 to i64*
  %5916 = load i64, i64* %RAX.i236
  %5917 = load i64, i64* %RCX.i237
  %5918 = mul i64 %5917, 4
  %5919 = add i64 %5918, %5916
  %5920 = load i64, i64* %PC.i235
  %5921 = add i64 %5920, 3
  store i64 %5921, i64* %PC.i235
  %5922 = inttoptr i64 %5919 to i32*
  %5923 = load i32, i32* %5922
  %5924 = zext i32 %5923 to i64
  store i64 %5924, i64* %RSI.i238, align 8
  store %struct.Memory* %loadMem_43642e, %struct.Memory** %MEMORY
  %loadMem_436431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 15
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %RBP.i234
  %5935 = sub i64 %5934, 16
  %5936 = load i64, i64* %PC.i232
  %5937 = add i64 %5936, 4
  store i64 %5937, i64* %PC.i232
  %5938 = inttoptr i64 %5935 to i64*
  %5939 = load i64, i64* %5938
  store i64 %5939, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_436431, %struct.Memory** %MEMORY
  %loadMem_436435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 1
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %5945 to i64*
  %5946 = load i64, i64* %RAX.i231
  %5947 = add i64 %5946, 312
  %5948 = load i64, i64* %PC.i230
  %5949 = add i64 %5948, 7
  store i64 %5949, i64* %PC.i230
  %5950 = inttoptr i64 %5947 to i64*
  %5951 = load i64, i64* %5950
  store i64 %5951, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_436435, %struct.Memory** %MEMORY
  %loadMem_43643c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 33
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5954 to i64*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 1
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %5957 to i64*
  %5958 = load i64, i64* %RAX.i229
  %5959 = add i64 %5958, 24
  %5960 = load i64, i64* %PC.i228
  %5961 = add i64 %5960, 4
  store i64 %5961, i64* %PC.i228
  %5962 = inttoptr i64 %5959 to i64*
  %5963 = load i64, i64* %5962
  store i64 %5963, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_43643c, %struct.Memory** %MEMORY
  %loadMem_436440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 33
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 5
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 15
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %5972 to i64*
  %5973 = load i64, i64* %RBP.i227
  %5974 = sub i64 %5973, 16
  %5975 = load i64, i64* %PC.i225
  %5976 = add i64 %5975, 4
  store i64 %5976, i64* %PC.i225
  %5977 = inttoptr i64 %5974 to i64*
  %5978 = load i64, i64* %5977
  store i64 %5978, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_436440, %struct.Memory** %MEMORY
  %loadMem_436444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 5
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 11
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RCX.i223
  %5989 = add i64 %5988, 136
  %5990 = load i64, i64* %PC.i222
  %5991 = add i64 %5990, 6
  store i64 %5991, i64* %PC.i222
  %5992 = inttoptr i64 %5989 to i32*
  %5993 = load i32, i32* %5992
  %5994 = zext i32 %5993 to i64
  store i64 %5994, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_436444, %struct.Memory** %MEMORY
  %loadMem_43644a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 11
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RDI.i221 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %RDI.i221
  %6002 = load i64, i64* %PC.i220
  %6003 = add i64 %6002, 3
  store i64 %6003, i64* %PC.i220
  %6004 = trunc i64 %6001 to i32
  %6005 = sub i32 %6004, 1
  %6006 = zext i32 %6005 to i64
  store i64 %6006, i64* %RDI.i221, align 8
  %6007 = icmp ult i32 %6004, 1
  %6008 = zext i1 %6007 to i8
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6008, i8* %6009, align 1
  %6010 = and i32 %6005, 255
  %6011 = call i32 @llvm.ctpop.i32(i32 %6010)
  %6012 = trunc i32 %6011 to i8
  %6013 = and i8 %6012, 1
  %6014 = xor i8 %6013, 1
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6014, i8* %6015, align 1
  %6016 = xor i64 1, %6001
  %6017 = trunc i64 %6016 to i32
  %6018 = xor i32 %6017, %6005
  %6019 = lshr i32 %6018, 4
  %6020 = trunc i32 %6019 to i8
  %6021 = and i8 %6020, 1
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6021, i8* %6022, align 1
  %6023 = icmp eq i32 %6005, 0
  %6024 = zext i1 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6024, i8* %6025, align 1
  %6026 = lshr i32 %6005, 31
  %6027 = trunc i32 %6026 to i8
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6027, i8* %6028, align 1
  %6029 = lshr i32 %6004, 31
  %6030 = xor i32 %6026, %6029
  %6031 = add i32 %6030, %6029
  %6032 = icmp eq i32 %6031, 2
  %6033 = zext i1 %6032 to i8
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6033, i8* %6034, align 1
  store %struct.Memory* %loadMem_43644a, %struct.Memory** %MEMORY
  %loadMem_43644d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 33
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6037 to i64*
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 11
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %EDI.i218 = bitcast %union.anon* %6040 to i32*
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 5
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %6043 to i64*
  %6044 = load i32, i32* %EDI.i218
  %6045 = zext i32 %6044 to i64
  %6046 = load i64, i64* %PC.i217
  %6047 = add i64 %6046, 3
  store i64 %6047, i64* %PC.i217
  %6048 = shl i64 %6045, 32
  %6049 = ashr exact i64 %6048, 32
  store i64 %6049, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_43644d, %struct.Memory** %MEMORY
  %loadMem_436450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 1
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %6055 to i64*
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 5
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %6058 to i64*
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 9
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %RSI.i216 = bitcast %union.anon* %6061 to i64*
  %6062 = load i64, i64* %RSI.i216
  %6063 = load i64, i64* %RAX.i214
  %6064 = load i64, i64* %RCX.i215
  %6065 = mul i64 %6064, 4
  %6066 = add i64 %6065, %6063
  %6067 = load i64, i64* %PC.i213
  %6068 = add i64 %6067, 3
  store i64 %6068, i64* %PC.i213
  %6069 = trunc i64 %6062 to i32
  %6070 = inttoptr i64 %6066 to i32*
  %6071 = load i32, i32* %6070
  %6072 = add i32 %6071, %6069
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RSI.i216, align 8
  %6074 = icmp ult i32 %6072, %6069
  %6075 = icmp ult i32 %6072, %6071
  %6076 = or i1 %6074, %6075
  %6077 = zext i1 %6076 to i8
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6077, i8* %6078, align 1
  %6079 = and i32 %6072, 255
  %6080 = call i32 @llvm.ctpop.i32(i32 %6079)
  %6081 = trunc i32 %6080 to i8
  %6082 = and i8 %6081, 1
  %6083 = xor i8 %6082, 1
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6083, i8* %6084, align 1
  %6085 = xor i32 %6071, %6069
  %6086 = xor i32 %6085, %6072
  %6087 = lshr i32 %6086, 4
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6089, i8* %6090, align 1
  %6091 = icmp eq i32 %6072, 0
  %6092 = zext i1 %6091 to i8
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6092, i8* %6093, align 1
  %6094 = lshr i32 %6072, 31
  %6095 = trunc i32 %6094 to i8
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6095, i8* %6096, align 1
  %6097 = lshr i32 %6069, 31
  %6098 = lshr i32 %6071, 31
  %6099 = xor i32 %6094, %6097
  %6100 = xor i32 %6094, %6098
  %6101 = add i32 %6099, %6100
  %6102 = icmp eq i32 %6101, 2
  %6103 = zext i1 %6102 to i8
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6103, i8* %6104, align 1
  store %struct.Memory* %loadMem_436450, %struct.Memory** %MEMORY
  %loadMem_436453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 33
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 7
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %EDX.i211 = bitcast %union.anon* %6110 to i32*
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6112 = getelementptr inbounds %struct.GPR, %struct.GPR* %6111, i32 0, i32 11
  %6113 = getelementptr inbounds %struct.Reg, %struct.Reg* %6112, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %6113 to i64*
  %6114 = load i32, i32* %EDX.i211
  %6115 = zext i32 %6114 to i64
  %6116 = load i64, i64* %PC.i210
  %6117 = add i64 %6116, 2
  store i64 %6117, i64* %PC.i210
  %6118 = and i64 %6115, 4294967295
  store i64 %6118, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_436453, %struct.Memory** %MEMORY
  %loadMem1_436455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %PC.i209
  %6123 = add i64 %6122, -58021
  %6124 = load i64, i64* %PC.i209
  %6125 = add i64 %6124, 5
  %6126 = load i64, i64* %PC.i209
  %6127 = add i64 %6126, 5
  store i64 %6127, i64* %PC.i209
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6129 = load i64, i64* %6128, align 8
  %6130 = add i64 %6129, -8
  %6131 = inttoptr i64 %6130 to i64*
  store i64 %6125, i64* %6131
  store i64 %6130, i64* %6128, align 8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6123, i64* %6132, align 8
  store %struct.Memory* %loadMem1_436455, %struct.Memory** %MEMORY
  %loadMem2_436455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436455 = load i64, i64* %3
  %call2_436455 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436455, %struct.Memory* %loadMem2_436455)
  store %struct.Memory* %call2_436455, %struct.Memory** %MEMORY
  %loadMem_43645a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 33
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 5
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RBP.i208
  %6143 = sub i64 %6142, 24
  %6144 = load i64, i64* %PC.i206
  %6145 = add i64 %6144, 4
  store i64 %6145, i64* %PC.i206
  %6146 = inttoptr i64 %6143 to i64*
  %6147 = load i64, i64* %6146
  store i64 %6147, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_43645a, %struct.Memory** %MEMORY
  %loadMem_43645e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 5
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %6153 to i64*
  %6154 = load i64, i64* %RCX.i205
  %6155 = load i64, i64* %PC.i204
  %6156 = add i64 %6155, 3
  store i64 %6156, i64* %PC.i204
  %6157 = inttoptr i64 %6154 to i64*
  %6158 = load i64, i64* %6157
  store i64 %6158, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_43645e, %struct.Memory** %MEMORY
  %loadMem_436461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6160 = getelementptr inbounds %struct.GPR, %struct.GPR* %6159, i32 0, i32 33
  %6161 = getelementptr inbounds %struct.Reg, %struct.Reg* %6160, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6161 to i64*
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 7
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %6164 to i64*
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 15
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6167 to i64*
  %6168 = load i64, i64* %RBP.i203
  %6169 = sub i64 %6168, 44
  %6170 = load i64, i64* %PC.i201
  %6171 = add i64 %6170, 3
  store i64 %6171, i64* %PC.i201
  %6172 = inttoptr i64 %6169 to i32*
  %6173 = load i32, i32* %6172
  %6174 = zext i32 %6173 to i64
  store i64 %6174, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_436461, %struct.Memory** %MEMORY
  %loadMem_436464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6176 = getelementptr inbounds %struct.GPR, %struct.GPR* %6175, i32 0, i32 33
  %6177 = getelementptr inbounds %struct.Reg, %struct.Reg* %6176, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6177 to i64*
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 7
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %6180 to i64*
  %6181 = load i64, i64* %RDX.i200
  %6182 = load i64, i64* %PC.i199
  %6183 = add i64 %6182, 3
  store i64 %6183, i64* %PC.i199
  %6184 = trunc i64 %6181 to i32
  %6185 = sub i32 %6184, 1
  %6186 = zext i32 %6185 to i64
  store i64 %6186, i64* %RDX.i200, align 8
  %6187 = icmp ult i32 %6184, 1
  %6188 = zext i1 %6187 to i8
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6188, i8* %6189, align 1
  %6190 = and i32 %6185, 255
  %6191 = call i32 @llvm.ctpop.i32(i32 %6190)
  %6192 = trunc i32 %6191 to i8
  %6193 = and i8 %6192, 1
  %6194 = xor i8 %6193, 1
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6194, i8* %6195, align 1
  %6196 = xor i64 1, %6181
  %6197 = trunc i64 %6196 to i32
  %6198 = xor i32 %6197, %6185
  %6199 = lshr i32 %6198, 4
  %6200 = trunc i32 %6199 to i8
  %6201 = and i8 %6200, 1
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6201, i8* %6202, align 1
  %6203 = icmp eq i32 %6185, 0
  %6204 = zext i1 %6203 to i8
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6204, i8* %6205, align 1
  %6206 = lshr i32 %6185, 31
  %6207 = trunc i32 %6206 to i8
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6207, i8* %6208, align 1
  %6209 = lshr i32 %6184, 31
  %6210 = xor i32 %6206, %6209
  %6211 = add i32 %6210, %6209
  %6212 = icmp eq i32 %6211, 2
  %6213 = zext i1 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6213, i8* %6214, align 1
  store %struct.Memory* %loadMem_436464, %struct.Memory** %MEMORY
  %loadMem_436467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 7
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %EDX.i197 = bitcast %union.anon* %6220 to i32*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 17
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %R8.i198 = bitcast %union.anon* %6223 to i64*
  %6224 = load i32, i32* %EDX.i197
  %6225 = zext i32 %6224 to i64
  %6226 = load i64, i64* %PC.i196
  %6227 = add i64 %6226, 3
  store i64 %6227, i64* %PC.i196
  %6228 = shl i64 %6225, 32
  %6229 = ashr exact i64 %6228, 32
  store i64 %6229, i64* %R8.i198, align 8
  store %struct.Memory* %loadMem_436467, %struct.Memory** %MEMORY
  %loadMem_43646a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6231 = getelementptr inbounds %struct.GPR, %struct.GPR* %6230, i32 0, i32 33
  %6232 = getelementptr inbounds %struct.Reg, %struct.Reg* %6231, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6232 to i64*
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 5
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 17
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %R8.i195 = bitcast %union.anon* %6238 to i64*
  %6239 = load i64, i64* %RCX.i194
  %6240 = load i64, i64* %R8.i195
  %6241 = mul i64 %6240, 8
  %6242 = add i64 %6241, %6239
  %6243 = load i64, i64* %PC.i193
  %6244 = add i64 %6243, 4
  store i64 %6244, i64* %PC.i193
  %6245 = inttoptr i64 %6242 to i64*
  %6246 = load i64, i64* %6245
  store i64 %6246, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_43646a, %struct.Memory** %MEMORY
  %loadMem_43646e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 33
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6249 to i64*
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 5
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %6252 to i64*
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 7
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %RCX.i191
  %6257 = load i64, i64* %PC.i190
  %6258 = add i64 %6257, 2
  store i64 %6258, i64* %PC.i190
  %6259 = inttoptr i64 %6256 to i32*
  %6260 = load i32, i32* %6259
  %6261 = zext i32 %6260 to i64
  store i64 %6261, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_43646e, %struct.Memory** %MEMORY
  %loadMem_436470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 33
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 5
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %6267 to i64*
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6269 = getelementptr inbounds %struct.GPR, %struct.GPR* %6268, i32 0, i32 15
  %6270 = getelementptr inbounds %struct.Reg, %struct.Reg* %6269, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %6270 to i64*
  %6271 = load i64, i64* %RBP.i189
  %6272 = sub i64 %6271, 16
  %6273 = load i64, i64* %PC.i187
  %6274 = add i64 %6273, 4
  store i64 %6274, i64* %PC.i187
  %6275 = inttoptr i64 %6272 to i64*
  %6276 = load i64, i64* %6275
  store i64 %6276, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_436470, %struct.Memory** %MEMORY
  %loadMem_436474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 33
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6279 to i64*
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 5
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %6282 to i64*
  %6283 = load i64, i64* %RCX.i186
  %6284 = add i64 %6283, 368
  %6285 = load i64, i64* %PC.i185
  %6286 = add i64 %6285, 7
  store i64 %6286, i64* %PC.i185
  %6287 = inttoptr i64 %6284 to i64*
  %6288 = load i64, i64* %6287
  store i64 %6288, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_436474, %struct.Memory** %MEMORY
  %loadMem_43647b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 33
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6291 to i64*
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 15
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6294 to i64*
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 17
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %R8.i184 = bitcast %union.anon* %6297 to i64*
  %6298 = load i64, i64* %RBP.i183
  %6299 = sub i64 %6298, 16
  %6300 = load i64, i64* %PC.i182
  %6301 = add i64 %6300, 4
  store i64 %6301, i64* %PC.i182
  %6302 = inttoptr i64 %6299 to i64*
  %6303 = load i64, i64* %6302
  store i64 %6303, i64* %R8.i184, align 8
  store %struct.Memory* %loadMem_43647b, %struct.Memory** %MEMORY
  %loadMem_43647f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 33
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 17
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %R8.i181 = bitcast %union.anon* %6309 to i64*
  %6310 = load i64, i64* %R8.i181
  %6311 = add i64 %6310, 136
  %6312 = load i64, i64* %PC.i180
  %6313 = add i64 %6312, 7
  store i64 %6313, i64* %PC.i180
  %6314 = inttoptr i64 %6311 to i32*
  %6315 = load i32, i32* %6314
  %6316 = sext i32 %6315 to i64
  store i64 %6316, i64* %R8.i181, align 8
  store %struct.Memory* %loadMem_43647f, %struct.Memory** %MEMORY
  %loadMem_436486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 33
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 5
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 7
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 17
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %R8.i179 = bitcast %union.anon* %6328 to i64*
  %6329 = load i64, i64* %RDX.i178
  %6330 = load i64, i64* %RCX.i177
  %6331 = load i64, i64* %R8.i179
  %6332 = mul i64 %6331, 4
  %6333 = add i64 %6332, %6330
  %6334 = load i64, i64* %PC.i176
  %6335 = add i64 %6334, 4
  store i64 %6335, i64* %PC.i176
  %6336 = trunc i64 %6329 to i32
  %6337 = inttoptr i64 %6333 to i32*
  %6338 = load i32, i32* %6337
  %6339 = add i32 %6338, %6336
  %6340 = zext i32 %6339 to i64
  store i64 %6340, i64* %RDX.i178, align 8
  %6341 = icmp ult i32 %6339, %6336
  %6342 = icmp ult i32 %6339, %6338
  %6343 = or i1 %6341, %6342
  %6344 = zext i1 %6343 to i8
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6344, i8* %6345, align 1
  %6346 = and i32 %6339, 255
  %6347 = call i32 @llvm.ctpop.i32(i32 %6346)
  %6348 = trunc i32 %6347 to i8
  %6349 = and i8 %6348, 1
  %6350 = xor i8 %6349, 1
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6350, i8* %6351, align 1
  %6352 = xor i32 %6338, %6336
  %6353 = xor i32 %6352, %6339
  %6354 = lshr i32 %6353, 4
  %6355 = trunc i32 %6354 to i8
  %6356 = and i8 %6355, 1
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6356, i8* %6357, align 1
  %6358 = icmp eq i32 %6339, 0
  %6359 = zext i1 %6358 to i8
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6359, i8* %6360, align 1
  %6361 = lshr i32 %6339, 31
  %6362 = trunc i32 %6361 to i8
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6362, i8* %6363, align 1
  %6364 = lshr i32 %6336, 31
  %6365 = lshr i32 %6338, 31
  %6366 = xor i32 %6361, %6364
  %6367 = xor i32 %6361, %6365
  %6368 = add i32 %6366, %6367
  %6369 = icmp eq i32 %6368, 2
  %6370 = zext i1 %6369 to i8
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6370, i8* %6371, align 1
  store %struct.Memory* %loadMem_436486, %struct.Memory** %MEMORY
  %loadMem_43648a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 33
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6374 to i64*
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 5
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 15
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6380 to i64*
  %6381 = load i64, i64* %RBP.i175
  %6382 = sub i64 %6381, 24
  %6383 = load i64, i64* %PC.i173
  %6384 = add i64 %6383, 4
  store i64 %6384, i64* %PC.i173
  %6385 = inttoptr i64 %6382 to i64*
  %6386 = load i64, i64* %6385
  store i64 %6386, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_43648a, %struct.Memory** %MEMORY
  %loadMem_43648e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 33
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6389 to i64*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 5
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %6392 to i64*
  %6393 = load i64, i64* %RCX.i172
  %6394 = add i64 %6393, 24
  %6395 = load i64, i64* %PC.i171
  %6396 = add i64 %6395, 4
  store i64 %6396, i64* %PC.i171
  %6397 = inttoptr i64 %6394 to i64*
  %6398 = load i64, i64* %6397
  store i64 %6398, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_43648e, %struct.Memory** %MEMORY
  %loadMem_436492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 33
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6401 to i64*
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 9
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 15
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6407 to i64*
  %6408 = load i64, i64* %RBP.i170
  %6409 = sub i64 %6408, 44
  %6410 = load i64, i64* %PC.i168
  %6411 = add i64 %6410, 3
  store i64 %6411, i64* %PC.i168
  %6412 = inttoptr i64 %6409 to i32*
  %6413 = load i32, i32* %6412
  %6414 = zext i32 %6413 to i64
  store i64 %6414, i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_436492, %struct.Memory** %MEMORY
  %loadMem_436495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 33
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6417 to i64*
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 9
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %RSI.i167 = bitcast %union.anon* %6420 to i64*
  %6421 = load i64, i64* %RSI.i167
  %6422 = load i64, i64* %PC.i166
  %6423 = add i64 %6422, 3
  store i64 %6423, i64* %PC.i166
  %6424 = trunc i64 %6421 to i32
  %6425 = sub i32 %6424, 1
  %6426 = zext i32 %6425 to i64
  store i64 %6426, i64* %RSI.i167, align 8
  %6427 = icmp ult i32 %6424, 1
  %6428 = zext i1 %6427 to i8
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6428, i8* %6429, align 1
  %6430 = and i32 %6425, 255
  %6431 = call i32 @llvm.ctpop.i32(i32 %6430)
  %6432 = trunc i32 %6431 to i8
  %6433 = and i8 %6432, 1
  %6434 = xor i8 %6433, 1
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6434, i8* %6435, align 1
  %6436 = xor i64 1, %6421
  %6437 = trunc i64 %6436 to i32
  %6438 = xor i32 %6437, %6425
  %6439 = lshr i32 %6438, 4
  %6440 = trunc i32 %6439 to i8
  %6441 = and i8 %6440, 1
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6441, i8* %6442, align 1
  %6443 = icmp eq i32 %6425, 0
  %6444 = zext i1 %6443 to i8
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6444, i8* %6445, align 1
  %6446 = lshr i32 %6425, 31
  %6447 = trunc i32 %6446 to i8
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6447, i8* %6448, align 1
  %6449 = lshr i32 %6424, 31
  %6450 = xor i32 %6446, %6449
  %6451 = add i32 %6450, %6449
  %6452 = icmp eq i32 %6451, 2
  %6453 = zext i1 %6452 to i8
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6453, i8* %6454, align 1
  store %struct.Memory* %loadMem_436495, %struct.Memory** %MEMORY
  %loadMem_436498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 33
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 9
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %ESI.i164 = bitcast %union.anon* %6460 to i32*
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 17
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %R8.i165 = bitcast %union.anon* %6463 to i64*
  %6464 = load i32, i32* %ESI.i164
  %6465 = zext i32 %6464 to i64
  %6466 = load i64, i64* %PC.i163
  %6467 = add i64 %6466, 3
  store i64 %6467, i64* %PC.i163
  %6468 = shl i64 %6465, 32
  %6469 = ashr exact i64 %6468, 32
  store i64 %6469, i64* %R8.i165, align 8
  store %struct.Memory* %loadMem_436498, %struct.Memory** %MEMORY
  %loadMem_43649b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 5
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %6475 to i64*
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 17
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %R8.i162 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %RCX.i161
  %6480 = load i64, i64* %R8.i162
  %6481 = mul i64 %6480, 8
  %6482 = add i64 %6481, %6479
  %6483 = load i64, i64* %PC.i160
  %6484 = add i64 %6483, 4
  store i64 %6484, i64* %PC.i160
  %6485 = inttoptr i64 %6482 to i64*
  %6486 = load i64, i64* %6485
  store i64 %6486, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_43649b, %struct.Memory** %MEMORY
  %loadMem_43649f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6488 = getelementptr inbounds %struct.GPR, %struct.GPR* %6487, i32 0, i32 33
  %6489 = getelementptr inbounds %struct.Reg, %struct.Reg* %6488, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6489 to i64*
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6491 = getelementptr inbounds %struct.GPR, %struct.GPR* %6490, i32 0, i32 15
  %6492 = getelementptr inbounds %struct.Reg, %struct.Reg* %6491, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %6492 to i64*
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 17
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %R8.i159 = bitcast %union.anon* %6495 to i64*
  %6496 = load i64, i64* %RBP.i158
  %6497 = sub i64 %6496, 16
  %6498 = load i64, i64* %PC.i157
  %6499 = add i64 %6498, 4
  store i64 %6499, i64* %PC.i157
  %6500 = inttoptr i64 %6497 to i64*
  %6501 = load i64, i64* %6500
  store i64 %6501, i64* %R8.i159, align 8
  store %struct.Memory* %loadMem_43649f, %struct.Memory** %MEMORY
  %loadMem_4364a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 33
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6504 to i64*
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 9
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %RSI.i155 = bitcast %union.anon* %6507 to i64*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 17
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %R8.i156 = bitcast %union.anon* %6510 to i64*
  %6511 = load i64, i64* %R8.i156
  %6512 = add i64 %6511, 136
  %6513 = load i64, i64* %PC.i154
  %6514 = add i64 %6513, 7
  store i64 %6514, i64* %PC.i154
  %6515 = inttoptr i64 %6512 to i32*
  %6516 = load i32, i32* %6515
  %6517 = zext i32 %6516 to i64
  store i64 %6517, i64* %RSI.i155, align 8
  store %struct.Memory* %loadMem_4364a3, %struct.Memory** %MEMORY
  %loadMem_4364aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 33
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6520 to i64*
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 9
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %RSI.i153 = bitcast %union.anon* %6523 to i64*
  %6524 = load i64, i64* %RSI.i153
  %6525 = load i64, i64* %PC.i152
  %6526 = add i64 %6525, 3
  store i64 %6526, i64* %PC.i152
  %6527 = trunc i64 %6524 to i32
  %6528 = sub i32 %6527, 1
  %6529 = zext i32 %6528 to i64
  store i64 %6529, i64* %RSI.i153, align 8
  %6530 = icmp ult i32 %6527, 1
  %6531 = zext i1 %6530 to i8
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6531, i8* %6532, align 1
  %6533 = and i32 %6528, 255
  %6534 = call i32 @llvm.ctpop.i32(i32 %6533)
  %6535 = trunc i32 %6534 to i8
  %6536 = and i8 %6535, 1
  %6537 = xor i8 %6536, 1
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6537, i8* %6538, align 1
  %6539 = xor i64 1, %6524
  %6540 = trunc i64 %6539 to i32
  %6541 = xor i32 %6540, %6528
  %6542 = lshr i32 %6541, 4
  %6543 = trunc i32 %6542 to i8
  %6544 = and i8 %6543, 1
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6544, i8* %6545, align 1
  %6546 = icmp eq i32 %6528, 0
  %6547 = zext i1 %6546 to i8
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6547, i8* %6548, align 1
  %6549 = lshr i32 %6528, 31
  %6550 = trunc i32 %6549 to i8
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6550, i8* %6551, align 1
  %6552 = lshr i32 %6527, 31
  %6553 = xor i32 %6549, %6552
  %6554 = add i32 %6553, %6552
  %6555 = icmp eq i32 %6554, 2
  %6556 = zext i1 %6555 to i8
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6556, i8* %6557, align 1
  store %struct.Memory* %loadMem_4364aa, %struct.Memory** %MEMORY
  %loadMem_4364ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 9
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6563 to i32*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 17
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %R8.i151 = bitcast %union.anon* %6566 to i64*
  %6567 = load i32, i32* %ESI.i
  %6568 = zext i32 %6567 to i64
  %6569 = load i64, i64* %PC.i150
  %6570 = add i64 %6569, 3
  store i64 %6570, i64* %PC.i150
  %6571 = shl i64 %6568, 32
  %6572 = ashr exact i64 %6571, 32
  store i64 %6572, i64* %R8.i151, align 8
  store %struct.Memory* %loadMem_4364ad, %struct.Memory** %MEMORY
  %loadMem_4364b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 33
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 5
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 9
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RSI.i148 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 17
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %R8.i149 = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %RCX.i147
  %6586 = load i64, i64* %R8.i149
  %6587 = mul i64 %6586, 4
  %6588 = add i64 %6587, %6585
  %6589 = load i64, i64* %PC.i146
  %6590 = add i64 %6589, 4
  store i64 %6590, i64* %PC.i146
  %6591 = inttoptr i64 %6588 to i32*
  %6592 = load i32, i32* %6591
  %6593 = zext i32 %6592 to i64
  store i64 %6593, i64* %RSI.i148, align 8
  store %struct.Memory* %loadMem_4364b0, %struct.Memory** %MEMORY
  %loadMem_4364b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 33
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6596 to i64*
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6598 = getelementptr inbounds %struct.GPR, %struct.GPR* %6597, i32 0, i32 5
  %6599 = getelementptr inbounds %struct.Reg, %struct.Reg* %6598, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %6599 to i64*
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6601 = getelementptr inbounds %struct.GPR, %struct.GPR* %6600, i32 0, i32 15
  %6602 = getelementptr inbounds %struct.Reg, %struct.Reg* %6601, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %6602 to i64*
  %6603 = load i64, i64* %RBP.i145
  %6604 = sub i64 %6603, 16
  %6605 = load i64, i64* %PC.i143
  %6606 = add i64 %6605, 4
  store i64 %6606, i64* %PC.i143
  %6607 = inttoptr i64 %6604 to i64*
  %6608 = load i64, i64* %6607
  store i64 %6608, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_4364b4, %struct.Memory** %MEMORY
  %loadMem_4364b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 33
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 5
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %6614 to i64*
  %6615 = load i64, i64* %RCX.i142
  %6616 = add i64 %6615, 312
  %6617 = load i64, i64* %PC.i141
  %6618 = add i64 %6617, 7
  store i64 %6618, i64* %PC.i141
  %6619 = inttoptr i64 %6616 to i64*
  %6620 = load i64, i64* %6619
  store i64 %6620, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_4364b8, %struct.Memory** %MEMORY
  %loadMem_4364bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 33
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6623 to i64*
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 5
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %6626 to i64*
  %6627 = load i64, i64* %RCX.i140
  %6628 = add i64 %6627, 40
  %6629 = load i64, i64* %PC.i139
  %6630 = add i64 %6629, 4
  store i64 %6630, i64* %PC.i139
  %6631 = inttoptr i64 %6628 to i64*
  %6632 = load i64, i64* %6631
  store i64 %6632, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_4364bf, %struct.Memory** %MEMORY
  %loadMem_4364c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 33
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 15
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %6638 to i64*
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 17
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %R8.i138 = bitcast %union.anon* %6641 to i64*
  %6642 = load i64, i64* %RBP.i137
  %6643 = sub i64 %6642, 16
  %6644 = load i64, i64* %PC.i136
  %6645 = add i64 %6644, 4
  store i64 %6645, i64* %PC.i136
  %6646 = inttoptr i64 %6643 to i64*
  %6647 = load i64, i64* %6646
  store i64 %6647, i64* %R8.i138, align 8
  store %struct.Memory* %loadMem_4364c3, %struct.Memory** %MEMORY
  %loadMem_4364c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 33
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6650 to i64*
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 11
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %6653 to i64*
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 17
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %R8.i135 = bitcast %union.anon* %6656 to i64*
  %6657 = load i64, i64* %R8.i135
  %6658 = add i64 %6657, 136
  %6659 = load i64, i64* %PC.i133
  %6660 = add i64 %6659, 7
  store i64 %6660, i64* %PC.i133
  %6661 = inttoptr i64 %6658 to i32*
  %6662 = load i32, i32* %6661
  %6663 = zext i32 %6662 to i64
  store i64 %6663, i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_4364c7, %struct.Memory** %MEMORY
  %loadMem_4364ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 33
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6666 to i64*
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 11
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %6669 to i64*
  %6670 = load i64, i64* %RDI.i132
  %6671 = load i64, i64* %PC.i131
  %6672 = add i64 %6671, 3
  store i64 %6672, i64* %PC.i131
  %6673 = trunc i64 %6670 to i32
  %6674 = sub i32 %6673, 1
  %6675 = zext i32 %6674 to i64
  store i64 %6675, i64* %RDI.i132, align 8
  %6676 = icmp ult i32 %6673, 1
  %6677 = zext i1 %6676 to i8
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6677, i8* %6678, align 1
  %6679 = and i32 %6674, 255
  %6680 = call i32 @llvm.ctpop.i32(i32 %6679)
  %6681 = trunc i32 %6680 to i8
  %6682 = and i8 %6681, 1
  %6683 = xor i8 %6682, 1
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6683, i8* %6684, align 1
  %6685 = xor i64 1, %6670
  %6686 = trunc i64 %6685 to i32
  %6687 = xor i32 %6686, %6674
  %6688 = lshr i32 %6687, 4
  %6689 = trunc i32 %6688 to i8
  %6690 = and i8 %6689, 1
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6690, i8* %6691, align 1
  %6692 = icmp eq i32 %6674, 0
  %6693 = zext i1 %6692 to i8
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6693, i8* %6694, align 1
  %6695 = lshr i32 %6674, 31
  %6696 = trunc i32 %6695 to i8
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6696, i8* %6697, align 1
  %6698 = lshr i32 %6673, 31
  %6699 = xor i32 %6695, %6698
  %6700 = add i32 %6699, %6698
  %6701 = icmp eq i32 %6700, 2
  %6702 = zext i1 %6701 to i8
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6702, i8* %6703, align 1
  store %struct.Memory* %loadMem_4364ce, %struct.Memory** %MEMORY
  %loadMem_4364d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 33
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6706 to i64*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 11
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %6709 to i32*
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6711 = getelementptr inbounds %struct.GPR, %struct.GPR* %6710, i32 0, i32 17
  %6712 = getelementptr inbounds %struct.Reg, %struct.Reg* %6711, i32 0, i32 0
  %R8.i130 = bitcast %union.anon* %6712 to i64*
  %6713 = load i32, i32* %EDI.i
  %6714 = zext i32 %6713 to i64
  %6715 = load i64, i64* %PC.i129
  %6716 = add i64 %6715, 3
  store i64 %6716, i64* %PC.i129
  %6717 = shl i64 %6714, 32
  %6718 = ashr exact i64 %6717, 32
  store i64 %6718, i64* %R8.i130, align 8
  store %struct.Memory* %loadMem_4364d1, %struct.Memory** %MEMORY
  %loadMem_4364d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 33
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6721 to i64*
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 5
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 9
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %RSI.i127 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 17
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %R8.i128 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %RSI.i127
  %6732 = load i64, i64* %RCX.i126
  %6733 = load i64, i64* %R8.i128
  %6734 = mul i64 %6733, 4
  %6735 = add i64 %6734, %6732
  %6736 = load i64, i64* %PC.i125
  %6737 = add i64 %6736, 4
  store i64 %6737, i64* %PC.i125
  %6738 = trunc i64 %6731 to i32
  %6739 = inttoptr i64 %6735 to i32*
  %6740 = load i32, i32* %6739
  %6741 = add i32 %6740, %6738
  %6742 = zext i32 %6741 to i64
  store i64 %6742, i64* %RSI.i127, align 8
  %6743 = icmp ult i32 %6741, %6738
  %6744 = icmp ult i32 %6741, %6740
  %6745 = or i1 %6743, %6744
  %6746 = zext i1 %6745 to i8
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6746, i8* %6747, align 1
  %6748 = and i32 %6741, 255
  %6749 = call i32 @llvm.ctpop.i32(i32 %6748)
  %6750 = trunc i32 %6749 to i8
  %6751 = and i8 %6750, 1
  %6752 = xor i8 %6751, 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6752, i8* %6753, align 1
  %6754 = xor i32 %6740, %6738
  %6755 = xor i32 %6754, %6741
  %6756 = lshr i32 %6755, 4
  %6757 = trunc i32 %6756 to i8
  %6758 = and i8 %6757, 1
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6758, i8* %6759, align 1
  %6760 = icmp eq i32 %6741, 0
  %6761 = zext i1 %6760 to i8
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6761, i8* %6762, align 1
  %6763 = lshr i32 %6741, 31
  %6764 = trunc i32 %6763 to i8
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6764, i8* %6765, align 1
  %6766 = lshr i32 %6738, 31
  %6767 = lshr i32 %6740, 31
  %6768 = xor i32 %6763, %6766
  %6769 = xor i32 %6763, %6767
  %6770 = add i32 %6768, %6769
  %6771 = icmp eq i32 %6770, 2
  %6772 = zext i1 %6771 to i8
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6772, i8* %6773, align 1
  store %struct.Memory* %loadMem_4364d4, %struct.Memory** %MEMORY
  %loadMem_4364d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 33
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6776 to i64*
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 7
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %EDX.i123 = bitcast %union.anon* %6779 to i32*
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 11
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %6782 to i64*
  %6783 = load i32, i32* %EDX.i123
  %6784 = zext i32 %6783 to i64
  %6785 = load i64, i64* %PC.i122
  %6786 = add i64 %6785, 2
  store i64 %6786, i64* %PC.i122
  %6787 = and i64 %6784, 4294967295
  store i64 %6787, i64* %RDI.i124, align 8
  store %struct.Memory* %loadMem_4364d8, %struct.Memory** %MEMORY
  %loadMem_4364da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6789 = getelementptr inbounds %struct.GPR, %struct.GPR* %6788, i32 0, i32 33
  %6790 = getelementptr inbounds %struct.Reg, %struct.Reg* %6789, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %6790 to i64*
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 1
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %EAX.i120 = bitcast %union.anon* %6793 to i32*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 15
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %6796 to i64*
  %6797 = load i64, i64* %RBP.i121
  %6798 = sub i64 %6797, 60
  %6799 = load i32, i32* %EAX.i120
  %6800 = zext i32 %6799 to i64
  %6801 = load i64, i64* %PC.i119
  %6802 = add i64 %6801, 3
  store i64 %6802, i64* %PC.i119
  %6803 = inttoptr i64 %6798 to i32*
  store i32 %6799, i32* %6803
  store %struct.Memory* %loadMem_4364da, %struct.Memory** %MEMORY
  %loadMem1_4364dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 33
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6806 to i64*
  %6807 = load i64, i64* %PC.i118
  %6808 = add i64 %6807, -58157
  %6809 = load i64, i64* %PC.i118
  %6810 = add i64 %6809, 5
  %6811 = load i64, i64* %PC.i118
  %6812 = add i64 %6811, 5
  store i64 %6812, i64* %PC.i118
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6814 = load i64, i64* %6813, align 8
  %6815 = add i64 %6814, -8
  %6816 = inttoptr i64 %6815 to i64*
  store i64 %6810, i64* %6816
  store i64 %6815, i64* %6813, align 8
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6808, i64* %6817, align 8
  store %struct.Memory* %loadMem1_4364dd, %struct.Memory** %MEMORY
  %loadMem2_4364dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4364dd = load i64, i64* %3
  %call2_4364dd = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4364dd, %struct.Memory* %loadMem2_4364dd)
  store %struct.Memory* %call2_4364dd, %struct.Memory** %MEMORY
  %loadMem_4364e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6820 to i64*
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 11
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 15
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6826 to i64*
  %6827 = load i64, i64* %RBP.i117
  %6828 = sub i64 %6827, 60
  %6829 = load i64, i64* %PC.i116
  %6830 = add i64 %6829, 3
  store i64 %6830, i64* %PC.i116
  %6831 = inttoptr i64 %6828 to i32*
  %6832 = load i32, i32* %6831
  %6833 = zext i32 %6832 to i64
  store i64 %6833, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4364e2, %struct.Memory** %MEMORY
  %loadMem_4364e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 1
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %6839 to i32*
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 9
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6842 to i64*
  %6843 = load i32, i32* %EAX.i115
  %6844 = zext i32 %6843 to i64
  %6845 = load i64, i64* %PC.i114
  %6846 = add i64 %6845, 2
  store i64 %6846, i64* %PC.i114
  %6847 = and i64 %6844, 4294967295
  store i64 %6847, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4364e5, %struct.Memory** %MEMORY
  %loadMem1_4364e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 33
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %PC.i113
  %6852 = add i64 %6851, -58167
  %6853 = load i64, i64* %PC.i113
  %6854 = add i64 %6853, 5
  %6855 = load i64, i64* %PC.i113
  %6856 = add i64 %6855, 5
  store i64 %6856, i64* %PC.i113
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6858 = load i64, i64* %6857, align 8
  %6859 = add i64 %6858, -8
  %6860 = inttoptr i64 %6859 to i64*
  store i64 %6854, i64* %6860
  store i64 %6859, i64* %6857, align 8
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6852, i64* %6861, align 8
  store %struct.Memory* %loadMem1_4364e7, %struct.Memory** %MEMORY
  %loadMem2_4364e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4364e7 = load i64, i64* %3
  %call2_4364e7 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4364e7, %struct.Memory* %loadMem2_4364e7)
  store %struct.Memory* %call2_4364e7, %struct.Memory** %MEMORY
  %loadMem_4364ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 33
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6864 to i64*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 5
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %6867 to i64*
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 15
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6870 to i64*
  %6871 = load i64, i64* %RBP.i112
  %6872 = sub i64 %6871, 40
  %6873 = load i64, i64* %PC.i110
  %6874 = add i64 %6873, 4
  store i64 %6874, i64* %PC.i110
  %6875 = inttoptr i64 %6872 to i64*
  %6876 = load i64, i64* %6875
  store i64 %6876, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_4364ec, %struct.Memory** %MEMORY
  %loadMem_4364f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 33
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6879 to i64*
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 5
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %6882 to i64*
  %6883 = load i64, i64* %RCX.i109
  %6884 = add i64 %6883, 8
  %6885 = load i64, i64* %PC.i108
  %6886 = add i64 %6885, 4
  store i64 %6886, i64* %PC.i108
  %6887 = inttoptr i64 %6884 to i64*
  %6888 = load i64, i64* %6887
  store i64 %6888, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_4364f0, %struct.Memory** %MEMORY
  %loadMem_4364f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 33
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6891 to i64*
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 15
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6894 to i64*
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 17
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %R8.i107 = bitcast %union.anon* %6897 to i64*
  %6898 = load i64, i64* %RBP.i106
  %6899 = sub i64 %6898, 44
  %6900 = load i64, i64* %PC.i105
  %6901 = add i64 %6900, 4
  store i64 %6901, i64* %PC.i105
  %6902 = inttoptr i64 %6899 to i32*
  %6903 = load i32, i32* %6902
  %6904 = sext i32 %6903 to i64
  store i64 %6904, i64* %R8.i107, align 8
  store %struct.Memory* %loadMem_4364f4, %struct.Memory** %MEMORY
  %loadMem_4364f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 33
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6907 to i64*
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 5
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %6910 to i64*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 17
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %R8.i104 = bitcast %union.anon* %6913 to i64*
  %6914 = load i64, i64* %RCX.i103
  %6915 = load i64, i64* %R8.i104
  %6916 = mul i64 %6915, 8
  %6917 = add i64 %6916, %6914
  %6918 = load i64, i64* %PC.i102
  %6919 = add i64 %6918, 4
  store i64 %6919, i64* %PC.i102
  %6920 = inttoptr i64 %6917 to i64*
  %6921 = load i64, i64* %6920
  store i64 %6921, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_4364f8, %struct.Memory** %MEMORY
  %loadMem_4364fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6923 = getelementptr inbounds %struct.GPR, %struct.GPR* %6922, i32 0, i32 33
  %6924 = getelementptr inbounds %struct.Reg, %struct.Reg* %6923, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6924 to i64*
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 15
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %6927 to i64*
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 17
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %R8.i101 = bitcast %union.anon* %6930 to i64*
  %6931 = load i64, i64* %RBP.i100
  %6932 = sub i64 %6931, 16
  %6933 = load i64, i64* %PC.i99
  %6934 = add i64 %6933, 4
  store i64 %6934, i64* %PC.i99
  %6935 = inttoptr i64 %6932 to i64*
  %6936 = load i64, i64* %6935
  store i64 %6936, i64* %R8.i101, align 8
  store %struct.Memory* %loadMem_4364fc, %struct.Memory** %MEMORY
  %loadMem_436500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6938 = getelementptr inbounds %struct.GPR, %struct.GPR* %6937, i32 0, i32 33
  %6939 = getelementptr inbounds %struct.Reg, %struct.Reg* %6938, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6939 to i64*
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 17
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %R8.i98 = bitcast %union.anon* %6942 to i64*
  %6943 = load i64, i64* %R8.i98
  %6944 = add i64 %6943, 136
  %6945 = load i64, i64* %PC.i97
  %6946 = add i64 %6945, 7
  store i64 %6946, i64* %PC.i97
  %6947 = inttoptr i64 %6944 to i32*
  %6948 = load i32, i32* %6947
  %6949 = sext i32 %6948 to i64
  store i64 %6949, i64* %R8.i98, align 8
  store %struct.Memory* %loadMem_436500, %struct.Memory** %MEMORY
  %loadMem_436507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 1
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 5
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %6958 to i64*
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 17
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %R8.i96 = bitcast %union.anon* %6961 to i64*
  %6962 = load i64, i64* %RAX.i94
  %6963 = load i64, i64* %RCX.i95
  %6964 = load i64, i64* %R8.i96
  %6965 = mul i64 %6964, 4
  %6966 = add i64 %6965, %6963
  %6967 = load i64, i64* %PC.i93
  %6968 = add i64 %6967, 4
  store i64 %6968, i64* %PC.i93
  %6969 = trunc i64 %6962 to i32
  %6970 = inttoptr i64 %6966 to i32*
  %6971 = load i32, i32* %6970
  %6972 = add i32 %6971, %6969
  %6973 = zext i32 %6972 to i64
  store i64 %6973, i64* %RAX.i94, align 8
  %6974 = icmp ult i32 %6972, %6969
  %6975 = icmp ult i32 %6972, %6971
  %6976 = or i1 %6974, %6975
  %6977 = zext i1 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6977, i8* %6978, align 1
  %6979 = and i32 %6972, 255
  %6980 = call i32 @llvm.ctpop.i32(i32 %6979)
  %6981 = trunc i32 %6980 to i8
  %6982 = and i8 %6981, 1
  %6983 = xor i8 %6982, 1
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6983, i8* %6984, align 1
  %6985 = xor i32 %6971, %6969
  %6986 = xor i32 %6985, %6972
  %6987 = lshr i32 %6986, 4
  %6988 = trunc i32 %6987 to i8
  %6989 = and i8 %6988, 1
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6989, i8* %6990, align 1
  %6991 = icmp eq i32 %6972, 0
  %6992 = zext i1 %6991 to i8
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6992, i8* %6993, align 1
  %6994 = lshr i32 %6972, 31
  %6995 = trunc i32 %6994 to i8
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6995, i8* %6996, align 1
  %6997 = lshr i32 %6969, 31
  %6998 = lshr i32 %6971, 31
  %6999 = xor i32 %6994, %6997
  %7000 = xor i32 %6994, %6998
  %7001 = add i32 %6999, %7000
  %7002 = icmp eq i32 %7001, 2
  %7003 = zext i1 %7002 to i8
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7003, i8* %7004, align 1
  store %struct.Memory* %loadMem_436507, %struct.Memory** %MEMORY
  %loadMem_43650b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 33
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7007 to i64*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 1
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %EAX.i90 = bitcast %union.anon* %7010 to i32*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 5
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %7013 to i64*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 17
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %R8.i92 = bitcast %union.anon* %7016 to i64*
  %7017 = load i64, i64* %RCX.i91
  %7018 = load i64, i64* %R8.i92
  %7019 = mul i64 %7018, 4
  %7020 = add i64 %7019, %7017
  %7021 = load i32, i32* %EAX.i90
  %7022 = zext i32 %7021 to i64
  %7023 = load i64, i64* %PC.i89
  %7024 = add i64 %7023, 4
  store i64 %7024, i64* %PC.i89
  %7025 = inttoptr i64 %7020 to i32*
  store i32 %7021, i32* %7025
  store %struct.Memory* %loadMem_43650b, %struct.Memory** %MEMORY
  %loadMem_43650f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 33
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7028 to i64*
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 1
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %7031 to i64*
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 15
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %7034 to i64*
  %7035 = load i64, i64* %RBP.i88
  %7036 = sub i64 %7035, 52
  %7037 = load i64, i64* %PC.i86
  %7038 = add i64 %7037, 3
  store i64 %7038, i64* %PC.i86
  %7039 = inttoptr i64 %7036 to i32*
  %7040 = load i32, i32* %7039
  %7041 = zext i32 %7040 to i64
  store i64 %7041, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_43650f, %struct.Memory** %MEMORY
  %loadMem_436512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 33
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7044 to i64*
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 5
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %7047 to i64*
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 15
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %7050 to i64*
  %7051 = load i64, i64* %RBP.i85
  %7052 = sub i64 %7051, 40
  %7053 = load i64, i64* %PC.i83
  %7054 = add i64 %7053, 4
  store i64 %7054, i64* %PC.i83
  %7055 = inttoptr i64 %7052 to i64*
  %7056 = load i64, i64* %7055
  store i64 %7056, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_436512, %struct.Memory** %MEMORY
  %loadMem_436516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 33
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7059 to i64*
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 5
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %7062 to i64*
  %7063 = load i64, i64* %RCX.i82
  %7064 = add i64 %7063, 8
  %7065 = load i64, i64* %PC.i81
  %7066 = add i64 %7065, 4
  store i64 %7066, i64* %PC.i81
  %7067 = inttoptr i64 %7064 to i64*
  %7068 = load i64, i64* %7067
  store i64 %7068, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_436516, %struct.Memory** %MEMORY
  %loadMem_43651a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 33
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 15
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7074 to i64*
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 17
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %R8.i80 = bitcast %union.anon* %7077 to i64*
  %7078 = load i64, i64* %RBP.i79
  %7079 = sub i64 %7078, 44
  %7080 = load i64, i64* %PC.i78
  %7081 = add i64 %7080, 4
  store i64 %7081, i64* %PC.i78
  %7082 = inttoptr i64 %7079 to i32*
  %7083 = load i32, i32* %7082
  %7084 = sext i32 %7083 to i64
  store i64 %7084, i64* %R8.i80, align 8
  store %struct.Memory* %loadMem_43651a, %struct.Memory** %MEMORY
  %loadMem_43651e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 33
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7087 to i64*
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 5
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %7090 to i64*
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 17
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %R8.i77 = bitcast %union.anon* %7093 to i64*
  %7094 = load i64, i64* %RCX.i76
  %7095 = load i64, i64* %R8.i77
  %7096 = mul i64 %7095, 8
  %7097 = add i64 %7096, %7094
  %7098 = load i64, i64* %PC.i75
  %7099 = add i64 %7098, 4
  store i64 %7099, i64* %PC.i75
  %7100 = inttoptr i64 %7097 to i64*
  %7101 = load i64, i64* %7100
  store i64 %7101, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_43651e, %struct.Memory** %MEMORY
  %loadMem_436522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7103 = getelementptr inbounds %struct.GPR, %struct.GPR* %7102, i32 0, i32 33
  %7104 = getelementptr inbounds %struct.Reg, %struct.Reg* %7103, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7104 to i64*
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 15
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 17
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %R8.i74 = bitcast %union.anon* %7110 to i64*
  %7111 = load i64, i64* %RBP.i73
  %7112 = sub i64 %7111, 16
  %7113 = load i64, i64* %PC.i72
  %7114 = add i64 %7113, 4
  store i64 %7114, i64* %PC.i72
  %7115 = inttoptr i64 %7112 to i64*
  %7116 = load i64, i64* %7115
  store i64 %7116, i64* %R8.i74, align 8
  store %struct.Memory* %loadMem_436522, %struct.Memory** %MEMORY
  %loadMem_436526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 33
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7119 to i64*
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 17
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %R8.i71 = bitcast %union.anon* %7122 to i64*
  %7123 = load i64, i64* %R8.i71
  %7124 = add i64 %7123, 136
  %7125 = load i64, i64* %PC.i70
  %7126 = add i64 %7125, 7
  store i64 %7126, i64* %PC.i70
  %7127 = inttoptr i64 %7124 to i32*
  %7128 = load i32, i32* %7127
  %7129 = sext i32 %7128 to i64
  store i64 %7129, i64* %R8.i71, align 8
  store %struct.Memory* %loadMem_436526, %struct.Memory** %MEMORY
  %loadMem_43652d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 33
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 5
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %7135 to i64*
  %7136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7137 = getelementptr inbounds %struct.GPR, %struct.GPR* %7136, i32 0, i32 7
  %7138 = getelementptr inbounds %struct.Reg, %struct.Reg* %7137, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %7138 to i64*
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 17
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %R8.i69 = bitcast %union.anon* %7141 to i64*
  %7142 = load i64, i64* %RCX.i67
  %7143 = load i64, i64* %R8.i69
  %7144 = mul i64 %7143, 4
  %7145 = add i64 %7144, %7142
  %7146 = load i64, i64* %PC.i66
  %7147 = add i64 %7146, 4
  store i64 %7147, i64* %PC.i66
  %7148 = inttoptr i64 %7145 to i32*
  %7149 = load i32, i32* %7148
  %7150 = zext i32 %7149 to i64
  store i64 %7150, i64* %RDX.i68, align 8
  store %struct.Memory* %loadMem_43652d, %struct.Memory** %MEMORY
  %loadMem_436531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 1
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %7156 to i32*
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 7
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7159 to i64*
  %7160 = load i64, i64* %RDX.i
  %7161 = load i32, i32* %EAX.i65
  %7162 = zext i32 %7161 to i64
  %7163 = load i64, i64* %PC.i64
  %7164 = add i64 %7163, 2
  store i64 %7164, i64* %PC.i64
  %7165 = trunc i64 %7160 to i32
  %7166 = sub i32 %7165, %7161
  %7167 = zext i32 %7166 to i64
  store i64 %7167, i64* %RDX.i, align 8
  %7168 = icmp ult i32 %7165, %7161
  %7169 = zext i1 %7168 to i8
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7169, i8* %7170, align 1
  %7171 = and i32 %7166, 255
  %7172 = call i32 @llvm.ctpop.i32(i32 %7171)
  %7173 = trunc i32 %7172 to i8
  %7174 = and i8 %7173, 1
  %7175 = xor i8 %7174, 1
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7175, i8* %7176, align 1
  %7177 = xor i64 %7162, %7160
  %7178 = trunc i64 %7177 to i32
  %7179 = xor i32 %7178, %7166
  %7180 = lshr i32 %7179, 4
  %7181 = trunc i32 %7180 to i8
  %7182 = and i8 %7181, 1
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7182, i8* %7183, align 1
  %7184 = icmp eq i32 %7166, 0
  %7185 = zext i1 %7184 to i8
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7185, i8* %7186, align 1
  %7187 = lshr i32 %7166, 31
  %7188 = trunc i32 %7187 to i8
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7188, i8* %7189, align 1
  %7190 = lshr i32 %7165, 31
  %7191 = lshr i32 %7161, 31
  %7192 = xor i32 %7191, %7190
  %7193 = xor i32 %7187, %7190
  %7194 = add i32 %7193, %7192
  %7195 = icmp eq i32 %7194, 2
  %7196 = zext i1 %7195 to i8
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7196, i8* %7197, align 1
  store %struct.Memory* %loadMem_436531, %struct.Memory** %MEMORY
  %loadMem_436533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 33
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7200 to i64*
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 7
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7203 to i32*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 5
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %7206 to i64*
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7208 = getelementptr inbounds %struct.GPR, %struct.GPR* %7207, i32 0, i32 17
  %7209 = getelementptr inbounds %struct.Reg, %struct.Reg* %7208, i32 0, i32 0
  %R8.i63 = bitcast %union.anon* %7209 to i64*
  %7210 = load i64, i64* %RCX.i62
  %7211 = load i64, i64* %R8.i63
  %7212 = mul i64 %7211, 4
  %7213 = add i64 %7212, %7210
  %7214 = load i32, i32* %EDX.i
  %7215 = zext i32 %7214 to i64
  %7216 = load i64, i64* %PC.i61
  %7217 = add i64 %7216, 4
  store i64 %7217, i64* %PC.i61
  %7218 = inttoptr i64 %7213 to i32*
  store i32 %7214, i32* %7218
  store %struct.Memory* %loadMem_436533, %struct.Memory** %MEMORY
  %loadMem_436537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 33
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7221 to i64*
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7223 = getelementptr inbounds %struct.GPR, %struct.GPR* %7222, i32 0, i32 5
  %7224 = getelementptr inbounds %struct.Reg, %struct.Reg* %7223, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %7224 to i64*
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 15
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %7227 to i64*
  %7228 = load i64, i64* %RBP.i60
  %7229 = sub i64 %7228, 40
  %7230 = load i64, i64* %PC.i58
  %7231 = add i64 %7230, 4
  store i64 %7231, i64* %PC.i58
  %7232 = inttoptr i64 %7229 to i64*
  %7233 = load i64, i64* %7232
  store i64 %7233, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_436537, %struct.Memory** %MEMORY
  %loadMem_43653b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7235 = getelementptr inbounds %struct.GPR, %struct.GPR* %7234, i32 0, i32 33
  %7236 = getelementptr inbounds %struct.Reg, %struct.Reg* %7235, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7236 to i64*
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 5
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %7239 to i64*
  %7240 = load i64, i64* %RCX.i57
  %7241 = add i64 %7240, 24
  %7242 = load i64, i64* %PC.i56
  %7243 = add i64 %7242, 4
  store i64 %7243, i64* %PC.i56
  %7244 = inttoptr i64 %7241 to i64*
  %7245 = load i64, i64* %7244
  store i64 %7245, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_43653b, %struct.Memory** %MEMORY
  %loadMem_43653f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 33
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7248 to i64*
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7250 = getelementptr inbounds %struct.GPR, %struct.GPR* %7249, i32 0, i32 15
  %7251 = getelementptr inbounds %struct.Reg, %struct.Reg* %7250, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %7251 to i64*
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7253 = getelementptr inbounds %struct.GPR, %struct.GPR* %7252, i32 0, i32 17
  %7254 = getelementptr inbounds %struct.Reg, %struct.Reg* %7253, i32 0, i32 0
  %R8.i55 = bitcast %union.anon* %7254 to i64*
  %7255 = load i64, i64* %RBP.i54
  %7256 = sub i64 %7255, 44
  %7257 = load i64, i64* %PC.i53
  %7258 = add i64 %7257, 4
  store i64 %7258, i64* %PC.i53
  %7259 = inttoptr i64 %7256 to i32*
  %7260 = load i32, i32* %7259
  %7261 = sext i32 %7260 to i64
  store i64 %7261, i64* %R8.i55, align 8
  store %struct.Memory* %loadMem_43653f, %struct.Memory** %MEMORY
  %loadMem_436543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 33
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7264 to i64*
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 5
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %7267 to i64*
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 17
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %R8.i52 = bitcast %union.anon* %7270 to i64*
  %7271 = load i64, i64* %RCX.i51
  %7272 = load i64, i64* %R8.i52
  %7273 = mul i64 %7272, 8
  %7274 = add i64 %7273, %7271
  %7275 = load i64, i64* %PC.i50
  %7276 = add i64 %7275, 4
  store i64 %7276, i64* %PC.i50
  %7277 = inttoptr i64 %7274 to i64*
  %7278 = load i64, i64* %7277
  store i64 %7278, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_436543, %struct.Memory** %MEMORY
  %loadMem_436547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 5
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %7284 to i64*
  %7285 = load i64, i64* %RCX.i49
  %7286 = load i64, i64* %PC.i48
  %7287 = add i64 %7286, 6
  store i64 %7287, i64* %PC.i48
  %7288 = inttoptr i64 %7285 to i32*
  store i32 -987654321, i32* %7288
  store %struct.Memory* %loadMem_436547, %struct.Memory** %MEMORY
  %loadMem_43654d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 33
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7291 to i64*
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 5
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %7294 to i64*
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 15
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7297 to i64*
  %7298 = load i64, i64* %RBP.i47
  %7299 = sub i64 %7298, 40
  %7300 = load i64, i64* %PC.i45
  %7301 = add i64 %7300, 4
  store i64 %7301, i64* %PC.i45
  %7302 = inttoptr i64 %7299 to i64*
  %7303 = load i64, i64* %7302
  store i64 %7303, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_43654d, %struct.Memory** %MEMORY
  %loadMem_436551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7305 = getelementptr inbounds %struct.GPR, %struct.GPR* %7304, i32 0, i32 33
  %7306 = getelementptr inbounds %struct.Reg, %struct.Reg* %7305, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7306 to i64*
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 5
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %7309 to i64*
  %7310 = load i64, i64* %RCX.i44
  %7311 = add i64 %7310, 24
  %7312 = load i64, i64* %PC.i43
  %7313 = add i64 %7312, 4
  store i64 %7313, i64* %PC.i43
  %7314 = inttoptr i64 %7311 to i64*
  %7315 = load i64, i64* %7314
  store i64 %7315, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_436551, %struct.Memory** %MEMORY
  %loadMem_436555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7317 = getelementptr inbounds %struct.GPR, %struct.GPR* %7316, i32 0, i32 33
  %7318 = getelementptr inbounds %struct.Reg, %struct.Reg* %7317, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7318 to i64*
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7320 = getelementptr inbounds %struct.GPR, %struct.GPR* %7319, i32 0, i32 15
  %7321 = getelementptr inbounds %struct.Reg, %struct.Reg* %7320, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7321 to i64*
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7323 = getelementptr inbounds %struct.GPR, %struct.GPR* %7322, i32 0, i32 17
  %7324 = getelementptr inbounds %struct.Reg, %struct.Reg* %7323, i32 0, i32 0
  %R8.i42 = bitcast %union.anon* %7324 to i64*
  %7325 = load i64, i64* %RBP.i41
  %7326 = sub i64 %7325, 44
  %7327 = load i64, i64* %PC.i40
  %7328 = add i64 %7327, 4
  store i64 %7328, i64* %PC.i40
  %7329 = inttoptr i64 %7326 to i32*
  %7330 = load i32, i32* %7329
  %7331 = sext i32 %7330 to i64
  store i64 %7331, i64* %R8.i42, align 8
  store %struct.Memory* %loadMem_436555, %struct.Memory** %MEMORY
  %loadMem_436559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7333 = getelementptr inbounds %struct.GPR, %struct.GPR* %7332, i32 0, i32 33
  %7334 = getelementptr inbounds %struct.Reg, %struct.Reg* %7333, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7334 to i64*
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7336 = getelementptr inbounds %struct.GPR, %struct.GPR* %7335, i32 0, i32 5
  %7337 = getelementptr inbounds %struct.Reg, %struct.Reg* %7336, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %7337 to i64*
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7339 = getelementptr inbounds %struct.GPR, %struct.GPR* %7338, i32 0, i32 17
  %7340 = getelementptr inbounds %struct.Reg, %struct.Reg* %7339, i32 0, i32 0
  %R8.i39 = bitcast %union.anon* %7340 to i64*
  %7341 = load i64, i64* %RCX.i38
  %7342 = load i64, i64* %R8.i39
  %7343 = mul i64 %7342, 8
  %7344 = add i64 %7343, %7341
  %7345 = load i64, i64* %PC.i37
  %7346 = add i64 %7345, 4
  store i64 %7346, i64* %PC.i37
  %7347 = inttoptr i64 %7344 to i64*
  %7348 = load i64, i64* %7347
  store i64 %7348, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_436559, %struct.Memory** %MEMORY
  %loadMem_43655d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 33
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7351 to i64*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 15
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %7354 to i64*
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 17
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %R8.i36 = bitcast %union.anon* %7357 to i64*
  %7358 = load i64, i64* %RBP.i35
  %7359 = sub i64 %7358, 16
  %7360 = load i64, i64* %PC.i34
  %7361 = add i64 %7360, 4
  store i64 %7361, i64* %PC.i34
  %7362 = inttoptr i64 %7359 to i64*
  %7363 = load i64, i64* %7362
  store i64 %7363, i64* %R8.i36, align 8
  store %struct.Memory* %loadMem_43655d, %struct.Memory** %MEMORY
  %loadMem_436561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 33
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7366 to i64*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 17
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %R8.i33 = bitcast %union.anon* %7369 to i64*
  %7370 = load i64, i64* %R8.i33
  %7371 = add i64 %7370, 136
  %7372 = load i64, i64* %PC.i32
  %7373 = add i64 %7372, 7
  store i64 %7373, i64* %PC.i32
  %7374 = inttoptr i64 %7371 to i32*
  %7375 = load i32, i32* %7374
  %7376 = sext i32 %7375 to i64
  store i64 %7376, i64* %R8.i33, align 8
  store %struct.Memory* %loadMem_436561, %struct.Memory** %MEMORY
  %loadMem_436568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 33
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7379 to i64*
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 5
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %7382 to i64*
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 17
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %R8.i31 = bitcast %union.anon* %7385 to i64*
  %7386 = load i64, i64* %RCX.i30
  %7387 = load i64, i64* %R8.i31
  %7388 = mul i64 %7387, 4
  %7389 = add i64 %7388, %7386
  %7390 = load i64, i64* %PC.i29
  %7391 = add i64 %7390, 8
  store i64 %7391, i64* %PC.i29
  %7392 = inttoptr i64 %7389 to i32*
  store i32 -987654321, i32* %7392
  store %struct.Memory* %loadMem_436568, %struct.Memory** %MEMORY
  %loadMem_436570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7394 = getelementptr inbounds %struct.GPR, %struct.GPR* %7393, i32 0, i32 33
  %7395 = getelementptr inbounds %struct.Reg, %struct.Reg* %7394, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7395 to i64*
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7397 = getelementptr inbounds %struct.GPR, %struct.GPR* %7396, i32 0, i32 5
  %7398 = getelementptr inbounds %struct.Reg, %struct.Reg* %7397, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %7398 to i64*
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 15
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7401 to i64*
  %7402 = load i64, i64* %RBP.i28
  %7403 = sub i64 %7402, 40
  %7404 = load i64, i64* %PC.i26
  %7405 = add i64 %7404, 4
  store i64 %7405, i64* %PC.i26
  %7406 = inttoptr i64 %7403 to i64*
  %7407 = load i64, i64* %7406
  store i64 %7407, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_436570, %struct.Memory** %MEMORY
  %loadMem_436574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 33
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7410 to i64*
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 5
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %7413 to i64*
  %7414 = load i64, i64* %RCX.i25
  %7415 = add i64 %7414, 16
  %7416 = load i64, i64* %PC.i24
  %7417 = add i64 %7416, 4
  store i64 %7417, i64* %PC.i24
  %7418 = inttoptr i64 %7415 to i64*
  %7419 = load i64, i64* %7418
  store i64 %7419, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_436574, %struct.Memory** %MEMORY
  %loadMem_436578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7421 = getelementptr inbounds %struct.GPR, %struct.GPR* %7420, i32 0, i32 33
  %7422 = getelementptr inbounds %struct.Reg, %struct.Reg* %7421, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7422 to i64*
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 15
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %7425 to i64*
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 17
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %R8.i23 = bitcast %union.anon* %7428 to i64*
  %7429 = load i64, i64* %RBP.i22
  %7430 = sub i64 %7429, 44
  %7431 = load i64, i64* %PC.i21
  %7432 = add i64 %7431, 4
  store i64 %7432, i64* %PC.i21
  %7433 = inttoptr i64 %7430 to i32*
  %7434 = load i32, i32* %7433
  %7435 = sext i32 %7434 to i64
  store i64 %7435, i64* %R8.i23, align 8
  store %struct.Memory* %loadMem_436578, %struct.Memory** %MEMORY
  %loadMem_43657c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 33
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7438 to i64*
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 5
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 17
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %R8.i20 = bitcast %union.anon* %7444 to i64*
  %7445 = load i64, i64* %RCX.i19
  %7446 = load i64, i64* %R8.i20
  %7447 = mul i64 %7446, 8
  %7448 = add i64 %7447, %7445
  %7449 = load i64, i64* %PC.i18
  %7450 = add i64 %7449, 4
  store i64 %7450, i64* %PC.i18
  %7451 = inttoptr i64 %7448 to i64*
  %7452 = load i64, i64* %7451
  store i64 %7452, i64* %RCX.i19, align 8
  store %struct.Memory* %loadMem_43657c, %struct.Memory** %MEMORY
  %loadMem_436580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 33
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7455 to i64*
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 15
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7458 to i64*
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 17
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %R8.i17 = bitcast %union.anon* %7461 to i64*
  %7462 = load i64, i64* %RBP.i16
  %7463 = sub i64 %7462, 16
  %7464 = load i64, i64* %PC.i15
  %7465 = add i64 %7464, 4
  store i64 %7465, i64* %PC.i15
  %7466 = inttoptr i64 %7463 to i64*
  %7467 = load i64, i64* %7466
  store i64 %7467, i64* %R8.i17, align 8
  store %struct.Memory* %loadMem_436580, %struct.Memory** %MEMORY
  %loadMem_436584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 33
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 17
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %R8.i14 = bitcast %union.anon* %7473 to i64*
  %7474 = load i64, i64* %R8.i14
  %7475 = add i64 %7474, 136
  %7476 = load i64, i64* %PC.i13
  %7477 = add i64 %7476, 7
  store i64 %7477, i64* %PC.i13
  %7478 = inttoptr i64 %7475 to i32*
  %7479 = load i32, i32* %7478
  %7480 = sext i32 %7479 to i64
  store i64 %7480, i64* %R8.i14, align 8
  store %struct.Memory* %loadMem_436584, %struct.Memory** %MEMORY
  %loadMem_43658b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 33
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 5
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7486 to i64*
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 17
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %R8.i = bitcast %union.anon* %7489 to i64*
  %7490 = load i64, i64* %RCX.i
  %7491 = load i64, i64* %R8.i
  %7492 = mul i64 %7491, 4
  %7493 = add i64 %7492, %7490
  %7494 = load i64, i64* %PC.i12
  %7495 = add i64 %7494, 8
  store i64 %7495, i64* %PC.i12
  %7496 = inttoptr i64 %7493 to i32*
  store i32 -987654321, i32* %7496
  store %struct.Memory* %loadMem_43658b, %struct.Memory** %MEMORY
  %loadMem_436593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7499 to i64*
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7501 = getelementptr inbounds %struct.GPR, %struct.GPR* %7500, i32 0, i32 1
  %7502 = getelementptr inbounds %struct.Reg, %struct.Reg* %7501, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7502 to i64*
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 15
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7505 to i64*
  %7506 = load i64, i64* %RBP.i11
  %7507 = sub i64 %7506, 44
  %7508 = load i64, i64* %PC.i9
  %7509 = add i64 %7508, 3
  store i64 %7509, i64* %PC.i9
  %7510 = inttoptr i64 %7507 to i32*
  %7511 = load i32, i32* %7510
  %7512 = zext i32 %7511 to i64
  store i64 %7512, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_436593, %struct.Memory** %MEMORY
  %loadMem_436596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7515 to i64*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 1
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7518 to i64*
  %7519 = load i64, i64* %RAX.i
  %7520 = load i64, i64* %PC.i8
  %7521 = add i64 %7520, 3
  store i64 %7521, i64* %PC.i8
  %7522 = trunc i64 %7519 to i32
  %7523 = add i32 -1, %7522
  %7524 = zext i32 %7523 to i64
  store i64 %7524, i64* %RAX.i, align 8
  %7525 = icmp ult i32 %7523, %7522
  %7526 = icmp ult i32 %7523, -1
  %7527 = or i1 %7525, %7526
  %7528 = zext i1 %7527 to i8
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7528, i8* %7529, align 1
  %7530 = and i32 %7523, 255
  %7531 = call i32 @llvm.ctpop.i32(i32 %7530)
  %7532 = trunc i32 %7531 to i8
  %7533 = and i8 %7532, 1
  %7534 = xor i8 %7533, 1
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7534, i8* %7535, align 1
  %7536 = xor i64 -1, %7519
  %7537 = trunc i64 %7536 to i32
  %7538 = xor i32 %7537, %7523
  %7539 = lshr i32 %7538, 4
  %7540 = trunc i32 %7539 to i8
  %7541 = and i8 %7540, 1
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7541, i8* %7542, align 1
  %7543 = icmp eq i32 %7523, 0
  %7544 = zext i1 %7543 to i8
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7544, i8* %7545, align 1
  %7546 = lshr i32 %7523, 31
  %7547 = trunc i32 %7546 to i8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7547, i8* %7548, align 1
  %7549 = lshr i32 %7522, 31
  %7550 = xor i32 %7546, %7549
  %7551 = xor i32 %7546, 1
  %7552 = add i32 %7550, %7551
  %7553 = icmp eq i32 %7552, 2
  %7554 = zext i1 %7553 to i8
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7554, i8* %7555, align 1
  store %struct.Memory* %loadMem_436596, %struct.Memory** %MEMORY
  %loadMem_436599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7557 = getelementptr inbounds %struct.GPR, %struct.GPR* %7556, i32 0, i32 33
  %7558 = getelementptr inbounds %struct.Reg, %struct.Reg* %7557, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7558 to i64*
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 1
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7561 to i32*
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 15
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %7564 to i64*
  %7565 = load i64, i64* %RBP.i7
  %7566 = sub i64 %7565, 44
  %7567 = load i32, i32* %EAX.i
  %7568 = zext i32 %7567 to i64
  %7569 = load i64, i64* %PC.i6
  %7570 = add i64 %7569, 3
  store i64 %7570, i64* %PC.i6
  %7571 = inttoptr i64 %7566 to i32*
  store i32 %7567, i32* %7571
  store %struct.Memory* %loadMem_436599, %struct.Memory** %MEMORY
  %loadMem_43659c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7573 = getelementptr inbounds %struct.GPR, %struct.GPR* %7572, i32 0, i32 33
  %7574 = getelementptr inbounds %struct.Reg, %struct.Reg* %7573, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7574 to i64*
  %7575 = load i64, i64* %PC.i5
  %7576 = add i64 %7575, -1451
  %7577 = load i64, i64* %PC.i5
  %7578 = add i64 %7577, 5
  store i64 %7578, i64* %PC.i5
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7576, i64* %7579, align 8
  store %struct.Memory* %loadMem_43659c, %struct.Memory** %MEMORY
  br label %block_.L_435ff1

block_.L_4365a1:                                  ; preds = %block_.L_435ff1
  %loadMem_4365a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 33
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 13
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %RSP.i
  %7587 = load i64, i64* %PC.i4
  %7588 = add i64 %7587, 4
  store i64 %7588, i64* %PC.i4
  %7589 = add i64 64, %7586
  store i64 %7589, i64* %RSP.i, align 8
  %7590 = icmp ult i64 %7589, %7586
  %7591 = icmp ult i64 %7589, 64
  %7592 = or i1 %7590, %7591
  %7593 = zext i1 %7592 to i8
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7593, i8* %7594, align 1
  %7595 = trunc i64 %7589 to i32
  %7596 = and i32 %7595, 255
  %7597 = call i32 @llvm.ctpop.i32(i32 %7596)
  %7598 = trunc i32 %7597 to i8
  %7599 = and i8 %7598, 1
  %7600 = xor i8 %7599, 1
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7600, i8* %7601, align 1
  %7602 = xor i64 64, %7586
  %7603 = xor i64 %7602, %7589
  %7604 = lshr i64 %7603, 4
  %7605 = trunc i64 %7604 to i8
  %7606 = and i8 %7605, 1
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7606, i8* %7607, align 1
  %7608 = icmp eq i64 %7589, 0
  %7609 = zext i1 %7608 to i8
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7609, i8* %7610, align 1
  %7611 = lshr i64 %7589, 63
  %7612 = trunc i64 %7611 to i8
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7612, i8* %7613, align 1
  %7614 = lshr i64 %7586, 63
  %7615 = xor i64 %7611, %7614
  %7616 = add i64 %7615, %7611
  %7617 = icmp eq i64 %7616, 2
  %7618 = zext i1 %7617 to i8
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7618, i8* %7619, align 1
  store %struct.Memory* %loadMem_4365a1, %struct.Memory** %MEMORY
  %loadMem_4365a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 33
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7622 to i64*
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7624 = getelementptr inbounds %struct.GPR, %struct.GPR* %7623, i32 0, i32 15
  %7625 = getelementptr inbounds %struct.Reg, %struct.Reg* %7624, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7625 to i64*
  %7626 = load i64, i64* %PC.i2
  %7627 = add i64 %7626, 1
  store i64 %7627, i64* %PC.i2
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7629 = load i64, i64* %7628, align 8
  %7630 = add i64 %7629, 8
  %7631 = inttoptr i64 %7629 to i64*
  %7632 = load i64, i64* %7631
  store i64 %7632, i64* %RBP.i3, align 8
  store i64 %7630, i64* %7628, align 8
  store %struct.Memory* %loadMem_4365a5, %struct.Memory** %MEMORY
  %loadMem_4365a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7634 = getelementptr inbounds %struct.GPR, %struct.GPR* %7633, i32 0, i32 33
  %7635 = getelementptr inbounds %struct.Reg, %struct.Reg* %7634, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7635 to i64*
  %7636 = load i64, i64* %PC.i1
  %7637 = add i64 %7636, 1
  store i64 %7637, i64* %PC.i1
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7640 = load i64, i64* %7639, align 8
  %7641 = inttoptr i64 %7640 to i64*
  %7642 = load i64, i64* %7641
  store i64 %7642, i64* %7638, align 8
  %7643 = add i64 %7640, 8
  store i64 %7643, i64* %7639, align 8
  store %struct.Memory* %loadMem_4365a6, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4365a6
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
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

define %struct.Memory* @routine_jl_.L_4365a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 356
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8
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

define %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 364
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

define %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 12
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

define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 340
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

define %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 16
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

define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 136
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

define %struct.Memory* @routine_jge_.L_436384(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RSI, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
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

define %struct.Memory* @routine_callq_.ILogsum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq__edx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movq_0x170__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__edi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RSI, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx____rcx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq__eax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0xc521974f____rcx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 -987654321, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_436105(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__r8____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_435ff1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
