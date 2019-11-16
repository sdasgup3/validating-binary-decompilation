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

declare %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat993(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4db690 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4db690, %struct.Memory** %MEMORY
  %loadMem_4db691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i296 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i296
  %27 = load i64, i64* %PC.i295
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i295
  store i64 %26, i64* %RBP.i297, align 8
  store %struct.Memory* %loadMem_4db691, %struct.Memory** %MEMORY
  %loadMem_4db694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i294 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i294
  %36 = load i64, i64* %PC.i293
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i293
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4db694, %struct.Memory** %MEMORY
  %loadMem_4db696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i292 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i292
  %49 = load i64, i64* %PC.i291
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i291
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_4db696, %struct.Memory** %MEMORY
  %loadMem_4db698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i290 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i290
  %62 = load i64, i64* %PC.i289
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i289
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_4db698, %struct.Memory** %MEMORY
  %loadMem_4db699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i288 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i288
  %75 = load i64, i64* %PC.i287
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC.i287
  %77 = sub i64 %74, 104
  store i64 %77, i64* %RSP.i288, align 8
  %78 = icmp ult i64 %74, 104
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
  %88 = xor i64 104, %74
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
  store %struct.Memory* %loadMem_4db699, %struct.Memory** %MEMORY
  %loadMem_4db69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %PC.i285
  %113 = add i64 %112, 5
  store i64 %113, i64* %PC.i285
  store i64 1, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_4db69d, %struct.Memory** %MEMORY
  %loadMem_4db6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 17
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R8D.i284 = bitcast %union.anon* %119 to i32*
  %120 = bitcast i32* %R8D.i284 to i64*
  %121 = load i64, i64* %PC.i283
  %122 = add i64 %121, 6
  store i64 %122, i64* %PC.i283
  store i64 2, i64* %120, align 8
  store %struct.Memory* %loadMem_4db6a2, %struct.Memory** %MEMORY
  %loadMem_4db6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i282
  %133 = sub i64 %132, 28
  %134 = load i32, i32* %EDI.i
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i281
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i281
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_4db6a8, %struct.Memory** %MEMORY
  %loadMem_4db6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %ESI.i279 = bitcast %union.anon* %144 to i32*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i280
  %149 = sub i64 %148, 32
  %150 = load i32, i32* %ESI.i279
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC.i278
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i278
  %154 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %154
  store %struct.Memory* %loadMem_4db6ab, %struct.Memory** %MEMORY
  %loadMem_4db6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %EDX.i276 = bitcast %union.anon* %160 to i32*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i277
  %165 = sub i64 %164, 36
  %166 = load i32, i32* %EDX.i276
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %PC.i275
  %169 = add i64 %168, 3
  store i64 %169, i64* %PC.i275
  %170 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %170
  store %struct.Memory* %loadMem_4db6ae, %struct.Memory** %MEMORY
  %loadMem_4db6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %ECX.i273 = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RBP.i274
  %181 = sub i64 %180, 40
  %182 = load i32, i32* %ECX.i273
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %PC.i272
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC.i272
  %186 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %186
  store %struct.Memory* %loadMem_4db6b1, %struct.Memory** %MEMORY
  %loadMem_4db6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 19
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %R9.i271 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i270
  %197 = sub i64 %196, 28
  %198 = load i64, i64* %PC.i269
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC.i269
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %R9.i271, align 8
  store %struct.Memory* %loadMem_4db6b4, %struct.Memory** %MEMORY
  %loadMem_4db6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 19
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %R9.i268 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %R9.i268
  %213 = mul i64 %212, 4
  %214 = add i64 %213, 11904784
  %215 = load i64, i64* %PC.i266
  %216 = add i64 %215, 8
  store i64 %216, i64* %PC.i266
  %217 = inttoptr i64 %214 to i32*
  %218 = load i32, i32* %217
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_4db6b8, %struct.Memory** %MEMORY
  %loadMem_4db6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RCX.i264
  %230 = load i64, i64* %RBP.i265
  %231 = sub i64 %230, 32
  %232 = load i64, i64* %PC.i263
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC.i263
  %234 = trunc i64 %229 to i32
  %235 = inttoptr i64 %231 to i32*
  %236 = load i32, i32* %235
  %237 = add i32 %236, %234
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RCX.i264, align 8
  %239 = icmp ult i32 %237, %234
  %240 = icmp ult i32 %237, %236
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %242, i8* %243, align 1
  %244 = and i32 %237, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1
  %250 = xor i32 %236, %234
  %251 = xor i32 %250, %237
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %254, i8* %255, align 1
  %256 = icmp eq i32 %237, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %257, i8* %258, align 1
  %259 = lshr i32 %237, 31
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %260, i8* %261, align 1
  %262 = lshr i32 %234, 31
  %263 = lshr i32 %236, 31
  %264 = xor i32 %259, %262
  %265 = xor i32 %259, %263
  %266 = add i32 %264, %265
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1
  store %struct.Memory* %loadMem_4db6c0, %struct.Memory** %MEMORY
  %loadMem_4db6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %ECX.i261 = bitcast %union.anon* %275 to i32*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RBP.i262
  %280 = sub i64 %279, 44
  %281 = load i32, i32* %ECX.i261
  %282 = zext i32 %281 to i64
  %283 = load i64, i64* %PC.i260
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i260
  %285 = inttoptr i64 %280 to i32*
  store i32 %281, i32* %285
  store %struct.Memory* %loadMem_4db6c3, %struct.Memory** %MEMORY
  %loadMem_4db6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 19
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %R9.i259 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i258
  %296 = sub i64 %295, 28
  %297 = load i64, i64* %PC.i257
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC.i257
  %299 = inttoptr i64 %296 to i32*
  %300 = load i32, i32* %299
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %R9.i259, align 8
  store %struct.Memory* %loadMem_4db6c6, %struct.Memory** %MEMORY
  %loadMem_4db6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 19
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %R9.i256 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %R9.i256
  %312 = mul i64 %311, 4
  %313 = add i64 %312, 11902416
  %314 = load i64, i64* %PC.i254
  %315 = add i64 %314, 8
  store i64 %315, i64* %PC.i254
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_4db6ca, %struct.Memory** %MEMORY
  %loadMem_4db6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 15
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %RCX.i252
  %329 = load i64, i64* %RBP.i253
  %330 = sub i64 %329, 32
  %331 = load i64, i64* %PC.i251
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC.i251
  %333 = trunc i64 %328 to i32
  %334 = inttoptr i64 %330 to i32*
  %335 = load i32, i32* %334
  %336 = add i32 %335, %333
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RCX.i252, align 8
  %338 = icmp ult i32 %336, %333
  %339 = icmp ult i32 %336, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %341, i8* %342, align 1
  %343 = and i32 %336, 255
  %344 = call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %347, i8* %348, align 1
  %349 = xor i32 %335, %333
  %350 = xor i32 %349, %336
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %353, i8* %354, align 1
  %355 = icmp eq i32 %336, 0
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %356, i8* %357, align 1
  %358 = lshr i32 %336, 31
  %359 = trunc i32 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %359, i8* %360, align 1
  %361 = lshr i32 %333, 31
  %362 = lshr i32 %335, 31
  %363 = xor i32 %358, %361
  %364 = xor i32 %358, %362
  %365 = add i32 %363, %364
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %367, i8* %368, align 1
  store %struct.Memory* %loadMem_4db6d2, %struct.Memory** %MEMORY
  %loadMem_4db6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %ECX.i249 = bitcast %union.anon* %374 to i32*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 15
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %RBP.i250
  %379 = sub i64 %378, 48
  %380 = load i32, i32* %ECX.i249
  %381 = zext i32 %380 to i64
  %382 = load i64, i64* %PC.i248
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC.i248
  %384 = inttoptr i64 %379 to i32*
  store i32 %380, i32* %384
  store %struct.Memory* %loadMem_4db6d5, %struct.Memory** %MEMORY
  %loadMem_4db6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 15
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 19
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %R9.i247 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RBP.i246
  %395 = sub i64 %394, 28
  %396 = load i64, i64* %PC.i245
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i245
  %398 = inttoptr i64 %395 to i32*
  %399 = load i32, i32* %398
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %R9.i247, align 8
  store %struct.Memory* %loadMem_4db6d8, %struct.Memory** %MEMORY
  %loadMem_4db6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 19
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %R9.i244 = bitcast %union.anon* %409 to i64*
  %410 = load i64, i64* %R9.i244
  %411 = mul i64 %410, 4
  %412 = add i64 %411, 11901264
  %413 = load i64, i64* %PC.i242
  %414 = add i64 %413, 8
  store i64 %414, i64* %PC.i242
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_4db6dc, %struct.Memory** %MEMORY
  %loadMem_4db6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RCX.i240
  %428 = load i64, i64* %RBP.i241
  %429 = sub i64 %428, 32
  %430 = load i64, i64* %PC.i239
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i239
  %432 = trunc i64 %427 to i32
  %433 = inttoptr i64 %429 to i32*
  %434 = load i32, i32* %433
  %435 = add i32 %434, %432
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RCX.i240, align 8
  %437 = icmp ult i32 %435, %432
  %438 = icmp ult i32 %435, %434
  %439 = or i1 %437, %438
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %440, i8* %441, align 1
  %442 = and i32 %435, 255
  %443 = call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %446, i8* %447, align 1
  %448 = xor i32 %434, %432
  %449 = xor i32 %448, %435
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %452, i8* %453, align 1
  %454 = icmp eq i32 %435, 0
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %455, i8* %456, align 1
  %457 = lshr i32 %435, 31
  %458 = trunc i32 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %458, i8* %459, align 1
  %460 = lshr i32 %432, 31
  %461 = lshr i32 %434, 31
  %462 = xor i32 %457, %460
  %463 = xor i32 %457, %461
  %464 = add i32 %462, %463
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %466, i8* %467, align 1
  store %struct.Memory* %loadMem_4db6e4, %struct.Memory** %MEMORY
  %loadMem_4db6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 5
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %ECX.i237 = bitcast %union.anon* %473 to i32*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 15
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %RBP.i238
  %478 = sub i64 %477, 52
  %479 = load i32, i32* %ECX.i237
  %480 = zext i32 %479 to i64
  %481 = load i64, i64* %PC.i236
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC.i236
  %483 = inttoptr i64 %478 to i32*
  store i32 %479, i32* %483
  store %struct.Memory* %loadMem_4db6e7, %struct.Memory** %MEMORY
  %loadMem_4db6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 15
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 19
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %R9.i235 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %RBP.i234
  %494 = sub i64 %493, 28
  %495 = load i64, i64* %PC.i233
  %496 = add i64 %495, 4
  store i64 %496, i64* %PC.i233
  %497 = inttoptr i64 %494 to i32*
  %498 = load i32, i32* %497
  %499 = sext i32 %498 to i64
  store i64 %499, i64* %R9.i235, align 8
  store %struct.Memory* %loadMem_4db6ea, %struct.Memory** %MEMORY
  %loadMem_4db6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 5
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 19
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %R9.i232 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %R9.i232
  %510 = mul i64 %509, 4
  %511 = add i64 %510, 11902384
  %512 = load i64, i64* %PC.i230
  %513 = add i64 %512, 8
  store i64 %513, i64* %PC.i230
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_4db6ee, %struct.Memory** %MEMORY
  %loadMem_4db6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 5
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RCX.i228
  %527 = load i64, i64* %RBP.i229
  %528 = sub i64 %527, 32
  %529 = load i64, i64* %PC.i227
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC.i227
  %531 = trunc i64 %526 to i32
  %532 = inttoptr i64 %528 to i32*
  %533 = load i32, i32* %532
  %534 = add i32 %533, %531
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RCX.i228, align 8
  %536 = icmp ult i32 %534, %531
  %537 = icmp ult i32 %534, %533
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %539, i8* %540, align 1
  %541 = and i32 %534, 255
  %542 = call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %545, i8* %546, align 1
  %547 = xor i32 %533, %531
  %548 = xor i32 %547, %534
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %551, i8* %552, align 1
  %553 = icmp eq i32 %534, 0
  %554 = zext i1 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %554, i8* %555, align 1
  %556 = lshr i32 %534, 31
  %557 = trunc i32 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %557, i8* %558, align 1
  %559 = lshr i32 %531, 31
  %560 = lshr i32 %533, 31
  %561 = xor i32 %556, %559
  %562 = xor i32 %556, %560
  %563 = add i32 %561, %562
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %565, i8* %566, align 1
  store %struct.Memory* %loadMem_4db6f6, %struct.Memory** %MEMORY
  %loadMem_4db6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 5
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %ECX.i225 = bitcast %union.anon* %572 to i32*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RBP.i226
  %577 = sub i64 %576, 56
  %578 = load i32, i32* %ECX.i225
  %579 = zext i32 %578 to i64
  %580 = load i64, i64* %PC.i224
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i224
  %582 = inttoptr i64 %577 to i32*
  store i32 %578, i32* %582
  store %struct.Memory* %loadMem_4db6f9, %struct.Memory** %MEMORY
  %loadMem_4db6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 15
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 19
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %R9.i223 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i222
  %593 = sub i64 %592, 28
  %594 = load i64, i64* %PC.i221
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i221
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %R9.i223, align 8
  store %struct.Memory* %loadMem_4db6fc, %struct.Memory** %MEMORY
  %loadMem_4db700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 19
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %R9.i220 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %R9.i220
  %609 = mul i64 %608, 4
  %610 = add i64 %609, 11902448
  %611 = load i64, i64* %PC.i218
  %612 = add i64 %611, 8
  store i64 %612, i64* %PC.i218
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_4db700, %struct.Memory** %MEMORY
  %loadMem_4db708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 5
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RCX.i216
  %626 = load i64, i64* %RBP.i217
  %627 = sub i64 %626, 32
  %628 = load i64, i64* %PC.i215
  %629 = add i64 %628, 3
  store i64 %629, i64* %PC.i215
  %630 = trunc i64 %625 to i32
  %631 = inttoptr i64 %627 to i32*
  %632 = load i32, i32* %631
  %633 = add i32 %632, %630
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RCX.i216, align 8
  %635 = icmp ult i32 %633, %630
  %636 = icmp ult i32 %633, %632
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1
  %640 = and i32 %633, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1
  %646 = xor i32 %632, %630
  %647 = xor i32 %646, %633
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %650, i8* %651, align 1
  %652 = icmp eq i32 %633, 0
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %653, i8* %654, align 1
  %655 = lshr i32 %633, 31
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %656, i8* %657, align 1
  %658 = lshr i32 %630, 31
  %659 = lshr i32 %632, 31
  %660 = xor i32 %655, %658
  %661 = xor i32 %655, %659
  %662 = add i32 %660, %661
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %664, i8* %665, align 1
  store %struct.Memory* %loadMem_4db708, %struct.Memory** %MEMORY
  %loadMem_4db70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 5
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %ECX.i213 = bitcast %union.anon* %671 to i32*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 15
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %RBP.i214
  %676 = sub i64 %675, 60
  %677 = load i32, i32* %ECX.i213
  %678 = zext i32 %677 to i64
  %679 = load i64, i64* %PC.i212
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i212
  %681 = inttoptr i64 %676 to i32*
  store i32 %677, i32* %681
  store %struct.Memory* %loadMem_4db70b, %struct.Memory** %MEMORY
  %loadMem_4db70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 19
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %R9.i211 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RBP.i210
  %692 = sub i64 %691, 28
  %693 = load i64, i64* %PC.i209
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC.i209
  %695 = inttoptr i64 %692 to i32*
  %696 = load i32, i32* %695
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %R9.i211, align 8
  store %struct.Memory* %loadMem_4db70e, %struct.Memory** %MEMORY
  %loadMem_4db712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 5
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 19
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %R9.i = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %R9.i
  %708 = mul i64 %707, 4
  %709 = add i64 %708, 11903568
  %710 = load i64, i64* %PC.i207
  %711 = add i64 %710, 8
  store i64 %711, i64* %PC.i207
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_4db712, %struct.Memory** %MEMORY
  %loadMem_4db71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 5
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 15
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RCX.i205
  %725 = load i64, i64* %RBP.i206
  %726 = sub i64 %725, 32
  %727 = load i64, i64* %PC.i204
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC.i204
  %729 = trunc i64 %724 to i32
  %730 = inttoptr i64 %726 to i32*
  %731 = load i32, i32* %730
  %732 = add i32 %731, %729
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RCX.i205, align 8
  %734 = icmp ult i32 %732, %729
  %735 = icmp ult i32 %732, %731
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %737, i8* %738, align 1
  %739 = and i32 %732, 255
  %740 = call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %743, i8* %744, align 1
  %745 = xor i32 %731, %729
  %746 = xor i32 %745, %732
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %749, i8* %750, align 1
  %751 = icmp eq i32 %732, 0
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %752, i8* %753, align 1
  %754 = lshr i32 %732, 31
  %755 = trunc i32 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %729, 31
  %758 = lshr i32 %731, 31
  %759 = xor i32 %754, %757
  %760 = xor i32 %754, %758
  %761 = add i32 %759, %760
  %762 = icmp eq i32 %761, 2
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %763, i8* %764, align 1
  store %struct.Memory* %loadMem_4db71a, %struct.Memory** %MEMORY
  %loadMem_4db71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 5
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %ECX.i202 = bitcast %union.anon* %770 to i32*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 15
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %RBP.i203
  %775 = sub i64 %774, 64
  %776 = load i32, i32* %ECX.i202
  %777 = zext i32 %776 to i64
  %778 = load i64, i64* %PC.i201
  %779 = add i64 %778, 3
  store i64 %779, i64* %PC.i201
  %780 = inttoptr i64 %775 to i32*
  store i32 %776, i32* %780
  store %struct.Memory* %loadMem_4db71d, %struct.Memory** %MEMORY
  %loadMem_4db720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 11
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RBP.i200
  %791 = sub i64 %790, 36
  %792 = load i64, i64* %PC.i198
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC.i198
  %794 = inttoptr i64 %791 to i32*
  %795 = load i32, i32* %794
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RDI.i199, align 8
  store %struct.Memory* %loadMem_4db720, %struct.Memory** %MEMORY
  %loadMem_4db723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 5
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 15
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %805 to i64*
  %806 = load i64, i64* %RBP.i197
  %807 = sub i64 %806, 32
  %808 = load i64, i64* %PC.i195
  %809 = add i64 %808, 3
  store i64 %809, i64* %PC.i195
  %810 = inttoptr i64 %807 to i32*
  %811 = load i32, i32* %810
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_4db723, %struct.Memory** %MEMORY
  %loadMem_4db726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 7
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RDX.i193 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 15
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RBP.i194
  %823 = sub i64 %822, 44
  %824 = load i64, i64* %PC.i192
  %825 = add i64 %824, 3
  store i64 %825, i64* %PC.i192
  %826 = inttoptr i64 %823 to i32*
  %827 = load i32, i32* %826
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RDX.i193, align 8
  store %struct.Memory* %loadMem_4db726, %struct.Memory** %MEMORY
  %loadMem_4db729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 19
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %R9D.i190 = bitcast %union.anon* %834 to i32*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 15
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %837 to i64*
  %838 = bitcast i32* %R9D.i190 to i64*
  %839 = load i64, i64* %RBP.i191
  %840 = sub i64 %839, 44
  %841 = load i64, i64* %PC.i189
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i189
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %838, align 8
  store %struct.Memory* %loadMem_4db729, %struct.Memory** %MEMORY
  %loadMem_4db72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 9
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i188
  %856 = sub i64 %855, 64
  %857 = load i64, i64* %PC.i186
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i186
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_4db72d, %struct.Memory** %MEMORY
  %loadMem_4db730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 9
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %867 to i32*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 15
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %RBP.i185
  %872 = sub i64 %871, 68
  %873 = load i32, i32* %ESI.i
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC.i184
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC.i184
  %877 = inttoptr i64 %872 to i32*
  store i32 %873, i32* %877
  store %struct.Memory* %loadMem_4db730, %struct.Memory** %MEMORY
  %loadMem_4db733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %883 to i32*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 9
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RSI.i183 = bitcast %union.anon* %886 to i64*
  %887 = load i32, i32* %EAX.i182
  %888 = zext i32 %887 to i64
  %889 = load i64, i64* %PC.i181
  %890 = add i64 %889, 2
  store i64 %890, i64* %PC.i181
  %891 = and i64 %888, 4294967295
  store i64 %891, i64* %RSI.i183, align 8
  store %struct.Memory* %loadMem_4db733, %struct.Memory** %MEMORY
  %loadMem_4db735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 7
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %897 to i32*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 15
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %RBP.i180
  %902 = sub i64 %901, 72
  %903 = load i32, i32* %EDX.i
  %904 = zext i32 %903 to i64
  %905 = load i64, i64* %PC.i179
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i179
  %907 = inttoptr i64 %902 to i32*
  store i32 %903, i32* %907
  store %struct.Memory* %loadMem_4db735, %struct.Memory** %MEMORY
  %loadMem_4db738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 17
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %R8D.i177 = bitcast %union.anon* %913 to i32*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 7
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %916 to i64*
  %917 = load i32, i32* %R8D.i177
  %918 = zext i32 %917 to i64
  %919 = load i64, i64* %PC.i176
  %920 = add i64 %919, 3
  store i64 %920, i64* %PC.i176
  %921 = and i64 %918, 4294967295
  store i64 %921, i64* %RDX.i178, align 8
  store %struct.Memory* %loadMem_4db738, %struct.Memory** %MEMORY
  %loadMem_4db73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 17
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %R8D.i174 = bitcast %union.anon* %927 to i32*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 15
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %930 to i64*
  %931 = bitcast i32* %R8D.i174 to i64*
  %932 = load i64, i64* %RBP.i175
  %933 = sub i64 %932, 72
  %934 = load i64, i64* %PC.i173
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i173
  %936 = inttoptr i64 %933 to i32*
  %937 = load i32, i32* %936
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %931, align 8
  store %struct.Memory* %loadMem_4db73b, %struct.Memory** %MEMORY
  %loadMem_4db73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i172
  %949 = sub i64 %948, 68
  %950 = load i64, i64* %PC.i170
  %951 = add i64 %950, 3
  store i64 %951, i64* %PC.i170
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_4db73f, %struct.Memory** %MEMORY
  %loadMem_4db742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %960 to i32*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 13
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RSP.i169 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RSP.i169
  %965 = load i32, i32* %EAX.i168
  %966 = zext i32 %965 to i64
  %967 = load i64, i64* %PC.i167
  %968 = add i64 %967, 3
  store i64 %968, i64* %PC.i167
  %969 = inttoptr i64 %964 to i32*
  store i32 %965, i32* %969
  store %struct.Memory* %loadMem_4db742, %struct.Memory** %MEMORY
  %loadMem_4db745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %976 = bitcast %union.anon* %975 to %struct.anon.2*
  %AL.i166 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %976, i32 0, i32 0
  %977 = load i64, i64* %PC.i165
  %978 = add i64 %977, 2
  store i64 %978, i64* %PC.i165
  store i8 0, i8* %AL.i166, align 1
  store %struct.Memory* %loadMem_4db745, %struct.Memory** %MEMORY
  %loadMem1_4db747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %PC.i164
  %983 = add i64 %982, -406167
  %984 = load i64, i64* %PC.i164
  %985 = add i64 %984, 5
  %986 = load i64, i64* %PC.i164
  %987 = add i64 %986, 5
  store i64 %987, i64* %PC.i164
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %989 = load i64, i64* %988, align 8
  %990 = add i64 %989, -8
  %991 = inttoptr i64 %990 to i64*
  store i64 %985, i64* %991
  store i64 %990, i64* %988, align 8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %983, i64* %992, align 8
  store %struct.Memory* %loadMem1_4db747, %struct.Memory** %MEMORY
  %loadMem2_4db747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4db747 = load i64, i64* %3
  %call2_4db747 = call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %loadPC_4db747, %struct.Memory* %loadMem2_4db747)
  store %struct.Memory* %call2_4db747, %struct.Memory** %MEMORY
  %loadMem_4db74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %ECX.i162 = bitcast %union.anon* %998 to i32*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 5
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RCX.i163
  %1003 = load i32, i32* %ECX.i162
  %1004 = zext i32 %1003 to i64
  %1005 = load i64, i64* %PC.i161
  %1006 = add i64 %1005, 2
  store i64 %1006, i64* %PC.i161
  %1007 = xor i64 %1004, %1002
  %1008 = trunc i64 %1007 to i32
  %1009 = and i64 %1007, 4294967295
  store i64 %1009, i64* %RCX.i163, align 8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1010, align 1
  %1011 = and i32 %1008, 255
  %1012 = call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1015, i8* %1016, align 1
  %1017 = icmp eq i32 %1008, 0
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1018, i8* %1019, align 1
  %1020 = lshr i32 %1008, 31
  %1021 = trunc i32 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1021, i8* %1022, align 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1023, align 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1024, align 1
  store %struct.Memory* %loadMem_4db74c, %struct.Memory** %MEMORY
  %loadMem_4db74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 5
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %1031 = bitcast %union.anon* %1030 to %struct.anon.2*
  %CL.i159 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1031, i32 0, i32 0
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 21
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %1035 = bitcast %union.anon* %1034 to %struct.anon.2*
  %R10B.i160 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1035, i32 0, i32 0
  %1036 = load i8, i8* %CL.i159
  %1037 = zext i8 %1036 to i64
  %1038 = load i64, i64* %PC.i158
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC.i158
  store i8 %1036, i8* %R10B.i160, align 1
  store %struct.Memory* %loadMem_4db74e, %struct.Memory** %MEMORY
  %loadMem_4db751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %1045 to i32*
  %1046 = load i32, i32* %EAX.i157
  %1047 = zext i32 %1046 to i64
  %1048 = load i64, i64* %PC.i156
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC.i156
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1050, align 1
  %1051 = and i32 %1046, 255
  %1052 = call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1055, i8* %1056, align 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1057, align 1
  %1058 = icmp eq i32 %1046, 0
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1059, i8* %1060, align 1
  %1061 = lshr i32 %1046, 31
  %1062 = trunc i32 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1062, i8* %1063, align 1
  %1064 = lshr i32 %1046, 31
  %1065 = xor i32 %1061, %1064
  %1066 = add i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1068, i8* %1069, align 1
  store %struct.Memory* %loadMem_4db751, %struct.Memory** %MEMORY
  %loadMem_4db754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 21
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %1076 = bitcast %union.anon* %1075 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1076, i32 0, i32 0
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RBP.i155
  %1081 = sub i64 %1080, 73
  %1082 = load i8, i8* %R10B.i
  %1083 = zext i8 %1082 to i64
  %1084 = load i64, i64* %PC.i154
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC.i154
  %1086 = inttoptr i64 %1081 to i8*
  store i8 %1082, i8* %1086
  store %struct.Memory* %loadMem_4db754, %struct.Memory** %MEMORY
  %loadMem_4db758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %PC.i153
  %1091 = add i64 %1090, 230
  %1092 = load i64, i64* %PC.i153
  %1093 = add i64 %1092, 6
  %1094 = load i64, i64* %PC.i153
  %1095 = add i64 %1094, 6
  store i64 %1095, i64* %PC.i153
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1097 = load i8, i8* %1096, align 1
  store i8 %1097, i8* %BRANCH_TAKEN, align 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1099 = icmp ne i8 %1097, 0
  %1100 = select i1 %1099, i64 %1091, i64 %1093
  store i64 %1100, i64* %1098, align 8
  store %struct.Memory* %loadMem_4db758, %struct.Memory** %MEMORY
  %loadBr_4db758 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4db758 = icmp eq i8 %loadBr_4db758, 1
  br i1 %cmpBr_4db758, label %block_.L_4db83e, label %block_4db75e

