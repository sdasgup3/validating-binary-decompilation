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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @BZ2_hbMakeCodeLengths(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4137b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4137b0, %struct.Memory** %MEMORY
  %loadMem_4137b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i31 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i31
  %27 = load i64, i64* %PC.i30
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i30
  store i64 %26, i64* %RBP.i32, align 8
  store %struct.Memory* %loadMem_4137b1, %struct.Memory** %MEMORY
  %loadMem_4137b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i880 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i880
  %36 = load i64, i64* %PC.i879
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i879
  %38 = sub i64 %35, 5296
  store i64 %38, i64* %RSP.i880, align 8
  %39 = icmp ult i64 %35, 5296
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
  %49 = xor i64 5296, %35
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
  store %struct.Memory* %loadMem_4137b4, %struct.Memory** %MEMORY
  %loadMem_4137bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i877 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i878
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i877
  %79 = load i64, i64* %PC.i876
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i876
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_4137bb, %struct.Memory** %MEMORY
  %loadMem_4137bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i874 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i875
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i874
  %94 = load i64, i64* %PC.i873
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i873
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_4137bf, %struct.Memory** %MEMORY
  %loadMem_4137c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EDX.i871 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i872
  %107 = sub i64 %106, 20
  %108 = load i32, i32* %EDX.i871
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i870
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i870
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112
  store %struct.Memory* %loadMem_4137c3, %struct.Memory** %MEMORY
  %loadMem_4137c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %ECX.i868 = bitcast %union.anon* %118 to i32*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i869
  %123 = sub i64 %122, 24
  %124 = load i32, i32* %ECX.i868
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC.i867
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i867
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  store %struct.Memory* %loadMem_4137c6, %struct.Memory** %MEMORY
  %loadMem_4137c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i866
  %136 = sub i64 %135, 44
  %137 = load i64, i64* %PC.i865
  %138 = add i64 %137, 7
  store i64 %138, i64* %PC.i865
  %139 = inttoptr i64 %136 to i32*
  store i32 0, i32* %139
  store %struct.Memory* %loadMem_4137c9, %struct.Memory** %MEMORY
  br label %block_.L_4137d0

block_.L_4137d0:                                  ; preds = %block_.L_41380f, %entry
  %loadMem_4137d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i864
  %150 = sub i64 %149, 44
  %151 = load i64, i64* %PC.i862
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC.i862
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i863, align 8
  store %struct.Memory* %loadMem_4137d0, %struct.Memory** %MEMORY
  %loadMem_4137d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EAX.i860 = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %164 to i64*
  %165 = load i32, i32* %EAX.i860
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %RBP.i861
  %168 = sub i64 %167, 20
  %169 = load i64, i64* %PC.i859
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i859
  %171 = inttoptr i64 %168 to i32*
  %172 = load i32, i32* %171
  %173 = sub i32 %165, %172
  %174 = icmp ult i32 %165, %172
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %175, i8* %176, align 1
  %177 = and i32 %173, 255
  %178 = call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %181, i8* %182, align 1
  %183 = xor i32 %172, %165
  %184 = xor i32 %183, %173
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %187, i8* %188, align 1
  %189 = icmp eq i32 %173, 0
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %173, 31
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %193, i8* %194, align 1
  %195 = lshr i32 %165, 31
  %196 = lshr i32 %172, 31
  %197 = xor i32 %196, %195
  %198 = xor i32 %192, %195
  %199 = add i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %201, i8* %202, align 1
  store %struct.Memory* %loadMem_4137d3, %struct.Memory** %MEMORY
  %loadMem_4137d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i858
  %207 = add i64 %206, 96
  %208 = load i64, i64* %PC.i858
  %209 = add i64 %208, 6
  %210 = load i64, i64* %PC.i858
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC.i858
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %216 = load i8, i8* %215, align 1
  %217 = icmp ne i8 %216, 0
  %218 = xor i1 %214, %217
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %BRANCH_TAKEN, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %222 = select i1 %218, i64 %209, i64 %207
  store i64 %222, i64* %221, align 8
  store %struct.Memory* %loadMem_4137d6, %struct.Memory** %MEMORY
  %loadBr_4137d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137d6 = icmp eq i8 %loadBr_4137d6, 1
  br i1 %cmpBr_4137d6, label %block_.L_413836, label %block_4137dc

block_4137dc:                                     ; preds = %block_.L_4137d0
  %loadMem_4137dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i857
  %233 = sub i64 %232, 16
  %234 = load i64, i64* %PC.i855
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC.i855
  %236 = inttoptr i64 %233 to i64*
  %237 = load i64, i64* %236
  store i64 %237, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_4137dc, %struct.Memory** %MEMORY
  %loadMem_4137e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i854
  %248 = sub i64 %247, 44
  %249 = load i64, i64* %PC.i852
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i852
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %RCX.i853, align 8
  store %struct.Memory* %loadMem_4137e0, %struct.Memory** %MEMORY
  %loadMem_4137e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RCX.i851 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %RAX.i850
  %264 = load i64, i64* %RCX.i851
  %265 = mul i64 %264, 4
  %266 = add i64 %265, %263
  %267 = load i64, i64* %PC.i849
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC.i849
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %271, align 1
  %272 = and i32 %270, 255
  %273 = call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %276, i8* %277, align 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %278, align 1
  %279 = icmp eq i32 %270, 0
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %280, i8* %281, align 1
  %282 = lshr i32 %270, 31
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1
  %285 = lshr i32 %270, 31
  %286 = xor i32 %282, %285
  %287 = add i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %289, i8* %290, align 1
  store %struct.Memory* %loadMem_4137e4, %struct.Memory** %MEMORY
  %loadMem_4137e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %293 to i64*
  %294 = load i64, i64* %PC.i848
  %295 = add i64 %294, 22
  %296 = load i64, i64* %PC.i848
  %297 = add i64 %296, 6
  %298 = load i64, i64* %PC.i848
  %299 = add i64 %298, 6
  store i64 %299, i64* %PC.i848
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %301 = load i8, i8* %300, align 1
  %302 = icmp eq i8 %301, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %BRANCH_TAKEN, align 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %305 = select i1 %302, i64 %295, i64 %297
  store i64 %305, i64* %304, align 8
  store %struct.Memory* %loadMem_4137e8, %struct.Memory** %MEMORY
  %loadBr_4137e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137e8 = icmp eq i8 %loadBr_4137e8, 1
  br i1 %cmpBr_4137e8, label %block_.L_4137fe, label %block_4137ee

block_4137ee:                                     ; preds = %block_4137dc
  %loadMem_4137ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i847 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %PC.i846
  %313 = add i64 %312, 5
  store i64 %313, i64* %PC.i846
  store i64 1, i64* %RAX.i847, align 8
  store %struct.Memory* %loadMem_4137ee, %struct.Memory** %MEMORY
  %loadMem_4137f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %EAX.i844 = bitcast %union.anon* %319 to i32*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RBP.i845 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RBP.i845
  %324 = sub i64 %323, 5276
  %325 = load i32, i32* %EAX.i844
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %PC.i843
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i843
  %329 = inttoptr i64 %324 to i32*
  store i32 %325, i32* %329
  store %struct.Memory* %loadMem_4137f3, %struct.Memory** %MEMORY
  %loadMem_4137f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i842
  %334 = add i64 %333, 22
  %335 = load i64, i64* %PC.i842
  %336 = add i64 %335, 5
  store i64 %336, i64* %PC.i842
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %334, i64* %337, align 8
  store %struct.Memory* %loadMem_4137f9, %struct.Memory** %MEMORY
  br label %block_.L_41380f

block_.L_4137fe:                                  ; preds = %block_4137dc
  %loadMem_4137fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %RBP.i841
  %348 = sub i64 %347, 16
  %349 = load i64, i64* %PC.i839
  %350 = add i64 %349, 4
  store i64 %350, i64* %PC.i839
  %351 = inttoptr i64 %348 to i64*
  %352 = load i64, i64* %351
  store i64 %352, i64* %RAX.i840, align 8
  store %struct.Memory* %loadMem_4137fe, %struct.Memory** %MEMORY
  %loadMem_413802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RCX.i837 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 15
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %RBP.i838
  %363 = sub i64 %362, 44
  %364 = load i64, i64* %PC.i836
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC.i836
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RCX.i837, align 8
  store %struct.Memory* %loadMem_413802, %struct.Memory** %MEMORY
  %loadMem_413806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RAX.i833
  %382 = load i64, i64* %RCX.i834
  %383 = mul i64 %382, 4
  %384 = add i64 %383, %381
  %385 = load i64, i64* %PC.i832
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC.i832
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RDX.i835, align 8
  store %struct.Memory* %loadMem_413806, %struct.Memory** %MEMORY
  %loadMem_413809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 7
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %EDX.i830 = bitcast %union.anon* %395 to i32*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 15
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RBP.i831
  %400 = sub i64 %399, 5276
  %401 = load i32, i32* %EDX.i830
  %402 = zext i32 %401 to i64
  %403 = load i64, i64* %PC.i829
  %404 = add i64 %403, 6
  store i64 %404, i64* %PC.i829
  %405 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %405
  store %struct.Memory* %loadMem_413809, %struct.Memory** %MEMORY
  br label %block_.L_41380f

block_.L_41380f:                                  ; preds = %block_.L_4137fe, %block_4137ee
  %loadMem_41380f = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i828
  %416 = sub i64 %415, 5276
  %417 = load i64, i64* %PC.i826
  %418 = add i64 %417, 6
  store i64 %418, i64* %PC.i826
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_41380f, %struct.Memory** %MEMORY
  %loadMem_413815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RAX.i825
  %429 = load i64, i64* %PC.i824
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC.i824
  %431 = and i64 %428, 4294967295
  %432 = shl i64 %431, 7
  %433 = trunc i64 %432 to i32
  %434 = icmp slt i32 %433, 0
  %435 = shl i32 %433, 1
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX.i825, align 8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %438 = zext i1 %434 to i8
  store i8 %438, i8* %437, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %439, align 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %440, align 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %442 = icmp eq i32 %435, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %441, align 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %445 = lshr i32 %435, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %444, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %447, align 1
  store %struct.Memory* %loadMem_413815, %struct.Memory** %MEMORY
  %loadMem_413818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i823
  %458 = sub i64 %457, 44
  %459 = load i64, i64* %PC.i821
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i821
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX.i822, align 8
  store %struct.Memory* %loadMem_413818, %struct.Memory** %MEMORY
  %loadMem_41381b = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 5
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RCX.i820
  %471 = load i64, i64* %PC.i819
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i819
  %473 = trunc i64 %470 to i32
  %474 = add i32 1, %473
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RCX.i820, align 8
  %476 = icmp ult i32 %474, %473
  %477 = icmp ult i32 %474, 1
  %478 = or i1 %476, %477
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %479, i8* %480, align 1
  %481 = and i32 %474, 255
  %482 = call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %485, i8* %486, align 1
  %487 = xor i64 1, %470
  %488 = trunc i64 %487 to i32
  %489 = xor i32 %488, %474
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %492, i8* %493, align 1
  %494 = icmp eq i32 %474, 0
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %495, i8* %496, align 1
  %497 = lshr i32 %474, 31
  %498 = trunc i32 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %473, 31
  %501 = xor i32 %497, %500
  %502 = add i32 %501, %497
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %504, i8* %505, align 1
  store %struct.Memory* %loadMem_41381b, %struct.Memory** %MEMORY
  %loadMem_41381e = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %ECX.i817 = bitcast %union.anon* %511 to i32*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 7
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RDX.i818 = bitcast %union.anon* %514 to i64*
  %515 = load i32, i32* %ECX.i817
  %516 = zext i32 %515 to i64
  %517 = load i64, i64* %PC.i816
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i816
  %519 = shl i64 %516, 32
  %520 = ashr exact i64 %519, 32
  store i64 %520, i64* %RDX.i818, align 8
  store %struct.Memory* %loadMem_41381e, %struct.Memory** %MEMORY
  %loadMem_413821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %EAX.i813 = bitcast %union.anon* %526 to i32*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 7
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RDX.i814 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i815
  %534 = load i64, i64* %RDX.i814
  %535 = mul i64 %534, 4
  %536 = add i64 %533, -3168
  %537 = add i64 %536, %535
  %538 = load i32, i32* %EAX.i813
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %PC.i812
  %541 = add i64 %540, 7
  store i64 %541, i64* %PC.i812
  %542 = inttoptr i64 %537 to i32*
  store i32 %538, i32* %542
  store %struct.Memory* %loadMem_413821, %struct.Memory** %MEMORY
  %loadMem_413828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 15
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %RBP.i811
  %553 = sub i64 %552, 44
  %554 = load i64, i64* %PC.i809
  %555 = add i64 %554, 3
  store i64 %555, i64* %PC.i809
  %556 = inttoptr i64 %553 to i32*
  %557 = load i32, i32* %556
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_413828, %struct.Memory** %MEMORY
  %loadMem_41382b = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RAX.i808
  %566 = load i64, i64* %PC.i807
  %567 = add i64 %566, 3
  store i64 %567, i64* %PC.i807
  %568 = trunc i64 %565 to i32
  %569 = add i32 1, %568
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i808, align 8
  %571 = icmp ult i32 %569, %568
  %572 = icmp ult i32 %569, 1
  %573 = or i1 %571, %572
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %574, i8* %575, align 1
  %576 = and i32 %569, 255
  %577 = call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %580, i8* %581, align 1
  %582 = xor i64 1, %565
  %583 = trunc i64 %582 to i32
  %584 = xor i32 %583, %569
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %587, i8* %588, align 1
  %589 = icmp eq i32 %569, 0
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %590, i8* %591, align 1
  %592 = lshr i32 %569, 31
  %593 = trunc i32 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %593, i8* %594, align 1
  %595 = lshr i32 %568, 31
  %596 = xor i32 %592, %595
  %597 = add i32 %596, %592
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %599, i8* %600, align 1
  store %struct.Memory* %loadMem_41382b, %struct.Memory** %MEMORY
  %loadMem_41382e = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %EAX.i805 = bitcast %union.anon* %606 to i32*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 15
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RBP.i806
  %611 = sub i64 %610, 44
  %612 = load i32, i32* %EAX.i805
  %613 = zext i32 %612 to i64
  %614 = load i64, i64* %PC.i804
  %615 = add i64 %614, 3
  store i64 %615, i64* %PC.i804
  %616 = inttoptr i64 %611 to i32*
  store i32 %612, i32* %616
  store %struct.Memory* %loadMem_41382e, %struct.Memory** %MEMORY
  %loadMem_413831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %PC.i803
  %621 = add i64 %620, -97
  %622 = load i64, i64* %PC.i803
  %623 = add i64 %622, 5
  store i64 %623, i64* %PC.i803
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %621, i64* %624, align 8
  store %struct.Memory* %loadMem_413831, %struct.Memory** %MEMORY
  br label %block_.L_4137d0

block_.L_413836:                                  ; preds = %block_.L_4137d0
  %loadMem_413836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %PC.i802
  %629 = add i64 %628, 5
  %630 = load i64, i64* %PC.i802
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC.i802
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %629, i64* %632, align 8
  store %struct.Memory* %loadMem_413836, %struct.Memory** %MEMORY
  br label %block_.L_41383b

block_.L_41383b:                                  ; preds = %block_.L_413e50, %block_.L_413836
  %loadMem_41383b = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i801
  %643 = sub i64 %642, 20
  %644 = load i64, i64* %PC.i799
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i799
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_41383b, %struct.Memory** %MEMORY
  %loadMem_41383e = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %EAX.i797 = bitcast %union.anon* %654 to i32*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %RBP.i798
  %659 = sub i64 %658, 28
  %660 = load i32, i32* %EAX.i797
  %661 = zext i32 %660 to i64
  %662 = load i64, i64* %PC.i796
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i796
  %664 = inttoptr i64 %659 to i32*
  store i32 %660, i32* %664
  store %struct.Memory* %loadMem_41383e, %struct.Memory** %MEMORY
  %loadMem_413841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 15
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %RBP.i795
  %672 = sub i64 %671, 32
  %673 = load i64, i64* %PC.i794
  %674 = add i64 %673, 7
  store i64 %674, i64* %PC.i794
  %675 = inttoptr i64 %672 to i32*
  store i32 0, i32* %675
  store %struct.Memory* %loadMem_413841, %struct.Memory** %MEMORY
  %loadMem_413848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 15
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %RBP.i793
  %683 = sub i64 %682, 1104
  %684 = load i64, i64* %PC.i792
  %685 = add i64 %684, 10
  store i64 %685, i64* %PC.i792
  %686 = inttoptr i64 %683 to i32*
  store i32 0, i32* %686
  store %struct.Memory* %loadMem_413848, %struct.Memory** %MEMORY
  %loadMem_413852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 15
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %RBP.i791
  %694 = sub i64 %693, 3168
  %695 = load i64, i64* %PC.i790
  %696 = add i64 %695, 10
  store i64 %696, i64* %PC.i790
  %697 = inttoptr i64 %694 to i32*
  store i32 0, i32* %697
  store %struct.Memory* %loadMem_413852, %struct.Memory** %MEMORY
  %loadMem_41385c = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i789
  %705 = sub i64 %704, 5232
  %706 = load i64, i64* %PC.i788
  %707 = add i64 %706, 10
  store i64 %707, i64* %PC.i788
  %708 = inttoptr i64 %705 to i32*
  store i32 -2, i32* %708
  store %struct.Memory* %loadMem_41385c, %struct.Memory** %MEMORY
  %loadMem_413866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 15
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %RBP.i787
  %716 = sub i64 %715, 44
  %717 = load i64, i64* %PC.i786
  %718 = add i64 %717, 7
  store i64 %718, i64* %PC.i786
  %719 = inttoptr i64 %716 to i32*
  store i32 1, i32* %719
  store %struct.Memory* %loadMem_413866, %struct.Memory** %MEMORY
  br label %block_.L_41386d

block_.L_41386d:                                  ; preds = %block_.L_413920, %block_.L_41383b
  %loadMem_41386d = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i785
  %730 = sub i64 %729, 44
  %731 = load i64, i64* %PC.i783
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC.i783
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i784, align 8
  store %struct.Memory* %loadMem_41386d, %struct.Memory** %MEMORY
  %loadMem_413870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 1
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %EAX.i781 = bitcast %union.anon* %741 to i32*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %744 to i64*
  %745 = load i32, i32* %EAX.i781
  %746 = zext i32 %745 to i64
  %747 = load i64, i64* %RBP.i782
  %748 = sub i64 %747, 20
  %749 = load i64, i64* %PC.i780
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC.i780
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = sub i32 %745, %752
  %754 = icmp ult i32 %745, %752
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %755, i8* %756, align 1
  %757 = and i32 %753, 255
  %758 = call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %761, i8* %762, align 1
  %763 = xor i32 %752, %745
  %764 = xor i32 %763, %753
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %767, i8* %768, align 1
  %769 = icmp eq i32 %753, 0
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %770, i8* %771, align 1
  %772 = lshr i32 %753, 31
  %773 = trunc i32 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %773, i8* %774, align 1
  %775 = lshr i32 %745, 31
  %776 = lshr i32 %752, 31
  %777 = xor i32 %776, %775
  %778 = xor i32 %772, %775
  %779 = add i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %781, i8* %782, align 1
  store %struct.Memory* %loadMem_413870, %struct.Memory** %MEMORY
  %loadMem_413873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %PC.i779
  %787 = add i64 %786, 207
  %788 = load i64, i64* %PC.i779
  %789 = add i64 %788, 6
  %790 = load i64, i64* %PC.i779
  %791 = add i64 %790, 6
  store i64 %791, i64* %PC.i779
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %793 = load i8, i8* %792, align 1
  %794 = icmp eq i8 %793, 0
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %796 = load i8, i8* %795, align 1
  %797 = icmp ne i8 %796, 0
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %799 = load i8, i8* %798, align 1
  %800 = icmp ne i8 %799, 0
  %801 = xor i1 %797, %800
  %802 = xor i1 %801, true
  %803 = and i1 %794, %802
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %BRANCH_TAKEN, align 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %806 = select i1 %803, i64 %787, i64 %789
  store i64 %806, i64* %805, align 8
  store %struct.Memory* %loadMem_413873, %struct.Memory** %MEMORY
  %loadBr_413873 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413873 = icmp eq i8 %loadBr_413873, 1
  br i1 %cmpBr_413873, label %block_.L_413942, label %block_413879

block_413879:                                     ; preds = %block_.L_41386d
  %loadMem_413879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RAX.i777 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 15
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %815 to i64*
  %816 = load i64, i64* %RBP.i778
  %817 = sub i64 %816, 44
  %818 = load i64, i64* %PC.i776
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC.i776
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RAX.i777, align 8
  store %struct.Memory* %loadMem_413879, %struct.Memory** %MEMORY
  %loadMem_41387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 1
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 15
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %RBP.i775
  %833 = load i64, i64* %RAX.i774
  %834 = mul i64 %833, 4
  %835 = add i64 %832, -5232
  %836 = add i64 %835, %834
  %837 = load i64, i64* %PC.i773
  %838 = add i64 %837, 11
  store i64 %838, i64* %PC.i773
  %839 = inttoptr i64 %836 to i32*
  store i32 -1, i32* %839
  store %struct.Memory* %loadMem_41387d, %struct.Memory** %MEMORY
  %loadMem_413888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 5
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RCX.i771 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 15
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %RBP.i772
  %850 = sub i64 %849, 32
  %851 = load i64, i64* %PC.i770
  %852 = add i64 %851, 3
  store i64 %852, i64* %PC.i770
  %853 = inttoptr i64 %850 to i32*
  %854 = load i32, i32* %853
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RCX.i771, align 8
  store %struct.Memory* %loadMem_413888, %struct.Memory** %MEMORY
  %loadMem_41388b = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 5
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RCX.i769 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %RCX.i769
  %863 = load i64, i64* %PC.i768
  %864 = add i64 %863, 3
  store i64 %864, i64* %PC.i768
  %865 = trunc i64 %862 to i32
  %866 = add i32 1, %865
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %RCX.i769, align 8
  %868 = icmp ult i32 %866, %865
  %869 = icmp ult i32 %866, 1
  %870 = or i1 %868, %869
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %871, i8* %872, align 1
  %873 = and i32 %866, 255
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %877, i8* %878, align 1
  %879 = xor i64 1, %862
  %880 = trunc i64 %879 to i32
  %881 = xor i32 %880, %866
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %884, i8* %885, align 1
  %886 = icmp eq i32 %866, 0
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %887, i8* %888, align 1
  %889 = lshr i32 %866, 31
  %890 = trunc i32 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %890, i8* %891, align 1
  %892 = lshr i32 %865, 31
  %893 = xor i32 %889, %892
  %894 = add i32 %893, %889
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %896, i8* %897, align 1
  store %struct.Memory* %loadMem_41388b, %struct.Memory** %MEMORY
  %loadMem_41388e = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %ECX.i766 = bitcast %union.anon* %903 to i32*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i767
  %908 = sub i64 %907, 32
  %909 = load i32, i32* %ECX.i766
  %910 = zext i32 %909 to i64
  %911 = load i64, i64* %PC.i765
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i765
  %913 = inttoptr i64 %908 to i32*
  store i32 %909, i32* %913
  store %struct.Memory* %loadMem_41388e, %struct.Memory** %MEMORY
  %loadMem_413891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 5
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 15
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RBP.i764
  %924 = sub i64 %923, 44
  %925 = load i64, i64* %PC.i762
  %926 = add i64 %925, 3
  store i64 %926, i64* %PC.i762
  %927 = inttoptr i64 %924 to i32*
  %928 = load i32, i32* %927
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RCX.i763, align 8
  store %struct.Memory* %loadMem_413891, %struct.Memory** %MEMORY
  %loadMem_413894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 1
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i761
  %940 = sub i64 %939, 32
  %941 = load i64, i64* %PC.i759
  %942 = add i64 %941, 4
  store i64 %942, i64* %PC.i759
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_413894, %struct.Memory** %MEMORY
  %loadMem_413898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 5
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %ECX.i756 = bitcast %union.anon* %951 to i32*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 1
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 15
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RBP.i758
  %959 = load i64, i64* %RAX.i757
  %960 = mul i64 %959, 4
  %961 = add i64 %958, -1104
  %962 = add i64 %961, %960
  %963 = load i32, i32* %ECX.i756
  %964 = zext i32 %963 to i64
  %965 = load i64, i64* %PC.i755
  %966 = add i64 %965, 7
  store i64 %966, i64* %PC.i755
  %967 = inttoptr i64 %962 to i32*
  store i32 %963, i32* %967
  store %struct.Memory* %loadMem_413898, %struct.Memory** %MEMORY
  %loadMem_41389f = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 5
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 15
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RBP.i754
  %978 = sub i64 %977, 32
  %979 = load i64, i64* %PC.i752
  %980 = add i64 %979, 3
  store i64 %980, i64* %PC.i752
  %981 = inttoptr i64 %978 to i32*
  %982 = load i32, i32* %981
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RCX.i753, align 8
  store %struct.Memory* %loadMem_41389f, %struct.Memory** %MEMORY
  %loadMem_4138a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 5
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %ECX.i750 = bitcast %union.anon* %989 to i32*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 15
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RBP.i751
  %994 = sub i64 %993, 5236
  %995 = load i32, i32* %ECX.i750
  %996 = zext i32 %995 to i64
  %997 = load i64, i64* %PC.i749
  %998 = add i64 %997, 6
  store i64 %998, i64* %PC.i749
  %999 = inttoptr i64 %994 to i32*
  store i32 %995, i32* %999
  store %struct.Memory* %loadMem_4138a2, %struct.Memory** %MEMORY
  %loadMem_4138a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 15
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RBP.i748
  %1010 = sub i64 %1009, 5236
  %1011 = load i64, i64* %PC.i746
  %1012 = add i64 %1011, 7
  store i64 %1012, i64* %PC.i746
  %1013 = inttoptr i64 %1010 to i32*
  %1014 = load i32, i32* %1013
  %1015 = sext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_4138a8, %struct.Memory** %MEMORY
  %loadMem_4138af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 5
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 15
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RBP.i745
  %1029 = load i64, i64* %RAX.i743
  %1030 = mul i64 %1029, 4
  %1031 = add i64 %1028, -1104
  %1032 = add i64 %1031, %1030
  %1033 = load i64, i64* %PC.i742
  %1034 = add i64 %1033, 7
  store i64 %1034, i64* %PC.i742
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RCX.i744, align 8
  store %struct.Memory* %loadMem_4138af, %struct.Memory** %MEMORY
  %loadMem_4138b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 5
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %ECX.i740 = bitcast %union.anon* %1043 to i32*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i741
  %1048 = sub i64 %1047, 5240
  %1049 = load i32, i32* %ECX.i740
  %1050 = zext i32 %1049 to i64
  %1051 = load i64, i64* %PC.i739
  %1052 = add i64 %1051, 6
  store i64 %1052, i64* %PC.i739
  %1053 = inttoptr i64 %1048 to i32*
  store i32 %1049, i32* %1053
  store %struct.Memory* %loadMem_4138b6, %struct.Memory** %MEMORY
  br label %block_.L_4138bc

block_.L_4138bc:                                  ; preds = %block_4138eb, %block_413879
  %loadMem_4138bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 15
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RBP.i738
  %1064 = sub i64 %1063, 5240
  %1065 = load i64, i64* %PC.i736
  %1066 = add i64 %1065, 7
  store i64 %1066, i64* %PC.i736
  %1067 = inttoptr i64 %1064 to i32*
  %1068 = load i32, i32* %1067
  %1069 = sext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i737, align 8
  store %struct.Memory* %loadMem_4138bc, %struct.Memory** %MEMORY
  %loadMem_4138c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 5
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RBP.i735
  %1083 = load i64, i64* %RAX.i733
  %1084 = mul i64 %1083, 4
  %1085 = add i64 %1082, -3168
  %1086 = add i64 %1085, %1084
  %1087 = load i64, i64* %PC.i732
  %1088 = add i64 %1087, 7
  store i64 %1088, i64* %PC.i732
  %1089 = inttoptr i64 %1086 to i32*
  %1090 = load i32, i32* %1089
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i734, align 8
  store %struct.Memory* %loadMem_4138c3, %struct.Memory** %MEMORY
  %loadMem_4138ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 7
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RDX.i730 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 15
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RBP.i731
  %1102 = sub i64 %1101, 5236
  %1103 = load i64, i64* %PC.i729
  %1104 = add i64 %1103, 6
  store i64 %1104, i64* %PC.i729
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i730, align 8
  store %struct.Memory* %loadMem_4138ca, %struct.Memory** %MEMORY
  %loadMem_4138d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 7
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RDX.i728 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RDX.i728
  %1115 = load i64, i64* %PC.i727
  %1116 = add i64 %1115, 2
  store i64 %1116, i64* %PC.i727
  %1117 = shl i64 %1114, 32
  %1118 = ashr i64 %1117, 33
  %1119 = trunc i64 %1114 to i8
  %1120 = and i8 %1119, 1
  %1121 = trunc i64 %1118 to i32
  %1122 = and i64 %1118, 4294967295
  store i64 %1122, i64* %RDX.i728, align 8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1120, i8* %1123, align 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1125 = and i32 %1121, 255
  %1126 = call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %1124, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1130, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1132 = icmp eq i32 %1121, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %1131, align 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1135 = lshr i32 %1121, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %1134, align 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1137, align 1
  store %struct.Memory* %loadMem_4138d0, %struct.Memory** %MEMORY
  %loadMem_4138d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 7
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %EDX.i725 = bitcast %union.anon* %1143 to i32*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 1
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1146 to i64*
  %1147 = load i32, i32* %EDX.i725
  %1148 = zext i32 %1147 to i64
  %1149 = load i64, i64* %PC.i724
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC.i724
  %1151 = shl i64 %1148, 32
  %1152 = ashr exact i64 %1151, 32
  store i64 %1152, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_4138d3, %struct.Memory** %MEMORY
  %loadMem_4138d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i723
  %1163 = load i64, i64* %RAX.i722
  %1164 = mul i64 %1163, 4
  %1165 = add i64 %1162, -1104
  %1166 = add i64 %1165, %1164
  %1167 = load i64, i64* %PC.i721
  %1168 = add i64 %1167, 8
  store i64 %1168, i64* %PC.i721
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169
  %1171 = sext i32 %1170 to i64
  store i64 %1171, i64* %RAX.i722, align 8
  store %struct.Memory* %loadMem_4138d6, %struct.Memory** %MEMORY
  %loadMem_4138de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 5
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %ECX.i718 = bitcast %union.anon* %1177 to i32*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1183 to i64*
  %1184 = load i32, i32* %ECX.i718
  %1185 = zext i32 %1184 to i64
  %1186 = load i64, i64* %RBP.i720
  %1187 = load i64, i64* %RAX.i719
  %1188 = mul i64 %1187, 4
  %1189 = add i64 %1186, -3168
  %1190 = add i64 %1189, %1188
  %1191 = load i64, i64* %PC.i717
  %1192 = add i64 %1191, 7
  store i64 %1192, i64* %PC.i717
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sub i32 %1184, %1194
  %1196 = icmp ult i32 %1184, %1194
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1198, align 1
  %1199 = and i32 %1195, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1
  %1205 = xor i32 %1194, %1184
  %1206 = xor i32 %1205, %1195
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1
  %1214 = lshr i32 %1195, 31
  %1215 = trunc i32 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1184, 31
  %1218 = lshr i32 %1194, 31
  %1219 = xor i32 %1218, %1217
  %1220 = xor i32 %1214, %1217
  %1221 = add i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1223, i8* %1224, align 1
  store %struct.Memory* %loadMem_4138de, %struct.Memory** %MEMORY
  %loadMem_4138e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %PC.i716
  %1229 = add i64 %1228, 59
  %1230 = load i64, i64* %PC.i716
  %1231 = add i64 %1230, 6
  %1232 = load i64, i64* %PC.i716
  %1233 = add i64 %1232, 6
  store i64 %1233, i64* %PC.i716
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1235 = load i8, i8* %1234, align 1
  %1236 = icmp ne i8 %1235, 0
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1238 = load i8, i8* %1237, align 1
  %1239 = icmp ne i8 %1238, 0
  %1240 = xor i1 %1236, %1239
  %1241 = xor i1 %1240, true
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %BRANCH_TAKEN, align 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1244 = select i1 %1240, i64 %1231, i64 %1229
  store i64 %1244, i64* %1243, align 8
  store %struct.Memory* %loadMem_4138e5, %struct.Memory** %MEMORY
  %loadBr_4138e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4138e5 = icmp eq i8 %loadBr_4138e5, 1
  br i1 %cmpBr_4138e5, label %block_.L_413920, label %block_4138eb

block_4138eb:                                     ; preds = %block_.L_4138bc
  %loadMem_4138eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 1
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 15
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1253 to i64*
  %1254 = load i64, i64* %RBP.i715
  %1255 = sub i64 %1254, 5236
  %1256 = load i64, i64* %PC.i713
  %1257 = add i64 %1256, 6
  store i64 %1257, i64* %PC.i713
  %1258 = inttoptr i64 %1255 to i32*
  %1259 = load i32, i32* %1258
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i714, align 8
  store %struct.Memory* %loadMem_4138eb, %struct.Memory** %MEMORY
  %loadMem_4138f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 1
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %RAX.i712
  %1268 = load i64, i64* %PC.i711
  %1269 = add i64 %1268, 2
  store i64 %1269, i64* %PC.i711
  %1270 = shl i64 %1267, 32
  %1271 = ashr i64 %1270, 33
  %1272 = trunc i64 %1267 to i8
  %1273 = and i8 %1272, 1
  %1274 = trunc i64 %1271 to i32
  %1275 = and i64 %1271, 4294967295
  store i64 %1275, i64* %RAX.i712, align 8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1273, i8* %1276, align 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1278 = and i32 %1274, 255
  %1279 = call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %1277, align 1
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1283, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1285 = icmp eq i32 %1274, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %1284, align 1
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1288 = lshr i32 %1274, 31
  %1289 = trunc i32 %1288 to i8
  store i8 %1289, i8* %1287, align 1
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1290, align 1
  store %struct.Memory* %loadMem_4138f1, %struct.Memory** %MEMORY
  %loadMem_4138f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %EAX.i709 = bitcast %union.anon* %1296 to i32*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 5
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %1299 to i64*
  %1300 = load i32, i32* %EAX.i709
  %1301 = zext i32 %1300 to i64
  %1302 = load i64, i64* %PC.i708
  %1303 = add i64 %1302, 3
  store i64 %1303, i64* %PC.i708
  %1304 = shl i64 %1301, 32
  %1305 = ashr exact i64 %1304, 32
  store i64 %1305, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_4138f4, %struct.Memory** %MEMORY
  %loadMem_4138f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 5
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i707
  %1319 = load i64, i64* %RCX.i706
  %1320 = mul i64 %1319, 4
  %1321 = add i64 %1318, -1104
  %1322 = add i64 %1321, %1320
  %1323 = load i64, i64* %PC.i704
  %1324 = add i64 %1323, 7
  store i64 %1324, i64* %PC.i704
  %1325 = inttoptr i64 %1322 to i32*
  %1326 = load i32, i32* %1325
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_4138f7, %struct.Memory** %MEMORY
  %loadMem_4138fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 5
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 15
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %1336 to i64*
  %1337 = load i64, i64* %RBP.i703
  %1338 = sub i64 %1337, 5236
  %1339 = load i64, i64* %PC.i701
  %1340 = add i64 %1339, 7
  store i64 %1340, i64* %PC.i701
  %1341 = inttoptr i64 %1338 to i32*
  %1342 = load i32, i32* %1341
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RCX.i702, align 8
  store %struct.Memory* %loadMem_4138fe, %struct.Memory** %MEMORY
  %loadMem_413905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %EAX.i698 = bitcast %union.anon* %1349 to i32*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 5
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 15
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %RBP.i700
  %1357 = load i64, i64* %RCX.i699
  %1358 = mul i64 %1357, 4
  %1359 = add i64 %1356, -1104
  %1360 = add i64 %1359, %1358
  %1361 = load i32, i32* %EAX.i698
  %1362 = zext i32 %1361 to i64
  %1363 = load i64, i64* %PC.i697
  %1364 = add i64 %1363, 7
  store i64 %1364, i64* %PC.i697
  %1365 = inttoptr i64 %1360 to i32*
  store i32 %1361, i32* %1365
  store %struct.Memory* %loadMem_413905, %struct.Memory** %MEMORY
  %loadMem_41390c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 1
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 15
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RBP.i696
  %1376 = sub i64 %1375, 5236
  %1377 = load i64, i64* %PC.i694
  %1378 = add i64 %1377, 6
  store i64 %1378, i64* %PC.i694
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RAX.i695, align 8
  store %struct.Memory* %loadMem_41390c, %struct.Memory** %MEMORY
  %loadMem_413912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RAX.i693
  %1389 = load i64, i64* %PC.i692
  %1390 = add i64 %1389, 2
  store i64 %1390, i64* %PC.i692
  %1391 = shl i64 %1388, 32
  %1392 = ashr i64 %1391, 33
  %1393 = trunc i64 %1388 to i8
  %1394 = and i8 %1393, 1
  %1395 = trunc i64 %1392 to i32
  %1396 = and i64 %1392, 4294967295
  store i64 %1396, i64* %RAX.i693, align 8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1394, i8* %1397, align 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1399 = and i32 %1395, 255
  %1400 = call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %1398, align 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1404, align 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1406 = icmp eq i32 %1395, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %1405, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1409 = lshr i32 %1395, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %1408, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1411, align 1
  store %struct.Memory* %loadMem_413912, %struct.Memory** %MEMORY
  %loadMem_413915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %EAX.i690 = bitcast %union.anon* %1417 to i32*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i691
  %1422 = sub i64 %1421, 5236
  %1423 = load i32, i32* %EAX.i690
  %1424 = zext i32 %1423 to i64
  %1425 = load i64, i64* %PC.i689
  %1426 = add i64 %1425, 6
  store i64 %1426, i64* %PC.i689
  %1427 = inttoptr i64 %1422 to i32*
  store i32 %1423, i32* %1427
  store %struct.Memory* %loadMem_413915, %struct.Memory** %MEMORY
  %loadMem_41391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1430 to i64*
  %1431 = load i64, i64* %PC.i688
  %1432 = add i64 %1431, -95
  %1433 = load i64, i64* %PC.i688
  %1434 = add i64 %1433, 5
  store i64 %1434, i64* %PC.i688
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1432, i64* %1435, align 8
  store %struct.Memory* %loadMem_41391b, %struct.Memory** %MEMORY
  br label %block_.L_4138bc

block_.L_413920:                                  ; preds = %block_.L_4138bc
  %loadMem_413920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 1
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i687
  %1446 = sub i64 %1445, 5240
  %1447 = load i64, i64* %PC.i685
  %1448 = add i64 %1447, 6
  store i64 %1448, i64* %PC.i685
  %1449 = inttoptr i64 %1446 to i32*
  %1450 = load i32, i32* %1449
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_413920, %struct.Memory** %MEMORY
  %loadMem_413926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 5
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 15
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %1460 to i64*
  %1461 = load i64, i64* %RBP.i684
  %1462 = sub i64 %1461, 5236
  %1463 = load i64, i64* %PC.i682
  %1464 = add i64 %1463, 7
  store i64 %1464, i64* %PC.i682
  %1465 = inttoptr i64 %1462 to i32*
  %1466 = load i32, i32* %1465
  %1467 = sext i32 %1466 to i64
  store i64 %1467, i64* %RCX.i683, align 8
  store %struct.Memory* %loadMem_413926, %struct.Memory** %MEMORY
  %loadMem_41392d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 1
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %EAX.i679 = bitcast %union.anon* %1473 to i32*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 5
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i681
  %1481 = load i64, i64* %RCX.i680
  %1482 = mul i64 %1481, 4
  %1483 = add i64 %1480, -1104
  %1484 = add i64 %1483, %1482
  %1485 = load i32, i32* %EAX.i679
  %1486 = zext i32 %1485 to i64
  %1487 = load i64, i64* %PC.i678
  %1488 = add i64 %1487, 7
  store i64 %1488, i64* %PC.i678
  %1489 = inttoptr i64 %1484 to i32*
  store i32 %1485, i32* %1489
  store %struct.Memory* %loadMem_41392d, %struct.Memory** %MEMORY
  %loadMem_413934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 15
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %RBP.i677
  %1500 = sub i64 %1499, 44
  %1501 = load i64, i64* %PC.i675
  %1502 = add i64 %1501, 3
  store i64 %1502, i64* %PC.i675
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_413934, %struct.Memory** %MEMORY
  %loadMem_413937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RAX.i674
  %1513 = load i64, i64* %PC.i673
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %PC.i673
  %1515 = trunc i64 %1512 to i32
  %1516 = add i32 1, %1515
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX.i674, align 8
  %1518 = icmp ult i32 %1516, %1515
  %1519 = icmp ult i32 %1516, 1
  %1520 = or i1 %1518, %1519
  %1521 = zext i1 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1521, i8* %1522, align 1
  %1523 = and i32 %1516, 255
  %1524 = call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1527, i8* %1528, align 1
  %1529 = xor i64 1, %1512
  %1530 = trunc i64 %1529 to i32
  %1531 = xor i32 %1530, %1516
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1534, i8* %1535, align 1
  %1536 = icmp eq i32 %1516, 0
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1537, i8* %1538, align 1
  %1539 = lshr i32 %1516, 31
  %1540 = trunc i32 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1540, i8* %1541, align 1
  %1542 = lshr i32 %1515, 31
  %1543 = xor i32 %1539, %1542
  %1544 = add i32 %1543, %1539
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1546, i8* %1547, align 1
  store %struct.Memory* %loadMem_413937, %struct.Memory** %MEMORY
  %loadMem_41393a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %EAX.i671 = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i672
  %1558 = sub i64 %1557, 44
  %1559 = load i32, i32* %EAX.i671
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %PC.i670
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC.i670
  %1563 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1563
  store %struct.Memory* %loadMem_41393a, %struct.Memory** %MEMORY
  %loadMem_41393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %PC.i669
  %1568 = add i64 %1567, -208
  %1569 = load i64, i64* %PC.i669
  %1570 = add i64 %1569, 5
  store i64 %1570, i64* %PC.i669
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1568, i64* %1571, align 8
  store %struct.Memory* %loadMem_41393d, %struct.Memory** %MEMORY
  br label %block_.L_41386d

block_.L_413942:                                  ; preds = %block_.L_41386d
  %loadMem_413942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RBP.i668
  %1579 = sub i64 %1578, 32
  %1580 = load i64, i64* %PC.i667
  %1581 = add i64 %1580, 7
  store i64 %1581, i64* %PC.i667
  %1582 = inttoptr i64 %1579 to i32*
  %1583 = load i32, i32* %1582
  %1584 = sub i32 %1583, 260
  %1585 = icmp ult i32 %1583, 260
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1586, i8* %1587, align 1
  %1588 = and i32 %1584, 255
  %1589 = call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1592, i8* %1593, align 1
  %1594 = xor i32 %1583, 260
  %1595 = xor i32 %1594, %1584
  %1596 = lshr i32 %1595, 4
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1598, i8* %1599, align 1
  %1600 = icmp eq i32 %1584, 0
  %1601 = zext i1 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1601, i8* %1602, align 1
  %1603 = lshr i32 %1584, 31
  %1604 = trunc i32 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1604, i8* %1605, align 1
  %1606 = lshr i32 %1583, 31
  %1607 = xor i32 %1603, %1606
  %1608 = add i32 %1607, %1606
  %1609 = icmp eq i32 %1608, 2
  %1610 = zext i1 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1610, i8* %1611, align 1
  store %struct.Memory* %loadMem_413942, %struct.Memory** %MEMORY
  %loadMem_413949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %PC.i666
  %1616 = add i64 %1615, 16
  %1617 = load i64, i64* %PC.i666
  %1618 = add i64 %1617, 6
  %1619 = load i64, i64* %PC.i666
  %1620 = add i64 %1619, 6
  store i64 %1620, i64* %PC.i666
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1622 = load i8, i8* %1621, align 1
  %1623 = icmp ne i8 %1622, 0
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1625 = load i8, i8* %1624, align 1
  %1626 = icmp ne i8 %1625, 0
  %1627 = xor i1 %1623, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %BRANCH_TAKEN, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1630 = select i1 %1627, i64 %1616, i64 %1618
  store i64 %1630, i64* %1629, align 8
  store %struct.Memory* %loadMem_413949, %struct.Memory** %MEMORY
  %loadBr_413949 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413949 = icmp eq i8 %loadBr_413949, 1
  br i1 %cmpBr_413949, label %block_.L_413959, label %block_41394f

block_41394f:                                     ; preds = %block_.L_413942
  %loadMem_41394f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 11
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RDI.i665 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %PC.i664
  %1638 = add i64 %1637, 5
  store i64 %1638, i64* %PC.i664
  store i64 2001, i64* %RDI.i665, align 8
  store %struct.Memory* %loadMem_41394f, %struct.Memory** %MEMORY
  %loadMem1_413954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %PC.i663
  %1643 = add i64 %1642, -59956
  %1644 = load i64, i64* %PC.i663
  %1645 = add i64 %1644, 5
  %1646 = load i64, i64* %PC.i663
  %1647 = add i64 %1646, 5
  store i64 %1647, i64* %PC.i663
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1649 = load i64, i64* %1648, align 8
  %1650 = add i64 %1649, -8
  %1651 = inttoptr i64 %1650 to i64*
  store i64 %1645, i64* %1651
  store i64 %1650, i64* %1648, align 8
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1643, i64* %1652, align 8
  store %struct.Memory* %loadMem1_413954, %struct.Memory** %MEMORY
  %loadMem2_413954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413954 = load i64, i64* %3
  %call2_413954 = call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* %0, i64 %loadPC_413954, %struct.Memory* %loadMem2_413954)
  store %struct.Memory* %call2_413954, %struct.Memory** %MEMORY
  br label %block_.L_413959

block_.L_413959:                                  ; preds = %block_41394f, %block_.L_413942
  %loadMem_413959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %PC.i662
  %1657 = add i64 %1656, 5
  %1658 = load i64, i64* %PC.i662
  %1659 = add i64 %1658, 5
  store i64 %1659, i64* %PC.i662
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1657, i64* %1660, align 8
  store %struct.Memory* %loadMem_413959, %struct.Memory** %MEMORY
  br label %block_.L_41395e

block_.L_41395e:                                  ; preds = %block_.L_413d25, %block_.L_413959
  %loadMem_41395e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 15
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RBP.i661
  %1668 = sub i64 %1667, 32
  %1669 = load i64, i64* %PC.i660
  %1670 = add i64 %1669, 4
  store i64 %1670, i64* %PC.i660
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671
  %1673 = sub i32 %1672, 1
  %1674 = icmp ult i32 %1672, 1
  %1675 = zext i1 %1674 to i8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1675, i8* %1676, align 1
  %1677 = and i32 %1673, 255
  %1678 = call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1681, i8* %1682, align 1
  %1683 = xor i32 %1672, 1
  %1684 = xor i32 %1683, %1673
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1687, i8* %1688, align 1
  %1689 = icmp eq i32 %1673, 0
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1673, 31
  %1693 = trunc i32 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1693, i8* %1694, align 1
  %1695 = lshr i32 %1672, 31
  %1696 = xor i32 %1692, %1695
  %1697 = add i32 %1696, %1695
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1699, i8* %1700, align 1
  store %struct.Memory* %loadMem_41395e, %struct.Memory** %MEMORY
  %loadMem_413962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i659
  %1705 = add i64 %1704, 988
  %1706 = load i64, i64* %PC.i659
  %1707 = add i64 %1706, 6
  %1708 = load i64, i64* %PC.i659
  %1709 = add i64 %1708, 6
  store i64 %1709, i64* %PC.i659
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1711 = load i8, i8* %1710, align 1
  %1712 = icmp ne i8 %1711, 0
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1714 = load i8, i8* %1713, align 1
  %1715 = icmp ne i8 %1714, 0
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1717 = load i8, i8* %1716, align 1
  %1718 = icmp ne i8 %1717, 0
  %1719 = xor i1 %1715, %1718
  %1720 = or i1 %1712, %1719
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %BRANCH_TAKEN, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1723 = select i1 %1720, i64 %1705, i64 %1707
  store i64 %1723, i64* %1722, align 8
  store %struct.Memory* %loadMem_413962, %struct.Memory** %MEMORY
  %loadBr_413962 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413962 = icmp eq i8 %loadBr_413962, 1
  br i1 %cmpBr_413962, label %block_.L_413d3e, label %block_413968

block_413968:                                     ; preds = %block_.L_41395e
  %loadMem_413968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 1
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RBP.i658
  %1734 = sub i64 %1733, 1100
  %1735 = load i64, i64* %PC.i656
  %1736 = add i64 %1735, 6
  store i64 %1736, i64* %PC.i656
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_413968, %struct.Memory** %MEMORY
  %loadMem_41396e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %EAX.i654 = bitcast %union.anon* %1745 to i32*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RBP.i655
  %1750 = sub i64 %1749, 36
  %1751 = load i32, i32* %EAX.i654
  %1752 = zext i32 %1751 to i64
  %1753 = load i64, i64* %PC.i653
  %1754 = add i64 %1753, 3
  store i64 %1754, i64* %PC.i653
  %1755 = inttoptr i64 %1750 to i32*
  store i32 %1751, i32* %1755
  store %struct.Memory* %loadMem_41396e, %struct.Memory** %MEMORY
  %loadMem_413971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 5
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i652
  %1766 = sub i64 %1765, 32
  %1767 = load i64, i64* %PC.i650
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i650
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769
  %1771 = sext i32 %1770 to i64
  store i64 %1771, i64* %RCX.i651, align 8
  store %struct.Memory* %loadMem_413971, %struct.Memory** %MEMORY
  %loadMem_413975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RBP.i649
  %1785 = load i64, i64* %RCX.i648
  %1786 = mul i64 %1785, 4
  %1787 = add i64 %1784, -1104
  %1788 = add i64 %1787, %1786
  %1789 = load i64, i64* %PC.i646
  %1790 = add i64 %1789, 7
  store i64 %1790, i64* %PC.i646
  %1791 = inttoptr i64 %1788 to i32*
  %1792 = load i32, i32* %1791
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_413975, %struct.Memory** %MEMORY
  %loadMem_41397c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 1
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %EAX.i644 = bitcast %union.anon* %1799 to i32*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 15
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RBP.i645
  %1804 = sub i64 %1803, 1100
  %1805 = load i32, i32* %EAX.i644
  %1806 = zext i32 %1805 to i64
  %1807 = load i64, i64* %PC.i643
  %1808 = add i64 %1807, 6
  store i64 %1808, i64* %PC.i643
  %1809 = inttoptr i64 %1804 to i32*
  store i32 %1805, i32* %1809
  store %struct.Memory* %loadMem_41397c, %struct.Memory** %MEMORY
  %loadMem_413982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 1
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 15
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %RBP.i642
  %1820 = sub i64 %1819, 32
  %1821 = load i64, i64* %PC.i640
  %1822 = add i64 %1821, 3
  store i64 %1822, i64* %PC.i640
  %1823 = inttoptr i64 %1820 to i32*
  %1824 = load i32, i32* %1823
  %1825 = zext i32 %1824 to i64
  store i64 %1825, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_413982, %struct.Memory** %MEMORY
  %loadMem_413985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 33
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 1
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %RAX.i639
  %1833 = load i64, i64* %PC.i638
  %1834 = add i64 %1833, 3
  store i64 %1834, i64* %PC.i638
  %1835 = trunc i64 %1832 to i32
  %1836 = add i32 -1, %1835
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RAX.i639, align 8
  %1838 = icmp ult i32 %1836, %1835
  %1839 = icmp ult i32 %1836, -1
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1841, i8* %1842, align 1
  %1843 = and i32 %1836, 255
  %1844 = call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1847, i8* %1848, align 1
  %1849 = xor i64 -1, %1832
  %1850 = trunc i64 %1849 to i32
  %1851 = xor i32 %1850, %1836
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1854, i8* %1855, align 1
  %1856 = icmp eq i32 %1836, 0
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i32 %1836, 31
  %1860 = trunc i32 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1860, i8* %1861, align 1
  %1862 = lshr i32 %1835, 31
  %1863 = xor i32 %1859, %1862
  %1864 = xor i32 %1859, 1
  %1865 = add i32 %1863, %1864
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1867, i8* %1868, align 1
  store %struct.Memory* %loadMem_413985, %struct.Memory** %MEMORY
  %loadMem_413988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %1874 to i32*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 15
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RBP.i637
  %1879 = sub i64 %1878, 32
  %1880 = load i32, i32* %EAX.i636
  %1881 = zext i32 %1880 to i64
  %1882 = load i64, i64* %PC.i635
  %1883 = add i64 %1882, 3
  store i64 %1883, i64* %PC.i635
  %1884 = inttoptr i64 %1879 to i32*
  store i32 %1880, i32* %1884
  store %struct.Memory* %loadMem_413988, %struct.Memory** %MEMORY
  %loadMem_41398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 15
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1890 to i64*
  %1891 = load i64, i64* %RBP.i634
  %1892 = sub i64 %1891, 5244
  %1893 = load i64, i64* %PC.i633
  %1894 = add i64 %1893, 10
  store i64 %1894, i64* %PC.i633
  %1895 = inttoptr i64 %1892 to i32*
  store i32 1, i32* %1895
  store %struct.Memory* %loadMem_41398b, %struct.Memory** %MEMORY
  %loadMem_413995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 5
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 15
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RBP.i632
  %1906 = sub i64 %1905, 5244
  %1907 = load i64, i64* %PC.i630
  %1908 = add i64 %1907, 7
  store i64 %1908, i64* %PC.i630
  %1909 = inttoptr i64 %1906 to i32*
  %1910 = load i32, i32* %1909
  %1911 = sext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_413995, %struct.Memory** %MEMORY
  %loadMem_41399c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 5
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RCX.i628 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RBP.i629
  %1925 = load i64, i64* %RCX.i628
  %1926 = mul i64 %1925, 4
  %1927 = add i64 %1924, -1104
  %1928 = add i64 %1927, %1926
  %1929 = load i64, i64* %PC.i626
  %1930 = add i64 %1929, 7
  store i64 %1930, i64* %PC.i626
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_41399c, %struct.Memory** %MEMORY
  %loadMem_4139a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %EAX.i624 = bitcast %union.anon* %1939 to i32*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i625
  %1944 = sub i64 %1943, 5252
  %1945 = load i32, i32* %EAX.i624
  %1946 = zext i32 %1945 to i64
  %1947 = load i64, i64* %PC.i623
  %1948 = add i64 %1947, 6
  store i64 %1948, i64* %PC.i623
  %1949 = inttoptr i64 %1944 to i32*
  store i32 %1945, i32* %1949
  store %struct.Memory* %loadMem_4139a3, %struct.Memory** %MEMORY
  br label %block_.L_4139a9

block_.L_4139a9:                                  ; preds = %block_.L_413a50, %block_413968
  %loadMem_4139a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 15
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RBP.i622
  %1960 = sub i64 %1959, 5244
  %1961 = load i64, i64* %PC.i620
  %1962 = add i64 %1961, 6
  store i64 %1962, i64* %PC.i620
  %1963 = inttoptr i64 %1960 to i32*
  %1964 = load i32, i32* %1963
  %1965 = zext i32 %1964 to i64
  store i64 %1965, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_4139a9, %struct.Memory** %MEMORY
  %loadMem_4139af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 1
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RAX.i619
  %1973 = load i64, i64* %PC.i618
  %1974 = add i64 %1973, 2
  store i64 %1974, i64* %PC.i618
  %1975 = trunc i64 %1972 to i32
  %1976 = shl i32 %1975, 1
  %1977 = icmp slt i32 %1975, 0
  %1978 = icmp slt i32 %1976, 0
  %1979 = xor i1 %1977, %1978
  %1980 = zext i32 %1976 to i64
  store i64 %1980, i64* %RAX.i619, align 8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1982 = zext i1 %1977 to i8
  store i8 %1982, i8* %1981, align 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1984 = and i32 %1976, 254
  %1985 = call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %1983, align 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1989, align 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1991 = icmp eq i32 %1976, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %1990, align 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1994 = lshr i32 %1976, 31
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, i8* %1993, align 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1997 = zext i1 %1979 to i8
  store i8 %1997, i8* %1996, align 1
  store %struct.Memory* %loadMem_4139af, %struct.Memory** %MEMORY
  %loadMem_4139b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 1
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %EAX.i616 = bitcast %union.anon* %2003 to i32*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RBP.i617
  %2008 = sub i64 %2007, 5248
  %2009 = load i32, i32* %EAX.i616
  %2010 = zext i32 %2009 to i64
  %2011 = load i64, i64* %PC.i615
  %2012 = add i64 %2011, 6
  store i64 %2012, i64* %PC.i615
  %2013 = inttoptr i64 %2008 to i32*
  store i32 %2009, i32* %2013
  store %struct.Memory* %loadMem_4139b2, %struct.Memory** %MEMORY
  %loadMem_4139b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 1
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 15
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %RBP.i614
  %2024 = sub i64 %2023, 5248
  %2025 = load i64, i64* %PC.i612
  %2026 = add i64 %2025, 6
  store i64 %2026, i64* %PC.i612
  %2027 = inttoptr i64 %2024 to i32*
  %2028 = load i32, i32* %2027
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_4139b8, %struct.Memory** %MEMORY
  %loadMem_4139be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 1
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %EAX.i610 = bitcast %union.anon* %2035 to i32*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 15
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %2038 to i64*
  %2039 = load i32, i32* %EAX.i610
  %2040 = zext i32 %2039 to i64
  %2041 = load i64, i64* %RBP.i611
  %2042 = sub i64 %2041, 32
  %2043 = load i64, i64* %PC.i609
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC.i609
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045
  %2047 = sub i32 %2039, %2046
  %2048 = icmp ult i32 %2039, %2046
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2049, i8* %2050, align 1
  %2051 = and i32 %2047, 255
  %2052 = call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2055, i8* %2056, align 1
  %2057 = xor i32 %2046, %2039
  %2058 = xor i32 %2057, %2047
  %2059 = lshr i32 %2058, 4
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2061, i8* %2062, align 1
  %2063 = icmp eq i32 %2047, 0
  %2064 = zext i1 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2064, i8* %2065, align 1
  %2066 = lshr i32 %2047, 31
  %2067 = trunc i32 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2039, 31
  %2070 = lshr i32 %2046, 31
  %2071 = xor i32 %2070, %2069
  %2072 = xor i32 %2066, %2069
  %2073 = add i32 %2072, %2071
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2075, i8* %2076, align 1
  store %struct.Memory* %loadMem_4139be, %struct.Memory** %MEMORY
  %loadMem_4139c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i608
  %2081 = add i64 %2080, 11
  %2082 = load i64, i64* %PC.i608
  %2083 = add i64 %2082, 6
  %2084 = load i64, i64* %PC.i608
  %2085 = add i64 %2084, 6
  store i64 %2085, i64* %PC.i608
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2087 = load i8, i8* %2086, align 1
  %2088 = icmp ne i8 %2087, 0
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2090 = load i8, i8* %2089, align 1
  %2091 = icmp ne i8 %2090, 0
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2093 = load i8, i8* %2092, align 1
  %2094 = icmp ne i8 %2093, 0
  %2095 = xor i1 %2091, %2094
  %2096 = or i1 %2088, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %BRANCH_TAKEN, align 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2099 = select i1 %2096, i64 %2081, i64 %2083
  store i64 %2099, i64* %2098, align 8
  store %struct.Memory* %loadMem_4139c1, %struct.Memory** %MEMORY
  %loadBr_4139c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4139c1 = icmp eq i8 %loadBr_4139c1, 1
  br i1 %cmpBr_4139c1, label %block_.L_4139cc, label %block_4139c7