block_4db75e:                                     ; preds = %entry
  %loadMem_4db75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 9
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %PC.i151
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC.i151
  store i64 1, i64* %RSI.i152, align 8
  store %struct.Memory* %loadMem_4db75e, %struct.Memory** %MEMORY
  %loadMem_4db763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 7
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %PC.i149
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC.i149
  store i64 4, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_4db763, %struct.Memory** %MEMORY
  %loadMem_4db768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 11
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RDI.i147 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 15
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RBP.i148
  %1127 = sub i64 %1126, 36
  %1128 = load i64, i64* %PC.i146
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %PC.i146
  %1130 = inttoptr i64 %1127 to i32*
  %1131 = load i32, i32* %1130
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RDI.i147, align 8
  store %struct.Memory* %loadMem_4db768, %struct.Memory** %MEMORY
  %loadMem_4db76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 5
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 15
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %RBP.i145
  %1143 = sub i64 %1142, 32
  %1144 = load i64, i64* %PC.i143
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %PC.i143
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_4db76b, %struct.Memory** %MEMORY
  %loadMem_4db76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 17
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %R8D.i141 = bitcast %union.anon* %1154 to i32*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1157 to i64*
  %1158 = bitcast i32* %R8D.i141 to i64*
  %1159 = load i64, i64* %RBP.i142
  %1160 = sub i64 %1159, 48
  %1161 = load i64, i64* %PC.i140
  %1162 = add i64 %1161, 4
  store i64 %1162, i64* %PC.i140
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %1158, align 8
  store %struct.Memory* %loadMem_4db76e, %struct.Memory** %MEMORY
  %loadMem_4db772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 19
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %R9D.i138 = bitcast %union.anon* %1171 to i32*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 15
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1174 to i64*
  %1175 = bitcast i32* %R9D.i138 to i64*
  %1176 = load i64, i64* %RBP.i139
  %1177 = sub i64 %1176, 44
  %1178 = load i64, i64* %PC.i137
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC.i137
  %1180 = inttoptr i64 %1177 to i32*
  %1181 = load i32, i32* %1180
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %1175, align 8
  store %struct.Memory* %loadMem_4db772, %struct.Memory** %MEMORY
  %loadMem_4db776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 1
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i136
  %1193 = sub i64 %1192, 52
  %1194 = load i64, i64* %PC.i134
  %1195 = add i64 %1194, 3
  store i64 %1195, i64* %PC.i134
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_4db776, %struct.Memory** %MEMORY
  %loadMem_4db779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 21
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %R10D.i132 = bitcast %union.anon* %1204 to i32*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 15
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %1207 to i64*
  %1208 = bitcast i32* %R10D.i132 to i64*
  %1209 = load i64, i64* %RBP.i133
  %1210 = sub i64 %1209, 48
  %1211 = load i64, i64* %PC.i131
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %PC.i131
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %1208, align 8
  store %struct.Memory* %loadMem_4db779, %struct.Memory** %MEMORY
  %loadMem_4db77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 23
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %R11D.i129 = bitcast %union.anon* %1221 to i32*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 15
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %1224 to i64*
  %1225 = bitcast i32* %R11D.i129 to i64*
  %1226 = load i64, i64* %RBP.i130
  %1227 = sub i64 %1226, 64
  %1228 = load i64, i64* %PC.i128
  %1229 = add i64 %1228, 4
  store i64 %1229, i64* %PC.i128
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %1225, align 8
  store %struct.Memory* %loadMem_4db77d, %struct.Memory** %MEMORY
  %loadMem_4db781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %1238 to i32*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 13
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RSP.i127 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RSP.i127
  %1243 = load i32, i32* %EAX.i126
  %1244 = zext i32 %1243 to i64
  %1245 = load i64, i64* %PC.i125
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC.i125
  %1247 = inttoptr i64 %1242 to i32*
  store i32 %1243, i32* %1247
  store %struct.Memory* %loadMem_4db781, %struct.Memory** %MEMORY
  %loadMem_4db784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 21
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %R10D.i123 = bitcast %union.anon* %1253 to i32*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 13
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RSP.i124 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %RSP.i124
  %1258 = add i64 %1257, 8
  %1259 = load i32, i32* %R10D.i123
  %1260 = zext i32 %1259 to i64
  %1261 = load i64, i64* %PC.i122
  %1262 = add i64 %1261, 5
  store i64 %1262, i64* %PC.i122
  %1263 = inttoptr i64 %1258 to i32*
  store i32 %1259, i32* %1263
  store %struct.Memory* %loadMem_4db784, %struct.Memory** %MEMORY
  %loadMem_4db789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 23
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %R11D.i120 = bitcast %union.anon* %1269 to i32*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 13
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RSP.i121 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RSP.i121
  %1274 = add i64 %1273, 16
  %1275 = load i32, i32* %R11D.i120
  %1276 = zext i32 %1275 to i64
  %1277 = load i64, i64* %PC.i119
  %1278 = add i64 %1277, 5
  store i64 %1278, i64* %PC.i119
  %1279 = inttoptr i64 %1274 to i32*
  store i32 %1275, i32* %1279
  store %struct.Memory* %loadMem_4db789, %struct.Memory** %MEMORY
  %loadMem_4db78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %1286 = bitcast %union.anon* %1285 to %struct.anon.2*
  %AL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1286, i32 0, i32 0
  %1287 = load i64, i64* %PC.i117
  %1288 = add i64 %1287, 2
  store i64 %1288, i64* %PC.i117
  store i8 0, i8* %AL.i118, align 1
  store %struct.Memory* %loadMem_4db78e, %struct.Memory** %MEMORY
  %loadMem1_4db790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %PC.i116
  %1293 = add i64 %1292, -406240
  %1294 = load i64, i64* %PC.i116
  %1295 = add i64 %1294, 5
  %1296 = load i64, i64* %PC.i116
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC.i116
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1299 = load i64, i64* %1298, align 8
  %1300 = add i64 %1299, -8
  %1301 = inttoptr i64 %1300 to i64*
  store i64 %1295, i64* %1301
  store i64 %1300, i64* %1298, align 8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1293, i64* %1302, align 8
  store %struct.Memory* %loadMem1_4db790, %struct.Memory** %MEMORY
  %loadMem2_4db790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4db790 = load i64, i64* %3
  %call2_4db790 = call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %loadPC_4db790, %struct.Memory* %loadMem2_4db790)
  store %struct.Memory* %call2_4db790, %struct.Memory** %MEMORY
  %loadMem_4db795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 5
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %ECX.i114 = bitcast %union.anon* %1308 to i32*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 5
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RCX.i115
  %1313 = load i32, i32* %ECX.i114
  %1314 = zext i32 %1313 to i64
  %1315 = load i64, i64* %PC.i113
  %1316 = add i64 %1315, 2
  store i64 %1316, i64* %PC.i113
  %1317 = xor i64 %1314, %1312
  %1318 = trunc i64 %1317 to i32
  %1319 = and i64 %1317, 4294967295
  store i64 %1319, i64* %RCX.i115, align 8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1320, align 1
  %1321 = and i32 %1318, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1
  %1327 = icmp eq i32 %1318, 0
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1328, i8* %1329, align 1
  %1330 = lshr i32 %1318, 31
  %1331 = trunc i32 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1331, i8* %1332, align 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1333, align 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1334, align 1
  store %struct.Memory* %loadMem_4db795, %struct.Memory** %MEMORY
  %loadMem_4db797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 3
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %1341 = bitcast %union.anon* %1340 to %struct.anon.2*
  %BL.i111 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1341, i32 0, i32 0
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 5
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %1345 = bitcast %union.anon* %1344 to %struct.anon.2*
  %CL.i112 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1345, i32 0, i32 0
  %1346 = load i8, i8* %CL.i112
  %1347 = zext i8 %1346 to i64
  %1348 = load i64, i64* %PC.i110
  %1349 = add i64 %1348, 2
  store i64 %1349, i64* %PC.i110
  store i8 %1346, i8* %BL.i111, align 1
  store %struct.Memory* %loadMem_4db797, %struct.Memory** %MEMORY
  %loadMem_4db799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %1355 to i32*
  %1356 = load i32, i32* %EAX.i109
  %1357 = zext i32 %1356 to i64
  %1358 = load i64, i64* %PC.i108
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC.i108
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1360, align 1
  %1361 = and i32 %1356, 255
  %1362 = call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1365, i8* %1366, align 1
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1367, align 1
  %1368 = icmp eq i32 %1356, 0
  %1369 = zext i1 %1368 to i8
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1369, i8* %1370, align 1
  %1371 = lshr i32 %1356, 31
  %1372 = trunc i32 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1372, i8* %1373, align 1
  %1374 = lshr i32 %1356, 31
  %1375 = xor i32 %1371, %1374
  %1376 = add i32 %1375, %1374
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1379, align 1
  store %struct.Memory* %loadMem_4db799, %struct.Memory** %MEMORY
  %loadMem_4db79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 3
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %1386 = bitcast %union.anon* %1385 to %struct.anon.2*
  %BL.i106 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1386, i32 0, i32 0
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 15
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %RBP.i107
  %1391 = sub i64 %1390, 73
  %1392 = load i8, i8* %BL.i106
  %1393 = zext i8 %1392 to i64
  %1394 = load i64, i64* %PC.i105
  %1395 = add i64 %1394, 3
  store i64 %1395, i64* %PC.i105
  %1396 = inttoptr i64 %1391 to i8*
  store i8 %1392, i8* %1396
  store %struct.Memory* %loadMem_4db79c, %struct.Memory** %MEMORY
  %loadMem_4db79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %PC.i104
  %1401 = add i64 %1400, 159
  %1402 = load i64, i64* %PC.i104
  %1403 = add i64 %1402, 6
  %1404 = load i64, i64* %PC.i104
  %1405 = add i64 %1404, 6
  store i64 %1405, i64* %PC.i104
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1407 = load i8, i8* %1406, align 1
  store i8 %1407, i8* %BRANCH_TAKEN, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1409 = icmp ne i8 %1407, 0
  %1410 = select i1 %1409, i64 %1401, i64 %1403
  store i64 %1410, i64* %1408, align 8
  store %struct.Memory* %loadMem_4db79f, %struct.Memory** %MEMORY
  %loadBr_4db79f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4db79f = icmp eq i8 %loadBr_4db79f, 1
  br i1 %cmpBr_4db79f, label %block_.L_4db83e, label %block_4db7a5

block_4db7a5:                                     ; preds = %block_4db75e
  %loadMem_4db7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 9
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RSI.i103 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i102
  %1418 = add i64 %1417, 5
  store i64 %1418, i64* %PC.i102
  store i64 1, i64* %RSI.i103, align 8
  store %struct.Memory* %loadMem_4db7a5, %struct.Memory** %MEMORY
  %loadMem_4db7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 7
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %PC.i100
  %1426 = add i64 %1425, 5
  store i64 %1426, i64* %PC.i100
  store i64 4, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_4db7aa, %struct.Memory** %MEMORY
  %loadMem_4db7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 11
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 15
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RBP.i99
  %1437 = sub i64 %1436, 36
  %1438 = load i64, i64* %PC.i97
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i97
  %1440 = inttoptr i64 %1437 to i32*
  %1441 = load i32, i32* %1440
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RDI.i98, align 8
  store %struct.Memory* %loadMem_4db7af, %struct.Memory** %MEMORY
  %loadMem_4db7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 5
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RBP.i96
  %1453 = sub i64 %1452, 32
  %1454 = load i64, i64* %PC.i94
  %1455 = add i64 %1454, 3
  store i64 %1455, i64* %PC.i94
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_4db7b2, %struct.Memory** %MEMORY
  %loadMem_4db7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 17
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %R8D.i92 = bitcast %union.anon* %1464 to i32*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 15
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1467 to i64*
  %1468 = bitcast i32* %R8D.i92 to i64*
  %1469 = load i64, i64* %RBP.i93
  %1470 = sub i64 %1469, 48
  %1471 = load i64, i64* %PC.i91
  %1472 = add i64 %1471, 4
  store i64 %1472, i64* %PC.i91
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %1468, align 8
  store %struct.Memory* %loadMem_4db7b5, %struct.Memory** %MEMORY
  %loadMem_4db7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 19
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %R9D.i89 = bitcast %union.anon* %1481 to i32*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %1484 to i64*
  %1485 = bitcast i32* %R9D.i89 to i64*
  %1486 = load i64, i64* %RBP.i90
  %1487 = sub i64 %1486, 44
  %1488 = load i64, i64* %PC.i88
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %PC.i88
  %1490 = inttoptr i64 %1487 to i32*
  %1491 = load i32, i32* %1490
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %1485, align 8
  store %struct.Memory* %loadMem_4db7b9, %struct.Memory** %MEMORY
  %loadMem_4db7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i87
  %1503 = sub i64 %1502, 60
  %1504 = load i64, i64* %PC.i85
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i85
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_4db7bd, %struct.Memory** %MEMORY
  %loadMem_4db7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 21
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %R10D.i83 = bitcast %union.anon* %1514 to i32*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 15
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %1517 to i64*
  %1518 = bitcast i32* %R10D.i83 to i64*
  %1519 = load i64, i64* %RBP.i84
  %1520 = sub i64 %1519, 48
  %1521 = load i64, i64* %PC.i82
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i82
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %1518, align 8
  store %struct.Memory* %loadMem_4db7c0, %struct.Memory** %MEMORY
  %loadMem_4db7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 23
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %R11D.i80 = bitcast %union.anon* %1531 to i32*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %1534 to i64*
  %1535 = bitcast i32* %R11D.i80 to i64*
  %1536 = load i64, i64* %RBP.i81
  %1537 = sub i64 %1536, 64
  %1538 = load i64, i64* %PC.i79
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC.i79
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %1535, align 8
  store %struct.Memory* %loadMem_4db7c4, %struct.Memory** %MEMORY
  %loadMem_4db7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 1
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %1548 to i32*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 13
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RSP.i78 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %RSP.i78
  %1553 = load i32, i32* %EAX.i77
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %PC.i76
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i76
  %1557 = inttoptr i64 %1552 to i32*
  store i32 %1553, i32* %1557
  store %struct.Memory* %loadMem_4db7c8, %struct.Memory** %MEMORY
  %loadMem_4db7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 21
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %R10D.i74 = bitcast %union.anon* %1563 to i32*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 13
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RSP.i75 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RSP.i75
  %1568 = add i64 %1567, 8
  %1569 = load i32, i32* %R10D.i74
  %1570 = zext i32 %1569 to i64
  %1571 = load i64, i64* %PC.i73
  %1572 = add i64 %1571, 5
  store i64 %1572, i64* %PC.i73
  %1573 = inttoptr i64 %1568 to i32*
  store i32 %1569, i32* %1573
  store %struct.Memory* %loadMem_4db7cb, %struct.Memory** %MEMORY
  %loadMem_4db7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 23
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %R11D.i71 = bitcast %union.anon* %1579 to i32*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 13
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RSP.i72 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RSP.i72
  %1584 = add i64 %1583, 16
  %1585 = load i32, i32* %R11D.i71
  %1586 = zext i32 %1585 to i64
  %1587 = load i64, i64* %PC.i70
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %PC.i70
  %1589 = inttoptr i64 %1584 to i32*
  store i32 %1585, i32* %1589
  store %struct.Memory* %loadMem_4db7d0, %struct.Memory** %MEMORY
  %loadMem_4db7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %1596 = bitcast %union.anon* %1595 to %struct.anon.2*
  %AL.i69 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1596, i32 0, i32 0
  %1597 = load i64, i64* %PC.i68
  %1598 = add i64 %1597, 2
  store i64 %1598, i64* %PC.i68
  store i8 0, i8* %AL.i69, align 1
  store %struct.Memory* %loadMem_4db7d5, %struct.Memory** %MEMORY
  %loadMem1_4db7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1601 to i64*
  %1602 = load i64, i64* %PC.i67
  %1603 = add i64 %1602, -406311
  %1604 = load i64, i64* %PC.i67
  %1605 = add i64 %1604, 5
  %1606 = load i64, i64* %PC.i67
  %1607 = add i64 %1606, 5
  store i64 %1607, i64* %PC.i67
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1609 = load i64, i64* %1608, align 8
  %1610 = add i64 %1609, -8
  %1611 = inttoptr i64 %1610 to i64*
  store i64 %1605, i64* %1611
  store i64 %1610, i64* %1608, align 8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1603, i64* %1612, align 8
  store %struct.Memory* %loadMem1_4db7d7, %struct.Memory** %MEMORY
  %loadMem2_4db7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4db7d7 = load i64, i64* %3
  %call2_4db7d7 = call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %loadPC_4db7d7, %struct.Memory* %loadMem2_4db7d7)
  store %struct.Memory* %call2_4db7d7, %struct.Memory** %MEMORY
  %loadMem_4db7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 5
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1618 to i32*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 5
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %RCX.i66
  %1623 = load i32, i32* %ECX.i
  %1624 = zext i32 %1623 to i64
  %1625 = load i64, i64* %PC.i65
  %1626 = add i64 %1625, 2
  store i64 %1626, i64* %PC.i65
  %1627 = xor i64 %1624, %1622
  %1628 = trunc i64 %1627 to i32
  %1629 = and i64 %1627, 4294967295
  store i64 %1629, i64* %RCX.i66, align 8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1630, align 1
  %1631 = and i32 %1628, 255
  %1632 = call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1635, i8* %1636, align 1
  %1637 = icmp eq i32 %1628, 0
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1638, i8* %1639, align 1
  %1640 = lshr i32 %1628, 31
  %1641 = trunc i32 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1641, i8* %1642, align 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1643, align 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1644, align 1
  store %struct.Memory* %loadMem_4db7dc, %struct.Memory** %MEMORY
  %loadMem_4db7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 3
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %1651 = bitcast %union.anon* %1650 to %struct.anon.2*
  %BL.i64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1651, i32 0, i32 0
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 5
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %1655 = bitcast %union.anon* %1654 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1655, i32 0, i32 0
  %1656 = load i8, i8* %CL.i
  %1657 = zext i8 %1656 to i64
  %1658 = load i64, i64* %PC.i63
  %1659 = add i64 %1658, 2
  store i64 %1659, i64* %PC.i63
  store i8 %1656, i8* %BL.i64, align 1
  store %struct.Memory* %loadMem_4db7de, %struct.Memory** %MEMORY
  %loadMem_4db7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %1665 to i32*
  %1666 = load i32, i32* %EAX.i62
  %1667 = zext i32 %1666 to i64
  %1668 = load i64, i64* %PC.i61
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %PC.i61
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1670, align 1
  %1671 = and i32 %1666, 255
  %1672 = call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1675, i8* %1676, align 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1677, align 1
  %1678 = icmp eq i32 %1666, 0
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1679, i8* %1680, align 1
  %1681 = lshr i32 %1666, 31
  %1682 = trunc i32 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1682, i8* %1683, align 1
  %1684 = lshr i32 %1666, 31
  %1685 = xor i32 %1681, %1684
  %1686 = add i32 %1685, %1684
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1688, i8* %1689, align 1
  store %struct.Memory* %loadMem_4db7e0, %struct.Memory** %MEMORY
  %loadMem_4db7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 3
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %1696 = bitcast %union.anon* %1695 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1696, i32 0, i32 0
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 15
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RBP.i60
  %1701 = sub i64 %1700, 73
  %1702 = load i8, i8* %BL.i
  %1703 = zext i8 %1702 to i64
  %1704 = load i64, i64* %PC.i59
  %1705 = add i64 %1704, 3
  store i64 %1705, i64* %PC.i59
  %1706 = inttoptr i64 %1701 to i8*
  store i8 %1702, i8* %1706
  store %struct.Memory* %loadMem_4db7e3, %struct.Memory** %MEMORY
  %loadMem_4db7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1709 to i64*
  %1710 = load i64, i64* %PC.i58
  %1711 = add i64 %1710, 88
  %1712 = load i64, i64* %PC.i58
  %1713 = add i64 %1712, 6
  %1714 = load i64, i64* %PC.i58
  %1715 = add i64 %1714, 6
  store i64 %1715, i64* %PC.i58
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1717 = load i8, i8* %1716, align 1
  store i8 %1717, i8* %BRANCH_TAKEN, align 1
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1719 = icmp ne i8 %1717, 0
  %1720 = select i1 %1719, i64 %1711, i64 %1713
  store i64 %1720, i64* %1718, align 8
  store %struct.Memory* %loadMem_4db7e6, %struct.Memory** %MEMORY
  %loadBr_4db7e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4db7e6 = icmp eq i8 %loadBr_4db7e6, 1
  br i1 %cmpBr_4db7e6, label %block_.L_4db83e, label %block_4db7ec