block_4139c7:                                     ; preds = %block_.L_4139a9
  %loadMem_4139c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %PC.i607
  %2104 = add i64 %2103, 182
  %2105 = load i64, i64* %PC.i607
  %2106 = add i64 %2105, 5
  store i64 %2106, i64* %PC.i607
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2104, i64* %2107, align 8
  store %struct.Memory* %loadMem_4139c7, %struct.Memory** %MEMORY
  br label %block_.L_413a7d

block_.L_4139cc:                                  ; preds = %block_.L_4139a9
  %loadMem_4139cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 1
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 15
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RBP.i606
  %2118 = sub i64 %2117, 5248
  %2119 = load i64, i64* %PC.i604
  %2120 = add i64 %2119, 6
  store i64 %2120, i64* %PC.i604
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_4139cc, %struct.Memory** %MEMORY
  %loadMem_4139d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 1
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %2129 to i32*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %2132 to i64*
  %2133 = load i32, i32* %EAX.i602
  %2134 = zext i32 %2133 to i64
  %2135 = load i64, i64* %RBP.i603
  %2136 = sub i64 %2135, 32
  %2137 = load i64, i64* %PC.i601
  %2138 = add i64 %2137, 3
  store i64 %2138, i64* %PC.i601
  %2139 = inttoptr i64 %2136 to i32*
  %2140 = load i32, i32* %2139
  %2141 = sub i32 %2133, %2140
  %2142 = icmp ult i32 %2133, %2140
  %2143 = zext i1 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2143, i8* %2144, align 1
  %2145 = and i32 %2141, 255
  %2146 = call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2149, i8* %2150, align 1
  %2151 = xor i32 %2140, %2133
  %2152 = xor i32 %2151, %2141
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2155, i8* %2156, align 1
  %2157 = icmp eq i32 %2141, 0
  %2158 = zext i1 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2158, i8* %2159, align 1
  %2160 = lshr i32 %2141, 31
  %2161 = trunc i32 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2161, i8* %2162, align 1
  %2163 = lshr i32 %2133, 31
  %2164 = lshr i32 %2140, 31
  %2165 = xor i32 %2164, %2163
  %2166 = xor i32 %2160, %2163
  %2167 = add i32 %2166, %2165
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2169, i8* %2170, align 1
  store %struct.Memory* %loadMem_4139d2, %struct.Memory** %MEMORY
  %loadMem_4139d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %PC.i600
  %2175 = add i64 %2174, 76
  %2176 = load i64, i64* %PC.i600
  %2177 = add i64 %2176, 6
  %2178 = load i64, i64* %PC.i600
  %2179 = add i64 %2178, 6
  store i64 %2179, i64* %PC.i600
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2181 = load i8, i8* %2180, align 1
  %2182 = icmp ne i8 %2181, 0
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2184 = load i8, i8* %2183, align 1
  %2185 = icmp ne i8 %2184, 0
  %2186 = xor i1 %2182, %2185
  %2187 = xor i1 %2186, true
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %BRANCH_TAKEN, align 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2190 = select i1 %2186, i64 %2177, i64 %2175
  store i64 %2190, i64* %2189, align 8
  store %struct.Memory* %loadMem_4139d5, %struct.Memory** %MEMORY
  %loadBr_4139d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4139d5 = icmp eq i8 %loadBr_4139d5, 1
  br i1 %cmpBr_4139d5, label %block_.L_413a21, label %block_4139db

block_4139db:                                     ; preds = %block_.L_4139cc
  %loadMem_4139db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 1
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RBP.i599
  %2201 = sub i64 %2200, 5248
  %2202 = load i64, i64* %PC.i597
  %2203 = add i64 %2202, 6
  store i64 %2203, i64* %PC.i597
  %2204 = inttoptr i64 %2201 to i32*
  %2205 = load i32, i32* %2204
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_4139db, %struct.Memory** %MEMORY
  %loadMem_4139e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RAX.i596
  %2214 = load i64, i64* %PC.i595
  %2215 = add i64 %2214, 3
  store i64 %2215, i64* %PC.i595
  %2216 = trunc i64 %2213 to i32
  %2217 = add i32 1, %2216
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RAX.i596, align 8
  %2219 = icmp ult i32 %2217, %2216
  %2220 = icmp ult i32 %2217, 1
  %2221 = or i1 %2219, %2220
  %2222 = zext i1 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2222, i8* %2223, align 1
  %2224 = and i32 %2217, 255
  %2225 = call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2228, i8* %2229, align 1
  %2230 = xor i64 1, %2213
  %2231 = trunc i64 %2230 to i32
  %2232 = xor i32 %2231, %2217
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2235, i8* %2236, align 1
  %2237 = icmp eq i32 %2217, 0
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2238, i8* %2239, align 1
  %2240 = lshr i32 %2217, 31
  %2241 = trunc i32 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2241, i8* %2242, align 1
  %2243 = lshr i32 %2216, 31
  %2244 = xor i32 %2240, %2243
  %2245 = add i32 %2244, %2240
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2247, i8* %2248, align 1
  store %struct.Memory* %loadMem_4139e1, %struct.Memory** %MEMORY
  %loadMem_4139e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %2254 to i32*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 5
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %2257 to i64*
  %2258 = load i32, i32* %EAX.i593
  %2259 = zext i32 %2258 to i64
  %2260 = load i64, i64* %PC.i592
  %2261 = add i64 %2260, 3
  store i64 %2261, i64* %PC.i592
  %2262 = shl i64 %2259, 32
  %2263 = ashr exact i64 %2262, 32
  store i64 %2263, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_4139e4, %struct.Memory** %MEMORY
  %loadMem_4139e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 5
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RBP.i591
  %2274 = load i64, i64* %RCX.i590
  %2275 = mul i64 %2274, 4
  %2276 = add i64 %2273, -1104
  %2277 = add i64 %2276, %2275
  %2278 = load i64, i64* %PC.i589
  %2279 = add i64 %2278, 8
  store i64 %2279, i64* %PC.i589
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280
  %2282 = sext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i590, align 8
  store %struct.Memory* %loadMem_4139e7, %struct.Memory** %MEMORY
  %loadMem_4139ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 5
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 15
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %2294 to i64*
  %2295 = load i64, i64* %RBP.i588
  %2296 = load i64, i64* %RCX.i587
  %2297 = mul i64 %2296, 4
  %2298 = add i64 %2295, -3168
  %2299 = add i64 %2298, %2297
  %2300 = load i64, i64* %PC.i585
  %2301 = add i64 %2300, 7
  store i64 %2301, i64* %PC.i585
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_4139ef, %struct.Memory** %MEMORY
  %loadMem_4139f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 5
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 15
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RBP.i584
  %2315 = sub i64 %2314, 5248
  %2316 = load i64, i64* %PC.i582
  %2317 = add i64 %2316, 7
  store i64 %2317, i64* %PC.i582
  %2318 = inttoptr i64 %2315 to i32*
  %2319 = load i32, i32* %2318
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_4139f6, %struct.Memory** %MEMORY
  %loadMem_4139fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 5
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 15
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %RBP.i581
  %2331 = load i64, i64* %RCX.i580
  %2332 = mul i64 %2331, 4
  %2333 = add i64 %2330, -1104
  %2334 = add i64 %2333, %2332
  %2335 = load i64, i64* %PC.i579
  %2336 = add i64 %2335, 8
  store i64 %2336, i64* %PC.i579
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RCX.i580, align 8
  store %struct.Memory* %loadMem_4139fd, %struct.Memory** %MEMORY
  %loadMem_413a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %EAX.i576 = bitcast %union.anon* %2345 to i32*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 5
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 15
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2351 to i64*
  %2352 = load i32, i32* %EAX.i576
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %RBP.i578
  %2355 = load i64, i64* %RCX.i577
  %2356 = mul i64 %2355, 4
  %2357 = add i64 %2354, -3168
  %2358 = add i64 %2357, %2356
  %2359 = load i64, i64* %PC.i575
  %2360 = add i64 %2359, 7
  store i64 %2360, i64* %PC.i575
  %2361 = inttoptr i64 %2358 to i32*
  %2362 = load i32, i32* %2361
  %2363 = sub i32 %2352, %2362
  %2364 = icmp ult i32 %2352, %2362
  %2365 = zext i1 %2364 to i8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2365, i8* %2366, align 1
  %2367 = and i32 %2363, 255
  %2368 = call i32 @llvm.ctpop.i32(i32 %2367)
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = xor i8 %2370, 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2371, i8* %2372, align 1
  %2373 = xor i32 %2362, %2352
  %2374 = xor i32 %2373, %2363
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2377, i8* %2378, align 1
  %2379 = icmp eq i32 %2363, 0
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2380, i8* %2381, align 1
  %2382 = lshr i32 %2363, 31
  %2383 = trunc i32 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2383, i8* %2384, align 1
  %2385 = lshr i32 %2352, 31
  %2386 = lshr i32 %2362, 31
  %2387 = xor i32 %2386, %2385
  %2388 = xor i32 %2382, %2385
  %2389 = add i32 %2388, %2387
  %2390 = icmp eq i32 %2389, 2
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2391, i8* %2392, align 1
  store %struct.Memory* %loadMem_413a05, %struct.Memory** %MEMORY
  %loadMem_413a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i574
  %2397 = add i64 %2396, 21
  %2398 = load i64, i64* %PC.i574
  %2399 = add i64 %2398, 6
  %2400 = load i64, i64* %PC.i574
  %2401 = add i64 %2400, 6
  store i64 %2401, i64* %PC.i574
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2403 = load i8, i8* %2402, align 1
  %2404 = icmp ne i8 %2403, 0
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2406 = load i8, i8* %2405, align 1
  %2407 = icmp ne i8 %2406, 0
  %2408 = xor i1 %2404, %2407
  %2409 = xor i1 %2408, true
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %BRANCH_TAKEN, align 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2412 = select i1 %2408, i64 %2399, i64 %2397
  store i64 %2412, i64* %2411, align 8
  store %struct.Memory* %loadMem_413a0c, %struct.Memory** %MEMORY
  %loadBr_413a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a0c = icmp eq i8 %loadBr_413a0c, 1
  br i1 %cmpBr_413a0c, label %block_.L_413a21, label %block_413a12

block_413a12:                                     ; preds = %block_4139db
  %loadMem_413a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 1
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RBP.i573
  %2423 = sub i64 %2422, 5248
  %2424 = load i64, i64* %PC.i571
  %2425 = add i64 %2424, 6
  store i64 %2425, i64* %PC.i571
  %2426 = inttoptr i64 %2423 to i32*
  %2427 = load i32, i32* %2426
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_413a12, %struct.Memory** %MEMORY
  %loadMem_413a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 1
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RAX.i570
  %2436 = load i64, i64* %PC.i569
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i569
  %2438 = trunc i64 %2435 to i32
  %2439 = add i32 1, %2438
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RAX.i570, align 8
  %2441 = icmp ult i32 %2439, %2438
  %2442 = icmp ult i32 %2439, 1
  %2443 = or i1 %2441, %2442
  %2444 = zext i1 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2444, i8* %2445, align 1
  %2446 = and i32 %2439, 255
  %2447 = call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2450, i8* %2451, align 1
  %2452 = xor i64 1, %2435
  %2453 = trunc i64 %2452 to i32
  %2454 = xor i32 %2453, %2439
  %2455 = lshr i32 %2454, 4
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2457, i8* %2458, align 1
  %2459 = icmp eq i32 %2439, 0
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2460, i8* %2461, align 1
  %2462 = lshr i32 %2439, 31
  %2463 = trunc i32 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2463, i8* %2464, align 1
  %2465 = lshr i32 %2438, 31
  %2466 = xor i32 %2462, %2465
  %2467 = add i32 %2466, %2462
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2469, i8* %2470, align 1
  store %struct.Memory* %loadMem_413a18, %struct.Memory** %MEMORY
  %loadMem_413a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 1
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %2476 to i32*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 15
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RBP.i568
  %2481 = sub i64 %2480, 5248
  %2482 = load i32, i32* %EAX.i567
  %2483 = zext i32 %2482 to i64
  %2484 = load i64, i64* %PC.i566
  %2485 = add i64 %2484, 6
  store i64 %2485, i64* %PC.i566
  %2486 = inttoptr i64 %2481 to i32*
  store i32 %2482, i32* %2486
  store %struct.Memory* %loadMem_413a1b, %struct.Memory** %MEMORY
  br label %block_.L_413a21

block_.L_413a21:                                  ; preds = %block_413a12, %block_4139db, %block_.L_4139cc
  %loadMem_413a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i565
  %2497 = sub i64 %2496, 5252
  %2498 = load i64, i64* %PC.i563
  %2499 = add i64 %2498, 7
  store i64 %2499, i64* %PC.i563
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = sext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_413a21, %struct.Memory** %MEMORY
  %loadMem_413a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 1
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 5
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 15
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RBP.i562
  %2516 = load i64, i64* %RAX.i560
  %2517 = mul i64 %2516, 4
  %2518 = add i64 %2515, -3168
  %2519 = add i64 %2518, %2517
  %2520 = load i64, i64* %PC.i559
  %2521 = add i64 %2520, 7
  store i64 %2521, i64* %PC.i559
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RCX.i561, align 8
  store %struct.Memory* %loadMem_413a28, %struct.Memory** %MEMORY
  %loadMem_413a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 1
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 15
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %2533 to i64*
  %2534 = load i64, i64* %RBP.i558
  %2535 = sub i64 %2534, 5248
  %2536 = load i64, i64* %PC.i556
  %2537 = add i64 %2536, 7
  store i64 %2537, i64* %PC.i556
  %2538 = inttoptr i64 %2535 to i32*
  %2539 = load i32, i32* %2538
  %2540 = sext i32 %2539 to i64
  store i64 %2540, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_413a2f, %struct.Memory** %MEMORY
  %loadMem_413a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 1
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 15
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2549 to i64*
  %2550 = load i64, i64* %RBP.i555
  %2551 = load i64, i64* %RAX.i554
  %2552 = mul i64 %2551, 4
  %2553 = add i64 %2550, -1104
  %2554 = add i64 %2553, %2552
  %2555 = load i64, i64* %PC.i553
  %2556 = add i64 %2555, 8
  store i64 %2556, i64* %PC.i553
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557
  %2559 = sext i32 %2558 to i64
  store i64 %2559, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_413a36, %struct.Memory** %MEMORY
  %loadMem_413a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 5
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %ECX.i550 = bitcast %union.anon* %2565 to i32*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 1
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 15
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2571 to i64*
  %2572 = load i32, i32* %ECX.i550
  %2573 = zext i32 %2572 to i64
  %2574 = load i64, i64* %RBP.i552
  %2575 = load i64, i64* %RAX.i551
  %2576 = mul i64 %2575, 4
  %2577 = add i64 %2574, -3168
  %2578 = add i64 %2577, %2576
  %2579 = load i64, i64* %PC.i549
  %2580 = add i64 %2579, 7
  store i64 %2580, i64* %PC.i549
  %2581 = inttoptr i64 %2578 to i32*
  %2582 = load i32, i32* %2581
  %2583 = sub i32 %2572, %2582
  %2584 = icmp ult i32 %2572, %2582
  %2585 = zext i1 %2584 to i8
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2585, i8* %2586, align 1
  %2587 = and i32 %2583, 255
  %2588 = call i32 @llvm.ctpop.i32(i32 %2587)
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  %2591 = xor i8 %2590, 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2591, i8* %2592, align 1
  %2593 = xor i32 %2582, %2572
  %2594 = xor i32 %2593, %2583
  %2595 = lshr i32 %2594, 4
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2597, i8* %2598, align 1
  %2599 = icmp eq i32 %2583, 0
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2600, i8* %2601, align 1
  %2602 = lshr i32 %2583, 31
  %2603 = trunc i32 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2603, i8* %2604, align 1
  %2605 = lshr i32 %2572, 31
  %2606 = lshr i32 %2582, 31
  %2607 = xor i32 %2606, %2605
  %2608 = xor i32 %2602, %2605
  %2609 = add i32 %2608, %2607
  %2610 = icmp eq i32 %2609, 2
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2611, i8* %2612, align 1
  store %struct.Memory* %loadMem_413a3e, %struct.Memory** %MEMORY
  %loadMem_413a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %PC.i548
  %2617 = add i64 %2616, 11
  %2618 = load i64, i64* %PC.i548
  %2619 = add i64 %2618, 6
  %2620 = load i64, i64* %PC.i548
  %2621 = add i64 %2620, 6
  store i64 %2621, i64* %PC.i548
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2623 = load i8, i8* %2622, align 1
  %2624 = icmp ne i8 %2623, 0
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2626 = load i8, i8* %2625, align 1
  %2627 = icmp ne i8 %2626, 0
  %2628 = xor i1 %2624, %2627
  %2629 = xor i1 %2628, true
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %BRANCH_TAKEN, align 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2632 = select i1 %2628, i64 %2619, i64 %2617
  store i64 %2632, i64* %2631, align 8
  store %struct.Memory* %loadMem_413a45, %struct.Memory** %MEMORY
  %loadBr_413a45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a45 = icmp eq i8 %loadBr_413a45, 1
  br i1 %cmpBr_413a45, label %block_.L_413a50, label %block_413a4b

block_413a4b:                                     ; preds = %block_.L_413a21
  %loadMem_413a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %PC.i547
  %2637 = add i64 %2636, 50
  %2638 = load i64, i64* %PC.i547
  %2639 = add i64 %2638, 5
  store i64 %2639, i64* %PC.i547
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2637, i64* %2640, align 8
  store %struct.Memory* %loadMem_413a4b, %struct.Memory** %MEMORY
  br label %block_.L_413a7d

block_.L_413a50:                                  ; preds = %block_.L_413a21
  %loadMem_413a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 1
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 15
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2649 to i64*
  %2650 = load i64, i64* %RBP.i546
  %2651 = sub i64 %2650, 5248
  %2652 = load i64, i64* %PC.i544
  %2653 = add i64 %2652, 7
  store i64 %2653, i64* %PC.i544
  %2654 = inttoptr i64 %2651 to i32*
  %2655 = load i32, i32* %2654
  %2656 = sext i32 %2655 to i64
  store i64 %2656, i64* %RAX.i545, align 8
  store %struct.Memory* %loadMem_413a50, %struct.Memory** %MEMORY
  %loadMem_413a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 33
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 1
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 5
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 15
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %RBP.i543
  %2670 = load i64, i64* %RAX.i541
  %2671 = mul i64 %2670, 4
  %2672 = add i64 %2669, -1104
  %2673 = add i64 %2672, %2671
  %2674 = load i64, i64* %PC.i540
  %2675 = add i64 %2674, 7
  store i64 %2675, i64* %PC.i540
  %2676 = inttoptr i64 %2673 to i32*
  %2677 = load i32, i32* %2676
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_413a57, %struct.Memory** %MEMORY
  %loadMem_413a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i539
  %2689 = sub i64 %2688, 5244
  %2690 = load i64, i64* %PC.i537
  %2691 = add i64 %2690, 7
  store i64 %2691, i64* %PC.i537
  %2692 = inttoptr i64 %2689 to i32*
  %2693 = load i32, i32* %2692
  %2694 = sext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_413a5e, %struct.Memory** %MEMORY
  %loadMem_413a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 5
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %ECX.i534 = bitcast %union.anon* %2700 to i32*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i536
  %2708 = load i64, i64* %RAX.i535
  %2709 = mul i64 %2708, 4
  %2710 = add i64 %2707, -1104
  %2711 = add i64 %2710, %2709
  %2712 = load i32, i32* %ECX.i534
  %2713 = zext i32 %2712 to i64
  %2714 = load i64, i64* %PC.i533
  %2715 = add i64 %2714, 7
  store i64 %2715, i64* %PC.i533
  %2716 = inttoptr i64 %2711 to i32*
  store i32 %2712, i32* %2716
  store %struct.Memory* %loadMem_413a65, %struct.Memory** %MEMORY
  %loadMem_413a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 15
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RBP.i532
  %2727 = sub i64 %2726, 5248
  %2728 = load i64, i64* %PC.i530
  %2729 = add i64 %2728, 6
  store i64 %2729, i64* %PC.i530
  %2730 = inttoptr i64 %2727 to i32*
  %2731 = load i32, i32* %2730
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_413a6c, %struct.Memory** %MEMORY
  %loadMem_413a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 5
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %ECX.i528 = bitcast %union.anon* %2738 to i32*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 15
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %RBP.i529
  %2743 = sub i64 %2742, 5244
  %2744 = load i32, i32* %ECX.i528
  %2745 = zext i32 %2744 to i64
  %2746 = load i64, i64* %PC.i527
  %2747 = add i64 %2746, 6
  store i64 %2747, i64* %PC.i527
  %2748 = inttoptr i64 %2743 to i32*
  store i32 %2744, i32* %2748
  store %struct.Memory* %loadMem_413a72, %struct.Memory** %MEMORY
  %loadMem_413a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2751 to i64*
  %2752 = load i64, i64* %PC.i526
  %2753 = add i64 %2752, -207
  %2754 = load i64, i64* %PC.i526
  %2755 = add i64 %2754, 5
  store i64 %2755, i64* %PC.i526
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2753, i64* %2756, align 8
  store %struct.Memory* %loadMem_413a78, %struct.Memory** %MEMORY
  br label %block_.L_4139a9

block_.L_413a7d:                                  ; preds = %block_413a4b, %block_4139c7
  %loadMem_413a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 1
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 15
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RBP.i525
  %2767 = sub i64 %2766, 5252
  %2768 = load i64, i64* %PC.i523
  %2769 = add i64 %2768, 6
  store i64 %2769, i64* %PC.i523
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_413a7d, %struct.Memory** %MEMORY
  %loadMem_413a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 5
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 15
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RBP.i522
  %2783 = sub i64 %2782, 5244
  %2784 = load i64, i64* %PC.i520
  %2785 = add i64 %2784, 7
  store i64 %2785, i64* %PC.i520
  %2786 = inttoptr i64 %2783 to i32*
  %2787 = load i32, i32* %2786
  %2788 = sext i32 %2787 to i64
  store i64 %2788, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_413a83, %struct.Memory** %MEMORY
  %loadMem_413a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 1
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %EAX.i517 = bitcast %union.anon* %2794 to i32*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 5
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 15
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %RBP.i519
  %2802 = load i64, i64* %RCX.i518
  %2803 = mul i64 %2802, 4
  %2804 = add i64 %2801, -1104
  %2805 = add i64 %2804, %2803
  %2806 = load i32, i32* %EAX.i517
  %2807 = zext i32 %2806 to i64
  %2808 = load i64, i64* %PC.i516
  %2809 = add i64 %2808, 7
  store i64 %2809, i64* %PC.i516
  %2810 = inttoptr i64 %2805 to i32*
  store i32 %2806, i32* %2810
  store %struct.Memory* %loadMem_413a8a, %struct.Memory** %MEMORY
  %loadMem_413a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 1
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 15
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RBP.i515
  %2821 = sub i64 %2820, 1100
  %2822 = load i64, i64* %PC.i513
  %2823 = add i64 %2822, 6
  store i64 %2823, i64* %PC.i513
  %2824 = inttoptr i64 %2821 to i32*
  %2825 = load i32, i32* %2824
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_413a91, %struct.Memory** %MEMORY
  %loadMem_413a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 1
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %2832 to i32*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 15
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RBP.i512
  %2837 = sub i64 %2836, 40
  %2838 = load i32, i32* %EAX.i511
  %2839 = zext i32 %2838 to i64
  %2840 = load i64, i64* %PC.i510
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i510
  %2842 = inttoptr i64 %2837 to i32*
  store i32 %2838, i32* %2842
  store %struct.Memory* %loadMem_413a97, %struct.Memory** %MEMORY
  %loadMem_413a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 15
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %RBP.i509
  %2853 = sub i64 %2852, 32
  %2854 = load i64, i64* %PC.i507
  %2855 = add i64 %2854, 4
  store i64 %2855, i64* %PC.i507
  %2856 = inttoptr i64 %2853 to i32*
  %2857 = load i32, i32* %2856
  %2858 = sext i32 %2857 to i64
  store i64 %2858, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_413a9a, %struct.Memory** %MEMORY
  %loadMem_413a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 1
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 5
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 15
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RBP.i506
  %2872 = load i64, i64* %RCX.i505
  %2873 = mul i64 %2872, 4
  %2874 = add i64 %2871, -1104
  %2875 = add i64 %2874, %2873
  %2876 = load i64, i64* %PC.i503
  %2877 = add i64 %2876, 7
  store i64 %2877, i64* %PC.i503
  %2878 = inttoptr i64 %2875 to i32*
  %2879 = load i32, i32* %2878
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_413a9e, %struct.Memory** %MEMORY
  %loadMem_413aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 1
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %EAX.i501 = bitcast %union.anon* %2886 to i32*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 15
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RBP.i502
  %2891 = sub i64 %2890, 1100
  %2892 = load i32, i32* %EAX.i501
  %2893 = zext i32 %2892 to i64
  %2894 = load i64, i64* %PC.i500
  %2895 = add i64 %2894, 6
  store i64 %2895, i64* %PC.i500
  %2896 = inttoptr i64 %2891 to i32*
  store i32 %2892, i32* %2896
  store %struct.Memory* %loadMem_413aa5, %struct.Memory** %MEMORY
  %loadMem_413aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 1
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 15
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %2905 to i64*
  %2906 = load i64, i64* %RBP.i499
  %2907 = sub i64 %2906, 32
  %2908 = load i64, i64* %PC.i497
  %2909 = add i64 %2908, 3
  store i64 %2909, i64* %PC.i497
  %2910 = inttoptr i64 %2907 to i32*
  %2911 = load i32, i32* %2910
  %2912 = zext i32 %2911 to i64
  store i64 %2912, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_413aab, %struct.Memory** %MEMORY
  %loadMem_413aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RAX.i496
  %2920 = load i64, i64* %PC.i495
  %2921 = add i64 %2920, 3
  store i64 %2921, i64* %PC.i495
  %2922 = trunc i64 %2919 to i32
  %2923 = add i32 -1, %2922
  %2924 = zext i32 %2923 to i64
  store i64 %2924, i64* %RAX.i496, align 8
  %2925 = icmp ult i32 %2923, %2922
  %2926 = icmp ult i32 %2923, -1
  %2927 = or i1 %2925, %2926
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2928, i8* %2929, align 1
  %2930 = and i32 %2923, 255
  %2931 = call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2934, i8* %2935, align 1
  %2936 = xor i64 -1, %2919
  %2937 = trunc i64 %2936 to i32
  %2938 = xor i32 %2937, %2923
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2941, i8* %2942, align 1
  %2943 = icmp eq i32 %2923, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2923, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2922, 31
  %2950 = xor i32 %2946, %2949
  %2951 = xor i32 %2946, 1
  %2952 = add i32 %2950, %2951
  %2953 = icmp eq i32 %2952, 2
  %2954 = zext i1 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2954, i8* %2955, align 1
  store %struct.Memory* %loadMem_413aae, %struct.Memory** %MEMORY
  %loadMem_413ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 1
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %2961 to i32*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 15
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %RBP.i494
  %2966 = sub i64 %2965, 32
  %2967 = load i32, i32* %EAX.i493
  %2968 = zext i32 %2967 to i64
  %2969 = load i64, i64* %PC.i492
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC.i492
  %2971 = inttoptr i64 %2966 to i32*
  store i32 %2967, i32* %2971
  store %struct.Memory* %loadMem_413ab1, %struct.Memory** %MEMORY
  %loadMem_413ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 15
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RBP.i491
  %2979 = sub i64 %2978, 5256
  %2980 = load i64, i64* %PC.i490
  %2981 = add i64 %2980, 10
  store i64 %2981, i64* %PC.i490
  %2982 = inttoptr i64 %2979 to i32*
  store i32 1, i32* %2982
  store %struct.Memory* %loadMem_413ab4, %struct.Memory** %MEMORY
  %loadMem_413abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i489
  %2993 = sub i64 %2992, 5256
  %2994 = load i64, i64* %PC.i487
  %2995 = add i64 %2994, 7
  store i64 %2995, i64* %PC.i487
  %2996 = inttoptr i64 %2993 to i32*
  %2997 = load i32, i32* %2996
  %2998 = sext i32 %2997 to i64
  store i64 %2998, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_413abe, %struct.Memory** %MEMORY
  %loadMem_413ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 1
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i486
  %3012 = load i64, i64* %RCX.i485
  %3013 = mul i64 %3012, 4
  %3014 = add i64 %3011, -1104
  %3015 = add i64 %3014, %3013
  %3016 = load i64, i64* %PC.i483
  %3017 = add i64 %3016, 7
  store i64 %3017, i64* %PC.i483
  %3018 = inttoptr i64 %3015 to i32*
  %3019 = load i32, i32* %3018
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_413ac5, %struct.Memory** %MEMORY
  %loadMem_413acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 1
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %EAX.i481 = bitcast %union.anon* %3026 to i32*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RBP.i482
  %3031 = sub i64 %3030, 5264
  %3032 = load i32, i32* %EAX.i481
  %3033 = zext i32 %3032 to i64
  %3034 = load i64, i64* %PC.i480
  %3035 = add i64 %3034, 6
  store i64 %3035, i64* %PC.i480
  %3036 = inttoptr i64 %3031 to i32*
  store i32 %3032, i32* %3036
  store %struct.Memory* %loadMem_413acc, %struct.Memory** %MEMORY
  br label %block_.L_413ad2

block_.L_413ad2:                                  ; preds = %block_.L_413b79, %block_.L_413a7d
  %loadMem_413ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 1
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 15
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %RBP.i479
  %3047 = sub i64 %3046, 5256
  %3048 = load i64, i64* %PC.i477
  %3049 = add i64 %3048, 6
  store i64 %3049, i64* %PC.i477
  %3050 = inttoptr i64 %3047 to i32*
  %3051 = load i32, i32* %3050
  %3052 = zext i32 %3051 to i64
  store i64 %3052, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_413ad2, %struct.Memory** %MEMORY
  %loadMem_413ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 33
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 1
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %RAX.i476
  %3060 = load i64, i64* %PC.i475
  %3061 = add i64 %3060, 2
  store i64 %3061, i64* %PC.i475
  %3062 = trunc i64 %3059 to i32
  %3063 = shl i32 %3062, 1
  %3064 = icmp slt i32 %3062, 0
  %3065 = icmp slt i32 %3063, 0
  %3066 = xor i1 %3064, %3065
  %3067 = zext i32 %3063 to i64
  store i64 %3067, i64* %RAX.i476, align 8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3069 = zext i1 %3064 to i8
  store i8 %3069, i8* %3068, align 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3071 = and i32 %3063, 254
  %3072 = call i32 @llvm.ctpop.i32(i32 %3071)
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = xor i8 %3074, 1
  store i8 %3075, i8* %3070, align 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3076, align 1
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3078 = icmp eq i32 %3063, 0
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %3077, align 1
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3081 = lshr i32 %3063, 31
  %3082 = trunc i32 %3081 to i8
  store i8 %3082, i8* %3080, align 1
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3084 = zext i1 %3066 to i8
  store i8 %3084, i8* %3083, align 1
  store %struct.Memory* %loadMem_413ad8, %struct.Memory** %MEMORY
  %loadMem_413adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 1
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %3090 to i32*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 15
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %RBP.i474
  %3095 = sub i64 %3094, 5260
  %3096 = load i32, i32* %EAX.i473
  %3097 = zext i32 %3096 to i64
  %3098 = load i64, i64* %PC.i472
  %3099 = add i64 %3098, 6
  store i64 %3099, i64* %PC.i472
  %3100 = inttoptr i64 %3095 to i32*
  store i32 %3096, i32* %3100
  store %struct.Memory* %loadMem_413adb, %struct.Memory** %MEMORY
  %loadMem_413ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 15
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RBP.i471
  %3111 = sub i64 %3110, 5260
  %3112 = load i64, i64* %PC.i469
  %3113 = add i64 %3112, 6
  store i64 %3113, i64* %PC.i469
  %3114 = inttoptr i64 %3111 to i32*
  %3115 = load i32, i32* %3114
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_413ae1, %struct.Memory** %MEMORY
  %loadMem_413ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %3122 to i32*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %3125 to i64*
  %3126 = load i32, i32* %EAX.i467
  %3127 = zext i32 %3126 to i64
  %3128 = load i64, i64* %RBP.i468
  %3129 = sub i64 %3128, 32
  %3130 = load i64, i64* %PC.i466
  %3131 = add i64 %3130, 3
  store i64 %3131, i64* %PC.i466
  %3132 = inttoptr i64 %3129 to i32*
  %3133 = load i32, i32* %3132
  %3134 = sub i32 %3126, %3133
  %3135 = icmp ult i32 %3126, %3133
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3136, i8* %3137, align 1
  %3138 = and i32 %3134, 255
  %3139 = call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3142, i8* %3143, align 1
  %3144 = xor i32 %3133, %3126
  %3145 = xor i32 %3144, %3134
  %3146 = lshr i32 %3145, 4
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3148, i8* %3149, align 1
  %3150 = icmp eq i32 %3134, 0
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3151, i8* %3152, align 1
  %3153 = lshr i32 %3134, 31
  %3154 = trunc i32 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3154, i8* %3155, align 1
  %3156 = lshr i32 %3126, 31
  %3157 = lshr i32 %3133, 31
  %3158 = xor i32 %3157, %3156
  %3159 = xor i32 %3153, %3156
  %3160 = add i32 %3159, %3158
  %3161 = icmp eq i32 %3160, 2
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3162, i8* %3163, align 1
  store %struct.Memory* %loadMem_413ae7, %struct.Memory** %MEMORY
  %loadMem_413aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %PC.i465
  %3168 = add i64 %3167, 11
  %3169 = load i64, i64* %PC.i465
  %3170 = add i64 %3169, 6
  %3171 = load i64, i64* %PC.i465
  %3172 = add i64 %3171, 6
  store i64 %3172, i64* %PC.i465
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3174 = load i8, i8* %3173, align 1
  %3175 = icmp ne i8 %3174, 0
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3177 = load i8, i8* %3176, align 1
  %3178 = icmp ne i8 %3177, 0
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3180 = load i8, i8* %3179, align 1
  %3181 = icmp ne i8 %3180, 0
  %3182 = xor i1 %3178, %3181
  %3183 = or i1 %3175, %3182
  %3184 = zext i1 %3183 to i8
  store i8 %3184, i8* %BRANCH_TAKEN, align 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3186 = select i1 %3183, i64 %3168, i64 %3170
  store i64 %3186, i64* %3185, align 8
  store %struct.Memory* %loadMem_413aea, %struct.Memory** %MEMORY
  %loadBr_413aea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413aea = icmp eq i8 %loadBr_413aea, 1
  br i1 %cmpBr_413aea, label %block_.L_413af5, label %block_413af0

block_413af0:                                     ; preds = %block_.L_413ad2
  %loadMem_413af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3189 to i64*
  %3190 = load i64, i64* %PC.i464
  %3191 = add i64 %3190, 182
  %3192 = load i64, i64* %PC.i464
  %3193 = add i64 %3192, 5
  store i64 %3193, i64* %PC.i464
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3191, i64* %3194, align 8
  store %struct.Memory* %loadMem_413af0, %struct.Memory** %MEMORY
  br label %block_.L_413ba6

block_.L_413af5:                                  ; preds = %block_.L_413ad2
  %loadMem_413af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 1
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 15
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RBP.i463
  %3205 = sub i64 %3204, 5260
  %3206 = load i64, i64* %PC.i461
  %3207 = add i64 %3206, 6
  store i64 %3207, i64* %PC.i461
  %3208 = inttoptr i64 %3205 to i32*
  %3209 = load i32, i32* %3208
  %3210 = zext i32 %3209 to i64
  store i64 %3210, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_413af5, %struct.Memory** %MEMORY
  %loadMem_413afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 1
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %3216 to i32*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 15
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3219 to i64*
  %3220 = load i32, i32* %EAX.i459
  %3221 = zext i32 %3220 to i64
  %3222 = load i64, i64* %RBP.i460
  %3223 = sub i64 %3222, 32
  %3224 = load i64, i64* %PC.i458
  %3225 = add i64 %3224, 3
  store i64 %3225, i64* %PC.i458
  %3226 = inttoptr i64 %3223 to i32*
  %3227 = load i32, i32* %3226
  %3228 = sub i32 %3220, %3227
  %3229 = icmp ult i32 %3220, %3227
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3230, i8* %3231, align 1
  %3232 = and i32 %3228, 255
  %3233 = call i32 @llvm.ctpop.i32(i32 %3232)
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  %3236 = xor i8 %3235, 1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3236, i8* %3237, align 1
  %3238 = xor i32 %3227, %3220
  %3239 = xor i32 %3238, %3228
  %3240 = lshr i32 %3239, 4
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3242, i8* %3243, align 1
  %3244 = icmp eq i32 %3228, 0
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3245, i8* %3246, align 1
  %3247 = lshr i32 %3228, 31
  %3248 = trunc i32 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3248, i8* %3249, align 1
  %3250 = lshr i32 %3220, 31
  %3251 = lshr i32 %3227, 31
  %3252 = xor i32 %3251, %3250
  %3253 = xor i32 %3247, %3250
  %3254 = add i32 %3253, %3252
  %3255 = icmp eq i32 %3254, 2
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3256, i8* %3257, align 1
  store %struct.Memory* %loadMem_413afb, %struct.Memory** %MEMORY
  %loadMem_413afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %PC.i457
  %3262 = add i64 %3261, 76
  %3263 = load i64, i64* %PC.i457
  %3264 = add i64 %3263, 6
  %3265 = load i64, i64* %PC.i457
  %3266 = add i64 %3265, 6
  store i64 %3266, i64* %PC.i457
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3268 = load i8, i8* %3267, align 1
  %3269 = icmp ne i8 %3268, 0
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3271 = load i8, i8* %3270, align 1
  %3272 = icmp ne i8 %3271, 0
  %3273 = xor i1 %3269, %3272
  %3274 = xor i1 %3273, true
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %BRANCH_TAKEN, align 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3277 = select i1 %3273, i64 %3264, i64 %3262
  store i64 %3277, i64* %3276, align 8
  store %struct.Memory* %loadMem_413afe, %struct.Memory** %MEMORY
  %loadBr_413afe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413afe = icmp eq i8 %loadBr_413afe, 1
  br i1 %cmpBr_413afe, label %block_.L_413b4a, label %block_413b04

block_413b04:                                     ; preds = %block_.L_413af5
  %loadMem_413b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 15
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RBP.i456
  %3288 = sub i64 %3287, 5260
  %3289 = load i64, i64* %PC.i454
  %3290 = add i64 %3289, 6
  store i64 %3290, i64* %PC.i454
  %3291 = inttoptr i64 %3288 to i32*
  %3292 = load i32, i32* %3291
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_413b04, %struct.Memory** %MEMORY
  %loadMem_413b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 1
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RAX.i453
  %3301 = load i64, i64* %PC.i452
  %3302 = add i64 %3301, 3
  store i64 %3302, i64* %PC.i452
  %3303 = trunc i64 %3300 to i32
  %3304 = add i32 1, %3303
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RAX.i453, align 8
  %3306 = icmp ult i32 %3304, %3303
  %3307 = icmp ult i32 %3304, 1
  %3308 = or i1 %3306, %3307
  %3309 = zext i1 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3309, i8* %3310, align 1
  %3311 = and i32 %3304, 255
  %3312 = call i32 @llvm.ctpop.i32(i32 %3311)
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  %3315 = xor i8 %3314, 1
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3315, i8* %3316, align 1
  %3317 = xor i64 1, %3300
  %3318 = trunc i64 %3317 to i32
  %3319 = xor i32 %3318, %3304
  %3320 = lshr i32 %3319, 4
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3322, i8* %3323, align 1
  %3324 = icmp eq i32 %3304, 0
  %3325 = zext i1 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3325, i8* %3326, align 1
  %3327 = lshr i32 %3304, 31
  %3328 = trunc i32 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3328, i8* %3329, align 1
  %3330 = lshr i32 %3303, 31
  %3331 = xor i32 %3327, %3330
  %3332 = add i32 %3331, %3327
  %3333 = icmp eq i32 %3332, 2
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3334, i8* %3335, align 1
  store %struct.Memory* %loadMem_413b0a, %struct.Memory** %MEMORY
  %loadMem_413b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %3341 to i32*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 5
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %3344 to i64*
  %3345 = load i32, i32* %EAX.i450
  %3346 = zext i32 %3345 to i64
  %3347 = load i64, i64* %PC.i449
  %3348 = add i64 %3347, 3
  store i64 %3348, i64* %PC.i449
  %3349 = shl i64 %3346, 32
  %3350 = ashr exact i64 %3349, 32
  store i64 %3350, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_413b0d, %struct.Memory** %MEMORY
  %loadMem_413b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 5
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 15
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RBP.i448
  %3361 = load i64, i64* %RCX.i447
  %3362 = mul i64 %3361, 4
  %3363 = add i64 %3360, -1104
  %3364 = add i64 %3363, %3362
  %3365 = load i64, i64* %PC.i446
  %3366 = add i64 %3365, 8
  store i64 %3366, i64* %PC.i446
  %3367 = inttoptr i64 %3364 to i32*
  %3368 = load i32, i32* %3367
  %3369 = sext i32 %3368 to i64
  store i64 %3369, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_413b10, %struct.Memory** %MEMORY
  %loadMem_413b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 1
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 5
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i445
  %3383 = load i64, i64* %RCX.i444
  %3384 = mul i64 %3383, 4
  %3385 = add i64 %3382, -3168
  %3386 = add i64 %3385, %3384
  %3387 = load i64, i64* %PC.i442
  %3388 = add i64 %3387, 7
  store i64 %3388, i64* %PC.i442
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_413b18, %struct.Memory** %MEMORY
  %loadMem_413b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 5
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %3397 to i64*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 15
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %3400 to i64*
  %3401 = load i64, i64* %RBP.i441
  %3402 = sub i64 %3401, 5260
  %3403 = load i64, i64* %PC.i439
  %3404 = add i64 %3403, 7
  store i64 %3404, i64* %PC.i439
  %3405 = inttoptr i64 %3402 to i32*
  %3406 = load i32, i32* %3405
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_413b1f, %struct.Memory** %MEMORY
  %loadMem_413b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 5
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 15
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %RBP.i438
  %3418 = load i64, i64* %RCX.i437
  %3419 = mul i64 %3418, 4
  %3420 = add i64 %3417, -1104
  %3421 = add i64 %3420, %3419
  %3422 = load i64, i64* %PC.i436
  %3423 = add i64 %3422, 8
  store i64 %3423, i64* %PC.i436
  %3424 = inttoptr i64 %3421 to i32*
  %3425 = load i32, i32* %3424
  %3426 = sext i32 %3425 to i64
  store i64 %3426, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_413b26, %struct.Memory** %MEMORY
  %loadMem_413b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 1
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %EAX.i433 = bitcast %union.anon* %3432 to i32*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 5
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 15
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3438 to i64*
  %3439 = load i32, i32* %EAX.i433
  %3440 = zext i32 %3439 to i64
  %3441 = load i64, i64* %RBP.i435
  %3442 = load i64, i64* %RCX.i434
  %3443 = mul i64 %3442, 4
  %3444 = add i64 %3441, -3168
  %3445 = add i64 %3444, %3443
  %3446 = load i64, i64* %PC.i432
  %3447 = add i64 %3446, 7
  store i64 %3447, i64* %PC.i432
  %3448 = inttoptr i64 %3445 to i32*
  %3449 = load i32, i32* %3448
  %3450 = sub i32 %3439, %3449
  %3451 = icmp ult i32 %3439, %3449
  %3452 = zext i1 %3451 to i8
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3452, i8* %3453, align 1
  %3454 = and i32 %3450, 255
  %3455 = call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3458, i8* %3459, align 1
  %3460 = xor i32 %3449, %3439
  %3461 = xor i32 %3460, %3450
  %3462 = lshr i32 %3461, 4
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3464, i8* %3465, align 1
  %3466 = icmp eq i32 %3450, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3450, 31
  %3470 = trunc i32 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = lshr i32 %3439, 31
  %3473 = lshr i32 %3449, 31
  %3474 = xor i32 %3473, %3472
  %3475 = xor i32 %3469, %3472
  %3476 = add i32 %3475, %3474
  %3477 = icmp eq i32 %3476, 2
  %3478 = zext i1 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3478, i8* %3479, align 1
  store %struct.Memory* %loadMem_413b2e, %struct.Memory** %MEMORY
  %loadMem_413b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 33
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %PC.i431
  %3484 = add i64 %3483, 21
  %3485 = load i64, i64* %PC.i431
  %3486 = add i64 %3485, 6
  %3487 = load i64, i64* %PC.i431
  %3488 = add i64 %3487, 6
  store i64 %3488, i64* %PC.i431
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3490 = load i8, i8* %3489, align 1
  %3491 = icmp ne i8 %3490, 0
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3493 = load i8, i8* %3492, align 1
  %3494 = icmp ne i8 %3493, 0
  %3495 = xor i1 %3491, %3494
  %3496 = xor i1 %3495, true
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %BRANCH_TAKEN, align 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3499 = select i1 %3495, i64 %3486, i64 %3484
  store i64 %3499, i64* %3498, align 8
  store %struct.Memory* %loadMem_413b35, %struct.Memory** %MEMORY
  %loadBr_413b35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413b35 = icmp eq i8 %loadBr_413b35, 1
  br i1 %cmpBr_413b35, label %block_.L_413b4a, label %block_413b3b

block_413b3b:                                     ; preds = %block_413b04
  %loadMem_413b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 1
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 15
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %RBP.i430
  %3510 = sub i64 %3509, 5260
  %3511 = load i64, i64* %PC.i428
  %3512 = add i64 %3511, 6
  store i64 %3512, i64* %PC.i428
  %3513 = inttoptr i64 %3510 to i32*
  %3514 = load i32, i32* %3513
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_413b3b, %struct.Memory** %MEMORY
  %loadMem_413b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 1
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %RAX.i427
  %3523 = load i64, i64* %PC.i426
  %3524 = add i64 %3523, 3
  store i64 %3524, i64* %PC.i426
  %3525 = trunc i64 %3522 to i32
  %3526 = add i32 1, %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RAX.i427, align 8
  %3528 = icmp ult i32 %3526, %3525
  %3529 = icmp ult i32 %3526, 1
  %3530 = or i1 %3528, %3529
  %3531 = zext i1 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3531, i8* %3532, align 1
  %3533 = and i32 %3526, 255
  %3534 = call i32 @llvm.ctpop.i32(i32 %3533)
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = xor i8 %3536, 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3537, i8* %3538, align 1
  %3539 = xor i64 1, %3522
  %3540 = trunc i64 %3539 to i32
  %3541 = xor i32 %3540, %3526
  %3542 = lshr i32 %3541, 4
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3544, i8* %3545, align 1
  %3546 = icmp eq i32 %3526, 0
  %3547 = zext i1 %3546 to i8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3547, i8* %3548, align 1
  %3549 = lshr i32 %3526, 31
  %3550 = trunc i32 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3550, i8* %3551, align 1
  %3552 = lshr i32 %3525, 31
  %3553 = xor i32 %3549, %3552
  %3554 = add i32 %3553, %3549
  %3555 = icmp eq i32 %3554, 2
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3556, i8* %3557, align 1
  store %struct.Memory* %loadMem_413b41, %struct.Memory** %MEMORY
  %loadMem_413b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 1
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %EAX.i424 = bitcast %union.anon* %3563 to i32*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 15
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3566 to i64*
  %3567 = load i64, i64* %RBP.i425
  %3568 = sub i64 %3567, 5260
  %3569 = load i32, i32* %EAX.i424
  %3570 = zext i32 %3569 to i64
  %3571 = load i64, i64* %PC.i423
  %3572 = add i64 %3571, 6
  store i64 %3572, i64* %PC.i423
  %3573 = inttoptr i64 %3568 to i32*
  store i32 %3569, i32* %3573
  store %struct.Memory* %loadMem_413b44, %struct.Memory** %MEMORY
  br label %block_.L_413b4a

block_.L_413b4a:                                  ; preds = %block_413b3b, %block_413b04, %block_.L_413af5
  %loadMem_413b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 1
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i422
  %3584 = sub i64 %3583, 5264
  %3585 = load i64, i64* %PC.i420
  %3586 = add i64 %3585, 7
  store i64 %3586, i64* %PC.i420
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587
  %3589 = sext i32 %3588 to i64
  store i64 %3589, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_413b4a, %struct.Memory** %MEMORY
  %loadMem_413b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 5
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 15
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3601 to i64*
  %3602 = load i64, i64* %RBP.i419
  %3603 = load i64, i64* %RAX.i417
  %3604 = mul i64 %3603, 4
  %3605 = add i64 %3602, -3168
  %3606 = add i64 %3605, %3604
  %3607 = load i64, i64* %PC.i416
  %3608 = add i64 %3607, 7
  store i64 %3608, i64* %PC.i416
  %3609 = inttoptr i64 %3606 to i32*
  %3610 = load i32, i32* %3609
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_413b51, %struct.Memory** %MEMORY
  %loadMem_413b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 1
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 15
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %RBP.i415
  %3622 = sub i64 %3621, 5260
  %3623 = load i64, i64* %PC.i413
  %3624 = add i64 %3623, 7
  store i64 %3624, i64* %PC.i413
  %3625 = inttoptr i64 %3622 to i32*
  %3626 = load i32, i32* %3625
  %3627 = sext i32 %3626 to i64
  store i64 %3627, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_413b58, %struct.Memory** %MEMORY
  %loadMem_413b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 15
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3636 to i64*
  %3637 = load i64, i64* %RBP.i412
  %3638 = load i64, i64* %RAX.i411
  %3639 = mul i64 %3638, 4
  %3640 = add i64 %3637, -1104
  %3641 = add i64 %3640, %3639
  %3642 = load i64, i64* %PC.i410
  %3643 = add i64 %3642, 8
  store i64 %3643, i64* %PC.i410
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = sext i32 %3645 to i64
  store i64 %3646, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_413b5f, %struct.Memory** %MEMORY
  %loadMem_413b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 5
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %ECX.i407 = bitcast %union.anon* %3652 to i32*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 1
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 15
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3658 to i64*
  %3659 = load i32, i32* %ECX.i407
  %3660 = zext i32 %3659 to i64
  %3661 = load i64, i64* %RBP.i409
  %3662 = load i64, i64* %RAX.i408
  %3663 = mul i64 %3662, 4
  %3664 = add i64 %3661, -3168
  %3665 = add i64 %3664, %3663
  %3666 = load i64, i64* %PC.i406
  %3667 = add i64 %3666, 7
  store i64 %3667, i64* %PC.i406
  %3668 = inttoptr i64 %3665 to i32*
  %3669 = load i32, i32* %3668
  %3670 = sub i32 %3659, %3669
  %3671 = icmp ult i32 %3659, %3669
  %3672 = zext i1 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3672, i8* %3673, align 1
  %3674 = and i32 %3670, 255
  %3675 = call i32 @llvm.ctpop.i32(i32 %3674)
  %3676 = trunc i32 %3675 to i8
  %3677 = and i8 %3676, 1
  %3678 = xor i8 %3677, 1
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3678, i8* %3679, align 1
  %3680 = xor i32 %3669, %3659
  %3681 = xor i32 %3680, %3670
  %3682 = lshr i32 %3681, 4
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3684, i8* %3685, align 1
  %3686 = icmp eq i32 %3670, 0
  %3687 = zext i1 %3686 to i8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3687, i8* %3688, align 1
  %3689 = lshr i32 %3670, 31
  %3690 = trunc i32 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3690, i8* %3691, align 1
  %3692 = lshr i32 %3659, 31
  %3693 = lshr i32 %3669, 31
  %3694 = xor i32 %3693, %3692
  %3695 = xor i32 %3689, %3692
  %3696 = add i32 %3695, %3694
  %3697 = icmp eq i32 %3696, 2
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3698, i8* %3699, align 1
  store %struct.Memory* %loadMem_413b67, %struct.Memory** %MEMORY
  %loadMem_413b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i405
  %3704 = add i64 %3703, 11
  %3705 = load i64, i64* %PC.i405
  %3706 = add i64 %3705, 6
  %3707 = load i64, i64* %PC.i405
  %3708 = add i64 %3707, 6
  store i64 %3708, i64* %PC.i405
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3710 = load i8, i8* %3709, align 1
  %3711 = icmp ne i8 %3710, 0
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3713 = load i8, i8* %3712, align 1
  %3714 = icmp ne i8 %3713, 0
  %3715 = xor i1 %3711, %3714
  %3716 = xor i1 %3715, true
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %BRANCH_TAKEN, align 1
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3719 = select i1 %3715, i64 %3706, i64 %3704
  store i64 %3719, i64* %3718, align 8
  store %struct.Memory* %loadMem_413b6e, %struct.Memory** %MEMORY
  %loadBr_413b6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413b6e = icmp eq i8 %loadBr_413b6e, 1
  br i1 %cmpBr_413b6e, label %block_.L_413b79, label %block_413b74

block_413b74:                                     ; preds = %block_.L_413b4a
  %loadMem_413b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3722 to i64*
  %3723 = load i64, i64* %PC.i404
  %3724 = add i64 %3723, 50
  %3725 = load i64, i64* %PC.i404
  %3726 = add i64 %3725, 5
  store i64 %3726, i64* %PC.i404
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3724, i64* %3727, align 8
  store %struct.Memory* %loadMem_413b74, %struct.Memory** %MEMORY
  br label %block_.L_413ba6

block_.L_413b79:                                  ; preds = %block_.L_413b4a
  %loadMem_413b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 1
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 15
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %RBP.i403
  %3738 = sub i64 %3737, 5260
  %3739 = load i64, i64* %PC.i401
  %3740 = add i64 %3739, 7
  store i64 %3740, i64* %PC.i401
  %3741 = inttoptr i64 %3738 to i32*
  %3742 = load i32, i32* %3741
  %3743 = sext i32 %3742 to i64
  store i64 %3743, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_413b79, %struct.Memory** %MEMORY
  %loadMem_413b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 1
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 5
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 15
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %3755 to i64*
  %3756 = load i64, i64* %RBP.i400
  %3757 = load i64, i64* %RAX.i398
  %3758 = mul i64 %3757, 4
  %3759 = add i64 %3756, -1104
  %3760 = add i64 %3759, %3758
  %3761 = load i64, i64* %PC.i397
  %3762 = add i64 %3761, 7
  store i64 %3762, i64* %PC.i397
  %3763 = inttoptr i64 %3760 to i32*
  %3764 = load i32, i32* %3763
  %3765 = zext i32 %3764 to i64
  store i64 %3765, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_413b80, %struct.Memory** %MEMORY
  %loadMem_413b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 1
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 15
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %3774 to i64*
  %3775 = load i64, i64* %RBP.i396
  %3776 = sub i64 %3775, 5256
  %3777 = load i64, i64* %PC.i394
  %3778 = add i64 %3777, 7
  store i64 %3778, i64* %PC.i394
  %3779 = inttoptr i64 %3776 to i32*
  %3780 = load i32, i32* %3779
  %3781 = sext i32 %3780 to i64
  store i64 %3781, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_413b87, %struct.Memory** %MEMORY
  %loadMem_413b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 5
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %ECX.i391 = bitcast %union.anon* %3787 to i32*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 15
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RBP.i393
  %3795 = load i64, i64* %RAX.i392
  %3796 = mul i64 %3795, 4
  %3797 = add i64 %3794, -1104
  %3798 = add i64 %3797, %3796
  %3799 = load i32, i32* %ECX.i391
  %3800 = zext i32 %3799 to i64
  %3801 = load i64, i64* %PC.i390
  %3802 = add i64 %3801, 7
  store i64 %3802, i64* %PC.i390
  %3803 = inttoptr i64 %3798 to i32*
  store i32 %3799, i32* %3803
  store %struct.Memory* %loadMem_413b8e, %struct.Memory** %MEMORY
  %loadMem_413b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 5
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 15
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %RBP.i389
  %3814 = sub i64 %3813, 5260
  %3815 = load i64, i64* %PC.i387
  %3816 = add i64 %3815, 6
  store i64 %3816, i64* %PC.i387
  %3817 = inttoptr i64 %3814 to i32*
  %3818 = load i32, i32* %3817
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_413b95, %struct.Memory** %MEMORY
  %loadMem_413b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 5
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %ECX.i385 = bitcast %union.anon* %3825 to i32*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 15
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %RBP.i386
  %3830 = sub i64 %3829, 5256
  %3831 = load i32, i32* %ECX.i385
  %3832 = zext i32 %3831 to i64
  %3833 = load i64, i64* %PC.i384
  %3834 = add i64 %3833, 6
  store i64 %3834, i64* %PC.i384
  %3835 = inttoptr i64 %3830 to i32*
  store i32 %3831, i32* %3835
  store %struct.Memory* %loadMem_413b9b, %struct.Memory** %MEMORY
  %loadMem_413ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %PC.i383
  %3840 = add i64 %3839, -207
  %3841 = load i64, i64* %PC.i383
  %3842 = add i64 %3841, 5
  store i64 %3842, i64* %PC.i383
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3840, i64* %3843, align 8
  store %struct.Memory* %loadMem_413ba1, %struct.Memory** %MEMORY
  br label %block_.L_413ad2