block_4db7ec:                                     ; preds = %block_4db7a5
  %loadMem_4db7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 9
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %PC.i57
  %1728 = add i64 %1727, 5
  store i64 %1728, i64* %PC.i57
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4db7ec, %struct.Memory** %MEMORY
  %loadMem_4db7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 7
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %PC.i56
  %1736 = add i64 %1735, 5
  store i64 %1736, i64* %PC.i56
  store i64 6, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4db7f1, %struct.Memory** %MEMORY
  %loadMem_4db7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 11
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 15
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RBP.i55
  %1747 = sub i64 %1746, 36
  %1748 = load i64, i64* %PC.i54
  %1749 = add i64 %1748, 3
  store i64 %1749, i64* %PC.i54
  %1750 = inttoptr i64 %1747 to i32*
  %1751 = load i32, i32* %1750
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4db7f6, %struct.Memory** %MEMORY
  %loadMem_4db7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 5
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i53
  %1763 = sub i64 %1762, 32
  %1764 = load i64, i64* %PC.i52
  %1765 = add i64 %1764, 3
  store i64 %1765, i64* %PC.i52
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4db7f9, %struct.Memory** %MEMORY
  %loadMem_4db7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 17
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1774 to i32*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 15
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %1777 to i64*
  %1778 = bitcast i32* %R8D.i to i64*
  %1779 = load i64, i64* %RBP.i51
  %1780 = sub i64 %1779, 48
  %1781 = load i64, i64* %PC.i50
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %PC.i50
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %1778, align 8
  store %struct.Memory* %loadMem_4db7fc, %struct.Memory** %MEMORY
  %loadMem_4db800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 19
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1791 to i32*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 15
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %1794 to i64*
  %1795 = bitcast i32* %R9D.i to i64*
  %1796 = load i64, i64* %RBP.i49
  %1797 = sub i64 %1796, 44
  %1798 = load i64, i64* %PC.i48
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC.i48
  %1800 = inttoptr i64 %1797 to i32*
  %1801 = load i32, i32* %1800
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %1795, align 8
  store %struct.Memory* %loadMem_4db800, %struct.Memory** %MEMORY
  %loadMem_4db804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 1
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %RBP.i47
  %1813 = sub i64 %1812, 56
  %1814 = load i64, i64* %PC.i45
  %1815 = add i64 %1814, 3
  store i64 %1815, i64* %PC.i45
  %1816 = inttoptr i64 %1813 to i32*
  %1817 = load i32, i32* %1816
  %1818 = zext i32 %1817 to i64
  store i64 %1818, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_4db804, %struct.Memory** %MEMORY
  %loadMem_4db807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 21
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %R10D.i43 = bitcast %union.anon* %1824 to i32*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %1827 to i64*
  %1828 = bitcast i32* %R10D.i43 to i64*
  %1829 = load i64, i64* %RBP.i44
  %1830 = sub i64 %1829, 60
  %1831 = load i64, i64* %PC.i42
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i42
  %1833 = inttoptr i64 %1830 to i32*
  %1834 = load i32, i32* %1833
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %1828, align 8
  store %struct.Memory* %loadMem_4db807, %struct.Memory** %MEMORY
  %loadMem_4db80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 23
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %R11D.i40 = bitcast %union.anon* %1841 to i32*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 15
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %1844 to i64*
  %1845 = bitcast i32* %R11D.i40 to i64*
  %1846 = load i64, i64* %RBP.i41
  %1847 = sub i64 %1846, 52
  %1848 = load i64, i64* %PC.i39
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i39
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %1845, align 8
  store %struct.Memory* %loadMem_4db80b, %struct.Memory** %MEMORY
  %loadMem_4db80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 3
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBX.i37 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %RBP.i38
  %1863 = sub i64 %1862, 48
  %1864 = load i64, i64* %PC.i36
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC.i36
  %1866 = inttoptr i64 %1863 to i32*
  %1867 = load i32, i32* %1866
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RBX.i37, align 8
  store %struct.Memory* %loadMem_4db80f, %struct.Memory** %MEMORY
  %loadMem_4db812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 29
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %R14D.i34 = bitcast %union.anon* %1874 to i32*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 15
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %1877 to i64*
  %1878 = bitcast i32* %R14D.i34 to i64*
  %1879 = load i64, i64* %RBP.i35
  %1880 = sub i64 %1879, 52
  %1881 = load i64, i64* %PC.i33
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i33
  %1883 = inttoptr i64 %1880 to i32*
  %1884 = load i32, i32* %1883
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %1878, align 8
  store %struct.Memory* %loadMem_4db812, %struct.Memory** %MEMORY
  %loadMem_4db816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %EAX.i31 = bitcast %union.anon* %1891 to i32*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 13
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %RSP.i32
  %1896 = load i32, i32* %EAX.i31
  %1897 = zext i32 %1896 to i64
  %1898 = load i64, i64* %PC.i30
  %1899 = add i64 %1898, 3
  store i64 %1899, i64* %PC.i30
  %1900 = inttoptr i64 %1895 to i32*
  store i32 %1896, i32* %1900
  store %struct.Memory* %loadMem_4db816, %struct.Memory** %MEMORY
  %loadMem_4db819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 21
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %1906 to i32*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 13
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RSP.i29 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RSP.i29
  %1911 = add i64 %1910, 8
  %1912 = load i32, i32* %R10D.i
  %1913 = zext i32 %1912 to i64
  %1914 = load i64, i64* %PC.i28
  %1915 = add i64 %1914, 5
  store i64 %1915, i64* %PC.i28
  %1916 = inttoptr i64 %1911 to i32*
  store i32 %1912, i32* %1916
  store %struct.Memory* %loadMem_4db819, %struct.Memory** %MEMORY
  %loadMem_4db81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 23
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %1922 to i32*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 13
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RSP.i27 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RSP.i27
  %1927 = add i64 %1926, 16
  %1928 = load i32, i32* %R11D.i
  %1929 = zext i32 %1928 to i64
  %1930 = load i64, i64* %PC.i26
  %1931 = add i64 %1930, 5
  store i64 %1931, i64* %PC.i26
  %1932 = inttoptr i64 %1927 to i32*
  store i32 %1928, i32* %1932
  store %struct.Memory* %loadMem_4db81e, %struct.Memory** %MEMORY
  %loadMem_4db823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 3
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %1938 to i32*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 13
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RSP.i25 = bitcast %union.anon* %1941 to i64*
  %1942 = load i64, i64* %RSP.i25
  %1943 = add i64 %1942, 24
  %1944 = load i32, i32* %EBX.i
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %PC.i24
  %1947 = add i64 %1946, 4
  store i64 %1947, i64* %PC.i24
  %1948 = inttoptr i64 %1943 to i32*
  store i32 %1944, i32* %1948
  store %struct.Memory* %loadMem_4db823, %struct.Memory** %MEMORY
  %loadMem_4db827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 29
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %1954 to i32*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 13
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RSP.i23 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RSP.i23
  %1959 = add i64 %1958, 32
  %1960 = load i32, i32* %R14D.i
  %1961 = zext i32 %1960 to i64
  %1962 = load i64, i64* %PC.i22
  %1963 = add i64 %1962, 5
  store i64 %1963, i64* %PC.i22
  %1964 = inttoptr i64 %1959 to i32*
  store i32 %1960, i32* %1964
  store %struct.Memory* %loadMem_4db827, %struct.Memory** %MEMORY
  %loadMem_4db82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 1
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %1971 = bitcast %union.anon* %1970 to %struct.anon.2*
  %AL.i21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1971, i32 0, i32 0
  %1972 = load i64, i64* %PC.i20
  %1973 = add i64 %1972, 2
  store i64 %1973, i64* %PC.i20
  store i8 0, i8* %AL.i21, align 1
  store %struct.Memory* %loadMem_4db82c, %struct.Memory** %MEMORY
  %loadMem1_4db82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %PC.i19
  %1978 = add i64 %1977, -406398
  %1979 = load i64, i64* %PC.i19
  %1980 = add i64 %1979, 5
  %1981 = load i64, i64* %PC.i19
  %1982 = add i64 %1981, 5
  store i64 %1982, i64* %PC.i19
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1984 = load i64, i64* %1983, align 8
  %1985 = add i64 %1984, -8
  %1986 = inttoptr i64 %1985 to i64*
  store i64 %1980, i64* %1986
  store i64 %1985, i64* %1983, align 8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1978, i64* %1987, align 8
  store %struct.Memory* %loadMem1_4db82e, %struct.Memory** %MEMORY
  %loadMem2_4db82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4db82e = load i64, i64* %3
  %call2_4db82e = call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %loadPC_4db82e, %struct.Memory* %loadMem2_4db82e)
  store %struct.Memory* %call2_4db82e, %struct.Memory** %MEMORY
  %loadMem_4db833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 1
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1993 to i32*
  %1994 = load i32, i32* %EAX.i
  %1995 = zext i32 %1994 to i64
  %1996 = load i64, i64* %PC.i18
  %1997 = add i64 %1996, 3
  store i64 %1997, i64* %PC.i18
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1998, align 1
  %1999 = and i32 %1994, 255
  %2000 = call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2003, i8* %2004, align 1
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2005, align 1
  %2006 = icmp eq i32 %1994, 0
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2007, i8* %2008, align 1
  %2009 = lshr i32 %1994, 31
  %2010 = trunc i32 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2010, i8* %2011, align 1
  %2012 = lshr i32 %1994, 31
  %2013 = xor i32 %2009, %2012
  %2014 = add i32 %2013, %2012
  %2015 = icmp eq i32 %2014, 2
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2016, i8* %2017, align 1
  store %struct.Memory* %loadMem_4db833, %struct.Memory** %MEMORY
  %loadMem_4db836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 31
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %2024 = bitcast %union.anon* %2023 to %struct.anon.2*
  %R15B.i17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2024, i32 0, i32 0
  %2025 = load i64, i64* %PC.i16
  %2026 = add i64 %2025, 4
  store i64 %2026, i64* %PC.i16
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2028 = load i8, i8* %2027, align 1
  %2029 = icmp eq i8 %2028, 0
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %R15B.i17, align 1
  store %struct.Memory* %loadMem_4db836, %struct.Memory** %MEMORY
  %loadMem_4db83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 31
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %2037 = bitcast %union.anon* %2036 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2037, i32 0, i32 0
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 15
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RBP.i15
  %2042 = sub i64 %2041, 73
  %2043 = load i8, i8* %R15B.i
  %2044 = zext i8 %2043 to i64
  %2045 = load i64, i64* %PC.i14
  %2046 = add i64 %2045, 4
  store i64 %2046, i64* %PC.i14
  %2047 = inttoptr i64 %2042 to i8*
  store i8 %2043, i8* %2047
  store %struct.Memory* %loadMem_4db83a, %struct.Memory** %MEMORY
  br label %block_.L_4db83e