block_.L_413ba6:                                  ; preds = %block_413b74, %block_413af0
  %loadMem_413ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 1
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i382
  %3854 = sub i64 %3853, 5264
  %3855 = load i64, i64* %PC.i380
  %3856 = add i64 %3855, 6
  store i64 %3856, i64* %PC.i380
  %3857 = inttoptr i64 %3854 to i32*
  %3858 = load i32, i32* %3857
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_413ba6, %struct.Memory** %MEMORY
  %loadMem_413bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 5
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 15
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %RBP.i379
  %3870 = sub i64 %3869, 5256
  %3871 = load i64, i64* %PC.i377
  %3872 = add i64 %3871, 7
  store i64 %3872, i64* %PC.i377
  %3873 = inttoptr i64 %3870 to i32*
  %3874 = load i32, i32* %3873
  %3875 = sext i32 %3874 to i64
  store i64 %3875, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_413bac, %struct.Memory** %MEMORY
  %loadMem_413bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 1
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %3881 to i32*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 5
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 15
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3887 to i64*
  %3888 = load i64, i64* %RBP.i376
  %3889 = load i64, i64* %RCX.i375
  %3890 = mul i64 %3889, 4
  %3891 = add i64 %3888, -1104
  %3892 = add i64 %3891, %3890
  %3893 = load i32, i32* %EAX.i374
  %3894 = zext i32 %3893 to i64
  %3895 = load i64, i64* %PC.i373
  %3896 = add i64 %3895, 7
  store i64 %3896, i64* %PC.i373
  %3897 = inttoptr i64 %3892 to i32*
  store i32 %3893, i32* %3897
  store %struct.Memory* %loadMem_413bb3, %struct.Memory** %MEMORY
  %loadMem_413bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 1
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 15
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %RBP.i372
  %3908 = sub i64 %3907, 28
  %3909 = load i64, i64* %PC.i370
  %3910 = add i64 %3909, 3
  store i64 %3910, i64* %PC.i370
  %3911 = inttoptr i64 %3908 to i32*
  %3912 = load i32, i32* %3911
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_413bba, %struct.Memory** %MEMORY
  %loadMem_413bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 33
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3916 to i64*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 1
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3919 to i64*
  %3920 = load i64, i64* %RAX.i369
  %3921 = load i64, i64* %PC.i368
  %3922 = add i64 %3921, 3
  store i64 %3922, i64* %PC.i368
  %3923 = trunc i64 %3920 to i32
  %3924 = add i32 1, %3923
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RAX.i369, align 8
  %3926 = icmp ult i32 %3924, %3923
  %3927 = icmp ult i32 %3924, 1
  %3928 = or i1 %3926, %3927
  %3929 = zext i1 %3928 to i8
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3929, i8* %3930, align 1
  %3931 = and i32 %3924, 255
  %3932 = call i32 @llvm.ctpop.i32(i32 %3931)
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = xor i8 %3934, 1
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3935, i8* %3936, align 1
  %3937 = xor i64 1, %3920
  %3938 = trunc i64 %3937 to i32
  %3939 = xor i32 %3938, %3924
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3942, i8* %3943, align 1
  %3944 = icmp eq i32 %3924, 0
  %3945 = zext i1 %3944 to i8
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3945, i8* %3946, align 1
  %3947 = lshr i32 %3924, 31
  %3948 = trunc i32 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3948, i8* %3949, align 1
  %3950 = lshr i32 %3923, 31
  %3951 = xor i32 %3947, %3950
  %3952 = add i32 %3951, %3947
  %3953 = icmp eq i32 %3952, 2
  %3954 = zext i1 %3953 to i8
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3954, i8* %3955, align 1
  store %struct.Memory* %loadMem_413bbd, %struct.Memory** %MEMORY
  %loadMem_413bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 1
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %3961 to i32*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 15
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RBP.i367
  %3966 = sub i64 %3965, 28
  %3967 = load i32, i32* %EAX.i366
  %3968 = zext i32 %3967 to i64
  %3969 = load i64, i64* %PC.i365
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i365
  %3971 = inttoptr i64 %3966 to i32*
  store i32 %3967, i32* %3971
  store %struct.Memory* %loadMem_413bc0, %struct.Memory** %MEMORY
  %loadMem_413bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 1
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 15
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RBP.i364
  %3982 = sub i64 %3981, 28
  %3983 = load i64, i64* %PC.i362
  %3984 = add i64 %3983, 3
  store i64 %3984, i64* %PC.i362
  %3985 = inttoptr i64 %3982 to i32*
  %3986 = load i32, i32* %3985
  %3987 = zext i32 %3986 to i64
  store i64 %3987, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_413bc3, %struct.Memory** %MEMORY
  %loadMem_413bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 33
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 5
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 15
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %RBP.i361
  %3998 = sub i64 %3997, 40
  %3999 = load i64, i64* %PC.i359
  %4000 = add i64 %3999, 4
  store i64 %4000, i64* %PC.i359
  %4001 = inttoptr i64 %3998 to i32*
  %4002 = load i32, i32* %4001
  %4003 = sext i32 %4002 to i64
  store i64 %4003, i64* %RCX.i360, align 8
  store %struct.Memory* %loadMem_413bc6, %struct.Memory** %MEMORY
  %loadMem_413bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 1
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %4009 to i32*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 5
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 15
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RBP.i358
  %4017 = load i64, i64* %RCX.i357
  %4018 = mul i64 %4017, 4
  %4019 = add i64 %4016, -5232
  %4020 = add i64 %4019, %4018
  %4021 = load i32, i32* %EAX.i356
  %4022 = zext i32 %4021 to i64
  %4023 = load i64, i64* %PC.i355
  %4024 = add i64 %4023, 7
  store i64 %4024, i64* %PC.i355
  %4025 = inttoptr i64 %4020 to i32*
  store i32 %4021, i32* %4025
  store %struct.Memory* %loadMem_413bca, %struct.Memory** %MEMORY
  %loadMem_413bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 5
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 15
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RBP.i354
  %4036 = sub i64 %4035, 36
  %4037 = load i64, i64* %PC.i352
  %4038 = add i64 %4037, 4
  store i64 %4038, i64* %PC.i352
  %4039 = inttoptr i64 %4036 to i32*
  %4040 = load i32, i32* %4039
  %4041 = sext i32 %4040 to i64
  store i64 %4041, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_413bd1, %struct.Memory** %MEMORY
  %loadMem_413bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %4047 to i32*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 5
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RBP.i351
  %4055 = load i64, i64* %RCX.i350
  %4056 = mul i64 %4055, 4
  %4057 = add i64 %4054, -5232
  %4058 = add i64 %4057, %4056
  %4059 = load i32, i32* %EAX.i349
  %4060 = zext i32 %4059 to i64
  %4061 = load i64, i64* %PC.i348
  %4062 = add i64 %4061, 7
  store i64 %4062, i64* %PC.i348
  %4063 = inttoptr i64 %4058 to i32*
  store i32 %4059, i32* %4063
  store %struct.Memory* %loadMem_413bd5, %struct.Memory** %MEMORY
  %loadMem_413bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 5
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i347
  %4074 = sub i64 %4073, 36
  %4075 = load i64, i64* %PC.i345
  %4076 = add i64 %4075, 4
  store i64 %4076, i64* %PC.i345
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = sext i32 %4078 to i64
  store i64 %4079, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_413bdc, %struct.Memory** %MEMORY
  %loadMem_413be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %4085 to i64*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 5
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 15
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %RBP.i344
  %4093 = load i64, i64* %RCX.i343
  %4094 = mul i64 %4093, 4
  %4095 = add i64 %4092, -3168
  %4096 = add i64 %4095, %4094
  %4097 = load i64, i64* %PC.i341
  %4098 = add i64 %4097, 7
  store i64 %4098, i64* %PC.i341
  %4099 = inttoptr i64 %4096 to i32*
  %4100 = load i32, i32* %4099
  %4101 = zext i32 %4100 to i64
  store i64 %4101, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_413be0, %struct.Memory** %MEMORY
  %loadMem_413be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 1
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %4107 to i64*
  %4108 = load i64, i64* %RAX.i340
  %4109 = load i64, i64* %PC.i339
  %4110 = add i64 %4109, 5
  store i64 %4110, i64* %PC.i339
  %4111 = and i64 -256, %4108
  %4112 = trunc i64 %4111 to i32
  %4113 = and i64 %4111, 4294967295
  store i64 %4113, i64* %RAX.i340, align 8
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4114, align 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4115, align 1
  %4116 = icmp eq i32 %4112, 0
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4117, i8* %4118, align 1
  %4119 = lshr i32 %4112, 31
  %4120 = trunc i32 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4120, i8* %4121, align 1
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4122, align 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4123, align 1
  store %struct.Memory* %loadMem_413be7, %struct.Memory** %MEMORY
  %loadMem_413bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 33
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4126 to i64*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 5
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %4129 to i64*
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 15
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %RBP.i338
  %4134 = sub i64 %4133, 40
  %4135 = load i64, i64* %PC.i336
  %4136 = add i64 %4135, 4
  store i64 %4136, i64* %PC.i336
  %4137 = inttoptr i64 %4134 to i32*
  %4138 = load i32, i32* %4137
  %4139 = sext i32 %4138 to i64
  store i64 %4139, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_413bec, %struct.Memory** %MEMORY
  %loadMem_413bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 5
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 7
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 15
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4151 to i64*
  %4152 = load i64, i64* %RBP.i335
  %4153 = load i64, i64* %RCX.i333
  %4154 = mul i64 %4153, 4
  %4155 = add i64 %4152, -3168
  %4156 = add i64 %4155, %4154
  %4157 = load i64, i64* %PC.i332
  %4158 = add i64 %4157, 7
  store i64 %4158, i64* %PC.i332
  %4159 = inttoptr i64 %4156 to i32*
  %4160 = load i32, i32* %4159
  %4161 = zext i32 %4160 to i64
  store i64 %4161, i64* %RDX.i334, align 8
  store %struct.Memory* %loadMem_413bf0, %struct.Memory** %MEMORY
  %loadMem_413bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 7
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RDX.i331 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RDX.i331
  %4169 = load i64, i64* %PC.i330
  %4170 = add i64 %4169, 6
  store i64 %4170, i64* %PC.i330
  %4171 = and i64 -256, %4168
  %4172 = trunc i64 %4171 to i32
  %4173 = and i64 %4171, 4294967295
  store i64 %4173, i64* %RDX.i331, align 8
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4174, align 1
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4175, align 1
  %4176 = icmp eq i32 %4172, 0
  %4177 = zext i1 %4176 to i8
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4177, i8* %4178, align 1
  %4179 = lshr i32 %4172, 31
  %4180 = trunc i32 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4180, i8* %4181, align 1
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4182, align 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4183, align 1
  store %struct.Memory* %loadMem_413bf7, %struct.Memory** %MEMORY
  %loadMem_413bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 7
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %EDX.i328 = bitcast %union.anon* %4189 to i32*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 1
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RAX.i329
  %4194 = load i32, i32* %EDX.i328
  %4195 = zext i32 %4194 to i64
  %4196 = load i64, i64* %PC.i327
  %4197 = add i64 %4196, 2
  store i64 %4197, i64* %PC.i327
  %4198 = trunc i64 %4193 to i32
  %4199 = add i32 %4194, %4198
  %4200 = zext i32 %4199 to i64
  store i64 %4200, i64* %RAX.i329, align 8
  %4201 = icmp ult i32 %4199, %4198
  %4202 = icmp ult i32 %4199, %4194
  %4203 = or i1 %4201, %4202
  %4204 = zext i1 %4203 to i8
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4204, i8* %4205, align 1
  %4206 = and i32 %4199, 255
  %4207 = call i32 @llvm.ctpop.i32(i32 %4206)
  %4208 = trunc i32 %4207 to i8
  %4209 = and i8 %4208, 1
  %4210 = xor i8 %4209, 1
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4210, i8* %4211, align 1
  %4212 = xor i64 %4195, %4193
  %4213 = trunc i64 %4212 to i32
  %4214 = xor i32 %4213, %4199
  %4215 = lshr i32 %4214, 4
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4217, i8* %4218, align 1
  %4219 = icmp eq i32 %4199, 0
  %4220 = zext i1 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4220, i8* %4221, align 1
  %4222 = lshr i32 %4199, 31
  %4223 = trunc i32 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4223, i8* %4224, align 1
  %4225 = lshr i32 %4198, 31
  %4226 = lshr i32 %4194, 31
  %4227 = xor i32 %4222, %4225
  %4228 = xor i32 %4222, %4226
  %4229 = add i32 %4227, %4228
  %4230 = icmp eq i32 %4229, 2
  %4231 = zext i1 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4231, i8* %4232, align 1
  store %struct.Memory* %loadMem_413bfd, %struct.Memory** %MEMORY
  %loadMem_413bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 5
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %4241 to i64*
  %4242 = load i64, i64* %RBP.i326
  %4243 = sub i64 %4242, 36
  %4244 = load i64, i64* %PC.i324
  %4245 = add i64 %4244, 4
  store i64 %4245, i64* %PC.i324
  %4246 = inttoptr i64 %4243 to i32*
  %4247 = load i32, i32* %4246
  %4248 = sext i32 %4247 to i64
  store i64 %4248, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_413bff, %struct.Memory** %MEMORY
  %loadMem_413c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 5
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 7
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 15
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RBP.i323
  %4262 = load i64, i64* %RCX.i321
  %4263 = mul i64 %4262, 4
  %4264 = add i64 %4261, -3168
  %4265 = add i64 %4264, %4263
  %4266 = load i64, i64* %PC.i320
  %4267 = add i64 %4266, 7
  store i64 %4267, i64* %PC.i320
  %4268 = inttoptr i64 %4265 to i32*
  %4269 = load i32, i32* %4268
  %4270 = zext i32 %4269 to i64
  store i64 %4270, i64* %RDX.i322, align 8
  store %struct.Memory* %loadMem_413c03, %struct.Memory** %MEMORY
  %loadMem_413c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 33
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4273 to i64*
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 7
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %RDX.i319
  %4278 = load i64, i64* %PC.i318
  %4279 = add i64 %4278, 6
  store i64 %4279, i64* %PC.i318
  %4280 = and i64 255, %4277
  %4281 = trunc i64 %4280 to i32
  store i64 %4280, i64* %RDX.i319, align 8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4282, align 1
  %4283 = and i32 %4281, 255
  %4284 = call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4287, i8* %4288, align 1
  %4289 = icmp eq i32 %4281, 0
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4290, i8* %4291, align 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4292, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4293, align 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4294, align 1
  store %struct.Memory* %loadMem_413c0a, %struct.Memory** %MEMORY
  %loadMem_413c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 5
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 15
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RBP.i317
  %4305 = sub i64 %4304, 40
  %4306 = load i64, i64* %PC.i315
  %4307 = add i64 %4306, 4
  store i64 %4307, i64* %PC.i315
  %4308 = inttoptr i64 %4305 to i32*
  %4309 = load i32, i32* %4308
  %4310 = sext i32 %4309 to i64
  store i64 %4310, i64* %RCX.i316, align 8
  store %struct.Memory* %loadMem_413c10, %struct.Memory** %MEMORY
  %loadMem_413c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 5
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 9
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i314
  %4324 = load i64, i64* %RCX.i312
  %4325 = mul i64 %4324, 4
  %4326 = add i64 %4323, -3168
  %4327 = add i64 %4326, %4325
  %4328 = load i64, i64* %PC.i311
  %4329 = add i64 %4328, 7
  store i64 %4329, i64* %PC.i311
  %4330 = inttoptr i64 %4327 to i32*
  %4331 = load i32, i32* %4330
  %4332 = zext i32 %4331 to i64
  store i64 %4332, i64* %RSI.i313, align 8
  store %struct.Memory* %loadMem_413c14, %struct.Memory** %MEMORY
  %loadMem_413c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 9
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RSI.i310 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %RSI.i310
  %4340 = load i64, i64* %PC.i309
  %4341 = add i64 %4340, 6
  store i64 %4341, i64* %PC.i309
  %4342 = and i64 255, %4339
  %4343 = trunc i64 %4342 to i32
  store i64 %4342, i64* %RSI.i310, align 8
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4344, align 1
  %4345 = and i32 %4343, 255
  %4346 = call i32 @llvm.ctpop.i32(i32 %4345)
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = xor i8 %4348, 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4349, i8* %4350, align 1
  %4351 = icmp eq i32 %4343, 0
  %4352 = zext i1 %4351 to i8
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4352, i8* %4353, align 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4354, align 1
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4355, align 1
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4356, align 1
  store %struct.Memory* %loadMem_413c1b, %struct.Memory** %MEMORY
  %loadMem_413c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 7
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %EDX.i307 = bitcast %union.anon* %4362 to i32*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 9
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %ESI.i308 = bitcast %union.anon* %4365 to i32*
  %4366 = load i32, i32* %EDX.i307
  %4367 = zext i32 %4366 to i64
  %4368 = load i32, i32* %ESI.i308
  %4369 = zext i32 %4368 to i64
  %4370 = load i64, i64* %PC.i306
  %4371 = add i64 %4370, 2
  store i64 %4371, i64* %PC.i306
  %4372 = sub i32 %4366, %4368
  %4373 = icmp ult i32 %4366, %4368
  %4374 = zext i1 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4374, i8* %4375, align 1
  %4376 = and i32 %4372, 255
  %4377 = call i32 @llvm.ctpop.i32(i32 %4376)
  %4378 = trunc i32 %4377 to i8
  %4379 = and i8 %4378, 1
  %4380 = xor i8 %4379, 1
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4380, i8* %4381, align 1
  %4382 = xor i64 %4369, %4367
  %4383 = trunc i64 %4382 to i32
  %4384 = xor i32 %4383, %4372
  %4385 = lshr i32 %4384, 4
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4387, i8* %4388, align 1
  %4389 = icmp eq i32 %4372, 0
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4390, i8* %4391, align 1
  %4392 = lshr i32 %4372, 31
  %4393 = trunc i32 %4392 to i8
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4393, i8* %4394, align 1
  %4395 = lshr i32 %4366, 31
  %4396 = lshr i32 %4368, 31
  %4397 = xor i32 %4396, %4395
  %4398 = xor i32 %4392, %4395
  %4399 = add i32 %4398, %4397
  %4400 = icmp eq i32 %4399, 2
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4401, i8* %4402, align 1
  store %struct.Memory* %loadMem_413c21, %struct.Memory** %MEMORY
  %loadMem_413c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 1
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %4408 to i32*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 15
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %RBP.i305
  %4413 = sub i64 %4412, 5280
  %4414 = load i32, i32* %EAX.i304
  %4415 = zext i32 %4414 to i64
  %4416 = load i64, i64* %PC.i303
  %4417 = add i64 %4416, 6
  store i64 %4417, i64* %PC.i303
  %4418 = inttoptr i64 %4413 to i32*
  store i32 %4414, i32* %4418
  store %struct.Memory* %loadMem_413c23, %struct.Memory** %MEMORY
  %loadMem_413c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %PC.i302
  %4423 = add i64 %4422, 34
  %4424 = load i64, i64* %PC.i302
  %4425 = add i64 %4424, 6
  %4426 = load i64, i64* %PC.i302
  %4427 = add i64 %4426, 6
  store i64 %4427, i64* %PC.i302
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4429 = load i8, i8* %4428, align 1
  %4430 = icmp ne i8 %4429, 0
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4432 = load i8, i8* %4431, align 1
  %4433 = icmp ne i8 %4432, 0
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4435 = load i8, i8* %4434, align 1
  %4436 = icmp ne i8 %4435, 0
  %4437 = xor i1 %4433, %4436
  %4438 = or i1 %4430, %4437
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %BRANCH_TAKEN, align 1
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4441 = select i1 %4438, i64 %4423, i64 %4425
  store i64 %4441, i64* %4440, align 8
  store %struct.Memory* %loadMem_413c29, %struct.Memory** %MEMORY
  %loadBr_413c29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413c29 = icmp eq i8 %loadBr_413c29, 1
  br i1 %cmpBr_413c29, label %block_.L_413c4b, label %block_413c2f

block_413c2f:                                     ; preds = %block_.L_413ba6
  %loadMem_413c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 1
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 15
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %RBP.i301
  %4452 = sub i64 %4451, 36
  %4453 = load i64, i64* %PC.i299
  %4454 = add i64 %4453, 4
  store i64 %4454, i64* %PC.i299
  %4455 = inttoptr i64 %4452 to i32*
  %4456 = load i32, i32* %4455
  %4457 = sext i32 %4456 to i64
  store i64 %4457, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_413c2f, %struct.Memory** %MEMORY
  %loadMem_413c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 5
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 15
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RBP.i298
  %4471 = load i64, i64* %RAX.i296
  %4472 = mul i64 %4471, 4
  %4473 = add i64 %4470, -3168
  %4474 = add i64 %4473, %4472
  %4475 = load i64, i64* %PC.i295
  %4476 = add i64 %4475, 7
  store i64 %4476, i64* %PC.i295
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_413c33, %struct.Memory** %MEMORY
  %loadMem_413c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 5
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %RCX.i294
  %4487 = load i64, i64* %PC.i293
  %4488 = add i64 %4487, 6
  store i64 %4488, i64* %PC.i293
  %4489 = and i64 255, %4486
  %4490 = trunc i64 %4489 to i32
  store i64 %4489, i64* %RCX.i294, align 8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4491, align 1
  %4492 = and i32 %4490, 255
  %4493 = call i32 @llvm.ctpop.i32(i32 %4492)
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4496, i8* %4497, align 1
  %4498 = icmp eq i32 %4490, 0
  %4499 = zext i1 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4499, i8* %4500, align 1
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4501, align 1
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4502, align 1
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4503, align 1
  store %struct.Memory* %loadMem_413c3a, %struct.Memory** %MEMORY
  %loadMem_413c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 5
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %ECX.i291 = bitcast %union.anon* %4509 to i32*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 15
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %4512 to i64*
  %4513 = load i64, i64* %RBP.i292
  %4514 = sub i64 %4513, 5284
  %4515 = load i32, i32* %ECX.i291
  %4516 = zext i32 %4515 to i64
  %4517 = load i64, i64* %PC.i290
  %4518 = add i64 %4517, 6
  store i64 %4518, i64* %PC.i290
  %4519 = inttoptr i64 %4514 to i32*
  store i32 %4515, i32* %4519
  store %struct.Memory* %loadMem_413c40, %struct.Memory** %MEMORY
  %loadMem_413c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 33
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4522 to i64*
  %4523 = load i64, i64* %PC.i289
  %4524 = add i64 %4523, 28
  %4525 = load i64, i64* %PC.i289
  %4526 = add i64 %4525, 5
  store i64 %4526, i64* %PC.i289
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4524, i64* %4527, align 8
  store %struct.Memory* %loadMem_413c46, %struct.Memory** %MEMORY
  br label %block_.L_413c62

block_.L_413c4b:                                  ; preds = %block_.L_413ba6
  %loadMem_413c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 33
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 1
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 15
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %4536 to i64*
  %4537 = load i64, i64* %RBP.i288
  %4538 = sub i64 %4537, 40
  %4539 = load i64, i64* %PC.i286
  %4540 = add i64 %4539, 4
  store i64 %4540, i64* %PC.i286
  %4541 = inttoptr i64 %4538 to i32*
  %4542 = load i32, i32* %4541
  %4543 = sext i32 %4542 to i64
  store i64 %4543, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_413c4b, %struct.Memory** %MEMORY
  %loadMem_413c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 1
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 5
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 15
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %4555 to i64*
  %4556 = load i64, i64* %RBP.i285
  %4557 = load i64, i64* %RAX.i283
  %4558 = mul i64 %4557, 4
  %4559 = add i64 %4556, -3168
  %4560 = add i64 %4559, %4558
  %4561 = load i64, i64* %PC.i282
  %4562 = add i64 %4561, 7
  store i64 %4562, i64* %PC.i282
  %4563 = inttoptr i64 %4560 to i32*
  %4564 = load i32, i32* %4563
  %4565 = zext i32 %4564 to i64
  store i64 %4565, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_413c4f, %struct.Memory** %MEMORY
  %loadMem_413c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RCX.i281
  %4573 = load i64, i64* %PC.i280
  %4574 = add i64 %4573, 6
  store i64 %4574, i64* %PC.i280
  %4575 = and i64 255, %4572
  %4576 = trunc i64 %4575 to i32
  store i64 %4575, i64* %RCX.i281, align 8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4577, align 1
  %4578 = and i32 %4576, 255
  %4579 = call i32 @llvm.ctpop.i32(i32 %4578)
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  %4582 = xor i8 %4581, 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4582, i8* %4583, align 1
  %4584 = icmp eq i32 %4576, 0
  %4585 = zext i1 %4584 to i8
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4585, i8* %4586, align 1
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4587, align 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4588, align 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4589, align 1
  store %struct.Memory* %loadMem_413c56, %struct.Memory** %MEMORY
  %loadMem_413c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 5
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %ECX.i278 = bitcast %union.anon* %4595 to i32*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 15
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %4598 to i64*
  %4599 = load i64, i64* %RBP.i279
  %4600 = sub i64 %4599, 5284
  %4601 = load i32, i32* %ECX.i278
  %4602 = zext i32 %4601 to i64
  %4603 = load i64, i64* %PC.i277
  %4604 = add i64 %4603, 6
  store i64 %4604, i64* %PC.i277
  %4605 = inttoptr i64 %4600 to i32*
  store i32 %4601, i32* %4605
  store %struct.Memory* %loadMem_413c5c, %struct.Memory** %MEMORY
  br label %block_.L_413c62

block_.L_413c62:                                  ; preds = %block_.L_413c4b, %block_413c2f
  %loadMem_413c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 33
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 1
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 15
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %4614 to i64*
  %4615 = load i64, i64* %RBP.i276
  %4616 = sub i64 %4615, 5284
  %4617 = load i64, i64* %PC.i274
  %4618 = add i64 %4617, 6
  store i64 %4618, i64* %PC.i274
  %4619 = inttoptr i64 %4616 to i32*
  %4620 = load i32, i32* %4619
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_413c62, %struct.Memory** %MEMORY
  %loadMem_413c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 1
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %4627 to i64*
  %4628 = load i64, i64* %RAX.i273
  %4629 = load i64, i64* %PC.i272
  %4630 = add i64 %4629, 3
  store i64 %4630, i64* %PC.i272
  %4631 = trunc i64 %4628 to i32
  %4632 = add i32 1, %4631
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i273, align 8
  %4634 = icmp ult i32 %4632, %4631
  %4635 = icmp ult i32 %4632, 1
  %4636 = or i1 %4634, %4635
  %4637 = zext i1 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4637, i8* %4638, align 1
  %4639 = and i32 %4632, 255
  %4640 = call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4643, i8* %4644, align 1
  %4645 = xor i64 1, %4628
  %4646 = trunc i64 %4645 to i32
  %4647 = xor i32 %4646, %4632
  %4648 = lshr i32 %4647, 4
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4650, i8* %4651, align 1
  %4652 = icmp eq i32 %4632, 0
  %4653 = zext i1 %4652 to i8
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4653, i8* %4654, align 1
  %4655 = lshr i32 %4632, 31
  %4656 = trunc i32 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4656, i8* %4657, align 1
  %4658 = lshr i32 %4631, 31
  %4659 = xor i32 %4655, %4658
  %4660 = add i32 %4659, %4655
  %4661 = icmp eq i32 %4660, 2
  %4662 = zext i1 %4661 to i8
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4662, i8* %4663, align 1
  store %struct.Memory* %loadMem_413c68, %struct.Memory** %MEMORY
  %loadMem_413c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 33
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 5
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 15
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %RBP.i271
  %4674 = sub i64 %4673, 5280
  %4675 = load i64, i64* %PC.i269
  %4676 = add i64 %4675, 6
  store i64 %4676, i64* %PC.i269
  %4677 = inttoptr i64 %4674 to i32*
  %4678 = load i32, i32* %4677
  %4679 = zext i32 %4678 to i64
  store i64 %4679, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_413c6b, %struct.Memory** %MEMORY
  %loadMem_413c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 1
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %4685 to i32*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 5
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %RCX.i268
  %4690 = load i32, i32* %EAX.i267
  %4691 = zext i32 %4690 to i64
  %4692 = load i64, i64* %PC.i266
  %4693 = add i64 %4692, 2
  store i64 %4693, i64* %PC.i266
  %4694 = or i64 %4691, %4689
  %4695 = trunc i64 %4694 to i32
  %4696 = and i64 %4694, 4294967295
  store i64 %4696, i64* %RCX.i268, align 8
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4697, align 1
  %4698 = and i32 %4695, 255
  %4699 = call i32 @llvm.ctpop.i32(i32 %4698)
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  %4702 = xor i8 %4701, 1
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4702, i8* %4703, align 1
  %4704 = icmp eq i32 %4695, 0
  %4705 = zext i1 %4704 to i8
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4705, i8* %4706, align 1
  %4707 = lshr i32 %4695, 31
  %4708 = trunc i32 %4707 to i8
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4708, i8* %4709, align 1
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4710, align 1
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4711, align 1
  store %struct.Memory* %loadMem_413c71, %struct.Memory** %MEMORY
  %loadMem_413c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 7
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 15
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %4720 to i64*
  %4721 = load i64, i64* %RBP.i265
  %4722 = sub i64 %4721, 28
  %4723 = load i64, i64* %PC.i263
  %4724 = add i64 %4723, 4
  store i64 %4724, i64* %PC.i263
  %4725 = inttoptr i64 %4722 to i32*
  %4726 = load i32, i32* %4725
  %4727 = sext i32 %4726 to i64
  store i64 %4727, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_413c73, %struct.Memory** %MEMORY
  %loadMem_413c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 33
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 5
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %ECX.i260 = bitcast %union.anon* %4733 to i32*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 7
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 15
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RBP.i262
  %4741 = load i64, i64* %RDX.i261
  %4742 = mul i64 %4741, 4
  %4743 = add i64 %4740, -3168
  %4744 = add i64 %4743, %4742
  %4745 = load i32, i32* %ECX.i260
  %4746 = zext i32 %4745 to i64
  %4747 = load i64, i64* %PC.i259
  %4748 = add i64 %4747, 7
  store i64 %4748, i64* %PC.i259
  %4749 = inttoptr i64 %4744 to i32*
  store i32 %4745, i32* %4749
  store %struct.Memory* %loadMem_413c77, %struct.Memory** %MEMORY
  %loadMem_413c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 33
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4752 to i64*
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 7
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 15
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %4758 to i64*
  %4759 = load i64, i64* %RBP.i258
  %4760 = sub i64 %4759, 28
  %4761 = load i64, i64* %PC.i256
  %4762 = add i64 %4761, 4
  store i64 %4762, i64* %PC.i256
  %4763 = inttoptr i64 %4760 to i32*
  %4764 = load i32, i32* %4763
  %4765 = sext i32 %4764 to i64
  store i64 %4765, i64* %RDX.i257, align 8
  store %struct.Memory* %loadMem_413c7e, %struct.Memory** %MEMORY
  %loadMem_413c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 33
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 7
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 15
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %RBP.i255
  %4776 = load i64, i64* %RDX.i254
  %4777 = mul i64 %4776, 4
  %4778 = add i64 %4775, -5232
  %4779 = add i64 %4778, %4777
  %4780 = load i64, i64* %PC.i253
  %4781 = add i64 %4780, 11
  store i64 %4781, i64* %PC.i253
  %4782 = inttoptr i64 %4779 to i32*
  store i32 -1, i32* %4782
  store %struct.Memory* %loadMem_413c82, %struct.Memory** %MEMORY
  %loadMem_413c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RBP.i252
  %4793 = sub i64 %4792, 32
  %4794 = load i64, i64* %PC.i250
  %4795 = add i64 %4794, 3
  store i64 %4795, i64* %PC.i250
  %4796 = inttoptr i64 %4793 to i32*
  %4797 = load i32, i32* %4796
  %4798 = zext i32 %4797 to i64
  store i64 %4798, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_413c8d, %struct.Memory** %MEMORY
  %loadMem_413c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 1
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %RAX.i249
  %4806 = load i64, i64* %PC.i248
  %4807 = add i64 %4806, 3
  store i64 %4807, i64* %PC.i248
  %4808 = trunc i64 %4805 to i32
  %4809 = add i32 1, %4808
  %4810 = zext i32 %4809 to i64
  store i64 %4810, i64* %RAX.i249, align 8
  %4811 = icmp ult i32 %4809, %4808
  %4812 = icmp ult i32 %4809, 1
  %4813 = or i1 %4811, %4812
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4814, i8* %4815, align 1
  %4816 = and i32 %4809, 255
  %4817 = call i32 @llvm.ctpop.i32(i32 %4816)
  %4818 = trunc i32 %4817 to i8
  %4819 = and i8 %4818, 1
  %4820 = xor i8 %4819, 1
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4820, i8* %4821, align 1
  %4822 = xor i64 1, %4805
  %4823 = trunc i64 %4822 to i32
  %4824 = xor i32 %4823, %4809
  %4825 = lshr i32 %4824, 4
  %4826 = trunc i32 %4825 to i8
  %4827 = and i8 %4826, 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4827, i8* %4828, align 1
  %4829 = icmp eq i32 %4809, 0
  %4830 = zext i1 %4829 to i8
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4830, i8* %4831, align 1
  %4832 = lshr i32 %4809, 31
  %4833 = trunc i32 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4833, i8* %4834, align 1
  %4835 = lshr i32 %4808, 31
  %4836 = xor i32 %4832, %4835
  %4837 = add i32 %4836, %4832
  %4838 = icmp eq i32 %4837, 2
  %4839 = zext i1 %4838 to i8
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4839, i8* %4840, align 1
  store %struct.Memory* %loadMem_413c90, %struct.Memory** %MEMORY
  %loadMem_413c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 33
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4843 to i64*
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 1
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %4846 to i32*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 15
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %4849 to i64*
  %4850 = load i64, i64* %RBP.i247
  %4851 = sub i64 %4850, 32
  %4852 = load i32, i32* %EAX.i246
  %4853 = zext i32 %4852 to i64
  %4854 = load i64, i64* %PC.i245
  %4855 = add i64 %4854, 3
  store i64 %4855, i64* %PC.i245
  %4856 = inttoptr i64 %4851 to i32*
  store i32 %4852, i32* %4856
  store %struct.Memory* %loadMem_413c93, %struct.Memory** %MEMORY
  %loadMem_413c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 33
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 1
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 15
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %4865 to i64*
  %4866 = load i64, i64* %RBP.i244
  %4867 = sub i64 %4866, 28
  %4868 = load i64, i64* %PC.i242
  %4869 = add i64 %4868, 3
  store i64 %4869, i64* %PC.i242
  %4870 = inttoptr i64 %4867 to i32*
  %4871 = load i32, i32* %4870
  %4872 = zext i32 %4871 to i64
  store i64 %4872, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_413c96, %struct.Memory** %MEMORY
  %loadMem_413c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 7
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 15
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RBP.i241
  %4883 = sub i64 %4882, 32
  %4884 = load i64, i64* %PC.i239
  %4885 = add i64 %4884, 4
  store i64 %4885, i64* %PC.i239
  %4886 = inttoptr i64 %4883 to i32*
  %4887 = load i32, i32* %4886
  %4888 = sext i32 %4887 to i64
  store i64 %4888, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_413c99, %struct.Memory** %MEMORY
  %loadMem_413c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 1
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %4894 to i32*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 7
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %4897 to i64*
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 15
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %RBP.i238
  %4902 = load i64, i64* %RDX.i237
  %4903 = mul i64 %4902, 4
  %4904 = add i64 %4901, -1104
  %4905 = add i64 %4904, %4903
  %4906 = load i32, i32* %EAX.i236
  %4907 = zext i32 %4906 to i64
  %4908 = load i64, i64* %PC.i235
  %4909 = add i64 %4908, 7
  store i64 %4909, i64* %PC.i235
  %4910 = inttoptr i64 %4905 to i32*
  store i32 %4906, i32* %4910
  store %struct.Memory* %loadMem_413c9d, %struct.Memory** %MEMORY
  %loadMem_413ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 1
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 15
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RBP.i234
  %4921 = sub i64 %4920, 32
  %4922 = load i64, i64* %PC.i232
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i232
  %4924 = inttoptr i64 %4921 to i32*
  %4925 = load i32, i32* %4924
  %4926 = zext i32 %4925 to i64
  store i64 %4926, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_413ca4, %struct.Memory** %MEMORY
  %loadMem_413ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 1
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %4932 to i32*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 15
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %4935 to i64*
  %4936 = load i64, i64* %RBP.i231
  %4937 = sub i64 %4936, 5268
  %4938 = load i32, i32* %EAX.i230
  %4939 = zext i32 %4938 to i64
  %4940 = load i64, i64* %PC.i229
  %4941 = add i64 %4940, 6
  store i64 %4941, i64* %PC.i229
  %4942 = inttoptr i64 %4937 to i32*
  store i32 %4938, i32* %4942
  store %struct.Memory* %loadMem_413ca7, %struct.Memory** %MEMORY
  %loadMem_413cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 33
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4945 to i64*
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 7
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 15
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %RBP.i228
  %4953 = sub i64 %4952, 5268
  %4954 = load i64, i64* %PC.i226
  %4955 = add i64 %4954, 7
  store i64 %4955, i64* %PC.i226
  %4956 = inttoptr i64 %4953 to i32*
  %4957 = load i32, i32* %4956
  %4958 = sext i32 %4957 to i64
  store i64 %4958, i64* %RDX.i227, align 8
  store %struct.Memory* %loadMem_413cad, %struct.Memory** %MEMORY
  %loadMem_413cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 1
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 7
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 15
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %RBP.i225
  %4972 = load i64, i64* %RDX.i224
  %4973 = mul i64 %4972, 4
  %4974 = add i64 %4971, -1104
  %4975 = add i64 %4974, %4973
  %4976 = load i64, i64* %PC.i222
  %4977 = add i64 %4976, 7
  store i64 %4977, i64* %PC.i222
  %4978 = inttoptr i64 %4975 to i32*
  %4979 = load i32, i32* %4978
  %4980 = zext i32 %4979 to i64
  store i64 %4980, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_413cb4, %struct.Memory** %MEMORY
  %loadMem_413cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %4986 to i32*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i221
  %4991 = sub i64 %4990, 5272
  %4992 = load i32, i32* %EAX.i220
  %4993 = zext i32 %4992 to i64
  %4994 = load i64, i64* %PC.i219
  %4995 = add i64 %4994, 6
  store i64 %4995, i64* %PC.i219
  %4996 = inttoptr i64 %4991 to i32*
  store i32 %4992, i32* %4996
  store %struct.Memory* %loadMem_413cbb, %struct.Memory** %MEMORY
  br label %block_.L_413cc1

block_.L_413cc1:                                  ; preds = %block_413cf0, %block_.L_413c62
  %loadMem_413cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 1
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 15
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %RBP.i218
  %5007 = sub i64 %5006, 5272
  %5008 = load i64, i64* %PC.i216
  %5009 = add i64 %5008, 7
  store i64 %5009, i64* %PC.i216
  %5010 = inttoptr i64 %5007 to i32*
  %5011 = load i32, i32* %5010
  %5012 = sext i32 %5011 to i64
  store i64 %5012, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_413cc1, %struct.Memory** %MEMORY
  %loadMem_413cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 33
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5015 to i64*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 1
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 5
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 15
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %RBP.i215
  %5026 = load i64, i64* %RAX.i213
  %5027 = mul i64 %5026, 4
  %5028 = add i64 %5025, -3168
  %5029 = add i64 %5028, %5027
  %5030 = load i64, i64* %PC.i212
  %5031 = add i64 %5030, 7
  store i64 %5031, i64* %PC.i212
  %5032 = inttoptr i64 %5029 to i32*
  %5033 = load i32, i32* %5032
  %5034 = zext i32 %5033 to i64
  store i64 %5034, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_413cc8, %struct.Memory** %MEMORY
  %loadMem_413ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 33
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5037 to i64*
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 7
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 15
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %RBP.i211
  %5045 = sub i64 %5044, 5268
  %5046 = load i64, i64* %PC.i209
  %5047 = add i64 %5046, 6
  store i64 %5047, i64* %PC.i209
  %5048 = inttoptr i64 %5045 to i32*
  %5049 = load i32, i32* %5048
  %5050 = zext i32 %5049 to i64
  store i64 %5050, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_413ccf, %struct.Memory** %MEMORY
  %loadMem_413cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 33
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5053 to i64*
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 7
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %5056 to i64*
  %5057 = load i64, i64* %RDX.i208
  %5058 = load i64, i64* %PC.i207
  %5059 = add i64 %5058, 2
  store i64 %5059, i64* %PC.i207
  %5060 = shl i64 %5057, 32
  %5061 = ashr i64 %5060, 33
  %5062 = trunc i64 %5057 to i8
  %5063 = and i8 %5062, 1
  %5064 = trunc i64 %5061 to i32
  %5065 = and i64 %5061, 4294967295
  store i64 %5065, i64* %RDX.i208, align 8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5063, i8* %5066, align 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5068 = and i32 %5064, 255
  %5069 = call i32 @llvm.ctpop.i32(i32 %5068)
  %5070 = trunc i32 %5069 to i8
  %5071 = and i8 %5070, 1
  %5072 = xor i8 %5071, 1
  store i8 %5072, i8* %5067, align 1
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5073, align 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5075 = icmp eq i32 %5064, 0
  %5076 = zext i1 %5075 to i8
  store i8 %5076, i8* %5074, align 1
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5078 = lshr i32 %5064, 31
  %5079 = trunc i32 %5078 to i8
  store i8 %5079, i8* %5077, align 1
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5080, align 1
  store %struct.Memory* %loadMem_413cd5, %struct.Memory** %MEMORY
  %loadMem_413cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 33
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5083 to i64*
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 7
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %EDX.i205 = bitcast %union.anon* %5086 to i32*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %5089 to i64*
  %5090 = load i32, i32* %EDX.i205
  %5091 = zext i32 %5090 to i64
  %5092 = load i64, i64* %PC.i204
  %5093 = add i64 %5092, 3
  store i64 %5093, i64* %PC.i204
  %5094 = shl i64 %5091, 32
  %5095 = ashr exact i64 %5094, 32
  store i64 %5095, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_413cd8, %struct.Memory** %MEMORY
  %loadMem_413cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 1
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 15
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RBP.i203
  %5106 = load i64, i64* %RAX.i202
  %5107 = mul i64 %5106, 4
  %5108 = add i64 %5105, -1104
  %5109 = add i64 %5108, %5107
  %5110 = load i64, i64* %PC.i201
  %5111 = add i64 %5110, 8
  store i64 %5111, i64* %PC.i201
  %5112 = inttoptr i64 %5109 to i32*
  %5113 = load i32, i32* %5112
  %5114 = sext i32 %5113 to i64
  store i64 %5114, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_413cdb, %struct.Memory** %MEMORY
  %loadMem_413ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 5
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %ECX.i198 = bitcast %union.anon* %5120 to i32*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 1
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %5126 to i64*
  %5127 = load i32, i32* %ECX.i198
  %5128 = zext i32 %5127 to i64
  %5129 = load i64, i64* %RBP.i200
  %5130 = load i64, i64* %RAX.i199
  %5131 = mul i64 %5130, 4
  %5132 = add i64 %5129, -3168
  %5133 = add i64 %5132, %5131
  %5134 = load i64, i64* %PC.i197
  %5135 = add i64 %5134, 7
  store i64 %5135, i64* %PC.i197
  %5136 = inttoptr i64 %5133 to i32*
  %5137 = load i32, i32* %5136
  %5138 = sub i32 %5127, %5137
  %5139 = icmp ult i32 %5127, %5137
  %5140 = zext i1 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5140, i8* %5141, align 1
  %5142 = and i32 %5138, 255
  %5143 = call i32 @llvm.ctpop.i32(i32 %5142)
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  %5146 = xor i8 %5145, 1
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5146, i8* %5147, align 1
  %5148 = xor i32 %5137, %5127
  %5149 = xor i32 %5148, %5138
  %5150 = lshr i32 %5149, 4
  %5151 = trunc i32 %5150 to i8
  %5152 = and i8 %5151, 1
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5152, i8* %5153, align 1
  %5154 = icmp eq i32 %5138, 0
  %5155 = zext i1 %5154 to i8
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5155, i8* %5156, align 1
  %5157 = lshr i32 %5138, 31
  %5158 = trunc i32 %5157 to i8
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5158, i8* %5159, align 1
  %5160 = lshr i32 %5127, 31
  %5161 = lshr i32 %5137, 31
  %5162 = xor i32 %5161, %5160
  %5163 = xor i32 %5157, %5160
  %5164 = add i32 %5163, %5162
  %5165 = icmp eq i32 %5164, 2
  %5166 = zext i1 %5165 to i8
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5166, i8* %5167, align 1
  store %struct.Memory* %loadMem_413ce3, %struct.Memory** %MEMORY
  %loadMem_413cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5170 to i64*
  %5171 = load i64, i64* %PC.i196
  %5172 = add i64 %5171, 59
  %5173 = load i64, i64* %PC.i196
  %5174 = add i64 %5173, 6
  %5175 = load i64, i64* %PC.i196
  %5176 = add i64 %5175, 6
  store i64 %5176, i64* %PC.i196
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5178 = load i8, i8* %5177, align 1
  %5179 = icmp ne i8 %5178, 0
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5181 = load i8, i8* %5180, align 1
  %5182 = icmp ne i8 %5181, 0
  %5183 = xor i1 %5179, %5182
  %5184 = xor i1 %5183, true
  %5185 = zext i1 %5184 to i8
  store i8 %5185, i8* %BRANCH_TAKEN, align 1
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5187 = select i1 %5183, i64 %5174, i64 %5172
  store i64 %5187, i64* %5186, align 8
  store %struct.Memory* %loadMem_413cea, %struct.Memory** %MEMORY
  %loadBr_413cea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413cea = icmp eq i8 %loadBr_413cea, 1
  br i1 %cmpBr_413cea, label %block_.L_413d25, label %block_413cf0

block_413cf0:                                     ; preds = %block_.L_413cc1
  %loadMem_413cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 1
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %5193 to i64*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 15
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5196 to i64*
  %5197 = load i64, i64* %RBP.i195
  %5198 = sub i64 %5197, 5268
  %5199 = load i64, i64* %PC.i193
  %5200 = add i64 %5199, 6
  store i64 %5200, i64* %PC.i193
  %5201 = inttoptr i64 %5198 to i32*
  %5202 = load i32, i32* %5201
  %5203 = zext i32 %5202 to i64
  store i64 %5203, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_413cf0, %struct.Memory** %MEMORY
  %loadMem_413cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 1
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %5209 to i64*
  %5210 = load i64, i64* %RAX.i192
  %5211 = load i64, i64* %PC.i191
  %5212 = add i64 %5211, 2
  store i64 %5212, i64* %PC.i191
  %5213 = shl i64 %5210, 32
  %5214 = ashr i64 %5213, 33
  %5215 = trunc i64 %5210 to i8
  %5216 = and i8 %5215, 1
  %5217 = trunc i64 %5214 to i32
  %5218 = and i64 %5214, 4294967295
  store i64 %5218, i64* %RAX.i192, align 8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5216, i8* %5219, align 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5221 = and i32 %5217, 255
  %5222 = call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  store i8 %5225, i8* %5220, align 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5226, align 1
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5228 = icmp eq i32 %5217, 0
  %5229 = zext i1 %5228 to i8
  store i8 %5229, i8* %5227, align 1
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5231 = lshr i32 %5217, 31
  %5232 = trunc i32 %5231 to i8
  store i8 %5232, i8* %5230, align 1
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5233, align 1
  store %struct.Memory* %loadMem_413cf6, %struct.Memory** %MEMORY
  %loadMem_413cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 33
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 1
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %5239 to i32*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 5
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %5242 to i64*
  %5243 = load i32, i32* %EAX.i189
  %5244 = zext i32 %5243 to i64
  %5245 = load i64, i64* %PC.i188
  %5246 = add i64 %5245, 3
  store i64 %5246, i64* %PC.i188
  %5247 = shl i64 %5244, 32
  %5248 = ashr exact i64 %5247, 32
  store i64 %5248, i64* %RCX.i190, align 8
  store %struct.Memory* %loadMem_413cf9, %struct.Memory** %MEMORY
  %loadMem_413cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 1
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 5
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 15
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RBP.i187
  %5262 = load i64, i64* %RCX.i186
  %5263 = mul i64 %5262, 4
  %5264 = add i64 %5261, -1104
  %5265 = add i64 %5264, %5263
  %5266 = load i64, i64* %PC.i184
  %5267 = add i64 %5266, 7
  store i64 %5267, i64* %PC.i184
  %5268 = inttoptr i64 %5265 to i32*
  %5269 = load i32, i32* %5268
  %5270 = zext i32 %5269 to i64
  store i64 %5270, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_413cfc, %struct.Memory** %MEMORY
  %loadMem_413d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 33
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 5
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 15
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RBP.i183
  %5281 = sub i64 %5280, 5268
  %5282 = load i64, i64* %PC.i181
  %5283 = add i64 %5282, 7
  store i64 %5283, i64* %PC.i181
  %5284 = inttoptr i64 %5281 to i32*
  %5285 = load i32, i32* %5284
  %5286 = sext i32 %5285 to i64
  store i64 %5286, i64* %RCX.i182, align 8
  store %struct.Memory* %loadMem_413d03, %struct.Memory** %MEMORY
  %loadMem_413d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %EAX.i178 = bitcast %union.anon* %5292 to i32*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 5
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 15
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5298 to i64*
  %5299 = load i64, i64* %RBP.i180
  %5300 = load i64, i64* %RCX.i179
  %5301 = mul i64 %5300, 4
  %5302 = add i64 %5299, -1104
  %5303 = add i64 %5302, %5301
  %5304 = load i32, i32* %EAX.i178
  %5305 = zext i32 %5304 to i64
  %5306 = load i64, i64* %PC.i177
  %5307 = add i64 %5306, 7
  store i64 %5307, i64* %PC.i177
  %5308 = inttoptr i64 %5303 to i32*
  store i32 %5304, i32* %5308
  store %struct.Memory* %loadMem_413d0a, %struct.Memory** %MEMORY
  %loadMem_413d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 33
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 1
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 15
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %RBP.i176
  %5319 = sub i64 %5318, 5268
  %5320 = load i64, i64* %PC.i174
  %5321 = add i64 %5320, 6
  store i64 %5321, i64* %PC.i174
  %5322 = inttoptr i64 %5319 to i32*
  %5323 = load i32, i32* %5322
  %5324 = zext i32 %5323 to i64
  store i64 %5324, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_413d11, %struct.Memory** %MEMORY
  %loadMem_413d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 33
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5327 to i64*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 1
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %5330 to i64*
  %5331 = load i64, i64* %RAX.i173
  %5332 = load i64, i64* %PC.i172
  %5333 = add i64 %5332, 2
  store i64 %5333, i64* %PC.i172
  %5334 = shl i64 %5331, 32
  %5335 = ashr i64 %5334, 33
  %5336 = trunc i64 %5331 to i8
  %5337 = and i8 %5336, 1
  %5338 = trunc i64 %5335 to i32
  %5339 = and i64 %5335, 4294967295
  store i64 %5339, i64* %RAX.i173, align 8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5337, i8* %5340, align 1
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5342 = and i32 %5338, 255
  %5343 = call i32 @llvm.ctpop.i32(i32 %5342)
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = xor i8 %5345, 1
  store i8 %5346, i8* %5341, align 1
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5347, align 1
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5349 = icmp eq i32 %5338, 0
  %5350 = zext i1 %5349 to i8
  store i8 %5350, i8* %5348, align 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5352 = lshr i32 %5338, 31
  %5353 = trunc i32 %5352 to i8
  store i8 %5353, i8* %5351, align 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5354, align 1
  store %struct.Memory* %loadMem_413d17, %struct.Memory** %MEMORY
  %loadMem_413d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 1
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %5360 to i32*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 15
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %5363 to i64*
  %5364 = load i64, i64* %RBP.i171
  %5365 = sub i64 %5364, 5268
  %5366 = load i32, i32* %EAX.i170
  %5367 = zext i32 %5366 to i64
  %5368 = load i64, i64* %PC.i169
  %5369 = add i64 %5368, 6
  store i64 %5369, i64* %PC.i169
  %5370 = inttoptr i64 %5365 to i32*
  store i32 %5366, i32* %5370
  store %struct.Memory* %loadMem_413d1a, %struct.Memory** %MEMORY
  %loadMem_413d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 33
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %PC.i168
  %5375 = add i64 %5374, -95
  %5376 = load i64, i64* %PC.i168
  %5377 = add i64 %5376, 5
  store i64 %5377, i64* %PC.i168
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5375, i64* %5378, align 8
  store %struct.Memory* %loadMem_413d20, %struct.Memory** %MEMORY
  br label %block_.L_413cc1

block_.L_413d25:                                  ; preds = %block_.L_413cc1
  %loadMem_413d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 1
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 15
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %5387 to i64*
  %5388 = load i64, i64* %RBP.i167
  %5389 = sub i64 %5388, 5272
  %5390 = load i64, i64* %PC.i165
  %5391 = add i64 %5390, 6
  store i64 %5391, i64* %PC.i165
  %5392 = inttoptr i64 %5389 to i32*
  %5393 = load i32, i32* %5392
  %5394 = zext i32 %5393 to i64
  store i64 %5394, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_413d25, %struct.Memory** %MEMORY
  %loadMem_413d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 5
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 15
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RBP.i164
  %5405 = sub i64 %5404, 5268
  %5406 = load i64, i64* %PC.i162
  %5407 = add i64 %5406, 7
  store i64 %5407, i64* %PC.i162
  %5408 = inttoptr i64 %5405 to i32*
  %5409 = load i32, i32* %5408
  %5410 = sext i32 %5409 to i64
  store i64 %5410, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_413d2b, %struct.Memory** %MEMORY
  %loadMem_413d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 1
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %5416 to i32*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 5
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %5419 to i64*
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 15
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %5422 to i64*
  %5423 = load i64, i64* %RBP.i161
  %5424 = load i64, i64* %RCX.i160
  %5425 = mul i64 %5424, 4
  %5426 = add i64 %5423, -1104
  %5427 = add i64 %5426, %5425
  %5428 = load i32, i32* %EAX.i159
  %5429 = zext i32 %5428 to i64
  %5430 = load i64, i64* %PC.i158
  %5431 = add i64 %5430, 7
  store i64 %5431, i64* %PC.i158
  %5432 = inttoptr i64 %5427 to i32*
  store i32 %5428, i32* %5432
  store %struct.Memory* %loadMem_413d32, %struct.Memory** %MEMORY
  %loadMem_413d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %PC.i157
  %5437 = add i64 %5436, -987
  %5438 = load i64, i64* %PC.i157
  %5439 = add i64 %5438, 5
  store i64 %5439, i64* %PC.i157
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5437, i64* %5440, align 8
  store %struct.Memory* %loadMem_413d39, %struct.Memory** %MEMORY
  br label %block_.L_41395e

block_.L_413d3e:                                  ; preds = %block_.L_41395e
  %loadMem_413d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 33
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %RBP.i156
  %5448 = sub i64 %5447, 28
  %5449 = load i64, i64* %PC.i155
  %5450 = add i64 %5449, 7
  store i64 %5450, i64* %PC.i155
  %5451 = inttoptr i64 %5448 to i32*
  %5452 = load i32, i32* %5451
  %5453 = sub i32 %5452, 516
  %5454 = icmp ult i32 %5452, 516
  %5455 = zext i1 %5454 to i8
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5455, i8* %5456, align 1
  %5457 = and i32 %5453, 255
  %5458 = call i32 @llvm.ctpop.i32(i32 %5457)
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  %5461 = xor i8 %5460, 1
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5461, i8* %5462, align 1
  %5463 = xor i32 %5452, 516
  %5464 = xor i32 %5463, %5453
  %5465 = lshr i32 %5464, 4
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5467, i8* %5468, align 1
  %5469 = icmp eq i32 %5453, 0
  %5470 = zext i1 %5469 to i8
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5470, i8* %5471, align 1
  %5472 = lshr i32 %5453, 31
  %5473 = trunc i32 %5472 to i8
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5473, i8* %5474, align 1
  %5475 = lshr i32 %5452, 31
  %5476 = xor i32 %5472, %5475
  %5477 = add i32 %5476, %5475
  %5478 = icmp eq i32 %5477, 2
  %5479 = zext i1 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5479, i8* %5480, align 1
  store %struct.Memory* %loadMem_413d3e, %struct.Memory** %MEMORY
  %loadMem_413d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5483 to i64*
  %5484 = load i64, i64* %PC.i154
  %5485 = add i64 %5484, 16
  %5486 = load i64, i64* %PC.i154
  %5487 = add i64 %5486, 6
  %5488 = load i64, i64* %PC.i154
  %5489 = add i64 %5488, 6
  store i64 %5489, i64* %PC.i154
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5491 = load i8, i8* %5490, align 1
  %5492 = icmp ne i8 %5491, 0
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5494 = load i8, i8* %5493, align 1
  %5495 = icmp ne i8 %5494, 0
  %5496 = xor i1 %5492, %5495
  %5497 = zext i1 %5496 to i8
  store i8 %5497, i8* %BRANCH_TAKEN, align 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5499 = select i1 %5496, i64 %5485, i64 %5487
  store i64 %5499, i64* %5498, align 8
  store %struct.Memory* %loadMem_413d45, %struct.Memory** %MEMORY
  %loadBr_413d45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413d45 = icmp eq i8 %loadBr_413d45, 1
  br i1 %cmpBr_413d45, label %block_.L_413d55, label %block_413d4b

block_413d4b:                                     ; preds = %block_.L_413d3e
  %loadMem_413d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 33
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 11
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %PC.i153
  %5507 = add i64 %5506, 5
  store i64 %5507, i64* %PC.i153
  store i64 2002, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_413d4b, %struct.Memory** %MEMORY
  %loadMem1_413d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 33
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5510 to i64*
  %5511 = load i64, i64* %PC.i152
  %5512 = add i64 %5511, -60976
  %5513 = load i64, i64* %PC.i152
  %5514 = add i64 %5513, 5
  %5515 = load i64, i64* %PC.i152
  %5516 = add i64 %5515, 5
  store i64 %5516, i64* %PC.i152
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5518 = load i64, i64* %5517, align 8
  %5519 = add i64 %5518, -8
  %5520 = inttoptr i64 %5519 to i64*
  store i64 %5514, i64* %5520
  store i64 %5519, i64* %5517, align 8
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5512, i64* %5521, align 8
  store %struct.Memory* %loadMem1_413d50, %struct.Memory** %MEMORY
  %loadMem2_413d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413d50 = load i64, i64* %3
  %call2_413d50 = call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* %0, i64 %loadPC_413d50, %struct.Memory* %loadMem2_413d50)
  store %struct.Memory* %call2_413d50, %struct.Memory** %MEMORY
  br label %block_.L_413d55

block_.L_413d55:                                  ; preds = %block_413d4b, %block_.L_413d3e
  %loadMem_413d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 33
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5524 to i64*
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 15
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %5527 to i64*
  %5528 = load i64, i64* %RBP.i151
  %5529 = sub i64 %5528, 53
  %5530 = load i64, i64* %PC.i150
  %5531 = add i64 %5530, 4
  store i64 %5531, i64* %PC.i150
  %5532 = inttoptr i64 %5529 to i8*
  store i8 0, i8* %5532
  store %struct.Memory* %loadMem_413d55, %struct.Memory** %MEMORY
  %loadMem_413d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 15
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RBP.i149
  %5540 = sub i64 %5539, 44
  %5541 = load i64, i64* %PC.i148
  %5542 = add i64 %5541, 7
  store i64 %5542, i64* %PC.i148
  %5543 = inttoptr i64 %5540 to i32*
  store i32 1, i32* %5543
  store %struct.Memory* %loadMem_413d59, %struct.Memory** %MEMORY
  br label %block_.L_413d60