block_.L_4db83e:                                  ; preds = %block_4db7ec, %block_4db7a5, %block_4db75e, %entry
  %loadMem_4db83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 1
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %2054 = bitcast %union.anon* %2053 to %struct.anon.2*
  %AL.i12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2054, i32 0, i32 0
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 15
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %RBP.i13
  %2059 = sub i64 %2058, 73
  %2060 = load i64, i64* %PC.i11
  %2061 = add i64 %2060, 3
  store i64 %2061, i64* %PC.i11
  %2062 = inttoptr i64 %2059 to i8*
  %2063 = load i8, i8* %2062
  store i8 %2063, i8* %AL.i12, align 1
  store %struct.Memory* %loadMem_4db83e, %struct.Memory** %MEMORY
  %loadMem_4db841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %2070 = bitcast %union.anon* %2069 to %struct.anon.2*
  %AL.i10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2070, i32 0, i32 0
  %2071 = load i8, i8* %AL.i10
  %2072 = zext i8 %2071 to i64
  %2073 = load i64, i64* %PC.i9
  %2074 = add i64 %2073, 2
  store i64 %2074, i64* %PC.i9
  %2075 = and i64 1, %2072
  %2076 = trunc i64 %2075 to i8
  store i8 %2076, i8* %AL.i10, align 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2077, align 1
  %2078 = trunc i64 %2075 to i32
  %2079 = and i32 %2078, 255
  %2080 = call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2083, i8* %2084, align 1
  %2085 = icmp eq i8 %2076, 0
  %2086 = zext i1 %2085 to i8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2086, i8* %2087, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2088, align 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2089, align 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2090, align 1
  store %struct.Memory* %loadMem_4db841, %struct.Memory** %MEMORY
  %loadMem_4db843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %2097 = bitcast %union.anon* %2096 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2097, i32 0, i32 0
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 1
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2100 to i64*
  %2101 = load i8, i8* %AL.i
  %2102 = zext i8 %2101 to i64
  %2103 = load i64, i64* %PC.i8
  %2104 = add i64 %2103, 3
  store i64 %2104, i64* %PC.i8
  %2105 = and i64 %2102, 255
  store i64 %2105, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4db843, %struct.Memory** %MEMORY
  %loadMem_4db846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 13
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %RSP.i
  %2113 = load i64, i64* %PC.i7
  %2114 = add i64 %2113, 4
  store i64 %2114, i64* %PC.i7
  %2115 = add i64 104, %2112
  store i64 %2115, i64* %RSP.i, align 8
  %2116 = icmp ult i64 %2115, %2112
  %2117 = icmp ult i64 %2115, 104
  %2118 = or i1 %2116, %2117
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2119, i8* %2120, align 1
  %2121 = trunc i64 %2115 to i32
  %2122 = and i32 %2121, 255
  %2123 = call i32 @llvm.ctpop.i32(i32 %2122)
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  %2126 = xor i8 %2125, 1
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2126, i8* %2127, align 1
  %2128 = xor i64 104, %2112
  %2129 = xor i64 %2128, %2115
  %2130 = lshr i64 %2129, 4
  %2131 = trunc i64 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2132, i8* %2133, align 1
  %2134 = icmp eq i64 %2115, 0
  %2135 = zext i1 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2135, i8* %2136, align 1
  %2137 = lshr i64 %2115, 63
  %2138 = trunc i64 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2138, i8* %2139, align 1
  %2140 = lshr i64 %2112, 63
  %2141 = xor i64 %2137, %2140
  %2142 = add i64 %2141, %2137
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2144, i8* %2145, align 1
  store %struct.Memory* %loadMem_4db846, %struct.Memory** %MEMORY
  %loadMem_4db84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 3
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %PC.i6
  %2153 = add i64 %2152, 1
  store i64 %2153, i64* %PC.i6
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2155 = load i64, i64* %2154, align 8
  %2156 = add i64 %2155, 8
  %2157 = inttoptr i64 %2155 to i64*
  %2158 = load i64, i64* %2157
  store i64 %2158, i64* %RBX.i, align 8
  store i64 %2156, i64* %2154, align 8
  store %struct.Memory* %loadMem_4db84a, %struct.Memory** %MEMORY
  %loadMem_4db84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 29
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %R14.i = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i5
  %2166 = add i64 %2165, 2
  store i64 %2166, i64* %PC.i5
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2168 = load i64, i64* %2167, align 8
  %2169 = add i64 %2168, 8
  %2170 = inttoptr i64 %2168 to i64*
  %2171 = load i64, i64* %2170
  store i64 %2171, i64* %R14.i, align 8
  store i64 %2169, i64* %2167, align 8
  store %struct.Memory* %loadMem_4db84b, %struct.Memory** %MEMORY
  %loadMem_4db84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 31
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %R15.i = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %PC.i4
  %2179 = add i64 %2178, 2
  store i64 %2179, i64* %PC.i4
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2181 = load i64, i64* %2180, align 8
  %2182 = add i64 %2181, 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183
  store i64 %2184, i64* %R15.i, align 8
  store i64 %2182, i64* %2180, align 8
  store %struct.Memory* %loadMem_4db84d, %struct.Memory** %MEMORY
  %loadMem_4db84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 15
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2190 to i64*
  %2191 = load i64, i64* %PC.i2
  %2192 = add i64 %2191, 1
  store i64 %2192, i64* %PC.i2
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2194 = load i64, i64* %2193, align 8
  %2195 = add i64 %2194, 8
  %2196 = inttoptr i64 %2194 to i64*
  %2197 = load i64, i64* %2196
  store i64 %2197, i64* %RBP.i3, align 8
  store i64 %2195, i64* %2193, align 8
  store %struct.Memory* %loadMem_4db84f, %struct.Memory** %MEMORY
  %loadMem_4db850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %PC.i1
  %2202 = add i64 %2201, 1
  store i64 %2202, i64* %PC.i1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2205 = load i64, i64* %2204, align 8
  %2206 = inttoptr i64 %2205 to i64*
  %2207 = load i64, i64* %2206
  store i64 %2207, i64* %2203, align 8
  %2208 = add i64 %2205, 8
  store i64 %2208, i64* %2204, align 8
  store %struct.Memory* %loadMem_4db850, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4db850
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

define %struct.Memory* @routine_subq__0x68___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 104
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 104
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
  %23 = xor i64 104, %9
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

define %struct.Memory* @routine_movl__0x2___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5a710___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11904784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_movl_0xb59dd0___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11902416
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb59950___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11901264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb59db0___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11902384
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb59df0___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11902448
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb5a250___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11903568
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.play_attack_defend2_n(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__r10b__MINUS0x49__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 73
  %15 = load i8, i8* %R10B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4db83e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl___bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__bl__MINUS0x49__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 73
  %15 = load i8, i8* %BL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d__0x20__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 32
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setne__r15b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %R15B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r15b__MINUS0x49__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 73
  %15 = load i8, i8* %R15B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x49__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 73
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x68___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 104, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 104
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
  %25 = xor i64 104, %9
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