block_.L_413d60:                                  ; preds = %block_.L_413dd1, %block_.L_413d55
  %loadMem_413d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 1
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5549 to i64*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 15
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %5552 to i64*
  %5553 = load i64, i64* %RBP.i147
  %5554 = sub i64 %5553, 44
  %5555 = load i64, i64* %PC.i145
  %5556 = add i64 %5555, 3
  store i64 %5556, i64* %PC.i145
  %5557 = inttoptr i64 %5554 to i32*
  %5558 = load i32, i32* %5557
  %5559 = zext i32 %5558 to i64
  store i64 %5559, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_413d60, %struct.Memory** %MEMORY
  %loadMem_413d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 1
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %5565 to i32*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 15
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5568 to i64*
  %5569 = load i32, i32* %EAX.i143
  %5570 = zext i32 %5569 to i64
  %5571 = load i64, i64* %RBP.i144
  %5572 = sub i64 %5571, 20
  %5573 = load i64, i64* %PC.i142
  %5574 = add i64 %5573, 3
  store i64 %5574, i64* %PC.i142
  %5575 = inttoptr i64 %5572 to i32*
  %5576 = load i32, i32* %5575
  %5577 = sub i32 %5569, %5576
  %5578 = icmp ult i32 %5569, %5576
  %5579 = zext i1 %5578 to i8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5579, i8* %5580, align 1
  %5581 = and i32 %5577, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = xor i32 %5576, %5569
  %5588 = xor i32 %5587, %5577
  %5589 = lshr i32 %5588, 4
  %5590 = trunc i32 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5591, i8* %5592, align 1
  %5593 = icmp eq i32 %5577, 0
  %5594 = zext i1 %5593 to i8
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5594, i8* %5595, align 1
  %5596 = lshr i32 %5577, 31
  %5597 = trunc i32 %5596 to i8
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5597, i8* %5598, align 1
  %5599 = lshr i32 %5569, 31
  %5600 = lshr i32 %5576, 31
  %5601 = xor i32 %5600, %5599
  %5602 = xor i32 %5596, %5599
  %5603 = add i32 %5602, %5601
  %5604 = icmp eq i32 %5603, 2
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5605, i8* %5606, align 1
  store %struct.Memory* %loadMem_413d63, %struct.Memory** %MEMORY
  %loadMem_413d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5609 to i64*
  %5610 = load i64, i64* %PC.i141
  %5611 = add i64 %5610, 121
  %5612 = load i64, i64* %PC.i141
  %5613 = add i64 %5612, 6
  %5614 = load i64, i64* %PC.i141
  %5615 = add i64 %5614, 6
  store i64 %5615, i64* %PC.i141
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5617 = load i8, i8* %5616, align 1
  %5618 = icmp eq i8 %5617, 0
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5620 = load i8, i8* %5619, align 1
  %5621 = icmp ne i8 %5620, 0
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5623 = load i8, i8* %5622, align 1
  %5624 = icmp ne i8 %5623, 0
  %5625 = xor i1 %5621, %5624
  %5626 = xor i1 %5625, true
  %5627 = and i1 %5618, %5626
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %BRANCH_TAKEN, align 1
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5630 = select i1 %5627, i64 %5611, i64 %5613
  store i64 %5630, i64* %5629, align 8
  store %struct.Memory* %loadMem_413d66, %struct.Memory** %MEMORY
  %loadBr_413d66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413d66 = icmp eq i8 %loadBr_413d66, 1
  br i1 %cmpBr_413d66, label %block_.L_413ddf, label %block_413d6c

block_413d6c:                                     ; preds = %block_.L_413d60
  %loadMem_413d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5632 = getelementptr inbounds %struct.GPR, %struct.GPR* %5631, i32 0, i32 33
  %5633 = getelementptr inbounds %struct.Reg, %struct.Reg* %5632, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5633 to i64*
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5635 = getelementptr inbounds %struct.GPR, %struct.GPR* %5634, i32 0, i32 15
  %5636 = getelementptr inbounds %struct.Reg, %struct.Reg* %5635, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %5636 to i64*
  %5637 = load i64, i64* %RBP.i140
  %5638 = sub i64 %5637, 48
  %5639 = load i64, i64* %PC.i139
  %5640 = add i64 %5639, 7
  store i64 %5640, i64* %PC.i139
  %5641 = inttoptr i64 %5638 to i32*
  store i32 0, i32* %5641
  store %struct.Memory* %loadMem_413d6c, %struct.Memory** %MEMORY
  %loadMem_413d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 15
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %5650 to i64*
  %5651 = load i64, i64* %RBP.i138
  %5652 = sub i64 %5651, 44
  %5653 = load i64, i64* %PC.i136
  %5654 = add i64 %5653, 3
  store i64 %5654, i64* %PC.i136
  %5655 = inttoptr i64 %5652 to i32*
  %5656 = load i32, i32* %5655
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_413d73, %struct.Memory** %MEMORY
  %loadMem_413d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 1
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %5663 to i32*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 15
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %RBP.i135
  %5668 = sub i64 %5667, 52
  %5669 = load i32, i32* %EAX.i134
  %5670 = zext i32 %5669 to i64
  %5671 = load i64, i64* %PC.i133
  %5672 = add i64 %5671, 3
  store i64 %5672, i64* %PC.i133
  %5673 = inttoptr i64 %5668 to i32*
  store i32 %5669, i32* %5673
  store %struct.Memory* %loadMem_413d76, %struct.Memory** %MEMORY
  br label %block_.L_413d79

block_.L_413d79:                                  ; preds = %block_413d8b, %block_413d6c
  %loadMem_413d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 1
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 15
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5682 to i64*
  %5683 = load i64, i64* %RBP.i132
  %5684 = sub i64 %5683, 52
  %5685 = load i64, i64* %PC.i130
  %5686 = add i64 %5685, 4
  store i64 %5686, i64* %PC.i130
  %5687 = inttoptr i64 %5684 to i32*
  %5688 = load i32, i32* %5687
  %5689 = sext i32 %5688 to i64
  store i64 %5689, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_413d79, %struct.Memory** %MEMORY
  %loadMem_413d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 1
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 15
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5698 to i64*
  %5699 = load i64, i64* %RBP.i129
  %5700 = load i64, i64* %RAX.i128
  %5701 = mul i64 %5700, 4
  %5702 = add i64 %5699, -5232
  %5703 = add i64 %5702, %5701
  %5704 = load i64, i64* %PC.i127
  %5705 = add i64 %5704, 8
  store i64 %5705, i64* %PC.i127
  %5706 = inttoptr i64 %5703 to i32*
  %5707 = load i32, i32* %5706
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5708, align 1
  %5709 = and i32 %5707, 255
  %5710 = call i32 @llvm.ctpop.i32(i32 %5709)
  %5711 = trunc i32 %5710 to i8
  %5712 = and i8 %5711, 1
  %5713 = xor i8 %5712, 1
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5713, i8* %5714, align 1
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5715, align 1
  %5716 = icmp eq i32 %5707, 0
  %5717 = zext i1 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5717, i8* %5718, align 1
  %5719 = lshr i32 %5707, 31
  %5720 = trunc i32 %5719 to i8
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5720, i8* %5721, align 1
  %5722 = lshr i32 %5707, 31
  %5723 = xor i32 %5719, %5722
  %5724 = add i32 %5723, %5722
  %5725 = icmp eq i32 %5724, 2
  %5726 = zext i1 %5725 to i8
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5726, i8* %5727, align 1
  store %struct.Memory* %loadMem_413d7d, %struct.Memory** %MEMORY
  %loadMem_413d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 33
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %PC.i126
  %5732 = add i64 %5731, 34
  %5733 = load i64, i64* %PC.i126
  %5734 = add i64 %5733, 6
  %5735 = load i64, i64* %PC.i126
  %5736 = add i64 %5735, 6
  store i64 %5736, i64* %PC.i126
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5738 = load i8, i8* %5737, align 1
  %5739 = icmp ne i8 %5738, 0
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5741 = load i8, i8* %5740, align 1
  %5742 = icmp ne i8 %5741, 0
  %5743 = xor i1 %5739, %5742
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %BRANCH_TAKEN, align 1
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5746 = select i1 %5743, i64 %5732, i64 %5734
  store i64 %5746, i64* %5745, align 8
  store %struct.Memory* %loadMem_413d85, %struct.Memory** %MEMORY
  %loadBr_413d85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413d85 = icmp eq i8 %loadBr_413d85, 1
  br i1 %cmpBr_413d85, label %block_.L_413da7, label %block_413d8b

block_413d8b:                                     ; preds = %block_.L_413d79
  %loadMem_413d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 33
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5749 to i64*
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5751 = getelementptr inbounds %struct.GPR, %struct.GPR* %5750, i32 0, i32 1
  %5752 = getelementptr inbounds %struct.Reg, %struct.Reg* %5751, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5752 to i64*
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 15
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5755 to i64*
  %5756 = load i64, i64* %RBP.i125
  %5757 = sub i64 %5756, 52
  %5758 = load i64, i64* %PC.i123
  %5759 = add i64 %5758, 4
  store i64 %5759, i64* %PC.i123
  %5760 = inttoptr i64 %5757 to i32*
  %5761 = load i32, i32* %5760
  %5762 = sext i32 %5761 to i64
  store i64 %5762, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_413d8b, %struct.Memory** %MEMORY
  %loadMem_413d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 1
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 5
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %5771 to i64*
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 15
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5774 to i64*
  %5775 = load i64, i64* %RBP.i122
  %5776 = load i64, i64* %RAX.i120
  %5777 = mul i64 %5776, 4
  %5778 = add i64 %5775, -5232
  %5779 = add i64 %5778, %5777
  %5780 = load i64, i64* %PC.i119
  %5781 = add i64 %5780, 7
  store i64 %5781, i64* %PC.i119
  %5782 = inttoptr i64 %5779 to i32*
  %5783 = load i32, i32* %5782
  %5784 = zext i32 %5783 to i64
  store i64 %5784, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_413d8f, %struct.Memory** %MEMORY
  %loadMem_413d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5786 = getelementptr inbounds %struct.GPR, %struct.GPR* %5785, i32 0, i32 33
  %5787 = getelementptr inbounds %struct.Reg, %struct.Reg* %5786, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5787 to i64*
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 5
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %ECX.i117 = bitcast %union.anon* %5790 to i32*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 15
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %5793 to i64*
  %5794 = load i64, i64* %RBP.i118
  %5795 = sub i64 %5794, 52
  %5796 = load i32, i32* %ECX.i117
  %5797 = zext i32 %5796 to i64
  %5798 = load i64, i64* %PC.i116
  %5799 = add i64 %5798, 3
  store i64 %5799, i64* %PC.i116
  %5800 = inttoptr i64 %5795 to i32*
  store i32 %5796, i32* %5800
  store %struct.Memory* %loadMem_413d96, %struct.Memory** %MEMORY
  %loadMem_413d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 5
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 15
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %RBP.i115
  %5811 = sub i64 %5810, 48
  %5812 = load i64, i64* %PC.i113
  %5813 = add i64 %5812, 3
  store i64 %5813, i64* %PC.i113
  %5814 = inttoptr i64 %5811 to i32*
  %5815 = load i32, i32* %5814
  %5816 = zext i32 %5815 to i64
  store i64 %5816, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_413d99, %struct.Memory** %MEMORY
  %loadMem_413d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 5
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %RCX.i112
  %5824 = load i64, i64* %PC.i111
  %5825 = add i64 %5824, 3
  store i64 %5825, i64* %PC.i111
  %5826 = trunc i64 %5823 to i32
  %5827 = add i32 1, %5826
  %5828 = zext i32 %5827 to i64
  store i64 %5828, i64* %RCX.i112, align 8
  %5829 = icmp ult i32 %5827, %5826
  %5830 = icmp ult i32 %5827, 1
  %5831 = or i1 %5829, %5830
  %5832 = zext i1 %5831 to i8
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5832, i8* %5833, align 1
  %5834 = and i32 %5827, 255
  %5835 = call i32 @llvm.ctpop.i32(i32 %5834)
  %5836 = trunc i32 %5835 to i8
  %5837 = and i8 %5836, 1
  %5838 = xor i8 %5837, 1
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5838, i8* %5839, align 1
  %5840 = xor i64 1, %5823
  %5841 = trunc i64 %5840 to i32
  %5842 = xor i32 %5841, %5827
  %5843 = lshr i32 %5842, 4
  %5844 = trunc i32 %5843 to i8
  %5845 = and i8 %5844, 1
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5845, i8* %5846, align 1
  %5847 = icmp eq i32 %5827, 0
  %5848 = zext i1 %5847 to i8
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5848, i8* %5849, align 1
  %5850 = lshr i32 %5827, 31
  %5851 = trunc i32 %5850 to i8
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5851, i8* %5852, align 1
  %5853 = lshr i32 %5826, 31
  %5854 = xor i32 %5850, %5853
  %5855 = add i32 %5854, %5850
  %5856 = icmp eq i32 %5855, 2
  %5857 = zext i1 %5856 to i8
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5857, i8* %5858, align 1
  store %struct.Memory* %loadMem_413d9c, %struct.Memory** %MEMORY
  %loadMem_413d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5861 to i64*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 5
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5864 to i32*
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 15
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %5867 to i64*
  %5868 = load i64, i64* %RBP.i110
  %5869 = sub i64 %5868, 48
  %5870 = load i32, i32* %ECX.i
  %5871 = zext i32 %5870 to i64
  %5872 = load i64, i64* %PC.i109
  %5873 = add i64 %5872, 3
  store i64 %5873, i64* %PC.i109
  %5874 = inttoptr i64 %5869 to i32*
  store i32 %5870, i32* %5874
  store %struct.Memory* %loadMem_413d9f, %struct.Memory** %MEMORY
  %loadMem_413da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 33
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5877 to i64*
  %5878 = load i64, i64* %PC.i108
  %5879 = add i64 %5878, -41
  %5880 = load i64, i64* %PC.i108
  %5881 = add i64 %5880, 5
  store i64 %5881, i64* %PC.i108
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5879, i64* %5882, align 8
  store %struct.Memory* %loadMem_413da2, %struct.Memory** %MEMORY
  br label %block_.L_413d79

block_.L_413da7:                                  ; preds = %block_.L_413d79
  %loadMem_413da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 15
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %5891 to i64*
  %5892 = load i64, i64* %RBP.i107
  %5893 = sub i64 %5892, 48
  %5894 = load i64, i64* %PC.i105
  %5895 = add i64 %5894, 3
  store i64 %5895, i64* %PC.i105
  %5896 = inttoptr i64 %5893 to i32*
  %5897 = load i32, i32* %5896
  %5898 = zext i32 %5897 to i64
  store i64 %5898, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_413da7, %struct.Memory** %MEMORY
  %loadMem_413daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 1
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %5905 = bitcast %union.anon* %5904 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5905, i32 0, i32 0
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 5
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %5909 = bitcast %union.anon* %5908 to %struct.anon.2*
  %CL.i104 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5909, i32 0, i32 0
  %5910 = load i8, i8* %AL.i
  %5911 = zext i8 %5910 to i64
  %5912 = load i64, i64* %PC.i103
  %5913 = add i64 %5912, 2
  store i64 %5913, i64* %PC.i103
  store i8 %5910, i8* %CL.i104, align 1
  store %struct.Memory* %loadMem_413daa, %struct.Memory** %MEMORY
  %loadMem_413dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 33
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5916 to i64*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 7
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %5919 to i64*
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 15
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5922 to i64*
  %5923 = load i64, i64* %RBP.i102
  %5924 = sub i64 %5923, 8
  %5925 = load i64, i64* %PC.i100
  %5926 = add i64 %5925, 4
  store i64 %5926, i64* %PC.i100
  %5927 = inttoptr i64 %5924 to i64*
  %5928 = load i64, i64* %5927
  store i64 %5928, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_413dac, %struct.Memory** %MEMORY
  %loadMem_413db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 33
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 1
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 15
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5937 to i64*
  %5938 = load i64, i64* %RBP.i99
  %5939 = sub i64 %5938, 44
  %5940 = load i64, i64* %PC.i97
  %5941 = add i64 %5940, 3
  store i64 %5941, i64* %PC.i97
  %5942 = inttoptr i64 %5939 to i32*
  %5943 = load i32, i32* %5942
  %5944 = zext i32 %5943 to i64
  store i64 %5944, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_413db0, %struct.Memory** %MEMORY
  %loadMem_413db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 33
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 1
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %5950 to i64*
  %5951 = load i64, i64* %RAX.i96
  %5952 = load i64, i64* %PC.i95
  %5953 = add i64 %5952, 3
  store i64 %5953, i64* %PC.i95
  %5954 = trunc i64 %5951 to i32
  %5955 = sub i32 %5954, 1
  %5956 = zext i32 %5955 to i64
  store i64 %5956, i64* %RAX.i96, align 8
  %5957 = icmp ult i32 %5954, 1
  %5958 = zext i1 %5957 to i8
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5958, i8* %5959, align 1
  %5960 = and i32 %5955, 255
  %5961 = call i32 @llvm.ctpop.i32(i32 %5960)
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  %5964 = xor i8 %5963, 1
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5964, i8* %5965, align 1
  %5966 = xor i64 1, %5951
  %5967 = trunc i64 %5966 to i32
  %5968 = xor i32 %5967, %5955
  %5969 = lshr i32 %5968, 4
  %5970 = trunc i32 %5969 to i8
  %5971 = and i8 %5970, 1
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5971, i8* %5972, align 1
  %5973 = icmp eq i32 %5955, 0
  %5974 = zext i1 %5973 to i8
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5974, i8* %5975, align 1
  %5976 = lshr i32 %5955, 31
  %5977 = trunc i32 %5976 to i8
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5977, i8* %5978, align 1
  %5979 = lshr i32 %5954, 31
  %5980 = xor i32 %5976, %5979
  %5981 = add i32 %5980, %5979
  %5982 = icmp eq i32 %5981, 2
  %5983 = zext i1 %5982 to i8
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5983, i8* %5984, align 1
  store %struct.Memory* %loadMem_413db3, %struct.Memory** %MEMORY
  %loadMem_413db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 1
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %5990 to i32*
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 9
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %RSI.i94 = bitcast %union.anon* %5993 to i64*
  %5994 = load i32, i32* %EAX.i93
  %5995 = zext i32 %5994 to i64
  %5996 = load i64, i64* %PC.i92
  %5997 = add i64 %5996, 3
  store i64 %5997, i64* %PC.i92
  %5998 = shl i64 %5995, 32
  %5999 = ashr exact i64 %5998, 32
  store i64 %5999, i64* %RSI.i94, align 8
  store %struct.Memory* %loadMem_413db6, %struct.Memory** %MEMORY
  %loadMem_413db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 5
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %6006 = bitcast %union.anon* %6005 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6006, i32 0, i32 0
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 7
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %6009 to i64*
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 9
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %RSI.i91 = bitcast %union.anon* %6012 to i64*
  %6013 = load i64, i64* %RDX.i90
  %6014 = load i64, i64* %RSI.i91
  %6015 = add i64 %6014, %6013
  %6016 = load i8, i8* %CL.i
  %6017 = zext i8 %6016 to i64
  %6018 = load i64, i64* %PC.i89
  %6019 = add i64 %6018, 3
  store i64 %6019, i64* %PC.i89
  %6020 = inttoptr i64 %6015 to i8*
  store i8 %6016, i8* %6020
  store %struct.Memory* %loadMem_413db9, %struct.Memory** %MEMORY
  %loadMem_413dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 1
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 15
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %6029 to i64*
  %6030 = load i64, i64* %RBP.i88
  %6031 = sub i64 %6030, 48
  %6032 = load i64, i64* %PC.i86
  %6033 = add i64 %6032, 3
  store i64 %6033, i64* %PC.i86
  %6034 = inttoptr i64 %6031 to i32*
  %6035 = load i32, i32* %6034
  %6036 = zext i32 %6035 to i64
  store i64 %6036, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_413dbc, %struct.Memory** %MEMORY
  %loadMem_413dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 33
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 1
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %6042 to i32*
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 15
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %6045 to i64*
  %6046 = load i32, i32* %EAX.i84
  %6047 = zext i32 %6046 to i64
  %6048 = load i64, i64* %RBP.i85
  %6049 = sub i64 %6048, 24
  %6050 = load i64, i64* %PC.i83
  %6051 = add i64 %6050, 3
  store i64 %6051, i64* %PC.i83
  %6052 = inttoptr i64 %6049 to i32*
  %6053 = load i32, i32* %6052
  %6054 = sub i32 %6046, %6053
  %6055 = icmp ult i32 %6046, %6053
  %6056 = zext i1 %6055 to i8
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6056, i8* %6057, align 1
  %6058 = and i32 %6054, 255
  %6059 = call i32 @llvm.ctpop.i32(i32 %6058)
  %6060 = trunc i32 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = xor i8 %6061, 1
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6062, i8* %6063, align 1
  %6064 = xor i32 %6053, %6046
  %6065 = xor i32 %6064, %6054
  %6066 = lshr i32 %6065, 4
  %6067 = trunc i32 %6066 to i8
  %6068 = and i8 %6067, 1
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6068, i8* %6069, align 1
  %6070 = icmp eq i32 %6054, 0
  %6071 = zext i1 %6070 to i8
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6071, i8* %6072, align 1
  %6073 = lshr i32 %6054, 31
  %6074 = trunc i32 %6073 to i8
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6074, i8* %6075, align 1
  %6076 = lshr i32 %6046, 31
  %6077 = lshr i32 %6053, 31
  %6078 = xor i32 %6077, %6076
  %6079 = xor i32 %6073, %6076
  %6080 = add i32 %6079, %6078
  %6081 = icmp eq i32 %6080, 2
  %6082 = zext i1 %6081 to i8
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6082, i8* %6083, align 1
  store %struct.Memory* %loadMem_413dbf, %struct.Memory** %MEMORY
  %loadMem_413dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %PC.i82
  %6088 = add i64 %6087, 10
  %6089 = load i64, i64* %PC.i82
  %6090 = add i64 %6089, 6
  %6091 = load i64, i64* %PC.i82
  %6092 = add i64 %6091, 6
  store i64 %6092, i64* %PC.i82
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6094 = load i8, i8* %6093, align 1
  %6095 = icmp ne i8 %6094, 0
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6097 = load i8, i8* %6096, align 1
  %6098 = icmp ne i8 %6097, 0
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6100 = load i8, i8* %6099, align 1
  %6101 = icmp ne i8 %6100, 0
  %6102 = xor i1 %6098, %6101
  %6103 = or i1 %6095, %6102
  %6104 = zext i1 %6103 to i8
  store i8 %6104, i8* %BRANCH_TAKEN, align 1
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6106 = select i1 %6103, i64 %6088, i64 %6090
  store i64 %6106, i64* %6105, align 8
  store %struct.Memory* %loadMem_413dc2, %struct.Memory** %MEMORY
  %loadBr_413dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413dc2 = icmp eq i8 %loadBr_413dc2, 1
  br i1 %cmpBr_413dc2, label %block_.L_413dcc, label %block_413dc8

block_413dc8:                                     ; preds = %block_.L_413da7
  %loadMem_413dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 15
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %6112 to i64*
  %6113 = load i64, i64* %RBP.i81
  %6114 = sub i64 %6113, 53
  %6115 = load i64, i64* %PC.i80
  %6116 = add i64 %6115, 4
  store i64 %6116, i64* %PC.i80
  %6117 = inttoptr i64 %6114 to i8*
  store i8 1, i8* %6117
  store %struct.Memory* %loadMem_413dc8, %struct.Memory** %MEMORY
  br label %block_.L_413dcc

block_.L_413dcc:                                  ; preds = %block_413dc8, %block_.L_413da7
  %loadMem_413dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 33
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6120 to i64*
  %6121 = load i64, i64* %PC.i79
  %6122 = add i64 %6121, 5
  %6123 = load i64, i64* %PC.i79
  %6124 = add i64 %6123, 5
  store i64 %6124, i64* %PC.i79
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6122, i64* %6125, align 8
  store %struct.Memory* %loadMem_413dcc, %struct.Memory** %MEMORY
  br label %block_.L_413dd1

block_.L_413dd1:                                  ; preds = %block_.L_413dcc
  %loadMem_413dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 33
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 1
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 15
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %6134 to i64*
  %6135 = load i64, i64* %RBP.i78
  %6136 = sub i64 %6135, 44
  %6137 = load i64, i64* %PC.i76
  %6138 = add i64 %6137, 3
  store i64 %6138, i64* %PC.i76
  %6139 = inttoptr i64 %6136 to i32*
  %6140 = load i32, i32* %6139
  %6141 = zext i32 %6140 to i64
  store i64 %6141, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_413dd1, %struct.Memory** %MEMORY
  %loadMem_413dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 33
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6144 to i64*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 1
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %6147 to i64*
  %6148 = load i64, i64* %RAX.i75
  %6149 = load i64, i64* %PC.i74
  %6150 = add i64 %6149, 3
  store i64 %6150, i64* %PC.i74
  %6151 = trunc i64 %6148 to i32
  %6152 = add i32 1, %6151
  %6153 = zext i32 %6152 to i64
  store i64 %6153, i64* %RAX.i75, align 8
  %6154 = icmp ult i32 %6152, %6151
  %6155 = icmp ult i32 %6152, 1
  %6156 = or i1 %6154, %6155
  %6157 = zext i1 %6156 to i8
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6157, i8* %6158, align 1
  %6159 = and i32 %6152, 255
  %6160 = call i32 @llvm.ctpop.i32(i32 %6159)
  %6161 = trunc i32 %6160 to i8
  %6162 = and i8 %6161, 1
  %6163 = xor i8 %6162, 1
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6163, i8* %6164, align 1
  %6165 = xor i64 1, %6148
  %6166 = trunc i64 %6165 to i32
  %6167 = xor i32 %6166, %6152
  %6168 = lshr i32 %6167, 4
  %6169 = trunc i32 %6168 to i8
  %6170 = and i8 %6169, 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6170, i8* %6171, align 1
  %6172 = icmp eq i32 %6152, 0
  %6173 = zext i1 %6172 to i8
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6173, i8* %6174, align 1
  %6175 = lshr i32 %6152, 31
  %6176 = trunc i32 %6175 to i8
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6176, i8* %6177, align 1
  %6178 = lshr i32 %6151, 31
  %6179 = xor i32 %6175, %6178
  %6180 = add i32 %6179, %6175
  %6181 = icmp eq i32 %6180, 2
  %6182 = zext i1 %6181 to i8
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6182, i8* %6183, align 1
  store %struct.Memory* %loadMem_413dd4, %struct.Memory** %MEMORY
  %loadMem_413dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 33
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6186 to i64*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 1
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %6189 to i32*
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 15
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %6192 to i64*
  %6193 = load i64, i64* %RBP.i73
  %6194 = sub i64 %6193, 44
  %6195 = load i32, i32* %EAX.i72
  %6196 = zext i32 %6195 to i64
  %6197 = load i64, i64* %PC.i71
  %6198 = add i64 %6197, 3
  store i64 %6198, i64* %PC.i71
  %6199 = inttoptr i64 %6194 to i32*
  store i32 %6195, i32* %6199
  store %struct.Memory* %loadMem_413dd7, %struct.Memory** %MEMORY
  %loadMem_413dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 33
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6202 to i64*
  %6203 = load i64, i64* %PC.i70
  %6204 = add i64 %6203, -122
  %6205 = load i64, i64* %PC.i70
  %6206 = add i64 %6205, 5
  store i64 %6206, i64* %PC.i70
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6204, i64* %6207, align 8
  store %struct.Memory* %loadMem_413dda, %struct.Memory** %MEMORY
  br label %block_.L_413d60

block_.L_413ddf:                                  ; preds = %block_.L_413d60
  %loadMem_413ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 15
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %RBP.i69
  %6215 = sub i64 %6214, 53
  %6216 = load i64, i64* %PC.i68
  %6217 = add i64 %6216, 4
  store i64 %6217, i64* %PC.i68
  %6218 = inttoptr i64 %6215 to i8*
  %6219 = load i8, i8* %6218
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6220, align 1
  %6221 = zext i8 %6219 to i32
  %6222 = call i32 @llvm.ctpop.i32(i32 %6221)
  %6223 = trunc i32 %6222 to i8
  %6224 = and i8 %6223, 1
  %6225 = xor i8 %6224, 1
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6225, i8* %6226, align 1
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6227, align 1
  %6228 = icmp eq i8 %6219, 0
  %6229 = zext i1 %6228 to i8
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6229, i8* %6230, align 1
  %6231 = lshr i8 %6219, 7
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6231, i8* %6232, align 1
  %6233 = lshr i8 %6219, 7
  %6234 = xor i8 %6231, %6233
  %6235 = add i8 %6234, %6233
  %6236 = icmp eq i8 %6235, 2
  %6237 = zext i1 %6236 to i8
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6237, i8* %6238, align 1
  store %struct.Memory* %loadMem_413ddf, %struct.Memory** %MEMORY
  %loadMem_413de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 33
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %PC.i67
  %6243 = add i64 %6242, 11
  %6244 = load i64, i64* %PC.i67
  %6245 = add i64 %6244, 6
  %6246 = load i64, i64* %PC.i67
  %6247 = add i64 %6246, 6
  store i64 %6247, i64* %PC.i67
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6249 = load i8, i8* %6248, align 1
  %6250 = icmp eq i8 %6249, 0
  %6251 = zext i1 %6250 to i8
  store i8 %6251, i8* %BRANCH_TAKEN, align 1
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6253 = select i1 %6250, i64 %6243, i64 %6245
  store i64 %6253, i64* %6252, align 8
  store %struct.Memory* %loadMem_413de3, %struct.Memory** %MEMORY
  %loadBr_413de3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413de3 = icmp eq i8 %loadBr_413de3, 1
  br i1 %cmpBr_413de3, label %block_.L_413dee, label %block_413de9

block_413de9:                                     ; preds = %block_.L_413ddf
  %loadMem_413de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 33
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %PC.i66
  %6258 = add i64 %6257, 108
  %6259 = load i64, i64* %PC.i66
  %6260 = add i64 %6259, 5
  store i64 %6260, i64* %PC.i66
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6258, i64* %6261, align 8
  store %struct.Memory* %loadMem_413de9, %struct.Memory** %MEMORY
  br label %block_.L_413e55

block_.L_413dee:                                  ; preds = %block_.L_413ddf
  %loadMem_413dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 33
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 15
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %6267 to i64*
  %6268 = load i64, i64* %RBP.i65
  %6269 = sub i64 %6268, 44
  %6270 = load i64, i64* %PC.i64
  %6271 = add i64 %6270, 7
  store i64 %6271, i64* %PC.i64
  %6272 = inttoptr i64 %6269 to i32*
  store i32 1, i32* %6272
  store %struct.Memory* %loadMem_413dee, %struct.Memory** %MEMORY
  br label %block_.L_413df5

block_.L_413df5:                                  ; preds = %routine_idivl__esi.exit, %block_.L_413dee
  %loadMem_413df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 33
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6275 to i64*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 1
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 15
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6281 to i64*
  %6282 = load i64, i64* %RBP.i63
  %6283 = sub i64 %6282, 44
  %6284 = load i64, i64* %PC.i61
  %6285 = add i64 %6284, 3
  store i64 %6285, i64* %PC.i61
  %6286 = inttoptr i64 %6283 to i32*
  %6287 = load i32, i32* %6286
  %6288 = zext i32 %6287 to i64
  store i64 %6288, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_413df5, %struct.Memory** %MEMORY
  %loadMem_413df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 33
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6291 to i64*
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 1
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %6294 to i32*
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 15
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %6297 to i64*
  %6298 = load i32, i32* %EAX.i59
  %6299 = zext i32 %6298 to i64
  %6300 = load i64, i64* %RBP.i60
  %6301 = sub i64 %6300, 20
  %6302 = load i64, i64* %PC.i58
  %6303 = add i64 %6302, 3
  store i64 %6303, i64* %PC.i58
  %6304 = inttoptr i64 %6301 to i32*
  %6305 = load i32, i32* %6304
  %6306 = sub i32 %6298, %6305
  %6307 = icmp ult i32 %6298, %6305
  %6308 = zext i1 %6307 to i8
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6308, i8* %6309, align 1
  %6310 = and i32 %6306, 255
  %6311 = call i32 @llvm.ctpop.i32(i32 %6310)
  %6312 = trunc i32 %6311 to i8
  %6313 = and i8 %6312, 1
  %6314 = xor i8 %6313, 1
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6314, i8* %6315, align 1
  %6316 = xor i32 %6305, %6298
  %6317 = xor i32 %6316, %6306
  %6318 = lshr i32 %6317, 4
  %6319 = trunc i32 %6318 to i8
  %6320 = and i8 %6319, 1
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6320, i8* %6321, align 1
  %6322 = icmp eq i32 %6306, 0
  %6323 = zext i1 %6322 to i8
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6323, i8* %6324, align 1
  %6325 = lshr i32 %6306, 31
  %6326 = trunc i32 %6325 to i8
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6326, i8* %6327, align 1
  %6328 = lshr i32 %6298, 31
  %6329 = lshr i32 %6305, 31
  %6330 = xor i32 %6329, %6328
  %6331 = xor i32 %6325, %6328
  %6332 = add i32 %6331, %6330
  %6333 = icmp eq i32 %6332, 2
  %6334 = zext i1 %6333 to i8
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6334, i8* %6335, align 1
  store %struct.Memory* %loadMem_413df8, %struct.Memory** %MEMORY
  %loadMem_413dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 33
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6338 to i64*
  %6339 = load i64, i64* %PC.i57
  %6340 = add i64 %6339, 85
  %6341 = load i64, i64* %PC.i57
  %6342 = add i64 %6341, 6
  %6343 = load i64, i64* %PC.i57
  %6344 = add i64 %6343, 6
  store i64 %6344, i64* %PC.i57
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6346 = load i8, i8* %6345, align 1
  %6347 = icmp eq i8 %6346, 0
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6349 = load i8, i8* %6348, align 1
  %6350 = icmp ne i8 %6349, 0
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6352 = load i8, i8* %6351, align 1
  %6353 = icmp ne i8 %6352, 0
  %6354 = xor i1 %6350, %6353
  %6355 = xor i1 %6354, true
  %6356 = and i1 %6347, %6355
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %BRANCH_TAKEN, align 1
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6359 = select i1 %6356, i64 %6340, i64 %6342
  store i64 %6359, i64* %6358, align 8
  store %struct.Memory* %loadMem_413dfb, %struct.Memory** %MEMORY
  %loadBr_413dfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413dfb = icmp eq i8 %loadBr_413dfb, 1
  br i1 %cmpBr_413dfb, label %block_.L_413e50, label %block_413e01

block_413e01:                                     ; preds = %block_.L_413df5
  %loadMem_413e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 1
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %6365 to i64*
  %6366 = load i64, i64* %PC.i55
  %6367 = add i64 %6366, 5
  store i64 %6367, i64* %PC.i55
  store i64 2, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_413e01, %struct.Memory** %MEMORY
  %loadMem_413e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 33
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6370 to i64*
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 5
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 15
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %6376 to i64*
  %6377 = load i64, i64* %RBP.i54
  %6378 = sub i64 %6377, 44
  %6379 = load i64, i64* %PC.i52
  %6380 = add i64 %6379, 4
  store i64 %6380, i64* %PC.i52
  %6381 = inttoptr i64 %6378 to i32*
  %6382 = load i32, i32* %6381
  %6383 = sext i32 %6382 to i64
  store i64 %6383, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_413e06, %struct.Memory** %MEMORY
  %loadMem_413e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 33
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 5
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %6389 to i64*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 7
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %6392 to i64*
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 15
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6395 to i64*
  %6396 = load i64, i64* %RBP.i51
  %6397 = load i64, i64* %RCX.i49
  %6398 = mul i64 %6397, 4
  %6399 = add i64 %6396, -3168
  %6400 = add i64 %6399, %6398
  %6401 = load i64, i64* %PC.i48
  %6402 = add i64 %6401, 7
  store i64 %6402, i64* %PC.i48
  %6403 = inttoptr i64 %6400 to i32*
  %6404 = load i32, i32* %6403
  %6405 = zext i32 %6404 to i64
  store i64 %6405, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_413e0a, %struct.Memory** %MEMORY
  %loadMem_413e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 7
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %6411 to i64*
  %6412 = load i64, i64* %RDX.i47
  %6413 = load i64, i64* %PC.i46
  %6414 = add i64 %6413, 3
  store i64 %6414, i64* %PC.i46
  %6415 = shl i64 %6412, 32
  %6416 = ashr exact i64 %6415, 32
  %6417 = ashr i64 %6416, 7
  %6418 = lshr i64 %6417, 1
  %6419 = trunc i64 %6417 to i8
  %6420 = and i8 %6419, 1
  %6421 = trunc i64 %6418 to i32
  %6422 = and i64 %6418, 4294967295
  store i64 %6422, i64* %RDX.i47, align 8
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6420, i8* %6423, align 1
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6425 = and i32 %6421, 255
  %6426 = call i32 @llvm.ctpop.i32(i32 %6425)
  %6427 = trunc i32 %6426 to i8
  %6428 = and i8 %6427, 1
  %6429 = xor i8 %6428, 1
  store i8 %6429, i8* %6424, align 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6430, align 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6432 = icmp eq i32 %6421, 0
  %6433 = zext i1 %6432 to i8
  store i8 %6433, i8* %6431, align 1
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6435 = lshr i32 %6421, 31
  %6436 = trunc i32 %6435 to i8
  store i8 %6436, i8* %6434, align 1
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6437, align 1
  store %struct.Memory* %loadMem_413e11, %struct.Memory** %MEMORY
  %loadMem_413e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 33
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6440 to i64*
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6442 = getelementptr inbounds %struct.GPR, %struct.GPR* %6441, i32 0, i32 7
  %6443 = getelementptr inbounds %struct.Reg, %struct.Reg* %6442, i32 0, i32 0
  %EDX.i44 = bitcast %union.anon* %6443 to i32*
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 15
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6446 to i64*
  %6447 = load i64, i64* %RBP.i45
  %6448 = sub i64 %6447, 48
  %6449 = load i32, i32* %EDX.i44
  %6450 = zext i32 %6449 to i64
  %6451 = load i64, i64* %PC.i43
  %6452 = add i64 %6451, 3
  store i64 %6452, i64* %PC.i43
  %6453 = inttoptr i64 %6448 to i32*
  store i32 %6449, i32* %6453
  store %struct.Memory* %loadMem_413e14, %struct.Memory** %MEMORY
  %loadMem_413e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 33
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6456 to i64*
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6458 = getelementptr inbounds %struct.GPR, %struct.GPR* %6457, i32 0, i32 7
  %6459 = getelementptr inbounds %struct.Reg, %struct.Reg* %6458, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6459 to i64*
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 15
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %6462 to i64*
  %6463 = load i64, i64* %RBP.i42
  %6464 = sub i64 %6463, 48
  %6465 = load i64, i64* %PC.i41
  %6466 = add i64 %6465, 3
  store i64 %6466, i64* %PC.i41
  %6467 = inttoptr i64 %6464 to i32*
  %6468 = load i32, i32* %6467
  %6469 = zext i32 %6468 to i64
  store i64 %6469, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_413e17, %struct.Memory** %MEMORY
  %loadMem_413e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 1
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %6475 to i32*
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 15
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %RBP.i40
  %6480 = sub i64 %6479, 5288
  %6481 = load i32, i32* %EAX.i39
  %6482 = zext i32 %6481 to i64
  %6483 = load i64, i64* %PC.i38
  %6484 = add i64 %6483, 6
  store i64 %6484, i64* %PC.i38
  %6485 = inttoptr i64 %6480 to i32*
  store i32 %6481, i32* %6485
  store %struct.Memory* %loadMem_413e1a, %struct.Memory** %MEMORY
  %loadMem_413e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 33
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 7
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6491 to i32*
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 1
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %6494 to i64*
  %6495 = load i32, i32* %EDX.i
  %6496 = zext i32 %6495 to i64
  %6497 = load i64, i64* %PC.i36
  %6498 = add i64 %6497, 2
  store i64 %6498, i64* %PC.i36
  %6499 = and i64 %6496, 4294967295
  store i64 %6499, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_413e20, %struct.Memory** %MEMORY
  %loadMem_413e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6502 to i64*
  %6503 = load i64, i64* %PC.i35
  %6504 = add i64 %6503, 1
  store i64 %6504, i64* %PC.i35
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6507 = bitcast %union.anon* %6506 to i32*
  %6508 = load i32, i32* %6507, align 8
  %6509 = sext i32 %6508 to i64
  %6510 = lshr i64 %6509, 32
  store i64 %6510, i64* %6505, align 8
  store %struct.Memory* %loadMem_413e22, %struct.Memory** %MEMORY
  %loadMem_413e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 33
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %6513 to i64*
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 9
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6516 to i64*
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 15
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6519 to i64*
  %6520 = load i64, i64* %RBP.i34
  %6521 = sub i64 %6520, 5288
  %6522 = load i64, i64* %PC.i33
  %6523 = add i64 %6522, 6
  store i64 %6523, i64* %PC.i33
  %6524 = inttoptr i64 %6521 to i32*
  %6525 = load i32, i32* %6524
  %6526 = zext i32 %6525 to i64
  store i64 %6526, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_413e23, %struct.Memory** %MEMORY
  %loadMem_413e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 33
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 9
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6532 to i32*
  %6533 = load i32, i32* %ESI.i
  %6534 = zext i32 %6533 to i64
  %6535 = load i64, i64* %PC.i29
  %6536 = add i64 %6535, 2
  store i64 %6536, i64* %PC.i29
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6538 = bitcast %union.anon* %6537 to i32*
  %6539 = load i32, i32* %6538, align 8
  %6540 = zext i32 %6539 to i64
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6542 = bitcast %union.anon* %6541 to i32*
  %6543 = load i32, i32* %6542, align 8
  %6544 = zext i32 %6543 to i64
  %6545 = shl i64 %6534, 32
  %6546 = ashr exact i64 %6545, 32
  %6547 = shl i64 %6544, 32
  %6548 = or i64 %6547, %6540
  %6549 = sdiv i64 %6548, %6546
  %6550 = shl i64 %6549, 32
  %6551 = ashr exact i64 %6550, 32
  %6552 = icmp eq i64 %6549, %6551
  br i1 %6552, label %6557, label %6553

; <label>:6553:                                   ; preds = %block_413e01
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6555 = load i64, i64* %6554, align 8
  %6556 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6555, %struct.Memory* %loadMem_413e29)
  br label %routine_idivl__esi.exit

; <label>:6557:                                   ; preds = %block_413e01
  %6558 = srem i64 %6548, %6546
  %6559 = getelementptr inbounds %union.anon, %union.anon* %6537, i64 0, i32 0
  %6560 = and i64 %6549, 4294967295
  store i64 %6560, i64* %6559, align 8
  %6561 = getelementptr inbounds %union.anon, %union.anon* %6541, i64 0, i32 0
  %6562 = and i64 %6558, 4294967295
  store i64 %6562, i64* %6561, align 8
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6563, align 1
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6564, align 1
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6565, align 1
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6566, align 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6567, align 1
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6568, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %6553, %6557
  %6569 = phi %struct.Memory* [ %6556, %6553 ], [ %loadMem_413e29, %6557 ]
  store %struct.Memory* %6569, %struct.Memory** %MEMORY
  %loadMem_413e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 33
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 1
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %6575 to i64*
  %6576 = load i64, i64* %RAX.i28
  %6577 = load i64, i64* %PC.i27
  %6578 = add i64 %6577, 3
  store i64 %6578, i64* %PC.i27
  %6579 = trunc i64 %6576 to i32
  %6580 = add i32 1, %6579
  %6581 = zext i32 %6580 to i64
  store i64 %6581, i64* %RAX.i28, align 8
  %6582 = icmp ult i32 %6580, %6579
  %6583 = icmp ult i32 %6580, 1
  %6584 = or i1 %6582, %6583
  %6585 = zext i1 %6584 to i8
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6585, i8* %6586, align 1
  %6587 = and i32 %6580, 255
  %6588 = call i32 @llvm.ctpop.i32(i32 %6587)
  %6589 = trunc i32 %6588 to i8
  %6590 = and i8 %6589, 1
  %6591 = xor i8 %6590, 1
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6591, i8* %6592, align 1
  %6593 = xor i64 1, %6576
  %6594 = trunc i64 %6593 to i32
  %6595 = xor i32 %6594, %6580
  %6596 = lshr i32 %6595, 4
  %6597 = trunc i32 %6596 to i8
  %6598 = and i8 %6597, 1
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6598, i8* %6599, align 1
  %6600 = icmp eq i32 %6580, 0
  %6601 = zext i1 %6600 to i8
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6601, i8* %6602, align 1
  %6603 = lshr i32 %6580, 31
  %6604 = trunc i32 %6603 to i8
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6604, i8* %6605, align 1
  %6606 = lshr i32 %6579, 31
  %6607 = xor i32 %6603, %6606
  %6608 = add i32 %6607, %6603
  %6609 = icmp eq i32 %6608, 2
  %6610 = zext i1 %6609 to i8
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6610, i8* %6611, align 1
  store %struct.Memory* %loadMem_413e2b, %struct.Memory** %MEMORY
  %loadMem_413e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 33
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 1
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %6617 to i32*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 15
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6620 to i64*
  %6621 = load i64, i64* %RBP.i26
  %6622 = sub i64 %6621, 48
  %6623 = load i32, i32* %EAX.i25
  %6624 = zext i32 %6623 to i64
  %6625 = load i64, i64* %PC.i24
  %6626 = add i64 %6625, 3
  store i64 %6626, i64* %PC.i24
  %6627 = inttoptr i64 %6622 to i32*
  store i32 %6623, i32* %6627
  store %struct.Memory* %loadMem_413e2e, %struct.Memory** %MEMORY
  %loadMem_413e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 33
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 1
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 15
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %RBP.i23
  %6638 = sub i64 %6637, 48
  %6639 = load i64, i64* %PC.i21
  %6640 = add i64 %6639, 3
  store i64 %6640, i64* %PC.i21
  %6641 = inttoptr i64 %6638 to i32*
  %6642 = load i32, i32* %6641
  %6643 = zext i32 %6642 to i64
  store i64 %6643, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_413e31, %struct.Memory** %MEMORY
  %loadMem_413e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 1
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %6649 to i64*
  %6650 = load i64, i64* %RAX.i20
  %6651 = load i64, i64* %PC.i19
  %6652 = add i64 %6651, 3
  store i64 %6652, i64* %PC.i19
  %6653 = and i64 %6650, 4294967295
  %6654 = shl i64 %6653, 7
  %6655 = trunc i64 %6654 to i32
  %6656 = icmp slt i32 %6655, 0
  %6657 = shl i32 %6655, 1
  %6658 = zext i32 %6657 to i64
  store i64 %6658, i64* %RAX.i20, align 8
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6660 = zext i1 %6656 to i8
  store i8 %6660, i8* %6659, align 1
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6661, align 1
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6662, align 1
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6664 = icmp eq i32 %6657, 0
  %6665 = zext i1 %6664 to i8
  store i8 %6665, i8* %6663, align 1
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6667 = lshr i32 %6657, 31
  %6668 = trunc i32 %6667 to i8
  store i8 %6668, i8* %6666, align 1
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6669, align 1
  store %struct.Memory* %loadMem_413e34, %struct.Memory** %MEMORY
  %loadMem_413e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 33
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6672 to i64*
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 5
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 15
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6678 to i64*
  %6679 = load i64, i64* %RBP.i18
  %6680 = sub i64 %6679, 44
  %6681 = load i64, i64* %PC.i16
  %6682 = add i64 %6681, 4
  store i64 %6682, i64* %PC.i16
  %6683 = inttoptr i64 %6680 to i32*
  %6684 = load i32, i32* %6683
  %6685 = sext i32 %6684 to i64
  store i64 %6685, i64* %RCX.i17, align 8
  store %struct.Memory* %loadMem_413e37, %struct.Memory** %MEMORY
  %loadMem_413e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 33
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6688 to i64*
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 1
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %6691 to i32*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 5
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 15
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %RBP.i15
  %6699 = load i64, i64* %RCX.i
  %6700 = mul i64 %6699, 4
  %6701 = add i64 %6698, -3168
  %6702 = add i64 %6701, %6700
  %6703 = load i32, i32* %EAX.i14
  %6704 = zext i32 %6703 to i64
  %6705 = load i64, i64* %PC.i13
  %6706 = add i64 %6705, 7
  store i64 %6706, i64* %PC.i13
  %6707 = inttoptr i64 %6702 to i32*
  store i32 %6703, i32* %6707
  store %struct.Memory* %loadMem_413e3b, %struct.Memory** %MEMORY
  %loadMem_413e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 1
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i12
  %6718 = sub i64 %6717, 44
  %6719 = load i64, i64* %PC.i10
  %6720 = add i64 %6719, 3
  store i64 %6720, i64* %PC.i10
  %6721 = inttoptr i64 %6718 to i32*
  %6722 = load i32, i32* %6721
  %6723 = zext i32 %6722 to i64
  store i64 %6723, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_413e42, %struct.Memory** %MEMORY
  %loadMem_413e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 1
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6729 to i64*
  %6730 = load i64, i64* %RAX.i
  %6731 = load i64, i64* %PC.i9
  %6732 = add i64 %6731, 3
  store i64 %6732, i64* %PC.i9
  %6733 = trunc i64 %6730 to i32
  %6734 = add i32 1, %6733
  %6735 = zext i32 %6734 to i64
  store i64 %6735, i64* %RAX.i, align 8
  %6736 = icmp ult i32 %6734, %6733
  %6737 = icmp ult i32 %6734, 1
  %6738 = or i1 %6736, %6737
  %6739 = zext i1 %6738 to i8
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6739, i8* %6740, align 1
  %6741 = and i32 %6734, 255
  %6742 = call i32 @llvm.ctpop.i32(i32 %6741)
  %6743 = trunc i32 %6742 to i8
  %6744 = and i8 %6743, 1
  %6745 = xor i8 %6744, 1
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6745, i8* %6746, align 1
  %6747 = xor i64 1, %6730
  %6748 = trunc i64 %6747 to i32
  %6749 = xor i32 %6748, %6734
  %6750 = lshr i32 %6749, 4
  %6751 = trunc i32 %6750 to i8
  %6752 = and i8 %6751, 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6752, i8* %6753, align 1
  %6754 = icmp eq i32 %6734, 0
  %6755 = zext i1 %6754 to i8
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6755, i8* %6756, align 1
  %6757 = lshr i32 %6734, 31
  %6758 = trunc i32 %6757 to i8
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6758, i8* %6759, align 1
  %6760 = lshr i32 %6733, 31
  %6761 = xor i32 %6757, %6760
  %6762 = add i32 %6761, %6757
  %6763 = icmp eq i32 %6762, 2
  %6764 = zext i1 %6763 to i8
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6764, i8* %6765, align 1
  store %struct.Memory* %loadMem_413e45, %struct.Memory** %MEMORY
  %loadMem_413e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 33
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6768 to i64*
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 1
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6771 to i32*
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 15
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6774 to i64*
  %6775 = load i64, i64* %RBP.i8
  %6776 = sub i64 %6775, 44
  %6777 = load i32, i32* %EAX.i
  %6778 = zext i32 %6777 to i64
  %6779 = load i64, i64* %PC.i7
  %6780 = add i64 %6779, 3
  store i64 %6780, i64* %PC.i7
  %6781 = inttoptr i64 %6776 to i32*
  store i32 %6777, i32* %6781
  store %struct.Memory* %loadMem_413e48, %struct.Memory** %MEMORY
  %loadMem_413e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 33
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6784 to i64*
  %6785 = load i64, i64* %PC.i6
  %6786 = add i64 %6785, -86
  %6787 = load i64, i64* %PC.i6
  %6788 = add i64 %6787, 5
  store i64 %6788, i64* %PC.i6
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6786, i64* %6789, align 8
  store %struct.Memory* %loadMem_413e4b, %struct.Memory** %MEMORY
  br label %block_.L_413df5

block_.L_413e50:                                  ; preds = %block_.L_413df5
  %loadMem_413e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 33
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6792 to i64*
  %6793 = load i64, i64* %PC.i5
  %6794 = add i64 %6793, -1557
  %6795 = load i64, i64* %PC.i5
  %6796 = add i64 %6795, 5
  store i64 %6796, i64* %PC.i5
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6794, i64* %6797, align 8
  store %struct.Memory* %loadMem_413e50, %struct.Memory** %MEMORY
  br label %block_.L_41383b

block_.L_413e55:                                  ; preds = %block_413de9
  %loadMem_413e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 33
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6800 to i64*
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 13
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6803 to i64*
  %6804 = load i64, i64* %RSP.i
  %6805 = load i64, i64* %PC.i4
  %6806 = add i64 %6805, 7
  store i64 %6806, i64* %PC.i4
  %6807 = add i64 5296, %6804
  store i64 %6807, i64* %RSP.i, align 8
  %6808 = icmp ult i64 %6807, %6804
  %6809 = icmp ult i64 %6807, 5296
  %6810 = or i1 %6808, %6809
  %6811 = zext i1 %6810 to i8
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6811, i8* %6812, align 1
  %6813 = trunc i64 %6807 to i32
  %6814 = and i32 %6813, 255
  %6815 = call i32 @llvm.ctpop.i32(i32 %6814)
  %6816 = trunc i32 %6815 to i8
  %6817 = and i8 %6816, 1
  %6818 = xor i8 %6817, 1
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6818, i8* %6819, align 1
  %6820 = xor i64 5296, %6804
  %6821 = xor i64 %6820, %6807
  %6822 = lshr i64 %6821, 4
  %6823 = trunc i64 %6822 to i8
  %6824 = and i8 %6823, 1
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6824, i8* %6825, align 1
  %6826 = icmp eq i64 %6807, 0
  %6827 = zext i1 %6826 to i8
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6827, i8* %6828, align 1
  %6829 = lshr i64 %6807, 63
  %6830 = trunc i64 %6829 to i8
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6830, i8* %6831, align 1
  %6832 = lshr i64 %6804, 63
  %6833 = xor i64 %6829, %6832
  %6834 = add i64 %6833, %6829
  %6835 = icmp eq i64 %6834, 2
  %6836 = zext i1 %6835 to i8
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6836, i8* %6837, align 1
  store %struct.Memory* %loadMem_413e55, %struct.Memory** %MEMORY
  %loadMem_413e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 33
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6840 to i64*
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 15
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6843 to i64*
  %6844 = load i64, i64* %PC.i2
  %6845 = add i64 %6844, 1
  store i64 %6845, i64* %PC.i2
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6847 = load i64, i64* %6846, align 8
  %6848 = add i64 %6847, 8
  %6849 = inttoptr i64 %6847 to i64*
  %6850 = load i64, i64* %6849
  store i64 %6850, i64* %RBP.i3, align 8
  store i64 %6848, i64* %6846, align 8
  store %struct.Memory* %loadMem_413e5c, %struct.Memory** %MEMORY
  %loadMem_413e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6852 = getelementptr inbounds %struct.GPR, %struct.GPR* %6851, i32 0, i32 33
  %6853 = getelementptr inbounds %struct.Reg, %struct.Reg* %6852, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6853 to i64*
  %6854 = load i64, i64* %PC.i1
  %6855 = add i64 %6854, 1
  store i64 %6855, i64* %PC.i1
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6858 = load i64, i64* %6857, align 8
  %6859 = inttoptr i64 %6858 to i64*
  %6860 = load i64, i64* %6859
  store i64 %6860, i64* %6856, align 8
  %6861 = add i64 %6858, 8
  store i64 %6861, i64* %6857, align 8
  store %struct.Memory* %loadMem_413e5d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_413e5d
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

define %struct.Memory* @routine_subq__0x14b0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 5296
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 5296
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
  %23 = xor i64 5296, %9
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_413836(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4137fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x149c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5276
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41380f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x149c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5276
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x149c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 7
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0xc60__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_jmpq_.L_4137d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41383b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xfffffffe__MINUS0x1470__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5232
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_413942(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1470__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -5232
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -1, i32* %19
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x450__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1474__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1474__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x450__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1478__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5240
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1478__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1474__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x450__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1104
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc60__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RAX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -3168
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_413920(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1474__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
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

define %struct.Memory* @routine_movl_MINUS0x450__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1474__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x450__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1474__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4138bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1478__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41386d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x104__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 260
  %16 = icmp ult i32 %14, 260
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
  %25 = xor i32 %14, 260
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

define %struct.Memory* @routine_jl_.L_413959(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7d1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2001, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41395e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_413d3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x44c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x147c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5244
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x147c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1484__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x147c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x1480__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1480__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_jle_.L_4139cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_413a7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_413a21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x450__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1104
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1480__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc60__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -3168
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1484__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1480__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_413a50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x147c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1480__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x147c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5244
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4139a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1484__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1488__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1488__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1490__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1488__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x148c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_413af5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_413ba6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_413b4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x148c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1490__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x148c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_413b79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1488__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x148c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1488__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5256
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413ad2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1490__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1470__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -5232
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xffffff00___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 -256, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = icmp eq i32 %13, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %13, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xffffff00___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 -256, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = icmp eq i32 %13, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %13, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_andl__0xff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 255, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 255, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl__eax__MINUS0x14a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5280
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_413c4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 255, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x14a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5284
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413c62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14a0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = or i64 %14, %12
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

define %struct.Memory* @routine_movl__ecx__MINUS0xc60__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1470__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -5232
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x450__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1494__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5268
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1494__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x450__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1104
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1498__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5272
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1498__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1494__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_413d25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1494__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1494__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413cc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1498__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x204__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 516
  %16 = icmp ult i32 %14, 516
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
  %25 = xor i32 %14, 516
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

define %struct.Memory* @routine_jl_.L_413d55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7d2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2002, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0__MINUS0x35__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 53
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 0, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_413ddf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1470__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -5232
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

define %struct.Memory* @routine_jl_.L_413da7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1470__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -5232
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_413d79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl____rdx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_jle_.L_413dcc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__MINUS0x35__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 53
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 1, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413dd1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413d60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpb__0x0__MINUS0x35__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 53
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

define %struct.Memory* @routine_jne_.L_413dee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_413e55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_413e50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_sarl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 7
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x14a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5288
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl_MINUS0x14a8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0xc60__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3168
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413df5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x14b0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 5296, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 5296
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
  %25 = xor i64 5296, %9
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
