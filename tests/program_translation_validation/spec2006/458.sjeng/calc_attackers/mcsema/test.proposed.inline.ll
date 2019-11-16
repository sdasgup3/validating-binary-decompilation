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

; Function Attrs: alwaysinline
define %struct.Memory* @calc_attackers(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400f00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400f00, %struct.Memory** %MEMORY
  %loadMem_400f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i140
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i140
  store i64 %26, i64* %RBP.i141, align 8
  store %struct.Memory* %loadMem_400f01, %struct.Memory** %MEMORY
  %loadMem_400f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i405
  %39 = sub i64 %38, 8
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i404
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i404
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400f04, %struct.Memory** %MEMORY
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i543
  %55 = sub i64 %54, 12
  %56 = load i32, i32* %ESI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i542
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i542
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_400f07, %struct.Memory** %MEMORY
  %loadMem_400f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 15
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %66 to i64*
  %67 = load i64, i64* %RBP.i569
  %68 = sub i64 %67, 24
  %69 = load i64, i64* %PC.i568
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC.i568
  %71 = inttoptr i64 %68 to i32*
  store i32 0, i32* %71
  store %struct.Memory* %loadMem_400f0a, %struct.Memory** %MEMORY
  %loadMem_400f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %73 = getelementptr inbounds %struct.GPR, %struct.GPR* %72, i32 0, i32 33
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %73, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %74 to i64*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i567
  %82 = sub i64 %81, 8
  %83 = load i64, i64* %PC.i565
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC.i565
  %85 = inttoptr i64 %82 to i32*
  %86 = load i32, i32* %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_400f11, %struct.Memory** %MEMORY
  %loadMem_400f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %93 to i64*
  %94 = load i64, i64* %RAX.i564
  %95 = mul i64 %94, 4
  %96 = add i64 %95, 8807744
  %97 = load i64, i64* %PC.i563
  %98 = add i64 %97, 8
  store i64 %98, i64* %PC.i563
  %99 = inttoptr i64 %96 to i32*
  %100 = load i32, i32* %99
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %101, align 1
  %102 = and i32 %100, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %106, i8* %107, align 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %108, align 1
  %109 = icmp eq i32 %100, 0
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %110, i8* %111, align 1
  %112 = lshr i32 %100, 31
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %113, i8* %114, align 1
  %115 = lshr i32 %100, 31
  %116 = xor i32 %112, %115
  %117 = add i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %119, i8* %120, align 1
  store %struct.Memory* %loadMem_400f15, %struct.Memory** %MEMORY
  %loadMem_400f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %PC.i562
  %125 = add i64 %124, 18
  %126 = load i64, i64* %PC.i562
  %127 = add i64 %126, 6
  %128 = load i64, i64* %PC.i562
  %129 = add i64 %128, 6
  store i64 %129, i64* %PC.i562
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %131 = load i8, i8* %130, align 1
  %132 = icmp eq i8 %131, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %BRANCH_TAKEN, align 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %135 = select i1 %132, i64 %125, i64 %127
  store i64 %135, i64* %134, align 8
  store %struct.Memory* %loadMem_400f1d, %struct.Memory** %MEMORY
  %loadBr_400f1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f1d = icmp eq i8 %loadBr_400f1d, 1
  br i1 %cmpBr_400f1d, label %block_.L_400f2f, label %block_400f23

block_400f23:                                     ; preds = %entry
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %RBP.i561
  %143 = sub i64 %142, 4
  %144 = load i64, i64* %PC.i560
  %145 = add i64 %144, 7
  store i64 %145, i64* %PC.i560
  %146 = inttoptr i64 %143 to i32*
  store i32 0, i32* %146
  store %struct.Memory* %loadMem_400f23, %struct.Memory** %MEMORY
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %PC.i559
  %151 = add i64 %150, 1186
  %152 = load i64, i64* %PC.i559
  %153 = add i64 %152, 5
  store i64 %153, i64* %PC.i559
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  store %struct.Memory* %loadMem_400f2a, %struct.Memory** %MEMORY
  br label %block_.L_4013cc

block_.L_400f2f:                                  ; preds = %entry
  %loadMem_400f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %PC.i557
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC.i557
  store i64 2, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_400f2f, %struct.Memory** %MEMORY
  %loadMem_400f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RBP.i556
  %173 = sub i64 %172, 12
  %174 = load i64, i64* %PC.i554
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i554
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_400f34, %struct.Memory** %MEMORY
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %EAX.i552 = bitcast %union.anon* %184 to i32*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i553
  %189 = sub i64 %188, 28
  %190 = load i32, i32* %EAX.i552
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %PC.i551
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i551
  %194 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %194
  store %struct.Memory* %loadMem_400f37, %struct.Memory** %MEMORY
  %loadMem_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %ECX.i549 = bitcast %union.anon* %200 to i32*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %203 to i64*
  %204 = load i32, i32* %ECX.i549
  %205 = zext i32 %204 to i64
  %206 = load i64, i64* %PC.i548
  %207 = add i64 %206, 2
  store i64 %207, i64* %PC.i548
  %208 = and i64 %205, 4294967295
  store i64 %208, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_400f3a, %struct.Memory** %MEMORY
  %loadMem_400f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %PC.i547
  %213 = add i64 %212, 1
  store i64 %213, i64* %PC.i547
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %216 = bitcast %union.anon* %215 to i32*
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = lshr i64 %218, 32
  store i64 %219, i64* %214, align 8
  store %struct.Memory* %loadMem_400f3c, %struct.Memory** %MEMORY
  %loadMem_400f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RBP.i546
  %230 = sub i64 %229, 28
  %231 = load i64, i64* %PC.i544
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC.i544
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_400f3d, %struct.Memory** %MEMORY
  %loadMem_400f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %ECX.i540 = bitcast %union.anon* %241 to i32*
  %242 = load i32, i32* %ECX.i540
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC.i539
  %245 = add i64 %244, 2
  store i64 %245, i64* %PC.i539
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %247 = bitcast %union.anon* %246 to i32*
  %248 = load i32, i32* %247, align 8
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %251 = bitcast %union.anon* %250 to i32*
  %252 = load i32, i32* %251, align 8
  %253 = zext i32 %252 to i64
  %254 = shl i64 %243, 32
  %255 = ashr exact i64 %254, 32
  %256 = shl i64 %253, 32
  %257 = or i64 %256, %249
  %258 = sdiv i64 %257, %255
  %259 = shl i64 %258, 32
  %260 = ashr exact i64 %259, 32
  %261 = icmp eq i64 %258, %260
  br i1 %261, label %266, label %262

; <label>:262:                                    ; preds = %block_.L_400f2f
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %264, %struct.Memory* %loadMem_400f40)
  br label %routine_idivl__ecx.exit541

; <label>:266:                                    ; preds = %block_.L_400f2f
  %267 = srem i64 %257, %255
  %268 = getelementptr inbounds %union.anon, %union.anon* %246, i64 0, i32 0
  %269 = and i64 %258, 4294967295
  store i64 %269, i64* %268, align 8
  %270 = getelementptr inbounds %union.anon, %union.anon* %250, i64 0, i32 0
  %271 = and i64 %267, 4294967295
  store i64 %271, i64* %270, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %272, align 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %273, align 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %274, align 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %275, align 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %276, align 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %277, align 1
  br label %routine_idivl__ecx.exit541

routine_idivl__ecx.exit541:                       ; preds = %262, %266
  %278 = phi %struct.Memory* [ %265, %262 ], [ %loadMem_400f40, %266 ]
  store %struct.Memory* %278, %struct.Memory** %MEMORY
  %loadMem_400f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 7
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %EDX.i538 = bitcast %union.anon* %284 to i32*
  %285 = load i32, i32* %EDX.i538
  %286 = zext i32 %285 to i64
  %287 = load i64, i64* %PC.i537
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC.i537
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %289, align 1
  %290 = and i32 %285, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %294, i8* %295, align 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %296, align 1
  %297 = icmp eq i32 %285, 0
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %298, i8* %299, align 1
  %300 = lshr i32 %285, 31
  %301 = trunc i32 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %301, i8* %302, align 1
  %303 = lshr i32 %285, 31
  %304 = xor i32 %300, %303
  %305 = add i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1
  store %struct.Memory* %loadMem_400f42, %struct.Memory** %MEMORY
  %loadMem_400f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %PC.i536
  %313 = add i64 %312, 582
  %314 = load i64, i64* %PC.i536
  %315 = add i64 %314, 6
  %316 = load i64, i64* %PC.i536
  %317 = add i64 %316, 6
  store i64 %317, i64* %PC.i536
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %319 = load i8, i8* %318, align 1
  store i8 %319, i8* %BRANCH_TAKEN, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %321 = icmp ne i8 %319, 0
  %322 = select i1 %321, i64 %313, i64 %315
  store i64 %322, i64* %320, align 8
  store %struct.Memory* %loadMem_400f45, %struct.Memory** %MEMORY
  %loadBr_400f45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f45 = icmp eq i8 %loadBr_400f45, 1
  br i1 %cmpBr_400f45, label %block_.L_40118b, label %block_400f4b

block_400f4b:                                     ; preds = %routine_idivl__ecx.exit541
  %loadMem_400f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i535
  %330 = sub i64 %329, 20
  %331 = load i64, i64* %PC.i534
  %332 = add i64 %331, 7
  store i64 %332, i64* %PC.i534
  %333 = inttoptr i64 %330 to i32*
  store i32 0, i32* %333
  store %struct.Memory* %loadMem_400f4b, %struct.Memory** %MEMORY
  br label %block_.L_400f52

block_.L_400f52:                                  ; preds = %block_.L_401012, %block_400f4b
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i533
  %341 = sub i64 %340, 20
  %342 = load i64, i64* %PC.i532
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC.i532
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344
  %346 = sub i32 %345, 4
  %347 = icmp ult i32 %345, 4
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %348, i8* %349, align 1
  %350 = and i32 %346, 255
  %351 = call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %354, i8* %355, align 1
  %356 = xor i32 %345, 4
  %357 = xor i32 %356, %346
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %360, i8* %361, align 1
  %362 = icmp eq i32 %346, 0
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %363, i8* %364, align 1
  %365 = lshr i32 %346, 31
  %366 = trunc i32 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %366, i8* %367, align 1
  %368 = lshr i32 %345, 31
  %369 = xor i32 %365, %368
  %370 = add i32 %369, %368
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %372, i8* %373, align 1
  store %struct.Memory* %loadMem_400f52, %struct.Memory** %MEMORY
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %PC.i531
  %378 = add i64 %377, 202
  %379 = load i64, i64* %PC.i531
  %380 = add i64 %379, 6
  %381 = load i64, i64* %PC.i531
  %382 = add i64 %381, 6
  store i64 %382, i64* %PC.i531
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %384 = load i8, i8* %383, align 1
  %385 = icmp ne i8 %384, 0
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %387 = load i8, i8* %386, align 1
  %388 = icmp ne i8 %387, 0
  %389 = xor i1 %385, %388
  %390 = xor i1 %389, true
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %BRANCH_TAKEN, align 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %393 = select i1 %389, i64 %380, i64 %378
  store i64 %393, i64* %392, align 8
  store %struct.Memory* %loadMem_400f56, %struct.Memory** %MEMORY
  %loadBr_400f56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f56 = icmp eq i8 %loadBr_400f56, 1
  br i1 %cmpBr_400f56, label %block_.L_401020, label %block_400f5c

block_400f5c:                                     ; preds = %block_.L_400f52
  %loadMem_400f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i530
  %404 = sub i64 %403, 8
  %405 = load i64, i64* %PC.i528
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i528
  %407 = inttoptr i64 %404 to i32*
  %408 = load i32, i32* %407
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_400f5c, %struct.Memory** %MEMORY
  %loadMem_400f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 15
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %418 to i64*
  %419 = load i64, i64* %RBP.i527
  %420 = sub i64 %419, 20
  %421 = load i64, i64* %PC.i525
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC.i525
  %423 = inttoptr i64 %420 to i32*
  %424 = load i32, i32* %423
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_400f5f, %struct.Memory** %MEMORY
  %loadMem_400f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 33
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %RAX.i523
  %436 = load i64, i64* %RCX.i524
  %437 = mul i64 %436, 4
  %438 = add i64 %437, 4347152
  %439 = load i64, i64* %PC.i522
  %440 = add i64 %439, 7
  store i64 %440, i64* %PC.i522
  %441 = trunc i64 %435 to i32
  %442 = inttoptr i64 %438 to i32*
  %443 = load i32, i32* %442
  %444 = add i32 %443, %441
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RAX.i523, align 8
  %446 = icmp ult i32 %444, %441
  %447 = icmp ult i32 %444, %443
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %449, i8* %450, align 1
  %451 = and i32 %444, 255
  %452 = call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %455, i8* %456, align 1
  %457 = xor i32 %443, %441
  %458 = xor i32 %457, %444
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %461, i8* %462, align 1
  %463 = icmp eq i32 %444, 0
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %464, i8* %465, align 1
  %466 = lshr i32 %444, 31
  %467 = trunc i32 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %467, i8* %468, align 1
  %469 = lshr i32 %441, 31
  %470 = lshr i32 %443, 31
  %471 = xor i32 %466, %469
  %472 = xor i32 %466, %470
  %473 = add i32 %471, %472
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %475, i8* %476, align 1
  store %struct.Memory* %loadMem_400f63, %struct.Memory** %MEMORY
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %EAX.i520 = bitcast %union.anon* %482 to i32*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i521
  %487 = sub i64 %486, 16
  %488 = load i32, i32* %EAX.i520
  %489 = zext i32 %488 to i64
  %490 = load i64, i64* %PC.i519
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC.i519
  %492 = inttoptr i64 %487 to i32*
  store i32 %488, i32* %492
  store %struct.Memory* %loadMem_400f6a, %struct.Memory** %MEMORY
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 5
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 15
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %501 to i64*
  %502 = load i64, i64* %RBP.i518
  %503 = sub i64 %502, 16
  %504 = load i64, i64* %PC.i516
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC.i516
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = sext i32 %507 to i64
  store i64 %508, i64* %RCX.i517, align 8
  store %struct.Memory* %loadMem_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RCX.i515
  %516 = mul i64 %515, 4
  %517 = add i64 %516, 8807744
  %518 = load i64, i64* %PC.i514
  %519 = add i64 %518, 8
  store i64 %519, i64* %PC.i514
  %520 = inttoptr i64 %517 to i32*
  %521 = load i32, i32* %520
  %522 = sub i32 %521, 5
  %523 = icmp ult i32 %521, 5
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %524, i8* %525, align 1
  %526 = and i32 %522, 255
  %527 = call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %530, i8* %531, align 1
  %532 = xor i32 %521, 5
  %533 = xor i32 %532, %522
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %536, i8* %537, align 1
  %538 = icmp eq i32 %522, 0
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %539, i8* %540, align 1
  %541 = lshr i32 %522, 31
  %542 = trunc i32 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %542, i8* %543, align 1
  %544 = lshr i32 %521, 31
  %545 = xor i32 %541, %544
  %546 = add i32 %545, %544
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %548, i8* %549, align 1
  store %struct.Memory* %loadMem_400f71, %struct.Memory** %MEMORY
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %PC.i513
  %554 = add i64 %553, 20
  %555 = load i64, i64* %PC.i513
  %556 = add i64 %555, 6
  %557 = load i64, i64* %PC.i513
  %558 = add i64 %557, 6
  store i64 %558, i64* %PC.i513
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %560 = load i8, i8* %559, align 1
  %561 = icmp eq i8 %560, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %BRANCH_TAKEN, align 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %564 = select i1 %561, i64 %554, i64 %556
  store i64 %564, i64* %563, align 8
  store %struct.Memory* %loadMem_400f79, %struct.Memory** %MEMORY
  %loadBr_400f79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f79 = icmp eq i8 %loadBr_400f79, 1
  br i1 %cmpBr_400f79, label %block_.L_400f8d, label %block_400f7f

block_400f7f:                                     ; preds = %block_400f5c
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RBP.i512
  %575 = sub i64 %574, 24
  %576 = load i64, i64* %PC.i510
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC.i510
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_400f7f, %struct.Memory** %MEMORY
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RAX.i509
  %588 = load i64, i64* %PC.i508
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC.i508
  %590 = trunc i64 %587 to i32
  %591 = add i32 1, %590
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX.i509, align 8
  %593 = icmp ult i32 %591, %590
  %594 = icmp ult i32 %591, 1
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %596, i8* %597, align 1
  %598 = and i32 %591, 255
  %599 = call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %602, i8* %603, align 1
  %604 = xor i64 1, %587
  %605 = trunc i64 %604 to i32
  %606 = xor i32 %605, %591
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %609, i8* %610, align 1
  %611 = icmp eq i32 %591, 0
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %612, i8* %613, align 1
  %614 = lshr i32 %591, 31
  %615 = trunc i32 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %615, i8* %616, align 1
  %617 = lshr i32 %590, 31
  %618 = xor i32 %614, %617
  %619 = add i32 %618, %614
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %621, i8* %622, align 1
  store %struct.Memory* %loadMem_400f82, %struct.Memory** %MEMORY
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %628 to i32*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 15
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RBP.i507
  %633 = sub i64 %632, 24
  %634 = load i32, i32* %EAX.i506
  %635 = zext i32 %634 to i64
  %636 = load i64, i64* %PC.i505
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC.i505
  %638 = inttoptr i64 %633 to i32*
  store i32 %634, i32* %638
  store %struct.Memory* %loadMem_400f85, %struct.Memory** %MEMORY
  %loadMem_400f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i504
  %643 = add i64 %642, 152
  %644 = load i64, i64* %PC.i504
  %645 = add i64 %644, 5
  store i64 %645, i64* %PC.i504
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %643, i64* %646, align 8
  store %struct.Memory* %loadMem_400f88, %struct.Memory** %MEMORY
  br label %block_.L_401020

block_.L_400f8d:                                  ; preds = %block_400f5c
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %PC.i503
  %651 = add i64 %650, 5
  %652 = load i64, i64* %PC.i503
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC.i503
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %654, align 8
  store %struct.Memory* %loadMem_400f8d, %struct.Memory** %MEMORY
  br label %block_.L_400f92

block_.L_400f92:                                  ; preds = %block_.L_400ff2, %block_.L_400f8d
  %loadMem_400f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i502
  %665 = sub i64 %664, 16
  %666 = load i64, i64* %PC.i500
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i500
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_400f92, %struct.Memory** %MEMORY
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RAX.i499
  %678 = mul i64 %677, 4
  %679 = add i64 %678, 8807744
  %680 = load i64, i64* %PC.i498
  %681 = add i64 %680, 8
  store i64 %681, i64* %PC.i498
  %682 = inttoptr i64 %679 to i32*
  %683 = load i32, i32* %682
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %684, align 1
  %685 = and i32 %683, 255
  %686 = call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %689, i8* %690, align 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %691, align 1
  %692 = icmp eq i32 %683, 0
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %693, i8* %694, align 1
  %695 = lshr i32 %683, 31
  %696 = trunc i32 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %696, i8* %697, align 1
  %698 = lshr i32 %683, 31
  %699 = xor i32 %695, %698
  %700 = add i32 %699, %698
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %702, i8* %703, align 1
  store %struct.Memory* %loadMem_400f96, %struct.Memory** %MEMORY
  %loadMem_400f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %PC.i497
  %708 = add i64 %707, 106
  %709 = load i64, i64* %PC.i497
  %710 = add i64 %709, 6
  %711 = load i64, i64* %PC.i497
  %712 = add i64 %711, 6
  store i64 %712, i64* %PC.i497
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %714 = load i8, i8* %713, align 1
  store i8 %714, i8* %BRANCH_TAKEN, align 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %716 = icmp ne i8 %714, 0
  %717 = select i1 %716, i64 %708, i64 %710
  store i64 %717, i64* %715, align 8
  store %struct.Memory* %loadMem_400f9e, %struct.Memory** %MEMORY
  %loadBr_400f9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f9e = icmp eq i8 %loadBr_400f9e, 1
  br i1 %cmpBr_400f9e, label %block_.L_401008, label %block_400fa4

block_400fa4:                                     ; preds = %block_.L_400f92
  %loadMem_400fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 15
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %RBP.i496
  %728 = sub i64 %727, 16
  %729 = load i64, i64* %PC.i494
  %730 = add i64 %729, 4
  store i64 %730, i64* %PC.i494
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_400fa4, %struct.Memory** %MEMORY
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 1
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RAX.i493
  %741 = mul i64 %740, 4
  %742 = add i64 %741, 8807744
  %743 = load i64, i64* %PC.i492
  %744 = add i64 %743, 8
  store i64 %744, i64* %PC.i492
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745
  %747 = sub i32 %746, 7
  %748 = icmp ult i32 %746, 7
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %749, i8* %750, align 1
  %751 = and i32 %747, 255
  %752 = call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %755, i8* %756, align 1
  %757 = xor i32 %746, 7
  %758 = xor i32 %757, %747
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %761, i8* %762, align 1
  %763 = icmp eq i32 %747, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1
  %766 = lshr i32 %747, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %746, 31
  %770 = xor i32 %766, %769
  %771 = add i32 %770, %769
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %774, align 1
  store %struct.Memory* %loadMem_400fa8, %struct.Memory** %MEMORY
  %loadMem_400fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %PC.i491
  %779 = add i64 %778, 24
  %780 = load i64, i64* %PC.i491
  %781 = add i64 %780, 6
  %782 = load i64, i64* %PC.i491
  %783 = add i64 %782, 6
  store i64 %783, i64* %PC.i491
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %785 = load i8, i8* %784, align 1
  store i8 %785, i8* %BRANCH_TAKEN, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %787 = icmp ne i8 %785, 0
  %788 = select i1 %787, i64 %779, i64 %781
  store i64 %788, i64* %786, align 8
  store %struct.Memory* %loadMem_400fb0, %struct.Memory** %MEMORY
  %loadBr_400fb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fb0 = icmp eq i8 %loadBr_400fb0, 1
  br i1 %cmpBr_400fb0, label %block_.L_400fc8, label %block_400fb6

block_400fb6:                                     ; preds = %block_400fa4
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RBP.i490
  %799 = sub i64 %798, 16
  %800 = load i64, i64* %PC.i488
  %801 = add i64 %800, 4
  store i64 %801, i64* %PC.i488
  %802 = inttoptr i64 %799 to i32*
  %803 = load i32, i32* %802
  %804 = sext i32 %803 to i64
  store i64 %804, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_400fb6, %struct.Memory** %MEMORY
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 1
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RAX.i487
  %812 = mul i64 %811, 4
  %813 = add i64 %812, 8807744
  %814 = load i64, i64* %PC.i486
  %815 = add i64 %814, 8
  store i64 %815, i64* %PC.i486
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = sub i32 %817, 9
  %819 = icmp ult i32 %817, 9
  %820 = zext i1 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %820, i8* %821, align 1
  %822 = and i32 %818, 255
  %823 = call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %826, i8* %827, align 1
  %828 = xor i32 %817, 9
  %829 = xor i32 %828, %818
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %832, i8* %833, align 1
  %834 = icmp eq i32 %818, 0
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %835, i8* %836, align 1
  %837 = lshr i32 %818, 31
  %838 = trunc i32 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %838, i8* %839, align 1
  %840 = lshr i32 %817, 31
  %841 = xor i32 %837, %840
  %842 = add i32 %841, %840
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %844, i8* %845, align 1
  store %struct.Memory* %loadMem_400fba, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %PC.i485
  %850 = add i64 %849, 20
  %851 = load i64, i64* %PC.i485
  %852 = add i64 %851, 6
  %853 = load i64, i64* %PC.i485
  %854 = add i64 %853, 6
  store i64 %854, i64* %PC.i485
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %856 = load i8, i8* %855, align 1
  %857 = icmp eq i8 %856, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %BRANCH_TAKEN, align 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %860 = select i1 %857, i64 %850, i64 %852
  store i64 %860, i64* %859, align 8
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadBr_400fc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fc2 = icmp eq i8 %loadBr_400fc2, 1
  br i1 %cmpBr_400fc2, label %block_.L_400fd6, label %block_.L_400fc8

block_.L_400fc8:                                  ; preds = %block_400fb6, %block_400fa4
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 1
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 15
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %RBP.i484
  %871 = sub i64 %870, 24
  %872 = load i64, i64* %PC.i482
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC.i482
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_400fc8, %struct.Memory** %MEMORY
  %loadMem_400fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 1
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RAX.i481
  %884 = load i64, i64* %PC.i480
  %885 = add i64 %884, 3
  store i64 %885, i64* %PC.i480
  %886 = trunc i64 %883 to i32
  %887 = add i32 1, %886
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i481, align 8
  %889 = icmp ult i32 %887, %886
  %890 = icmp ult i32 %887, 1
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %892, i8* %893, align 1
  %894 = and i32 %887, 255
  %895 = call i32 @llvm.ctpop.i32(i32 %894)
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %898, i8* %899, align 1
  %900 = xor i64 1, %883
  %901 = trunc i64 %900 to i32
  %902 = xor i32 %901, %887
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %905, i8* %906, align 1
  %907 = icmp eq i32 %887, 0
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %908, i8* %909, align 1
  %910 = lshr i32 %887, 31
  %911 = trunc i32 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1
  %913 = lshr i32 %886, 31
  %914 = xor i32 %910, %913
  %915 = add i32 %914, %910
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %917, i8* %918, align 1
  store %struct.Memory* %loadMem_400fcb, %struct.Memory** %MEMORY
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %924 to i32*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RBP.i479
  %929 = sub i64 %928, 24
  %930 = load i32, i32* %EAX.i478
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i477
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i477
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %PC.i476
  %939 = add i64 %938, 55
  %940 = load i64, i64* %PC.i476
  %941 = add i64 %940, 5
  store i64 %941, i64* %PC.i476
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %939, i64* %942, align 8
  store %struct.Memory* %loadMem_400fd1, %struct.Memory** %MEMORY
  br label %block_.L_401008

block_.L_400fd6:                                  ; preds = %block_400fb6
  %loadMem_400fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RBP.i475
  %953 = sub i64 %952, 16
  %954 = load i64, i64* %PC.i473
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC.i473
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_400fd6, %struct.Memory** %MEMORY
  %loadMem_400fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 1
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %RAX.i472
  %966 = mul i64 %965, 4
  %967 = add i64 %966, 8807744
  %968 = load i64, i64* %PC.i471
  %969 = add i64 %968, 8
  store i64 %969, i64* %PC.i471
  %970 = inttoptr i64 %967 to i32*
  %971 = load i32, i32* %970
  %972 = sub i32 %971, 13
  %973 = icmp ult i32 %971, 13
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %974, i8* %975, align 1
  %976 = and i32 %972, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1
  %982 = xor i32 %971, 13
  %983 = xor i32 %982, %972
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %986, i8* %987, align 1
  %988 = icmp eq i32 %972, 0
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %989, i8* %990, align 1
  %991 = lshr i32 %972, 31
  %992 = trunc i32 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %992, i8* %993, align 1
  %994 = lshr i32 %971, 31
  %995 = xor i32 %991, %994
  %996 = add i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %998, i8* %999, align 1
  store %struct.Memory* %loadMem_400fda, %struct.Memory** %MEMORY
  %loadMem_400fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %PC.i470
  %1004 = add i64 %1003, 11
  %1005 = load i64, i64* %PC.i470
  %1006 = add i64 %1005, 6
  %1007 = load i64, i64* %PC.i470
  %1008 = add i64 %1007, 6
  store i64 %1008, i64* %PC.i470
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1010 = load i8, i8* %1009, align 1
  store i8 %1010, i8* %BRANCH_TAKEN, align 1
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1012 = icmp ne i8 %1010, 0
  %1013 = select i1 %1012, i64 %1004, i64 %1006
  store i64 %1013, i64* %1011, align 8
  store %struct.Memory* %loadMem_400fe2, %struct.Memory** %MEMORY
  %loadBr_400fe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fe2 = icmp eq i8 %loadBr_400fe2, 1
  br i1 %cmpBr_400fe2, label %block_.L_400fed, label %block_400fe8

block_400fe8:                                     ; preds = %block_.L_400fd6
  %loadMem_400fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %PC.i469
  %1018 = add i64 %1017, 32
  %1019 = load i64, i64* %PC.i469
  %1020 = add i64 %1019, 5
  store i64 %1020, i64* %PC.i469
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1018, i64* %1021, align 8
  store %struct.Memory* %loadMem_400fe8, %struct.Memory** %MEMORY
  br label %block_.L_401008

block_.L_400fed:                                  ; preds = %block_.L_400fd6
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %PC.i468
  %1026 = add i64 %1025, 5
  %1027 = load i64, i64* %PC.i468
  %1028 = add i64 %1027, 5
  store i64 %1028, i64* %PC.i468
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1026, i64* %1029, align 8
  store %struct.Memory* %loadMem_400fed, %struct.Memory** %MEMORY
  br label %block_.L_400ff2

block_.L_400ff2:                                  ; preds = %block_.L_400fed
  %loadMem_400ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i467
  %1040 = sub i64 %1039, 20
  %1041 = load i64, i64* %PC.i465
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC.i465
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_400ff2, %struct.Memory** %MEMORY
  %loadMem_400ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RAX.i463
  %1056 = mul i64 %1055, 4
  %1057 = add i64 %1056, 4347152
  %1058 = load i64, i64* %PC.i462
  %1059 = add i64 %1058, 7
  store i64 %1059, i64* %PC.i462
  %1060 = inttoptr i64 %1057 to i32*
  %1061 = load i32, i32* %1060
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_400ff6, %struct.Memory** %MEMORY
  %loadMem_400ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 5
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RCX.i460
  %1073 = load i64, i64* %RBP.i461
  %1074 = sub i64 %1073, 16
  %1075 = load i64, i64* %PC.i459
  %1076 = add i64 %1075, 3
  store i64 %1076, i64* %PC.i459
  %1077 = trunc i64 %1072 to i32
  %1078 = inttoptr i64 %1074 to i32*
  %1079 = load i32, i32* %1078
  %1080 = add i32 %1079, %1077
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RCX.i460, align 8
  %1082 = icmp ult i32 %1080, %1077
  %1083 = icmp ult i32 %1080, %1079
  %1084 = or i1 %1082, %1083
  %1085 = zext i1 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1085, i8* %1086, align 1
  %1087 = and i32 %1080, 255
  %1088 = call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1091, i8* %1092, align 1
  %1093 = xor i32 %1079, %1077
  %1094 = xor i32 %1093, %1080
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1097, i8* %1098, align 1
  %1099 = icmp eq i32 %1080, 0
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1100, i8* %1101, align 1
  %1102 = lshr i32 %1080, 31
  %1103 = trunc i32 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1103, i8* %1104, align 1
  %1105 = lshr i32 %1077, 31
  %1106 = lshr i32 %1079, 31
  %1107 = xor i32 %1102, %1105
  %1108 = xor i32 %1102, %1106
  %1109 = add i32 %1107, %1108
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1111, i8* %1112, align 1
  store %struct.Memory* %loadMem_400ffd, %struct.Memory** %MEMORY
  %loadMem_401000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 5
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %ECX.i457 = bitcast %union.anon* %1118 to i32*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 15
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %RBP.i458
  %1123 = sub i64 %1122, 16
  %1124 = load i32, i32* %ECX.i457
  %1125 = zext i32 %1124 to i64
  %1126 = load i64, i64* %PC.i456
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC.i456
  %1128 = inttoptr i64 %1123 to i32*
  store i32 %1124, i32* %1128
  store %struct.Memory* %loadMem_401000, %struct.Memory** %MEMORY
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %PC.i455
  %1133 = add i64 %1132, -113
  %1134 = load i64, i64* %PC.i455
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC.i455
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1133, i64* %1136, align 8
  store %struct.Memory* %loadMem_401003, %struct.Memory** %MEMORY
  br label %block_.L_400f92

block_.L_401008:                                  ; preds = %block_400fe8, %block_.L_400fc8, %block_.L_400f92
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %PC.i454
  %1141 = add i64 %1140, 5
  %1142 = load i64, i64* %PC.i454
  %1143 = add i64 %1142, 5
  store i64 %1143, i64* %PC.i454
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1141, i64* %1144, align 8
  store %struct.Memory* %loadMem_401008, %struct.Memory** %MEMORY
  br label %block_.L_40100d

block_.L_40100d:                                  ; preds = %block_.L_401008
  %loadMem_40100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %PC.i453
  %1149 = add i64 %1148, 5
  %1150 = load i64, i64* %PC.i453
  %1151 = add i64 %1150, 5
  store i64 %1151, i64* %PC.i453
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1149, i64* %1152, align 8
  store %struct.Memory* %loadMem_40100d, %struct.Memory** %MEMORY
  br label %block_.L_401012

block_.L_401012:                                  ; preds = %block_.L_40100d
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i452
  %1163 = sub i64 %1162, 20
  %1164 = load i64, i64* %PC.i450
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC.i450
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i451, align 8
  store %struct.Memory* %loadMem_401012, %struct.Memory** %MEMORY
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i449
  %1176 = load i64, i64* %PC.i448
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC.i448
  %1178 = trunc i64 %1175 to i32
  %1179 = add i32 1, %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i449, align 8
  %1181 = icmp ult i32 %1179, %1178
  %1182 = icmp ult i32 %1179, 1
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1184, i8* %1185, align 1
  %1186 = and i32 %1179, 255
  %1187 = call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1190, i8* %1191, align 1
  %1192 = xor i64 1, %1175
  %1193 = trunc i64 %1192 to i32
  %1194 = xor i32 %1193, %1179
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1197, i8* %1198, align 1
  %1199 = icmp eq i32 %1179, 0
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1200, i8* %1201, align 1
  %1202 = lshr i32 %1179, 31
  %1203 = trunc i32 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1203, i8* %1204, align 1
  %1205 = lshr i32 %1178, 31
  %1206 = xor i32 %1202, %1205
  %1207 = add i32 %1206, %1202
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1209, i8* %1210, align 1
  store %struct.Memory* %loadMem_401015, %struct.Memory** %MEMORY
  %loadMem_401018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %EAX.i446 = bitcast %union.anon* %1216 to i32*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 15
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %RBP.i447
  %1221 = sub i64 %1220, 20
  %1222 = load i32, i32* %EAX.i446
  %1223 = zext i32 %1222 to i64
  %1224 = load i64, i64* %PC.i445
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %PC.i445
  %1226 = inttoptr i64 %1221 to i32*
  store i32 %1222, i32* %1226
  store %struct.Memory* %loadMem_401018, %struct.Memory** %MEMORY
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %PC.i444
  %1231 = add i64 %1230, -201
  %1232 = load i64, i64* %PC.i444
  %1233 = add i64 %1232, 5
  store i64 %1233, i64* %PC.i444
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1231, i64* %1234, align 8
  store %struct.Memory* %loadMem_40101b, %struct.Memory** %MEMORY
  br label %block_.L_400f52

block_.L_401020:                                  ; preds = %block_400f7f, %block_.L_400f52
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i443
  %1242 = sub i64 %1241, 20
  %1243 = load i64, i64* %PC.i442
  %1244 = add i64 %1243, 7
  store i64 %1244, i64* %PC.i442
  %1245 = inttoptr i64 %1242 to i32*
  store i32 0, i32* %1245
  store %struct.Memory* %loadMem_401020, %struct.Memory** %MEMORY
  br label %block_.L_401027

block_.L_401027:                                  ; preds = %block_.L_401128, %block_.L_401020
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i441
  %1253 = sub i64 %1252, 20
  %1254 = load i64, i64* %PC.i440
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i440
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256
  %1258 = sub i32 %1257, 4
  %1259 = icmp ult i32 %1257, 4
  %1260 = zext i1 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1260, i8* %1261, align 1
  %1262 = and i32 %1258, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = xor i32 %1257, 4
  %1269 = xor i32 %1268, %1258
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1272, i8* %1273, align 1
  %1274 = icmp eq i32 %1258, 0
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1275, i8* %1276, align 1
  %1277 = lshr i32 %1258, 31
  %1278 = trunc i32 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1278, i8* %1279, align 1
  %1280 = lshr i32 %1257, 31
  %1281 = xor i32 %1277, %1280
  %1282 = add i32 %1281, %1280
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1284, i8* %1285, align 1
  store %struct.Memory* %loadMem_401027, %struct.Memory** %MEMORY
  %loadMem_40102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i439
  %1290 = add i64 %1289, 267
  %1291 = load i64, i64* %PC.i439
  %1292 = add i64 %1291, 6
  %1293 = load i64, i64* %PC.i439
  %1294 = add i64 %1293, 6
  store i64 %1294, i64* %PC.i439
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1296 = load i8, i8* %1295, align 1
  %1297 = icmp ne i8 %1296, 0
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1299 = load i8, i8* %1298, align 1
  %1300 = icmp ne i8 %1299, 0
  %1301 = xor i1 %1297, %1300
  %1302 = xor i1 %1301, true
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %BRANCH_TAKEN, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1305 = select i1 %1301, i64 %1292, i64 %1290
  store i64 %1305, i64* %1304, align 8
  store %struct.Memory* %loadMem_40102b, %struct.Memory** %MEMORY
  %loadBr_40102b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40102b = icmp eq i8 %loadBr_40102b, 1
  br i1 %cmpBr_40102b, label %block_.L_401136, label %block_401031

block_401031:                                     ; preds = %block_.L_401027
  %loadMem_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RBP.i438
  %1316 = sub i64 %1315, 8
  %1317 = load i64, i64* %PC.i436
  %1318 = add i64 %1317, 3
  store i64 %1318, i64* %PC.i436
  %1319 = inttoptr i64 %1316 to i32*
  %1320 = load i32, i32* %1319
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_401031, %struct.Memory** %MEMORY
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 5
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 15
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RBP.i435
  %1332 = sub i64 %1331, 20
  %1333 = load i64, i64* %PC.i433
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %PC.i433
  %1335 = inttoptr i64 %1332 to i32*
  %1336 = load i32, i32* %1335
  %1337 = sext i32 %1336 to i64
  store i64 %1337, i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_401034, %struct.Memory** %MEMORY
  %loadMem_401038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 1
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 5
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %RAX.i431
  %1348 = load i64, i64* %RCX.i432
  %1349 = mul i64 %1348, 4
  %1350 = add i64 %1349, 4347168
  %1351 = load i64, i64* %PC.i430
  %1352 = add i64 %1351, 7
  store i64 %1352, i64* %PC.i430
  %1353 = trunc i64 %1347 to i32
  %1354 = inttoptr i64 %1350 to i32*
  %1355 = load i32, i32* %1354
  %1356 = add i32 %1355, %1353
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX.i431, align 8
  %1358 = icmp ult i32 %1356, %1353
  %1359 = icmp ult i32 %1356, %1355
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1361, i8* %1362, align 1
  %1363 = and i32 %1356, 255
  %1364 = call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1367, i8* %1368, align 1
  %1369 = xor i32 %1355, %1353
  %1370 = xor i32 %1369, %1356
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1373, i8* %1374, align 1
  %1375 = icmp eq i32 %1356, 0
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1376, i8* %1377, align 1
  %1378 = lshr i32 %1356, 31
  %1379 = trunc i32 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1353, 31
  %1382 = lshr i32 %1355, 31
  %1383 = xor i32 %1378, %1381
  %1384 = xor i32 %1378, %1382
  %1385 = add i32 %1383, %1384
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1387, i8* %1388, align 1
  store %struct.Memory* %loadMem_401038, %struct.Memory** %MEMORY
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 1
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %1394 to i32*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RBP.i429
  %1399 = sub i64 %1398, 16
  %1400 = load i32, i32* %EAX.i428
  %1401 = zext i32 %1400 to i64
  %1402 = load i64, i64* %PC.i427
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %PC.i427
  %1404 = inttoptr i64 %1399 to i32*
  store i32 %1400, i32* %1404
  store %struct.Memory* %loadMem_40103f, %struct.Memory** %MEMORY
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 5
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i426
  %1415 = sub i64 %1414, 16
  %1416 = load i64, i64* %PC.i424
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %PC.i424
  %1418 = inttoptr i64 %1415 to i32*
  %1419 = load i32, i32* %1418
  %1420 = sext i32 %1419 to i64
  store i64 %1420, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_401042, %struct.Memory** %MEMORY
  %loadMem_401046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 5
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RCX.i423
  %1428 = mul i64 %1427, 4
  %1429 = add i64 %1428, 8807744
  %1430 = load i64, i64* %PC.i422
  %1431 = add i64 %1430, 8
  store i64 %1431, i64* %PC.i422
  %1432 = inttoptr i64 %1429 to i32*
  %1433 = load i32, i32* %1432
  %1434 = sub i32 %1433, 1
  %1435 = icmp ult i32 %1433, 1
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1436, i8* %1437, align 1
  %1438 = and i32 %1434, 255
  %1439 = call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1442, i8* %1443, align 1
  %1444 = xor i32 %1433, 1
  %1445 = xor i32 %1444, %1434
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1448, i8* %1449, align 1
  %1450 = icmp eq i32 %1434, 0
  %1451 = zext i1 %1450 to i8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1451, i8* %1452, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = trunc i32 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1454, i8* %1455, align 1
  %1456 = lshr i32 %1433, 31
  %1457 = xor i32 %1453, %1456
  %1458 = add i32 %1457, %1456
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1460, i8* %1461, align 1
  store %struct.Memory* %loadMem_401046, %struct.Memory** %MEMORY
  %loadMem_40104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %PC.i421
  %1466 = add i64 %1465, 48
  %1467 = load i64, i64* %PC.i421
  %1468 = add i64 %1467, 6
  %1469 = load i64, i64* %PC.i421
  %1470 = add i64 %1469, 6
  store i64 %1470, i64* %PC.i421
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1472 = load i8, i8* %1471, align 1
  %1473 = icmp eq i8 %1472, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %BRANCH_TAKEN, align 1
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1476 = select i1 %1473, i64 %1466, i64 %1468
  store i64 %1476, i64* %1475, align 8
  store %struct.Memory* %loadMem_40104e, %struct.Memory** %MEMORY
  %loadBr_40104e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40104e = icmp eq i8 %loadBr_40104e, 1
  br i1 %cmpBr_40104e, label %block_.L_40107e, label %block_401054

block_401054:                                     ; preds = %block_401031
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %PC.i419
  %1484 = add i64 %1483, 5
  store i64 %1484, i64* %PC.i419
  store i64 2, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_401054, %struct.Memory** %MEMORY
  %loadMem_401059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 5
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 15
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %RBP.i418
  %1495 = sub i64 %1494, 20
  %1496 = load i64, i64* %PC.i416
  %1497 = add i64 %1496, 3
  store i64 %1497, i64* %PC.i416
  %1498 = inttoptr i64 %1495 to i32*
  %1499 = load i32, i32* %1498
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_401059, %struct.Memory** %MEMORY
  %loadMem_40105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 1
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %1506 to i32*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 15
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1509 to i64*
  %1510 = load i64, i64* %RBP.i415
  %1511 = sub i64 %1510, 32
  %1512 = load i32, i32* %EAX.i414
  %1513 = zext i32 %1512 to i64
  %1514 = load i64, i64* %PC.i413
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC.i413
  %1516 = inttoptr i64 %1511 to i32*
  store i32 %1512, i32* %1516
  store %struct.Memory* %loadMem_40105c, %struct.Memory** %MEMORY
  %loadMem_40105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 5
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %ECX.i411 = bitcast %union.anon* %1522 to i32*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1525 to i64*
  %1526 = load i32, i32* %ECX.i411
  %1527 = zext i32 %1526 to i64
  %1528 = load i64, i64* %PC.i410
  %1529 = add i64 %1528, 2
  store i64 %1529, i64* %PC.i410
  %1530 = and i64 %1527, 4294967295
  store i64 %1530, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_40105f, %struct.Memory** %MEMORY
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %PC.i409
  %1535 = add i64 %1534, 1
  store i64 %1535, i64* %PC.i409
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1538 = bitcast %union.anon* %1537 to i32*
  %1539 = load i32, i32* %1538, align 8
  %1540 = sext i32 %1539 to i64
  %1541 = lshr i64 %1540, 32
  store i64 %1541, i64* %1536, align 8
  store %struct.Memory* %loadMem_401061, %struct.Memory** %MEMORY
  %loadMem_401062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 5
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i408
  %1552 = sub i64 %1551, 32
  %1553 = load i64, i64* %PC.i406
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i406
  %1555 = inttoptr i64 %1552 to i32*
  %1556 = load i32, i32* %1555
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_401062, %struct.Memory** %MEMORY
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 5
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %ECX.i402 = bitcast %union.anon* %1563 to i32*
  %1564 = load i32, i32* %ECX.i402
  %1565 = zext i32 %1564 to i64
  %1566 = load i64, i64* %PC.i401
  %1567 = add i64 %1566, 2
  store i64 %1567, i64* %PC.i401
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1569 = bitcast %union.anon* %1568 to i32*
  %1570 = load i32, i32* %1569, align 8
  %1571 = zext i32 %1570 to i64
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1573 = bitcast %union.anon* %1572 to i32*
  %1574 = load i32, i32* %1573, align 8
  %1575 = zext i32 %1574 to i64
  %1576 = shl i64 %1565, 32
  %1577 = ashr exact i64 %1576, 32
  %1578 = shl i64 %1575, 32
  %1579 = or i64 %1578, %1571
  %1580 = sdiv i64 %1579, %1577
  %1581 = shl i64 %1580, 32
  %1582 = ashr exact i64 %1581, 32
  %1583 = icmp eq i64 %1580, %1582
  br i1 %1583, label %1588, label %1584

; <label>:1584:                                   ; preds = %block_401054
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1586 = load i64, i64* %1585, align 8
  %1587 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1586, %struct.Memory* %loadMem_401065)
  br label %routine_idivl__ecx.exit403

; <label>:1588:                                   ; preds = %block_401054
  %1589 = srem i64 %1579, %1577
  %1590 = getelementptr inbounds %union.anon, %union.anon* %1568, i64 0, i32 0
  %1591 = and i64 %1580, 4294967295
  store i64 %1591, i64* %1590, align 8
  %1592 = getelementptr inbounds %union.anon, %union.anon* %1572, i64 0, i32 0
  %1593 = and i64 %1589, 4294967295
  store i64 %1593, i64* %1592, align 8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1594, align 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1595, align 1
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1596, align 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1597, align 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1598, align 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1599, align 1
  br label %routine_idivl__ecx.exit403

routine_idivl__ecx.exit403:                       ; preds = %1584, %1588
  %1600 = phi %struct.Memory* [ %1587, %1584 ], [ %loadMem_401065, %1588 ]
  store %struct.Memory* %1600, %struct.Memory** %MEMORY
  %loadMem_401067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 7
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %EDX.i400 = bitcast %union.anon* %1606 to i32*
  %1607 = load i32, i32* %EDX.i400
  %1608 = zext i32 %1607 to i64
  %1609 = load i64, i64* %PC.i399
  %1610 = add i64 %1609, 3
  store i64 %1610, i64* %PC.i399
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1611, align 1
  %1612 = and i32 %1607, 255
  %1613 = call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1616, i8* %1617, align 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1618, align 1
  %1619 = icmp eq i32 %1607, 0
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1620, i8* %1621, align 1
  %1622 = lshr i32 %1607, 31
  %1623 = trunc i32 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1623, i8* %1624, align 1
  %1625 = lshr i32 %1607, 31
  %1626 = xor i32 %1622, %1625
  %1627 = add i32 %1626, %1625
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1629, i8* %1630, align 1
  store %struct.Memory* %loadMem_401067, %struct.Memory** %MEMORY
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %PC.i398
  %1635 = add i64 %1634, 20
  %1636 = load i64, i64* %PC.i398
  %1637 = add i64 %1636, 6
  %1638 = load i64, i64* %PC.i398
  %1639 = add i64 %1638, 6
  store i64 %1639, i64* %PC.i398
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1641 = load i8, i8* %1640, align 1
  store i8 %1641, i8* %BRANCH_TAKEN, align 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1643 = icmp ne i8 %1641, 0
  %1644 = select i1 %1643, i64 %1635, i64 %1637
  store i64 %1644, i64* %1642, align 8
  store %struct.Memory* %loadMem_40106a, %struct.Memory** %MEMORY
  %loadBr_40106a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40106a = icmp eq i8 %loadBr_40106a, 1
  br i1 %cmpBr_40106a, label %block_.L_40107e, label %block_401070

block_401070:                                     ; preds = %routine_idivl__ecx.exit403
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 1
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 15
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %RBP.i397
  %1655 = sub i64 %1654, 24
  %1656 = load i64, i64* %PC.i395
  %1657 = add i64 %1656, 3
  store i64 %1657, i64* %PC.i395
  %1658 = inttoptr i64 %1655 to i32*
  %1659 = load i32, i32* %1658
  %1660 = zext i32 %1659 to i64
  store i64 %1660, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_401070, %struct.Memory** %MEMORY
  %loadMem_401073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 1
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RAX.i394
  %1668 = load i64, i64* %PC.i393
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %PC.i393
  %1670 = trunc i64 %1667 to i32
  %1671 = add i32 1, %1670
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i394, align 8
  %1673 = icmp ult i32 %1671, %1670
  %1674 = icmp ult i32 %1671, 1
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1676, i8* %1677, align 1
  %1678 = and i32 %1671, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = xor i64 1, %1667
  %1685 = trunc i64 %1684 to i32
  %1686 = xor i32 %1685, %1671
  %1687 = lshr i32 %1686, 4
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1689, i8* %1690, align 1
  %1691 = icmp eq i32 %1671, 0
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1692, i8* %1693, align 1
  %1694 = lshr i32 %1671, 31
  %1695 = trunc i32 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1695, i8* %1696, align 1
  %1697 = lshr i32 %1670, 31
  %1698 = xor i32 %1694, %1697
  %1699 = add i32 %1698, %1694
  %1700 = icmp eq i32 %1699, 2
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1701, i8* %1702, align 1
  store %struct.Memory* %loadMem_401073, %struct.Memory** %MEMORY
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 1
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %1708 to i32*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 15
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1711 to i64*
  %1712 = load i64, i64* %RBP.i392
  %1713 = sub i64 %1712, 24
  %1714 = load i32, i32* %EAX.i391
  %1715 = zext i32 %1714 to i64
  %1716 = load i64, i64* %PC.i390
  %1717 = add i64 %1716, 3
  store i64 %1717, i64* %PC.i390
  %1718 = inttoptr i64 %1713 to i32*
  store i32 %1714, i32* %1718
  store %struct.Memory* %loadMem_401076, %struct.Memory** %MEMORY
  %loadMem_401079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i389
  %1723 = add i64 %1722, 189
  %1724 = load i64, i64* %PC.i389
  %1725 = add i64 %1724, 5
  store i64 %1725, i64* %PC.i389
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1723, i64* %1726, align 8
  store %struct.Memory* %loadMem_401079, %struct.Memory** %MEMORY
  br label %block_.L_401136

block_.L_40107e:                                  ; preds = %routine_idivl__ecx.exit403, %block_401031
  %loadMem_40107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 1
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 15
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %RBP.i388
  %1737 = sub i64 %1736, 16
  %1738 = load i64, i64* %PC.i386
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC.i386
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_40107e, %struct.Memory** %MEMORY
  %loadMem_401082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 1
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RAX.i385
  %1750 = mul i64 %1749, 4
  %1751 = add i64 %1750, 8807744
  %1752 = load i64, i64* %PC.i384
  %1753 = add i64 %1752, 8
  store i64 %1753, i64* %PC.i384
  %1754 = inttoptr i64 %1751 to i32*
  %1755 = load i32, i32* %1754
  %1756 = sub i32 %1755, 5
  %1757 = icmp ult i32 %1755, 5
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1758, i8* %1759, align 1
  %1760 = and i32 %1756, 255
  %1761 = call i32 @llvm.ctpop.i32(i32 %1760)
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1764, i8* %1765, align 1
  %1766 = xor i32 %1755, 5
  %1767 = xor i32 %1766, %1756
  %1768 = lshr i32 %1767, 4
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1770, i8* %1771, align 1
  %1772 = icmp eq i32 %1756, 0
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1773, i8* %1774, align 1
  %1775 = lshr i32 %1756, 31
  %1776 = trunc i32 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1755, 31
  %1779 = xor i32 %1775, %1778
  %1780 = add i32 %1779, %1778
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1783, align 1
  store %struct.Memory* %loadMem_401082, %struct.Memory** %MEMORY
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %PC.i383
  %1788 = add i64 %1787, 20
  %1789 = load i64, i64* %PC.i383
  %1790 = add i64 %1789, 6
  %1791 = load i64, i64* %PC.i383
  %1792 = add i64 %1791, 6
  store i64 %1792, i64* %PC.i383
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1794 = load i8, i8* %1793, align 1
  %1795 = icmp eq i8 %1794, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %BRANCH_TAKEN, align 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1798 = select i1 %1795, i64 %1788, i64 %1790
  store i64 %1798, i64* %1797, align 8
  store %struct.Memory* %loadMem_40108a, %struct.Memory** %MEMORY
  %loadBr_40108a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40108a = icmp eq i8 %loadBr_40108a, 1
  br i1 %cmpBr_40108a, label %block_.L_40109e, label %block_401090

block_401090:                                     ; preds = %block_.L_40107e
  %loadMem_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 1
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i382
  %1809 = sub i64 %1808, 24
  %1810 = load i64, i64* %PC.i380
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %PC.i380
  %1812 = inttoptr i64 %1809 to i32*
  %1813 = load i32, i32* %1812
  %1814 = zext i32 %1813 to i64
  store i64 %1814, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_401090, %struct.Memory** %MEMORY
  %loadMem_401093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 1
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RAX.i379
  %1822 = load i64, i64* %PC.i378
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i378
  %1824 = trunc i64 %1821 to i32
  %1825 = add i32 1, %1824
  %1826 = zext i32 %1825 to i64
  store i64 %1826, i64* %RAX.i379, align 8
  %1827 = icmp ult i32 %1825, %1824
  %1828 = icmp ult i32 %1825, 1
  %1829 = or i1 %1827, %1828
  %1830 = zext i1 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1830, i8* %1831, align 1
  %1832 = and i32 %1825, 255
  %1833 = call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1836, i8* %1837, align 1
  %1838 = xor i64 1, %1821
  %1839 = trunc i64 %1838 to i32
  %1840 = xor i32 %1839, %1825
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1843, i8* %1844, align 1
  %1845 = icmp eq i32 %1825, 0
  %1846 = zext i1 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1846, i8* %1847, align 1
  %1848 = lshr i32 %1825, 31
  %1849 = trunc i32 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1849, i8* %1850, align 1
  %1851 = lshr i32 %1824, 31
  %1852 = xor i32 %1848, %1851
  %1853 = add i32 %1852, %1848
  %1854 = icmp eq i32 %1853, 2
  %1855 = zext i1 %1854 to i8
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1855, i8* %1856, align 1
  store %struct.Memory* %loadMem_401093, %struct.Memory** %MEMORY
  %loadMem_401096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 33
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 1
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %1862 to i32*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 15
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1865 to i64*
  %1866 = load i64, i64* %RBP.i377
  %1867 = sub i64 %1866, 24
  %1868 = load i32, i32* %EAX.i376
  %1869 = zext i32 %1868 to i64
  %1870 = load i64, i64* %PC.i375
  %1871 = add i64 %1870, 3
  store i64 %1871, i64* %PC.i375
  %1872 = inttoptr i64 %1867 to i32*
  store i32 %1868, i32* %1872
  store %struct.Memory* %loadMem_401096, %struct.Memory** %MEMORY
  %loadMem_401099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 33
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %PC.i374
  %1877 = add i64 %1876, 157
  %1878 = load i64, i64* %PC.i374
  %1879 = add i64 %1878, 5
  store i64 %1879, i64* %PC.i374
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1877, i64* %1880, align 8
  store %struct.Memory* %loadMem_401099, %struct.Memory** %MEMORY
  br label %block_.L_401136

block_.L_40109e:                                  ; preds = %block_.L_40107e
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1883 to i64*
  %1884 = load i64, i64* %PC.i373
  %1885 = add i64 %1884, 5
  %1886 = load i64, i64* %PC.i373
  %1887 = add i64 %1886, 5
  store i64 %1887, i64* %PC.i373
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1885, i64* %1888, align 8
  store %struct.Memory* %loadMem_40109e, %struct.Memory** %MEMORY
  br label %block_.L_4010a3

block_.L_4010a3:                                  ; preds = %block_.L_401103, %block_.L_40109e
  %loadMem_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 15
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %RBP.i372
  %1899 = sub i64 %1898, 16
  %1900 = load i64, i64* %PC.i370
  %1901 = add i64 %1900, 4
  store i64 %1901, i64* %PC.i370
  %1902 = inttoptr i64 %1899 to i32*
  %1903 = load i32, i32* %1902
  %1904 = sext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_4010a3, %struct.Memory** %MEMORY
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 33
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 1
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RAX.i369
  %1912 = mul i64 %1911, 4
  %1913 = add i64 %1912, 8807744
  %1914 = load i64, i64* %PC.i368
  %1915 = add i64 %1914, 8
  store i64 %1915, i64* %PC.i368
  %1916 = inttoptr i64 %1913 to i32*
  %1917 = load i32, i32* %1916
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1918, align 1
  %1919 = and i32 %1917, 255
  %1920 = call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1923, i8* %1924, align 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1925, align 1
  %1926 = icmp eq i32 %1917, 0
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1917, 31
  %1930 = trunc i32 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1930, i8* %1931, align 1
  %1932 = lshr i32 %1917, 31
  %1933 = xor i32 %1929, %1932
  %1934 = add i32 %1933, %1932
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1936, i8* %1937, align 1
  store %struct.Memory* %loadMem_4010a7, %struct.Memory** %MEMORY
  %loadMem_4010af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %PC.i367
  %1942 = add i64 %1941, 106
  %1943 = load i64, i64* %PC.i367
  %1944 = add i64 %1943, 6
  %1945 = load i64, i64* %PC.i367
  %1946 = add i64 %1945, 6
  store i64 %1946, i64* %PC.i367
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1948 = load i8, i8* %1947, align 1
  store i8 %1948, i8* %BRANCH_TAKEN, align 1
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1950 = icmp ne i8 %1948, 0
  %1951 = select i1 %1950, i64 %1942, i64 %1944
  store i64 %1951, i64* %1949, align 8
  store %struct.Memory* %loadMem_4010af, %struct.Memory** %MEMORY
  %loadBr_4010af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010af = icmp eq i8 %loadBr_4010af, 1
  br i1 %cmpBr_4010af, label %block_.L_401119, label %block_4010b5

block_4010b5:                                     ; preds = %block_.L_4010a3
  %loadMem_4010b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 1
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1960 to i64*
  %1961 = load i64, i64* %RBP.i366
  %1962 = sub i64 %1961, 16
  %1963 = load i64, i64* %PC.i364
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC.i364
  %1965 = inttoptr i64 %1962 to i32*
  %1966 = load i32, i32* %1965
  %1967 = sext i32 %1966 to i64
  store i64 %1967, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_4010b5, %struct.Memory** %MEMORY
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 1
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %RAX.i363
  %1975 = mul i64 %1974, 4
  %1976 = add i64 %1975, 8807744
  %1977 = load i64, i64* %PC.i362
  %1978 = add i64 %1977, 8
  store i64 %1978, i64* %PC.i362
  %1979 = inttoptr i64 %1976 to i32*
  %1980 = load i32, i32* %1979
  %1981 = sub i32 %1980, 11
  %1982 = icmp ult i32 %1980, 11
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1983, i8* %1984, align 1
  %1985 = and i32 %1981, 255
  %1986 = call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1989, i8* %1990, align 1
  %1991 = xor i32 %1980, 11
  %1992 = xor i32 %1991, %1981
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1995, i8* %1996, align 1
  %1997 = icmp eq i32 %1981, 0
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i32 %1981, 31
  %2001 = trunc i32 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2001, i8* %2002, align 1
  %2003 = lshr i32 %1980, 31
  %2004 = xor i32 %2000, %2003
  %2005 = add i32 %2004, %2003
  %2006 = icmp eq i32 %2005, 2
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2007, i8* %2008, align 1
  store %struct.Memory* %loadMem_4010b9, %struct.Memory** %MEMORY
  %loadMem_4010c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %PC.i361
  %2013 = add i64 %2012, 24
  %2014 = load i64, i64* %PC.i361
  %2015 = add i64 %2014, 6
  %2016 = load i64, i64* %PC.i361
  %2017 = add i64 %2016, 6
  store i64 %2017, i64* %PC.i361
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2019 = load i8, i8* %2018, align 1
  store i8 %2019, i8* %BRANCH_TAKEN, align 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2021 = icmp ne i8 %2019, 0
  %2022 = select i1 %2021, i64 %2013, i64 %2015
  store i64 %2022, i64* %2020, align 8
  store %struct.Memory* %loadMem_4010c1, %struct.Memory** %MEMORY
  %loadBr_4010c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010c1 = icmp eq i8 %loadBr_4010c1, 1
  br i1 %cmpBr_4010c1, label %block_.L_4010d9, label %block_4010c7

block_4010c7:                                     ; preds = %block_4010b5
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i360
  %2033 = sub i64 %2032, 16
  %2034 = load i64, i64* %PC.i358
  %2035 = add i64 %2034, 4
  store i64 %2035, i64* %PC.i358
  %2036 = inttoptr i64 %2033 to i32*
  %2037 = load i32, i32* %2036
  %2038 = sext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_4010c7, %struct.Memory** %MEMORY
  %loadMem_4010cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 1
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %RAX.i357
  %2046 = mul i64 %2045, 4
  %2047 = add i64 %2046, 8807744
  %2048 = load i64, i64* %PC.i356
  %2049 = add i64 %2048, 8
  store i64 %2049, i64* %PC.i356
  %2050 = inttoptr i64 %2047 to i32*
  %2051 = load i32, i32* %2050
  %2052 = sub i32 %2051, 9
  %2053 = icmp ult i32 %2051, 9
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2054, i8* %2055, align 1
  %2056 = and i32 %2052, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1
  %2062 = xor i32 %2051, 9
  %2063 = xor i32 %2062, %2052
  %2064 = lshr i32 %2063, 4
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2066, i8* %2067, align 1
  %2068 = icmp eq i32 %2052, 0
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2052, 31
  %2072 = trunc i32 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2072, i8* %2073, align 1
  %2074 = lshr i32 %2051, 31
  %2075 = xor i32 %2071, %2074
  %2076 = add i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2078, i8* %2079, align 1
  store %struct.Memory* %loadMem_4010cb, %struct.Memory** %MEMORY
  %loadMem_4010d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %PC.i355
  %2084 = add i64 %2083, 20
  %2085 = load i64, i64* %PC.i355
  %2086 = add i64 %2085, 6
  %2087 = load i64, i64* %PC.i355
  %2088 = add i64 %2087, 6
  store i64 %2088, i64* %PC.i355
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2090 = load i8, i8* %2089, align 1
  %2091 = icmp eq i8 %2090, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %BRANCH_TAKEN, align 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2094 = select i1 %2091, i64 %2084, i64 %2086
  store i64 %2094, i64* %2093, align 8
  store %struct.Memory* %loadMem_4010d3, %struct.Memory** %MEMORY
  %loadBr_4010d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010d3 = icmp eq i8 %loadBr_4010d3, 1
  br i1 %cmpBr_4010d3, label %block_.L_4010e7, label %block_.L_4010d9

block_.L_4010d9:                                  ; preds = %block_4010c7, %block_4010b5
  %loadMem_4010d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 1
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 15
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RBP.i354
  %2105 = sub i64 %2104, 24
  %2106 = load i64, i64* %PC.i352
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i352
  %2108 = inttoptr i64 %2105 to i32*
  %2109 = load i32, i32* %2108
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_4010d9, %struct.Memory** %MEMORY
  %loadMem_4010dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 33
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 1
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RAX.i351
  %2118 = load i64, i64* %PC.i350
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %PC.i350
  %2120 = trunc i64 %2117 to i32
  %2121 = add i32 1, %2120
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RAX.i351, align 8
  %2123 = icmp ult i32 %2121, %2120
  %2124 = icmp ult i32 %2121, 1
  %2125 = or i1 %2123, %2124
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2126, i8* %2127, align 1
  %2128 = and i32 %2121, 255
  %2129 = call i32 @llvm.ctpop.i32(i32 %2128)
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2132, i8* %2133, align 1
  %2134 = xor i64 1, %2117
  %2135 = trunc i64 %2134 to i32
  %2136 = xor i32 %2135, %2121
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2139, i8* %2140, align 1
  %2141 = icmp eq i32 %2121, 0
  %2142 = zext i1 %2141 to i8
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2142, i8* %2143, align 1
  %2144 = lshr i32 %2121, 31
  %2145 = trunc i32 %2144 to i8
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2145, i8* %2146, align 1
  %2147 = lshr i32 %2120, 31
  %2148 = xor i32 %2144, %2147
  %2149 = add i32 %2148, %2144
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2151, i8* %2152, align 1
  store %struct.Memory* %loadMem_4010dc, %struct.Memory** %MEMORY
  %loadMem_4010df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 1
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %2158 to i32*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 15
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %RBP.i349
  %2163 = sub i64 %2162, 24
  %2164 = load i32, i32* %EAX.i348
  %2165 = zext i32 %2164 to i64
  %2166 = load i64, i64* %PC.i347
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i347
  %2168 = inttoptr i64 %2163 to i32*
  store i32 %2164, i32* %2168
  store %struct.Memory* %loadMem_4010df, %struct.Memory** %MEMORY
  %loadMem_4010e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2171 to i64*
  %2172 = load i64, i64* %PC.i346
  %2173 = add i64 %2172, 55
  %2174 = load i64, i64* %PC.i346
  %2175 = add i64 %2174, 5
  store i64 %2175, i64* %PC.i346
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2173, i64* %2176, align 8
  store %struct.Memory* %loadMem_4010e2, %struct.Memory** %MEMORY
  br label %block_.L_401119

block_.L_4010e7:                                  ; preds = %block_4010c7
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 1
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RBP.i345
  %2187 = sub i64 %2186, 16
  %2188 = load i64, i64* %PC.i343
  %2189 = add i64 %2188, 4
  store i64 %2189, i64* %PC.i343
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = sext i32 %2191 to i64
  store i64 %2192, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_4010e7, %struct.Memory** %MEMORY
  %loadMem_4010eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 1
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2198 to i64*
  %2199 = load i64, i64* %RAX.i342
  %2200 = mul i64 %2199, 4
  %2201 = add i64 %2200, 8807744
  %2202 = load i64, i64* %PC.i341
  %2203 = add i64 %2202, 8
  store i64 %2203, i64* %PC.i341
  %2204 = inttoptr i64 %2201 to i32*
  %2205 = load i32, i32* %2204
  %2206 = sub i32 %2205, 13
  %2207 = icmp ult i32 %2205, 13
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2208, i8* %2209, align 1
  %2210 = and i32 %2206, 255
  %2211 = call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2214, i8* %2215, align 1
  %2216 = xor i32 %2205, 13
  %2217 = xor i32 %2216, %2206
  %2218 = lshr i32 %2217, 4
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2220, i8* %2221, align 1
  %2222 = icmp eq i32 %2206, 0
  %2223 = zext i1 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2223, i8* %2224, align 1
  %2225 = lshr i32 %2206, 31
  %2226 = trunc i32 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2226, i8* %2227, align 1
  %2228 = lshr i32 %2205, 31
  %2229 = xor i32 %2225, %2228
  %2230 = add i32 %2229, %2228
  %2231 = icmp eq i32 %2230, 2
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2232, i8* %2233, align 1
  store %struct.Memory* %loadMem_4010eb, %struct.Memory** %MEMORY
  %loadMem_4010f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %PC.i340
  %2238 = add i64 %2237, 11
  %2239 = load i64, i64* %PC.i340
  %2240 = add i64 %2239, 6
  %2241 = load i64, i64* %PC.i340
  %2242 = add i64 %2241, 6
  store i64 %2242, i64* %PC.i340
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2244 = load i8, i8* %2243, align 1
  store i8 %2244, i8* %BRANCH_TAKEN, align 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2246 = icmp ne i8 %2244, 0
  %2247 = select i1 %2246, i64 %2238, i64 %2240
  store i64 %2247, i64* %2245, align 8
  store %struct.Memory* %loadMem_4010f3, %struct.Memory** %MEMORY
  %loadBr_4010f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010f3 = icmp eq i8 %loadBr_4010f3, 1
  br i1 %cmpBr_4010f3, label %block_.L_4010fe, label %block_4010f9

block_4010f9:                                     ; preds = %block_.L_4010e7
  %loadMem_4010f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %PC.i339
  %2252 = add i64 %2251, 32
  %2253 = load i64, i64* %PC.i339
  %2254 = add i64 %2253, 5
  store i64 %2254, i64* %PC.i339
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2252, i64* %2255, align 8
  store %struct.Memory* %loadMem_4010f9, %struct.Memory** %MEMORY
  br label %block_.L_401119

block_.L_4010fe:                                  ; preds = %block_.L_4010e7
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %PC.i338
  %2260 = add i64 %2259, 5
  %2261 = load i64, i64* %PC.i338
  %2262 = add i64 %2261, 5
  store i64 %2262, i64* %PC.i338
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2260, i64* %2263, align 8
  store %struct.Memory* %loadMem_4010fe, %struct.Memory** %MEMORY
  br label %block_.L_401103

block_.L_401103:                                  ; preds = %block_.L_4010fe
  %loadMem_401103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RBP.i337
  %2274 = sub i64 %2273, 20
  %2275 = load i64, i64* %PC.i335
  %2276 = add i64 %2275, 4
  store i64 %2276, i64* %PC.i335
  %2277 = inttoptr i64 %2274 to i32*
  %2278 = load i32, i32* %2277
  %2279 = sext i32 %2278 to i64
  store i64 %2279, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_401103, %struct.Memory** %MEMORY
  %loadMem_401107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 5
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RAX.i333
  %2290 = mul i64 %2289, 4
  %2291 = add i64 %2290, 4347168
  %2292 = load i64, i64* %PC.i332
  %2293 = add i64 %2292, 7
  store i64 %2293, i64* %PC.i332
  %2294 = inttoptr i64 %2291 to i32*
  %2295 = load i32, i32* %2294
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_401107, %struct.Memory** %MEMORY
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 5
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RCX.i330
  %2307 = load i64, i64* %RBP.i331
  %2308 = sub i64 %2307, 16
  %2309 = load i64, i64* %PC.i329
  %2310 = add i64 %2309, 3
  store i64 %2310, i64* %PC.i329
  %2311 = trunc i64 %2306 to i32
  %2312 = inttoptr i64 %2308 to i32*
  %2313 = load i32, i32* %2312
  %2314 = add i32 %2313, %2311
  %2315 = zext i32 %2314 to i64
  store i64 %2315, i64* %RCX.i330, align 8
  %2316 = icmp ult i32 %2314, %2311
  %2317 = icmp ult i32 %2314, %2313
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2319, i8* %2320, align 1
  %2321 = and i32 %2314, 255
  %2322 = call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2325, i8* %2326, align 1
  %2327 = xor i32 %2313, %2311
  %2328 = xor i32 %2327, %2314
  %2329 = lshr i32 %2328, 4
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2331, i8* %2332, align 1
  %2333 = icmp eq i32 %2314, 0
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2334, i8* %2335, align 1
  %2336 = lshr i32 %2314, 31
  %2337 = trunc i32 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2337, i8* %2338, align 1
  %2339 = lshr i32 %2311, 31
  %2340 = lshr i32 %2313, 31
  %2341 = xor i32 %2336, %2339
  %2342 = xor i32 %2336, %2340
  %2343 = add i32 %2341, %2342
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2345, i8* %2346, align 1
  store %struct.Memory* %loadMem_40110e, %struct.Memory** %MEMORY
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 5
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %ECX.i327 = bitcast %union.anon* %2352 to i32*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RBP.i328
  %2357 = sub i64 %2356, 16
  %2358 = load i32, i32* %ECX.i327
  %2359 = zext i32 %2358 to i64
  %2360 = load i64, i64* %PC.i326
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %PC.i326
  %2362 = inttoptr i64 %2357 to i32*
  store i32 %2358, i32* %2362
  store %struct.Memory* %loadMem_401111, %struct.Memory** %MEMORY
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i325
  %2367 = add i64 %2366, -113
  %2368 = load i64, i64* %PC.i325
  %2369 = add i64 %2368, 5
  store i64 %2369, i64* %PC.i325
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2367, i64* %2370, align 8
  store %struct.Memory* %loadMem_401114, %struct.Memory** %MEMORY
  br label %block_.L_4010a3

block_.L_401119:                                  ; preds = %block_4010f9, %block_.L_4010d9, %block_.L_4010a3
  %loadMem_401119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %PC.i324
  %2375 = add i64 %2374, 5
  %2376 = load i64, i64* %PC.i324
  %2377 = add i64 %2376, 5
  store i64 %2377, i64* %PC.i324
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2375, i64* %2378, align 8
  store %struct.Memory* %loadMem_401119, %struct.Memory** %MEMORY
  br label %block_.L_40111e

block_.L_40111e:                                  ; preds = %block_.L_401119
  %loadMem_40111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %PC.i323
  %2383 = add i64 %2382, 5
  %2384 = load i64, i64* %PC.i323
  %2385 = add i64 %2384, 5
  store i64 %2385, i64* %PC.i323
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2383, i64* %2386, align 8
  store %struct.Memory* %loadMem_40111e, %struct.Memory** %MEMORY
  br label %block_.L_401123

block_.L_401123:                                  ; preds = %block_.L_40111e
  %loadMem_401123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %PC.i322
  %2391 = add i64 %2390, 5
  %2392 = load i64, i64* %PC.i322
  %2393 = add i64 %2392, 5
  store i64 %2393, i64* %PC.i322
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2391, i64* %2394, align 8
  store %struct.Memory* %loadMem_401123, %struct.Memory** %MEMORY
  br label %block_.L_401128

block_.L_401128:                                  ; preds = %block_.L_401123
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 1
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 15
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %2403 to i64*
  %2404 = load i64, i64* %RBP.i321
  %2405 = sub i64 %2404, 20
  %2406 = load i64, i64* %PC.i319
  %2407 = add i64 %2406, 3
  store i64 %2407, i64* %PC.i319
  %2408 = inttoptr i64 %2405 to i32*
  %2409 = load i32, i32* %2408
  %2410 = zext i32 %2409 to i64
  store i64 %2410, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_401128, %struct.Memory** %MEMORY
  %loadMem_40112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %RAX.i318
  %2418 = load i64, i64* %PC.i317
  %2419 = add i64 %2418, 3
  store i64 %2419, i64* %PC.i317
  %2420 = trunc i64 %2417 to i32
  %2421 = add i32 1, %2420
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RAX.i318, align 8
  %2423 = icmp ult i32 %2421, %2420
  %2424 = icmp ult i32 %2421, 1
  %2425 = or i1 %2423, %2424
  %2426 = zext i1 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2426, i8* %2427, align 1
  %2428 = and i32 %2421, 255
  %2429 = call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2432, i8* %2433, align 1
  %2434 = xor i64 1, %2417
  %2435 = trunc i64 %2434 to i32
  %2436 = xor i32 %2435, %2421
  %2437 = lshr i32 %2436, 4
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2439, i8* %2440, align 1
  %2441 = icmp eq i32 %2421, 0
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2442, i8* %2443, align 1
  %2444 = lshr i32 %2421, 31
  %2445 = trunc i32 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2445, i8* %2446, align 1
  %2447 = lshr i32 %2420, 31
  %2448 = xor i32 %2444, %2447
  %2449 = add i32 %2448, %2444
  %2450 = icmp eq i32 %2449, 2
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2451, i8* %2452, align 1
  store %struct.Memory* %loadMem_40112b, %struct.Memory** %MEMORY
  %loadMem_40112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 1
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %EAX.i315 = bitcast %union.anon* %2458 to i32*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 15
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %2461 to i64*
  %2462 = load i64, i64* %RBP.i316
  %2463 = sub i64 %2462, 20
  %2464 = load i32, i32* %EAX.i315
  %2465 = zext i32 %2464 to i64
  %2466 = load i64, i64* %PC.i314
  %2467 = add i64 %2466, 3
  store i64 %2467, i64* %PC.i314
  %2468 = inttoptr i64 %2463 to i32*
  store i32 %2464, i32* %2468
  store %struct.Memory* %loadMem_40112e, %struct.Memory** %MEMORY
  %loadMem_401131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %PC.i313
  %2473 = add i64 %2472, -266
  %2474 = load i64, i64* %PC.i313
  %2475 = add i64 %2474, 5
  store i64 %2475, i64* %PC.i313
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2473, i64* %2476, align 8
  store %struct.Memory* %loadMem_401131, %struct.Memory** %MEMORY
  br label %block_.L_401027

block_.L_401136:                                  ; preds = %block_401090, %block_401070, %block_.L_401027
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i312
  %2484 = sub i64 %2483, 20
  %2485 = load i64, i64* %PC.i311
  %2486 = add i64 %2485, 7
  store i64 %2486, i64* %PC.i311
  %2487 = inttoptr i64 %2484 to i32*
  store i32 0, i32* %2487
  store %struct.Memory* %loadMem_401136, %struct.Memory** %MEMORY
  br label %block_.L_40113d

block_.L_40113d:                                  ; preds = %block_.L_401178, %block_.L_401136
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 33
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 15
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RBP.i310
  %2495 = sub i64 %2494, 20
  %2496 = load i64, i64* %PC.i309
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC.i309
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = sub i32 %2499, 8
  %2501 = icmp ult i32 %2499, 8
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2502, i8* %2503, align 1
  %2504 = and i32 %2500, 255
  %2505 = call i32 @llvm.ctpop.i32(i32 %2504)
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  %2508 = xor i8 %2507, 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2508, i8* %2509, align 1
  %2510 = xor i32 %2499, 8
  %2511 = xor i32 %2510, %2500
  %2512 = lshr i32 %2511, 4
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2514, i8* %2515, align 1
  %2516 = icmp eq i32 %2500, 0
  %2517 = zext i1 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2517, i8* %2518, align 1
  %2519 = lshr i32 %2500, 31
  %2520 = trunc i32 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2520, i8* %2521, align 1
  %2522 = lshr i32 %2499, 31
  %2523 = xor i32 %2519, %2522
  %2524 = add i32 %2523, %2522
  %2525 = icmp eq i32 %2524, 2
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2526, i8* %2527, align 1
  store %struct.Memory* %loadMem_40113d, %struct.Memory** %MEMORY
  %loadMem_401141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %PC.i308
  %2532 = add i64 %2531, 69
  %2533 = load i64, i64* %PC.i308
  %2534 = add i64 %2533, 6
  %2535 = load i64, i64* %PC.i308
  %2536 = add i64 %2535, 6
  store i64 %2536, i64* %PC.i308
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2538 = load i8, i8* %2537, align 1
  %2539 = icmp ne i8 %2538, 0
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2541 = load i8, i8* %2540, align 1
  %2542 = icmp ne i8 %2541, 0
  %2543 = xor i1 %2539, %2542
  %2544 = xor i1 %2543, true
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %BRANCH_TAKEN, align 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2547 = select i1 %2543, i64 %2534, i64 %2532
  store i64 %2547, i64* %2546, align 8
  store %struct.Memory* %loadMem_401141, %struct.Memory** %MEMORY
  %loadBr_401141 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401141 = icmp eq i8 %loadBr_401141, 1
  br i1 %cmpBr_401141, label %block_.L_401186, label %block_401147

block_401147:                                     ; preds = %block_.L_40113d
  %loadMem_401147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 1
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 15
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2556 to i64*
  %2557 = load i64, i64* %RBP.i307
  %2558 = sub i64 %2557, 8
  %2559 = load i64, i64* %PC.i305
  %2560 = add i64 %2559, 3
  store i64 %2560, i64* %PC.i305
  %2561 = inttoptr i64 %2558 to i32*
  %2562 = load i32, i32* %2561
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_401147, %struct.Memory** %MEMORY
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 5
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i304
  %2574 = sub i64 %2573, 20
  %2575 = load i64, i64* %PC.i302
  %2576 = add i64 %2575, 4
  store i64 %2576, i64* %PC.i302
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577
  %2579 = sext i32 %2578 to i64
  store i64 %2579, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_40114a, %struct.Memory** %MEMORY
  %loadMem_40114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RAX.i300
  %2590 = load i64, i64* %RCX.i301
  %2591 = mul i64 %2590, 4
  %2592 = add i64 %2591, 4347184
  %2593 = load i64, i64* %PC.i299
  %2594 = add i64 %2593, 7
  store i64 %2594, i64* %PC.i299
  %2595 = trunc i64 %2589 to i32
  %2596 = inttoptr i64 %2592 to i32*
  %2597 = load i32, i32* %2596
  %2598 = add i32 %2597, %2595
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RAX.i300, align 8
  %2600 = icmp ult i32 %2598, %2595
  %2601 = icmp ult i32 %2598, %2597
  %2602 = or i1 %2600, %2601
  %2603 = zext i1 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2603, i8* %2604, align 1
  %2605 = and i32 %2598, 255
  %2606 = call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2609, i8* %2610, align 1
  %2611 = xor i32 %2597, %2595
  %2612 = xor i32 %2611, %2598
  %2613 = lshr i32 %2612, 4
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2615, i8* %2616, align 1
  %2617 = icmp eq i32 %2598, 0
  %2618 = zext i1 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2618, i8* %2619, align 1
  %2620 = lshr i32 %2598, 31
  %2621 = trunc i32 %2620 to i8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2621, i8* %2622, align 1
  %2623 = lshr i32 %2595, 31
  %2624 = lshr i32 %2597, 31
  %2625 = xor i32 %2620, %2623
  %2626 = xor i32 %2620, %2624
  %2627 = add i32 %2625, %2626
  %2628 = icmp eq i32 %2627, 2
  %2629 = zext i1 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2629, i8* %2630, align 1
  store %struct.Memory* %loadMem_40114e, %struct.Memory** %MEMORY
  %loadMem_401155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %2636 to i32*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 15
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %RBP.i298
  %2641 = sub i64 %2640, 16
  %2642 = load i32, i32* %EAX.i297
  %2643 = zext i32 %2642 to i64
  %2644 = load i64, i64* %PC.i296
  %2645 = add i64 %2644, 3
  store i64 %2645, i64* %PC.i296
  %2646 = inttoptr i64 %2641 to i32*
  store i32 %2642, i32* %2646
  store %struct.Memory* %loadMem_401155, %struct.Memory** %MEMORY
  %loadMem_401158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 5
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 15
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RBP.i295
  %2657 = sub i64 %2656, 16
  %2658 = load i64, i64* %PC.i293
  %2659 = add i64 %2658, 4
  store i64 %2659, i64* %PC.i293
  %2660 = inttoptr i64 %2657 to i32*
  %2661 = load i32, i32* %2660
  %2662 = sext i32 %2661 to i64
  store i64 %2662, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_401158, %struct.Memory** %MEMORY
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 5
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %RCX.i292
  %2670 = mul i64 %2669, 4
  %2671 = add i64 %2670, 8807744
  %2672 = load i64, i64* %PC.i291
  %2673 = add i64 %2672, 8
  store i64 %2673, i64* %PC.i291
  %2674 = inttoptr i64 %2671 to i32*
  %2675 = load i32, i32* %2674
  %2676 = sub i32 %2675, 3
  %2677 = icmp ult i32 %2675, 3
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2678, i8* %2679, align 1
  %2680 = and i32 %2676, 255
  %2681 = call i32 @llvm.ctpop.i32(i32 %2680)
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = xor i8 %2683, 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2684, i8* %2685, align 1
  %2686 = xor i32 %2675, 3
  %2687 = xor i32 %2686, %2676
  %2688 = lshr i32 %2687, 4
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2690, i8* %2691, align 1
  %2692 = icmp eq i32 %2676, 0
  %2693 = zext i1 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2693, i8* %2694, align 1
  %2695 = lshr i32 %2676, 31
  %2696 = trunc i32 %2695 to i8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2696, i8* %2697, align 1
  %2698 = lshr i32 %2675, 31
  %2699 = xor i32 %2695, %2698
  %2700 = add i32 %2699, %2698
  %2701 = icmp eq i32 %2700, 2
  %2702 = zext i1 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2702, i8* %2703, align 1
  store %struct.Memory* %loadMem_40115c, %struct.Memory** %MEMORY
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %PC.i290
  %2708 = add i64 %2707, 15
  %2709 = load i64, i64* %PC.i290
  %2710 = add i64 %2709, 6
  %2711 = load i64, i64* %PC.i290
  %2712 = add i64 %2711, 6
  store i64 %2712, i64* %PC.i290
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2714 = load i8, i8* %2713, align 1
  %2715 = icmp eq i8 %2714, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %BRANCH_TAKEN, align 1
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2718 = select i1 %2715, i64 %2708, i64 %2710
  store i64 %2718, i64* %2717, align 8
  store %struct.Memory* %loadMem_401164, %struct.Memory** %MEMORY
  %loadBr_401164 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401164 = icmp eq i8 %loadBr_401164, 1
  br i1 %cmpBr_401164, label %block_.L_401173, label %block_40116a

block_40116a:                                     ; preds = %block_401147
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 1
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 15
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2727 to i64*
  %2728 = load i64, i64* %RBP.i289
  %2729 = sub i64 %2728, 24
  %2730 = load i64, i64* %PC.i287
  %2731 = add i64 %2730, 3
  store i64 %2731, i64* %PC.i287
  %2732 = inttoptr i64 %2729 to i32*
  %2733 = load i32, i32* %2732
  %2734 = zext i32 %2733 to i64
  store i64 %2734, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_40116a, %struct.Memory** %MEMORY
  %loadMem_40116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RAX.i286
  %2742 = load i64, i64* %PC.i285
  %2743 = add i64 %2742, 3
  store i64 %2743, i64* %PC.i285
  %2744 = trunc i64 %2741 to i32
  %2745 = add i32 1, %2744
  %2746 = zext i32 %2745 to i64
  store i64 %2746, i64* %RAX.i286, align 8
  %2747 = icmp ult i32 %2745, %2744
  %2748 = icmp ult i32 %2745, 1
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2750, i8* %2751, align 1
  %2752 = and i32 %2745, 255
  %2753 = call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2756, i8* %2757, align 1
  %2758 = xor i64 1, %2741
  %2759 = trunc i64 %2758 to i32
  %2760 = xor i32 %2759, %2745
  %2761 = lshr i32 %2760, 4
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2763, i8* %2764, align 1
  %2765 = icmp eq i32 %2745, 0
  %2766 = zext i1 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2766, i8* %2767, align 1
  %2768 = lshr i32 %2745, 31
  %2769 = trunc i32 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2769, i8* %2770, align 1
  %2771 = lshr i32 %2744, 31
  %2772 = xor i32 %2768, %2771
  %2773 = add i32 %2772, %2768
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2775, i8* %2776, align 1
  store %struct.Memory* %loadMem_40116d, %struct.Memory** %MEMORY
  %loadMem_401170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 1
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %2782 to i32*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 15
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RBP.i284
  %2787 = sub i64 %2786, 24
  %2788 = load i32, i32* %EAX.i283
  %2789 = zext i32 %2788 to i64
  %2790 = load i64, i64* %PC.i282
  %2791 = add i64 %2790, 3
  store i64 %2791, i64* %PC.i282
  %2792 = inttoptr i64 %2787 to i32*
  store i32 %2788, i32* %2792
  store %struct.Memory* %loadMem_401170, %struct.Memory** %MEMORY
  br label %block_.L_401173

block_.L_401173:                                  ; preds = %block_40116a, %block_401147
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %PC.i281
  %2797 = add i64 %2796, 5
  %2798 = load i64, i64* %PC.i281
  %2799 = add i64 %2798, 5
  store i64 %2799, i64* %PC.i281
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2797, i64* %2800, align 8
  store %struct.Memory* %loadMem_401173, %struct.Memory** %MEMORY
  br label %block_.L_401178

block_.L_401178:                                  ; preds = %block_.L_401173
  %loadMem_401178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i280
  %2811 = sub i64 %2810, 20
  %2812 = load i64, i64* %PC.i278
  %2813 = add i64 %2812, 3
  store i64 %2813, i64* %PC.i278
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_401178, %struct.Memory** %MEMORY
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 1
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2822 to i64*
  %2823 = load i64, i64* %RAX.i277
  %2824 = load i64, i64* %PC.i276
  %2825 = add i64 %2824, 3
  store i64 %2825, i64* %PC.i276
  %2826 = trunc i64 %2823 to i32
  %2827 = add i32 1, %2826
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RAX.i277, align 8
  %2829 = icmp ult i32 %2827, %2826
  %2830 = icmp ult i32 %2827, 1
  %2831 = or i1 %2829, %2830
  %2832 = zext i1 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2832, i8* %2833, align 1
  %2834 = and i32 %2827, 255
  %2835 = call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2838, i8* %2839, align 1
  %2840 = xor i64 1, %2823
  %2841 = trunc i64 %2840 to i32
  %2842 = xor i32 %2841, %2827
  %2843 = lshr i32 %2842, 4
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2845, i8* %2846, align 1
  %2847 = icmp eq i32 %2827, 0
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2848, i8* %2849, align 1
  %2850 = lshr i32 %2827, 31
  %2851 = trunc i32 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2851, i8* %2852, align 1
  %2853 = lshr i32 %2826, 31
  %2854 = xor i32 %2850, %2853
  %2855 = add i32 %2854, %2850
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2857, i8* %2858, align 1
  store %struct.Memory* %loadMem_40117b, %struct.Memory** %MEMORY
  %loadMem_40117e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 1
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %2864 to i32*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 15
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %RBP.i275
  %2869 = sub i64 %2868, 20
  %2870 = load i32, i32* %EAX.i274
  %2871 = zext i32 %2870 to i64
  %2872 = load i64, i64* %PC.i273
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %PC.i273
  %2874 = inttoptr i64 %2869 to i32*
  store i32 %2870, i32* %2874
  store %struct.Memory* %loadMem_40117e, %struct.Memory** %MEMORY
  %loadMem_401181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %PC.i272
  %2879 = add i64 %2878, -68
  %2880 = load i64, i64* %PC.i272
  %2881 = add i64 %2880, 5
  store i64 %2881, i64* %PC.i272
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2879, i64* %2882, align 8
  store %struct.Memory* %loadMem_401181, %struct.Memory** %MEMORY
  br label %block_.L_40113d

block_.L_401186:                                  ; preds = %block_.L_40113d
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %PC.i271
  %2887 = add i64 %2886, 576
  %2888 = load i64, i64* %PC.i271
  %2889 = add i64 %2888, 5
  store i64 %2889, i64* %PC.i271
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2887, i64* %2890, align 8
  store %struct.Memory* %loadMem_401186, %struct.Memory** %MEMORY
  br label %block_.L_4013c6

block_.L_40118b:                                  ; preds = %routine_idivl__ecx.exit541
  %loadMem_40118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 15
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2896 to i64*
  %2897 = load i64, i64* %RBP.i270
  %2898 = sub i64 %2897, 20
  %2899 = load i64, i64* %PC.i269
  %2900 = add i64 %2899, 7
  store i64 %2900, i64* %PC.i269
  %2901 = inttoptr i64 %2898 to i32*
  store i32 0, i32* %2901
  store %struct.Memory* %loadMem_40118b, %struct.Memory** %MEMORY
  br label %block_.L_401192

block_.L_401192:                                  ; preds = %block_.L_40124d, %block_.L_40118b
  %loadMem_401192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 15
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %RBP.i268
  %2909 = sub i64 %2908, 20
  %2910 = load i64, i64* %PC.i267
  %2911 = add i64 %2910, 4
  store i64 %2911, i64* %PC.i267
  %2912 = inttoptr i64 %2909 to i32*
  %2913 = load i32, i32* %2912
  %2914 = sub i32 %2913, 4
  %2915 = icmp ult i32 %2913, 4
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2916, i8* %2917, align 1
  %2918 = and i32 %2914, 255
  %2919 = call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2922, i8* %2923, align 1
  %2924 = xor i32 %2913, 4
  %2925 = xor i32 %2924, %2914
  %2926 = lshr i32 %2925, 4
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2928, i8* %2929, align 1
  %2930 = icmp eq i32 %2914, 0
  %2931 = zext i1 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2931, i8* %2932, align 1
  %2933 = lshr i32 %2914, 31
  %2934 = trunc i32 %2933 to i8
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2934, i8* %2935, align 1
  %2936 = lshr i32 %2913, 31
  %2937 = xor i32 %2933, %2936
  %2938 = add i32 %2937, %2936
  %2939 = icmp eq i32 %2938, 2
  %2940 = zext i1 %2939 to i8
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2940, i8* %2941, align 1
  store %struct.Memory* %loadMem_401192, %struct.Memory** %MEMORY
  %loadMem_401196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %PC.i266
  %2946 = add i64 %2945, 197
  %2947 = load i64, i64* %PC.i266
  %2948 = add i64 %2947, 6
  %2949 = load i64, i64* %PC.i266
  %2950 = add i64 %2949, 6
  store i64 %2950, i64* %PC.i266
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2952 = load i8, i8* %2951, align 1
  %2953 = icmp ne i8 %2952, 0
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2955 = load i8, i8* %2954, align 1
  %2956 = icmp ne i8 %2955, 0
  %2957 = xor i1 %2953, %2956
  %2958 = xor i1 %2957, true
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %BRANCH_TAKEN, align 1
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2961 = select i1 %2957, i64 %2948, i64 %2946
  store i64 %2961, i64* %2960, align 8
  store %struct.Memory* %loadMem_401196, %struct.Memory** %MEMORY
  %loadBr_401196 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401196 = icmp eq i8 %loadBr_401196, 1
  br i1 %cmpBr_401196, label %block_.L_40125b, label %block_40119c

block_40119c:                                     ; preds = %block_.L_401192
  %loadMem_40119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 1
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i265
  %2972 = sub i64 %2971, 8
  %2973 = load i64, i64* %PC.i263
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i263
  %2975 = inttoptr i64 %2972 to i32*
  %2976 = load i32, i32* %2975
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_40119c, %struct.Memory** %MEMORY
  %loadMem_40119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 5
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 15
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %RBP.i262
  %2988 = sub i64 %2987, 20
  %2989 = load i64, i64* %PC.i260
  %2990 = add i64 %2989, 4
  store i64 %2990, i64* %PC.i260
  %2991 = inttoptr i64 %2988 to i32*
  %2992 = load i32, i32* %2991
  %2993 = sext i32 %2992 to i64
  store i64 %2993, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_40119f, %struct.Memory** %MEMORY
  %loadMem_4011a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 1
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 5
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %3002 to i64*
  %3003 = load i64, i64* %RAX.i258
  %3004 = load i64, i64* %RCX.i259
  %3005 = mul i64 %3004, 4
  %3006 = add i64 %3005, 4347152
  %3007 = load i64, i64* %PC.i257
  %3008 = add i64 %3007, 7
  store i64 %3008, i64* %PC.i257
  %3009 = trunc i64 %3003 to i32
  %3010 = inttoptr i64 %3006 to i32*
  %3011 = load i32, i32* %3010
  %3012 = add i32 %3011, %3009
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RAX.i258, align 8
  %3014 = icmp ult i32 %3012, %3009
  %3015 = icmp ult i32 %3012, %3011
  %3016 = or i1 %3014, %3015
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3017, i8* %3018, align 1
  %3019 = and i32 %3012, 255
  %3020 = call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3023, i8* %3024, align 1
  %3025 = xor i32 %3011, %3009
  %3026 = xor i32 %3025, %3012
  %3027 = lshr i32 %3026, 4
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3029, i8* %3030, align 1
  %3031 = icmp eq i32 %3012, 0
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3032, i8* %3033, align 1
  %3034 = lshr i32 %3012, 31
  %3035 = trunc i32 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3035, i8* %3036, align 1
  %3037 = lshr i32 %3009, 31
  %3038 = lshr i32 %3011, 31
  %3039 = xor i32 %3034, %3037
  %3040 = xor i32 %3034, %3038
  %3041 = add i32 %3039, %3040
  %3042 = icmp eq i32 %3041, 2
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3043, i8* %3044, align 1
  store %struct.Memory* %loadMem_4011a3, %struct.Memory** %MEMORY
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 1
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %3050 to i32*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i256
  %3055 = sub i64 %3054, 16
  %3056 = load i32, i32* %EAX.i255
  %3057 = zext i32 %3056 to i64
  %3058 = load i64, i64* %PC.i254
  %3059 = add i64 %3058, 3
  store i64 %3059, i64* %PC.i254
  %3060 = inttoptr i64 %3055 to i32*
  store i32 %3056, i32* %3060
  store %struct.Memory* %loadMem_4011aa, %struct.Memory** %MEMORY
  %loadMem_4011ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 5
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i253
  %3071 = sub i64 %3070, 16
  %3072 = load i64, i64* %PC.i251
  %3073 = add i64 %3072, 4
  store i64 %3073, i64* %PC.i251
  %3074 = inttoptr i64 %3071 to i32*
  %3075 = load i32, i32* %3074
  %3076 = sext i32 %3075 to i64
  store i64 %3076, i64* %RCX.i252, align 8
  store %struct.Memory* %loadMem_4011ad, %struct.Memory** %MEMORY
  %loadMem_4011b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 5
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RCX.i250
  %3084 = mul i64 %3083, 4
  %3085 = add i64 %3084, 8807744
  %3086 = load i64, i64* %PC.i249
  %3087 = add i64 %3086, 8
  store i64 %3087, i64* %PC.i249
  %3088 = inttoptr i64 %3085 to i32*
  %3089 = load i32, i32* %3088
  %3090 = sub i32 %3089, 6
  %3091 = icmp ult i32 %3089, 6
  %3092 = zext i1 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3092, i8* %3093, align 1
  %3094 = and i32 %3090, 255
  %3095 = call i32 @llvm.ctpop.i32(i32 %3094)
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  %3098 = xor i8 %3097, 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3098, i8* %3099, align 1
  %3100 = xor i32 %3089, 6
  %3101 = xor i32 %3100, %3090
  %3102 = lshr i32 %3101, 4
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3104, i8* %3105, align 1
  %3106 = icmp eq i32 %3090, 0
  %3107 = zext i1 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3107, i8* %3108, align 1
  %3109 = lshr i32 %3090, 31
  %3110 = trunc i32 %3109 to i8
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3110, i8* %3111, align 1
  %3112 = lshr i32 %3089, 31
  %3113 = xor i32 %3109, %3112
  %3114 = add i32 %3113, %3112
  %3115 = icmp eq i32 %3114, 2
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3116, i8* %3117, align 1
  store %struct.Memory* %loadMem_4011b1, %struct.Memory** %MEMORY
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %PC.i248
  %3122 = add i64 %3121, 20
  %3123 = load i64, i64* %PC.i248
  %3124 = add i64 %3123, 6
  %3125 = load i64, i64* %PC.i248
  %3126 = add i64 %3125, 6
  store i64 %3126, i64* %PC.i248
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3128 = load i8, i8* %3127, align 1
  %3129 = icmp eq i8 %3128, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %BRANCH_TAKEN, align 1
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3132 = select i1 %3129, i64 %3122, i64 %3124
  store i64 %3132, i64* %3131, align 8
  store %struct.Memory* %loadMem_4011b9, %struct.Memory** %MEMORY
  %loadBr_4011b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011b9 = icmp eq i8 %loadBr_4011b9, 1
  br i1 %cmpBr_4011b9, label %block_.L_4011cd, label %block_4011bf

block_4011bf:                                     ; preds = %block_40119c
  %loadMem_4011bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 1
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 15
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %3141 to i64*
  %3142 = load i64, i64* %RBP.i247
  %3143 = sub i64 %3142, 24
  %3144 = load i64, i64* %PC.i245
  %3145 = add i64 %3144, 3
  store i64 %3145, i64* %PC.i245
  %3146 = inttoptr i64 %3143 to i32*
  %3147 = load i32, i32* %3146
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_4011bf, %struct.Memory** %MEMORY
  %loadMem_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 1
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RAX.i244
  %3156 = load i64, i64* %PC.i243
  %3157 = add i64 %3156, 3
  store i64 %3157, i64* %PC.i243
  %3158 = trunc i64 %3155 to i32
  %3159 = add i32 1, %3158
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RAX.i244, align 8
  %3161 = icmp ult i32 %3159, %3158
  %3162 = icmp ult i32 %3159, 1
  %3163 = or i1 %3161, %3162
  %3164 = zext i1 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3164, i8* %3165, align 1
  %3166 = and i32 %3159, 255
  %3167 = call i32 @llvm.ctpop.i32(i32 %3166)
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = xor i8 %3169, 1
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3170, i8* %3171, align 1
  %3172 = xor i64 1, %3155
  %3173 = trunc i64 %3172 to i32
  %3174 = xor i32 %3173, %3159
  %3175 = lshr i32 %3174, 4
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3177, i8* %3178, align 1
  %3179 = icmp eq i32 %3159, 0
  %3180 = zext i1 %3179 to i8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3180, i8* %3181, align 1
  %3182 = lshr i32 %3159, 31
  %3183 = trunc i32 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3183, i8* %3184, align 1
  %3185 = lshr i32 %3158, 31
  %3186 = xor i32 %3182, %3185
  %3187 = add i32 %3186, %3182
  %3188 = icmp eq i32 %3187, 2
  %3189 = zext i1 %3188 to i8
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3189, i8* %3190, align 1
  store %struct.Memory* %loadMem_4011c2, %struct.Memory** %MEMORY
  %loadMem_4011c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %3196 to i32*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 15
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RBP.i242
  %3201 = sub i64 %3200, 24
  %3202 = load i32, i32* %EAX.i241
  %3203 = zext i32 %3202 to i64
  %3204 = load i64, i64* %PC.i240
  %3205 = add i64 %3204, 3
  store i64 %3205, i64* %PC.i240
  %3206 = inttoptr i64 %3201 to i32*
  store i32 %3202, i32* %3206
  store %struct.Memory* %loadMem_4011c5, %struct.Memory** %MEMORY
  %loadMem_4011c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 33
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %PC.i239
  %3211 = add i64 %3210, 147
  %3212 = load i64, i64* %PC.i239
  %3213 = add i64 %3212, 5
  store i64 %3213, i64* %PC.i239
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3211, i64* %3214, align 8
  store %struct.Memory* %loadMem_4011c8, %struct.Memory** %MEMORY
  br label %block_.L_40125b

block_.L_4011cd:                                  ; preds = %block_40119c
  %loadMem_4011cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %PC.i238
  %3219 = add i64 %3218, 5
  %3220 = load i64, i64* %PC.i238
  %3221 = add i64 %3220, 5
  store i64 %3221, i64* %PC.i238
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3219, i64* %3222, align 8
  store %struct.Memory* %loadMem_4011cd, %struct.Memory** %MEMORY
  br label %block_.L_4011d2

block_.L_4011d2:                                  ; preds = %block_.L_40122d, %block_.L_4011cd
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 1
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 15
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %RBP.i237
  %3233 = sub i64 %3232, 16
  %3234 = load i64, i64* %PC.i235
  %3235 = add i64 %3234, 4
  store i64 %3235, i64* %PC.i235
  %3236 = inttoptr i64 %3233 to i32*
  %3237 = load i32, i32* %3236
  %3238 = sext i32 %3237 to i64
  store i64 %3238, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_4011d2, %struct.Memory** %MEMORY
  %loadMem_4011d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 1
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RAX.i234
  %3246 = mul i64 %3245, 4
  %3247 = add i64 %3246, 8807744
  %3248 = load i64, i64* %PC.i233
  %3249 = add i64 %3248, 8
  store i64 %3249, i64* %PC.i233
  %3250 = inttoptr i64 %3247 to i32*
  %3251 = load i32, i32* %3250
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3252, align 1
  %3253 = and i32 %3251, 255
  %3254 = call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3257, i8* %3258, align 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3259, align 1
  %3260 = icmp eq i32 %3251, 0
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3261, i8* %3262, align 1
  %3263 = lshr i32 %3251, 31
  %3264 = trunc i32 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3264, i8* %3265, align 1
  %3266 = lshr i32 %3251, 31
  %3267 = xor i32 %3263, %3266
  %3268 = add i32 %3267, %3266
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3270, i8* %3271, align 1
  store %struct.Memory* %loadMem_4011d6, %struct.Memory** %MEMORY
  %loadMem_4011de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3274 to i64*
  %3275 = load i64, i64* %PC.i232
  %3276 = add i64 %3275, 101
  %3277 = load i64, i64* %PC.i232
  %3278 = add i64 %3277, 6
  %3279 = load i64, i64* %PC.i232
  %3280 = add i64 %3279, 6
  store i64 %3280, i64* %PC.i232
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3282 = load i8, i8* %3281, align 1
  store i8 %3282, i8* %BRANCH_TAKEN, align 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3284 = icmp ne i8 %3282, 0
  %3285 = select i1 %3284, i64 %3276, i64 %3278
  store i64 %3285, i64* %3283, align 8
  store %struct.Memory* %loadMem_4011de, %struct.Memory** %MEMORY
  %loadBr_4011de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011de = icmp eq i8 %loadBr_4011de, 1
  br i1 %cmpBr_4011de, label %block_.L_401243, label %block_4011e4

block_4011e4:                                     ; preds = %block_.L_4011d2
  %loadMem_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 1
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 15
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3294 to i64*
  %3295 = load i64, i64* %RBP.i231
  %3296 = sub i64 %3295, 16
  %3297 = load i64, i64* %PC.i229
  %3298 = add i64 %3297, 4
  store i64 %3298, i64* %PC.i229
  %3299 = inttoptr i64 %3296 to i32*
  %3300 = load i32, i32* %3299
  %3301 = sext i32 %3300 to i64
  store i64 %3301, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_4011e4, %struct.Memory** %MEMORY
  %loadMem_4011e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 1
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RAX.i228
  %3309 = mul i64 %3308, 4
  %3310 = add i64 %3309, 8807744
  %3311 = load i64, i64* %PC.i227
  %3312 = add i64 %3311, 8
  store i64 %3312, i64* %PC.i227
  %3313 = inttoptr i64 %3310 to i32*
  %3314 = load i32, i32* %3313
  %3315 = sub i32 %3314, 8
  %3316 = icmp ult i32 %3314, 8
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3317, i8* %3318, align 1
  %3319 = and i32 %3315, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = xor i32 %3314, 8
  %3326 = xor i32 %3325, %3315
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3329, i8* %3330, align 1
  %3331 = icmp eq i32 %3315, 0
  %3332 = zext i1 %3331 to i8
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3332, i8* %3333, align 1
  %3334 = lshr i32 %3315, 31
  %3335 = trunc i32 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3335, i8* %3336, align 1
  %3337 = lshr i32 %3314, 31
  %3338 = xor i32 %3334, %3337
  %3339 = add i32 %3338, %3337
  %3340 = icmp eq i32 %3339, 2
  %3341 = zext i1 %3340 to i8
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3341, i8* %3342, align 1
  store %struct.Memory* %loadMem_4011e8, %struct.Memory** %MEMORY
  %loadMem_4011f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 33
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %PC.i226
  %3347 = add i64 %3346, 24
  %3348 = load i64, i64* %PC.i226
  %3349 = add i64 %3348, 6
  %3350 = load i64, i64* %PC.i226
  %3351 = add i64 %3350, 6
  store i64 %3351, i64* %PC.i226
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3353 = load i8, i8* %3352, align 1
  store i8 %3353, i8* %BRANCH_TAKEN, align 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3355 = icmp ne i8 %3353, 0
  %3356 = select i1 %3355, i64 %3347, i64 %3349
  store i64 %3356, i64* %3354, align 8
  store %struct.Memory* %loadMem_4011f0, %struct.Memory** %MEMORY
  %loadBr_4011f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011f0 = icmp eq i8 %loadBr_4011f0, 1
  br i1 %cmpBr_4011f0, label %block_.L_401208, label %block_4011f6

block_4011f6:                                     ; preds = %block_4011e4
  %loadMem_4011f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 1
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 15
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3365 to i64*
  %3366 = load i64, i64* %RBP.i225
  %3367 = sub i64 %3366, 16
  %3368 = load i64, i64* %PC.i223
  %3369 = add i64 %3368, 4
  store i64 %3369, i64* %PC.i223
  %3370 = inttoptr i64 %3367 to i32*
  %3371 = load i32, i32* %3370
  %3372 = sext i32 %3371 to i64
  store i64 %3372, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_4011f6, %struct.Memory** %MEMORY
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %3378 to i64*
  %3379 = load i64, i64* %RAX.i222
  %3380 = mul i64 %3379, 4
  %3381 = add i64 %3380, 8807744
  %3382 = load i64, i64* %PC.i221
  %3383 = add i64 %3382, 8
  store i64 %3383, i64* %PC.i221
  %3384 = inttoptr i64 %3381 to i32*
  %3385 = load i32, i32* %3384
  %3386 = sub i32 %3385, 10
  %3387 = icmp ult i32 %3385, 10
  %3388 = zext i1 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3388, i8* %3389, align 1
  %3390 = and i32 %3386, 255
  %3391 = call i32 @llvm.ctpop.i32(i32 %3390)
  %3392 = trunc i32 %3391 to i8
  %3393 = and i8 %3392, 1
  %3394 = xor i8 %3393, 1
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3394, i8* %3395, align 1
  %3396 = xor i32 %3385, 10
  %3397 = xor i32 %3396, %3386
  %3398 = lshr i32 %3397, 4
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3400, i8* %3401, align 1
  %3402 = icmp eq i32 %3386, 0
  %3403 = zext i1 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3403, i8* %3404, align 1
  %3405 = lshr i32 %3386, 31
  %3406 = trunc i32 %3405 to i8
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3406, i8* %3407, align 1
  %3408 = lshr i32 %3385, 31
  %3409 = xor i32 %3405, %3408
  %3410 = add i32 %3409, %3408
  %3411 = icmp eq i32 %3410, 2
  %3412 = zext i1 %3411 to i8
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3412, i8* %3413, align 1
  store %struct.Memory* %loadMem_4011fa, %struct.Memory** %MEMORY
  %loadMem_401202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %PC.i220
  %3418 = add i64 %3417, 20
  %3419 = load i64, i64* %PC.i220
  %3420 = add i64 %3419, 6
  %3421 = load i64, i64* %PC.i220
  %3422 = add i64 %3421, 6
  store i64 %3422, i64* %PC.i220
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3424 = load i8, i8* %3423, align 1
  %3425 = icmp eq i8 %3424, 0
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %BRANCH_TAKEN, align 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3428 = select i1 %3425, i64 %3418, i64 %3420
  store i64 %3428, i64* %3427, align 8
  store %struct.Memory* %loadMem_401202, %struct.Memory** %MEMORY
  %loadBr_401202 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401202 = icmp eq i8 %loadBr_401202, 1
  br i1 %cmpBr_401202, label %block_.L_401216, label %block_.L_401208

block_.L_401208:                                  ; preds = %block_4011f6, %block_4011e4
  %loadMem_401208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 1
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RBP.i219
  %3439 = sub i64 %3438, 24
  %3440 = load i64, i64* %PC.i217
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %PC.i217
  %3442 = inttoptr i64 %3439 to i32*
  %3443 = load i32, i32* %3442
  %3444 = zext i32 %3443 to i64
  store i64 %3444, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_401208, %struct.Memory** %MEMORY
  %loadMem_40120b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 1
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RAX.i216
  %3452 = load i64, i64* %PC.i215
  %3453 = add i64 %3452, 3
  store i64 %3453, i64* %PC.i215
  %3454 = trunc i64 %3451 to i32
  %3455 = add i32 1, %3454
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RAX.i216, align 8
  %3457 = icmp ult i32 %3455, %3454
  %3458 = icmp ult i32 %3455, 1
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3460, i8* %3461, align 1
  %3462 = and i32 %3455, 255
  %3463 = call i32 @llvm.ctpop.i32(i32 %3462)
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = xor i8 %3465, 1
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3466, i8* %3467, align 1
  %3468 = xor i64 1, %3451
  %3469 = trunc i64 %3468 to i32
  %3470 = xor i32 %3469, %3455
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3473, i8* %3474, align 1
  %3475 = icmp eq i32 %3455, 0
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3476, i8* %3477, align 1
  %3478 = lshr i32 %3455, 31
  %3479 = trunc i32 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3454, 31
  %3482 = xor i32 %3478, %3481
  %3483 = add i32 %3482, %3478
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3485, i8* %3486, align 1
  store %struct.Memory* %loadMem_40120b, %struct.Memory** %MEMORY
  %loadMem_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 1
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %3492 to i32*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 15
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RBP.i214
  %3497 = sub i64 %3496, 24
  %3498 = load i32, i32* %EAX.i213
  %3499 = zext i32 %3498 to i64
  %3500 = load i64, i64* %PC.i212
  %3501 = add i64 %3500, 3
  store i64 %3501, i64* %PC.i212
  %3502 = inttoptr i64 %3497 to i32*
  store i32 %3498, i32* %3502
  store %struct.Memory* %loadMem_40120e, %struct.Memory** %MEMORY
  %loadMem_401211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 33
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3505 to i64*
  %3506 = load i64, i64* %PC.i211
  %3507 = add i64 %3506, 50
  %3508 = load i64, i64* %PC.i211
  %3509 = add i64 %3508, 5
  store i64 %3509, i64* %PC.i211
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3507, i64* %3510, align 8
  store %struct.Memory* %loadMem_401211, %struct.Memory** %MEMORY
  br label %block_.L_401243

block_.L_401216:                                  ; preds = %block_4011f6
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 1
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 15
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RBP.i210
  %3521 = sub i64 %3520, 16
  %3522 = load i64, i64* %PC.i208
  %3523 = add i64 %3522, 4
  store i64 %3523, i64* %PC.i208
  %3524 = inttoptr i64 %3521 to i32*
  %3525 = load i32, i32* %3524
  %3526 = sext i32 %3525 to i64
  store i64 %3526, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_401216, %struct.Memory** %MEMORY
  %loadMem_40121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 1
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3532 to i64*
  %3533 = load i64, i64* %RAX.i207
  %3534 = mul i64 %3533, 4
  %3535 = add i64 %3534, 8807744
  %3536 = load i64, i64* %PC.i206
  %3537 = add i64 %3536, 8
  store i64 %3537, i64* %PC.i206
  %3538 = inttoptr i64 %3535 to i32*
  %3539 = load i32, i32* %3538
  %3540 = sub i32 %3539, 13
  %3541 = icmp ult i32 %3539, 13
  %3542 = zext i1 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3542, i8* %3543, align 1
  %3544 = and i32 %3540, 255
  %3545 = call i32 @llvm.ctpop.i32(i32 %3544)
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  %3548 = xor i8 %3547, 1
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3548, i8* %3549, align 1
  %3550 = xor i32 %3539, 13
  %3551 = xor i32 %3550, %3540
  %3552 = lshr i32 %3551, 4
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3554, i8* %3555, align 1
  %3556 = icmp eq i32 %3540, 0
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3557, i8* %3558, align 1
  %3559 = lshr i32 %3540, 31
  %3560 = trunc i32 %3559 to i8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3560, i8* %3561, align 1
  %3562 = lshr i32 %3539, 31
  %3563 = xor i32 %3559, %3562
  %3564 = add i32 %3563, %3562
  %3565 = icmp eq i32 %3564, 2
  %3566 = zext i1 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3566, i8* %3567, align 1
  store %struct.Memory* %loadMem_40121a, %struct.Memory** %MEMORY
  %loadMem_401222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %PC.i205
  %3572 = add i64 %3571, 11
  %3573 = load i64, i64* %PC.i205
  %3574 = add i64 %3573, 6
  %3575 = load i64, i64* %PC.i205
  %3576 = add i64 %3575, 6
  store i64 %3576, i64* %PC.i205
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3578 = load i8, i8* %3577, align 1
  store i8 %3578, i8* %BRANCH_TAKEN, align 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3580 = icmp ne i8 %3578, 0
  %3581 = select i1 %3580, i64 %3572, i64 %3574
  store i64 %3581, i64* %3579, align 8
  store %struct.Memory* %loadMem_401222, %struct.Memory** %MEMORY
  %loadBr_401222 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401222 = icmp eq i8 %loadBr_401222, 1
  br i1 %cmpBr_401222, label %block_.L_40122d, label %block_401228

block_401228:                                     ; preds = %block_.L_401216
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %PC.i204
  %3586 = add i64 %3585, 27
  %3587 = load i64, i64* %PC.i204
  %3588 = add i64 %3587, 5
  store i64 %3588, i64* %PC.i204
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3586, i64* %3589, align 8
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  br label %block_.L_401243

block_.L_40122d:                                  ; preds = %block_.L_401216
  %loadMem_40122d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i203
  %3600 = sub i64 %3599, 20
  %3601 = load i64, i64* %PC.i201
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %PC.i201
  %3603 = inttoptr i64 %3600 to i32*
  %3604 = load i32, i32* %3603
  %3605 = sext i32 %3604 to i64
  store i64 %3605, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_40122d, %struct.Memory** %MEMORY
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 1
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 5
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RAX.i199
  %3616 = mul i64 %3615, 4
  %3617 = add i64 %3616, 4347152
  %3618 = load i64, i64* %PC.i198
  %3619 = add i64 %3618, 7
  store i64 %3619, i64* %PC.i198
  %3620 = inttoptr i64 %3617 to i32*
  %3621 = load i32, i32* %3620
  %3622 = zext i32 %3621 to i64
  store i64 %3622, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_401231, %struct.Memory** %MEMORY
  %loadMem_401238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 5
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 15
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RCX.i196
  %3633 = load i64, i64* %RBP.i197
  %3634 = sub i64 %3633, 16
  %3635 = load i64, i64* %PC.i195
  %3636 = add i64 %3635, 3
  store i64 %3636, i64* %PC.i195
  %3637 = trunc i64 %3632 to i32
  %3638 = inttoptr i64 %3634 to i32*
  %3639 = load i32, i32* %3638
  %3640 = add i32 %3639, %3637
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RCX.i196, align 8
  %3642 = icmp ult i32 %3640, %3637
  %3643 = icmp ult i32 %3640, %3639
  %3644 = or i1 %3642, %3643
  %3645 = zext i1 %3644 to i8
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3645, i8* %3646, align 1
  %3647 = and i32 %3640, 255
  %3648 = call i32 @llvm.ctpop.i32(i32 %3647)
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  %3651 = xor i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3651, i8* %3652, align 1
  %3653 = xor i32 %3639, %3637
  %3654 = xor i32 %3653, %3640
  %3655 = lshr i32 %3654, 4
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3657, i8* %3658, align 1
  %3659 = icmp eq i32 %3640, 0
  %3660 = zext i1 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3660, i8* %3661, align 1
  %3662 = lshr i32 %3640, 31
  %3663 = trunc i32 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3663, i8* %3664, align 1
  %3665 = lshr i32 %3637, 31
  %3666 = lshr i32 %3639, 31
  %3667 = xor i32 %3662, %3665
  %3668 = xor i32 %3662, %3666
  %3669 = add i32 %3667, %3668
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3671, i8* %3672, align 1
  store %struct.Memory* %loadMem_401238, %struct.Memory** %MEMORY
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 5
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %ECX.i193 = bitcast %union.anon* %3678 to i32*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 15
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RBP.i194
  %3683 = sub i64 %3682, 16
  %3684 = load i32, i32* %ECX.i193
  %3685 = zext i32 %3684 to i64
  %3686 = load i64, i64* %PC.i192
  %3687 = add i64 %3686, 3
  store i64 %3687, i64* %PC.i192
  %3688 = inttoptr i64 %3683 to i32*
  store i32 %3684, i32* %3688
  store %struct.Memory* %loadMem_40123b, %struct.Memory** %MEMORY
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %PC.i191
  %3693 = add i64 %3692, -108
  %3694 = load i64, i64* %PC.i191
  %3695 = add i64 %3694, 5
  store i64 %3695, i64* %PC.i191
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3693, i64* %3696, align 8
  store %struct.Memory* %loadMem_40123e, %struct.Memory** %MEMORY
  br label %block_.L_4011d2

block_.L_401243:                                  ; preds = %block_401228, %block_.L_401208, %block_.L_4011d2
  %loadMem_401243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %PC.i190
  %3701 = add i64 %3700, 5
  %3702 = load i64, i64* %PC.i190
  %3703 = add i64 %3702, 5
  store i64 %3703, i64* %PC.i190
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3701, i64* %3704, align 8
  store %struct.Memory* %loadMem_401243, %struct.Memory** %MEMORY
  br label %block_.L_401248

block_.L_401248:                                  ; preds = %block_.L_401243
  %loadMem_401248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3707 to i64*
  %3708 = load i64, i64* %PC.i189
  %3709 = add i64 %3708, 5
  %3710 = load i64, i64* %PC.i189
  %3711 = add i64 %3710, 5
  store i64 %3711, i64* %PC.i189
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3709, i64* %3712, align 8
  store %struct.Memory* %loadMem_401248, %struct.Memory** %MEMORY
  br label %block_.L_40124d

block_.L_40124d:                                  ; preds = %block_.L_401248
  %loadMem_40124d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 1
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i188
  %3723 = sub i64 %3722, 20
  %3724 = load i64, i64* %PC.i186
  %3725 = add i64 %3724, 3
  store i64 %3725, i64* %PC.i186
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_40124d, %struct.Memory** %MEMORY
  %loadMem_401250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 1
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %RAX.i185
  %3736 = load i64, i64* %PC.i184
  %3737 = add i64 %3736, 3
  store i64 %3737, i64* %PC.i184
  %3738 = trunc i64 %3735 to i32
  %3739 = add i32 1, %3738
  %3740 = zext i32 %3739 to i64
  store i64 %3740, i64* %RAX.i185, align 8
  %3741 = icmp ult i32 %3739, %3738
  %3742 = icmp ult i32 %3739, 1
  %3743 = or i1 %3741, %3742
  %3744 = zext i1 %3743 to i8
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3744, i8* %3745, align 1
  %3746 = and i32 %3739, 255
  %3747 = call i32 @llvm.ctpop.i32(i32 %3746)
  %3748 = trunc i32 %3747 to i8
  %3749 = and i8 %3748, 1
  %3750 = xor i8 %3749, 1
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3750, i8* %3751, align 1
  %3752 = xor i64 1, %3735
  %3753 = trunc i64 %3752 to i32
  %3754 = xor i32 %3753, %3739
  %3755 = lshr i32 %3754, 4
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3757, i8* %3758, align 1
  %3759 = icmp eq i32 %3739, 0
  %3760 = zext i1 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3760, i8* %3761, align 1
  %3762 = lshr i32 %3739, 31
  %3763 = trunc i32 %3762 to i8
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3763, i8* %3764, align 1
  %3765 = lshr i32 %3738, 31
  %3766 = xor i32 %3762, %3765
  %3767 = add i32 %3766, %3762
  %3768 = icmp eq i32 %3767, 2
  %3769 = zext i1 %3768 to i8
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3769, i8* %3770, align 1
  store %struct.Memory* %loadMem_401250, %struct.Memory** %MEMORY
  %loadMem_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 1
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %3776 to i32*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RBP.i183
  %3781 = sub i64 %3780, 20
  %3782 = load i32, i32* %EAX.i182
  %3783 = zext i32 %3782 to i64
  %3784 = load i64, i64* %PC.i181
  %3785 = add i64 %3784, 3
  store i64 %3785, i64* %PC.i181
  %3786 = inttoptr i64 %3781 to i32*
  store i32 %3782, i32* %3786
  store %struct.Memory* %loadMem_401253, %struct.Memory** %MEMORY
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %PC.i180
  %3791 = add i64 %3790, -196
  %3792 = load i64, i64* %PC.i180
  %3793 = add i64 %3792, 5
  store i64 %3793, i64* %PC.i180
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3791, i64* %3794, align 8
  store %struct.Memory* %loadMem_401256, %struct.Memory** %MEMORY
  br label %block_.L_401192

block_.L_40125b:                                  ; preds = %block_4011bf, %block_.L_401192
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 15
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %RBP.i179
  %3802 = sub i64 %3801, 20
  %3803 = load i64, i64* %PC.i178
  %3804 = add i64 %3803, 7
  store i64 %3804, i64* %PC.i178
  %3805 = inttoptr i64 %3802 to i32*
  store i32 0, i32* %3805
  store %struct.Memory* %loadMem_40125b, %struct.Memory** %MEMORY
  br label %block_.L_401262

block_.L_401262:                                  ; preds = %block_.L_401363, %block_.L_40125b
  %loadMem_401262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 15
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RBP.i177
  %3813 = sub i64 %3812, 20
  %3814 = load i64, i64* %PC.i176
  %3815 = add i64 %3814, 4
  store i64 %3815, i64* %PC.i176
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816
  %3818 = sub i32 %3817, 4
  %3819 = icmp ult i32 %3817, 4
  %3820 = zext i1 %3819 to i8
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3820, i8* %3821, align 1
  %3822 = and i32 %3818, 255
  %3823 = call i32 @llvm.ctpop.i32(i32 %3822)
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = xor i8 %3825, 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3826, i8* %3827, align 1
  %3828 = xor i32 %3817, 4
  %3829 = xor i32 %3828, %3818
  %3830 = lshr i32 %3829, 4
  %3831 = trunc i32 %3830 to i8
  %3832 = and i8 %3831, 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3832, i8* %3833, align 1
  %3834 = icmp eq i32 %3818, 0
  %3835 = zext i1 %3834 to i8
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3835, i8* %3836, align 1
  %3837 = lshr i32 %3818, 31
  %3838 = trunc i32 %3837 to i8
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3838, i8* %3839, align 1
  %3840 = lshr i32 %3817, 31
  %3841 = xor i32 %3837, %3840
  %3842 = add i32 %3841, %3840
  %3843 = icmp eq i32 %3842, 2
  %3844 = zext i1 %3843 to i8
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3844, i8* %3845, align 1
  store %struct.Memory* %loadMem_401262, %struct.Memory** %MEMORY
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %PC.i175
  %3850 = add i64 %3849, 267
  %3851 = load i64, i64* %PC.i175
  %3852 = add i64 %3851, 6
  %3853 = load i64, i64* %PC.i175
  %3854 = add i64 %3853, 6
  store i64 %3854, i64* %PC.i175
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3856 = load i8, i8* %3855, align 1
  %3857 = icmp ne i8 %3856, 0
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3859 = load i8, i8* %3858, align 1
  %3860 = icmp ne i8 %3859, 0
  %3861 = xor i1 %3857, %3860
  %3862 = xor i1 %3861, true
  %3863 = zext i1 %3862 to i8
  store i8 %3863, i8* %BRANCH_TAKEN, align 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3865 = select i1 %3861, i64 %3852, i64 %3850
  store i64 %3865, i64* %3864, align 8
  store %struct.Memory* %loadMem_401266, %struct.Memory** %MEMORY
  %loadBr_401266 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401266 = icmp eq i8 %loadBr_401266, 1
  br i1 %cmpBr_401266, label %block_.L_401371, label %block_40126c

block_40126c:                                     ; preds = %block_.L_401262
  %loadMem_40126c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 1
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3871 to i64*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 15
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RBP.i174
  %3876 = sub i64 %3875, 8
  %3877 = load i64, i64* %PC.i172
  %3878 = add i64 %3877, 3
  store i64 %3878, i64* %PC.i172
  %3879 = inttoptr i64 %3876 to i32*
  %3880 = load i32, i32* %3879
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_40126c, %struct.Memory** %MEMORY
  %loadMem_40126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 5
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3887 to i64*
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 15
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3890 to i64*
  %3891 = load i64, i64* %RBP.i171
  %3892 = sub i64 %3891, 20
  %3893 = load i64, i64* %PC.i169
  %3894 = add i64 %3893, 4
  store i64 %3894, i64* %PC.i169
  %3895 = inttoptr i64 %3892 to i32*
  %3896 = load i32, i32* %3895
  %3897 = sext i32 %3896 to i64
  store i64 %3897, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_40126f, %struct.Memory** %MEMORY
  %loadMem_401273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 1
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 5
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %RAX.i167
  %3908 = load i64, i64* %RCX.i168
  %3909 = mul i64 %3908, 4
  %3910 = add i64 %3909, 4347168
  %3911 = load i64, i64* %PC.i166
  %3912 = add i64 %3911, 7
  store i64 %3912, i64* %PC.i166
  %3913 = trunc i64 %3907 to i32
  %3914 = inttoptr i64 %3910 to i32*
  %3915 = load i32, i32* %3914
  %3916 = add i32 %3915, %3913
  %3917 = zext i32 %3916 to i64
  store i64 %3917, i64* %RAX.i167, align 8
  %3918 = icmp ult i32 %3916, %3913
  %3919 = icmp ult i32 %3916, %3915
  %3920 = or i1 %3918, %3919
  %3921 = zext i1 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3921, i8* %3922, align 1
  %3923 = and i32 %3916, 255
  %3924 = call i32 @llvm.ctpop.i32(i32 %3923)
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  %3927 = xor i8 %3926, 1
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3927, i8* %3928, align 1
  %3929 = xor i32 %3915, %3913
  %3930 = xor i32 %3929, %3916
  %3931 = lshr i32 %3930, 4
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3933, i8* %3934, align 1
  %3935 = icmp eq i32 %3916, 0
  %3936 = zext i1 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i32 %3916, 31
  %3939 = trunc i32 %3938 to i8
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3939, i8* %3940, align 1
  %3941 = lshr i32 %3913, 31
  %3942 = lshr i32 %3915, 31
  %3943 = xor i32 %3938, %3941
  %3944 = xor i32 %3938, %3942
  %3945 = add i32 %3943, %3944
  %3946 = icmp eq i32 %3945, 2
  %3947 = zext i1 %3946 to i8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3947, i8* %3948, align 1
  store %struct.Memory* %loadMem_401273, %struct.Memory** %MEMORY
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 1
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %3954 to i32*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 15
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %RBP.i165
  %3959 = sub i64 %3958, 16
  %3960 = load i32, i32* %EAX.i164
  %3961 = zext i32 %3960 to i64
  %3962 = load i64, i64* %PC.i163
  %3963 = add i64 %3962, 3
  store i64 %3963, i64* %PC.i163
  %3964 = inttoptr i64 %3959 to i32*
  store i32 %3960, i32* %3964
  store %struct.Memory* %loadMem_40127a, %struct.Memory** %MEMORY
  %loadMem_40127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 5
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 15
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RBP.i162
  %3975 = sub i64 %3974, 16
  %3976 = load i64, i64* %PC.i160
  %3977 = add i64 %3976, 4
  store i64 %3977, i64* %PC.i160
  %3978 = inttoptr i64 %3975 to i32*
  %3979 = load i32, i32* %3978
  %3980 = sext i32 %3979 to i64
  store i64 %3980, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_40127d, %struct.Memory** %MEMORY
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 5
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %3986 to i64*
  %3987 = load i64, i64* %RCX.i159
  %3988 = mul i64 %3987, 4
  %3989 = add i64 %3988, 8807744
  %3990 = load i64, i64* %PC.i158
  %3991 = add i64 %3990, 8
  store i64 %3991, i64* %PC.i158
  %3992 = inttoptr i64 %3989 to i32*
  %3993 = load i32, i32* %3992
  %3994 = sub i32 %3993, 2
  %3995 = icmp ult i32 %3993, 2
  %3996 = zext i1 %3995 to i8
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3996, i8* %3997, align 1
  %3998 = and i32 %3994, 255
  %3999 = call i32 @llvm.ctpop.i32(i32 %3998)
  %4000 = trunc i32 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = xor i8 %4001, 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4002, i8* %4003, align 1
  %4004 = xor i32 %3993, 2
  %4005 = xor i32 %4004, %3994
  %4006 = lshr i32 %4005, 4
  %4007 = trunc i32 %4006 to i8
  %4008 = and i8 %4007, 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4008, i8* %4009, align 1
  %4010 = icmp eq i32 %3994, 0
  %4011 = zext i1 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4011, i8* %4012, align 1
  %4013 = lshr i32 %3994, 31
  %4014 = trunc i32 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i32 %3993, 31
  %4017 = xor i32 %4013, %4016
  %4018 = add i32 %4017, %4016
  %4019 = icmp eq i32 %4018, 2
  %4020 = zext i1 %4019 to i8
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4020, i8* %4021, align 1
  store %struct.Memory* %loadMem_401281, %struct.Memory** %MEMORY
  %loadMem_401289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %PC.i157
  %4026 = add i64 %4025, 48
  %4027 = load i64, i64* %PC.i157
  %4028 = add i64 %4027, 6
  %4029 = load i64, i64* %PC.i157
  %4030 = add i64 %4029, 6
  store i64 %4030, i64* %PC.i157
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4032 = load i8, i8* %4031, align 1
  %4033 = icmp eq i8 %4032, 0
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %BRANCH_TAKEN, align 1
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4036 = select i1 %4033, i64 %4026, i64 %4028
  store i64 %4036, i64* %4035, align 8
  store %struct.Memory* %loadMem_401289, %struct.Memory** %MEMORY
  %loadBr_401289 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401289 = icmp eq i8 %loadBr_401289, 1
  br i1 %cmpBr_401289, label %block_.L_4012b9, label %block_40128f

block_40128f:                                     ; preds = %block_40126c
  %loadMem_40128f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 33
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4039 to i64*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 1
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %4042 to i64*
  %4043 = load i64, i64* %PC.i155
  %4044 = add i64 %4043, 5
  store i64 %4044, i64* %PC.i155
  store i64 2, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_40128f, %struct.Memory** %MEMORY
  %loadMem_401294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 5
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RBP.i154
  %4055 = sub i64 %4054, 20
  %4056 = load i64, i64* %PC.i152
  %4057 = add i64 %4056, 3
  store i64 %4057, i64* %PC.i152
  %4058 = inttoptr i64 %4055 to i32*
  %4059 = load i32, i32* %4058
  %4060 = zext i32 %4059 to i64
  store i64 %4060, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_401294, %struct.Memory** %MEMORY
  %loadMem_401297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 1
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %4066 to i32*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 15
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RBP.i151
  %4071 = sub i64 %4070, 36
  %4072 = load i32, i32* %EAX.i150
  %4073 = zext i32 %4072 to i64
  %4074 = load i64, i64* %PC.i149
  %4075 = add i64 %4074, 3
  store i64 %4075, i64* %PC.i149
  %4076 = inttoptr i64 %4071 to i32*
  store i32 %4072, i32* %4076
  store %struct.Memory* %loadMem_401297, %struct.Memory** %MEMORY
  %loadMem_40129a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 5
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %ECX.i147 = bitcast %union.anon* %4082 to i32*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4085 to i64*
  %4086 = load i32, i32* %ECX.i147
  %4087 = zext i32 %4086 to i64
  %4088 = load i64, i64* %PC.i146
  %4089 = add i64 %4088, 2
  store i64 %4089, i64* %PC.i146
  %4090 = and i64 %4087, 4294967295
  store i64 %4090, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_40129a, %struct.Memory** %MEMORY
  %loadMem_40129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %PC.i145
  %4095 = add i64 %4094, 1
  store i64 %4095, i64* %PC.i145
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4098 = bitcast %union.anon* %4097 to i32*
  %4099 = load i32, i32* %4098, align 8
  %4100 = sext i32 %4099 to i64
  %4101 = lshr i64 %4100, 32
  store i64 %4101, i64* %4096, align 8
  store %struct.Memory* %loadMem_40129c, %struct.Memory** %MEMORY
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 5
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 15
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %RBP.i144
  %4112 = sub i64 %4111, 36
  %4113 = load i64, i64* %PC.i142
  %4114 = add i64 %4113, 3
  store i64 %4114, i64* %PC.i142
  %4115 = inttoptr i64 %4112 to i32*
  %4116 = load i32, i32* %4115
  %4117 = zext i32 %4116 to i64
  store i64 %4117, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_40129d, %struct.Memory** %MEMORY
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4120 to i64*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 5
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %ECX.i139 = bitcast %union.anon* %4123 to i32*
  %4124 = load i32, i32* %ECX.i139
  %4125 = zext i32 %4124 to i64
  %4126 = load i64, i64* %PC.i138
  %4127 = add i64 %4126, 2
  store i64 %4127, i64* %PC.i138
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4129 = bitcast %union.anon* %4128 to i32*
  %4130 = load i32, i32* %4129, align 8
  %4131 = zext i32 %4130 to i64
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4133 = bitcast %union.anon* %4132 to i32*
  %4134 = load i32, i32* %4133, align 8
  %4135 = zext i32 %4134 to i64
  %4136 = shl i64 %4125, 32
  %4137 = ashr exact i64 %4136, 32
  %4138 = shl i64 %4135, 32
  %4139 = or i64 %4138, %4131
  %4140 = sdiv i64 %4139, %4137
  %4141 = shl i64 %4140, 32
  %4142 = ashr exact i64 %4141, 32
  %4143 = icmp eq i64 %4140, %4142
  br i1 %4143, label %4148, label %4144

; <label>:4144:                                   ; preds = %block_40128f
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4146 = load i64, i64* %4145, align 8
  %4147 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4146, %struct.Memory* %loadMem_4012a0)
  br label %routine_idivl__ecx.exit

; <label>:4148:                                   ; preds = %block_40128f
  %4149 = srem i64 %4139, %4137
  %4150 = getelementptr inbounds %union.anon, %union.anon* %4128, i64 0, i32 0
  %4151 = and i64 %4140, 4294967295
  store i64 %4151, i64* %4150, align 8
  %4152 = getelementptr inbounds %union.anon, %union.anon* %4132, i64 0, i32 0
  %4153 = and i64 %4149, 4294967295
  store i64 %4153, i64* %4152, align 8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4154, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4155, align 1
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4156, align 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4157, align 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4158, align 1
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4159, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %4144, %4148
  %4160 = phi %struct.Memory* [ %4147, %4144 ], [ %loadMem_4012a0, %4148 ]
  store %struct.Memory* %4160, %struct.Memory** %MEMORY
  %loadMem_4012a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 33
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 7
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4166 to i32*
  %4167 = load i32, i32* %EDX.i
  %4168 = zext i32 %4167 to i64
  %4169 = load i64, i64* %PC.i137
  %4170 = add i64 %4169, 3
  store i64 %4170, i64* %PC.i137
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4171, align 1
  %4172 = and i32 %4167, 255
  %4173 = call i32 @llvm.ctpop.i32(i32 %4172)
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = xor i8 %4175, 1
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4176, i8* %4177, align 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4178, align 1
  %4179 = icmp eq i32 %4167, 0
  %4180 = zext i1 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4180, i8* %4181, align 1
  %4182 = lshr i32 %4167, 31
  %4183 = trunc i32 %4182 to i8
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4183, i8* %4184, align 1
  %4185 = lshr i32 %4167, 31
  %4186 = xor i32 %4182, %4185
  %4187 = add i32 %4186, %4185
  %4188 = icmp eq i32 %4187, 2
  %4189 = zext i1 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4189, i8* %4190, align 1
  store %struct.Memory* %loadMem_4012a2, %struct.Memory** %MEMORY
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4193 to i64*
  %4194 = load i64, i64* %PC.i136
  %4195 = add i64 %4194, 20
  %4196 = load i64, i64* %PC.i136
  %4197 = add i64 %4196, 6
  %4198 = load i64, i64* %PC.i136
  %4199 = add i64 %4198, 6
  store i64 %4199, i64* %PC.i136
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4201 = load i8, i8* %4200, align 1
  %4202 = icmp eq i8 %4201, 0
  %4203 = zext i1 %4202 to i8
  store i8 %4203, i8* %BRANCH_TAKEN, align 1
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4205 = select i1 %4202, i64 %4195, i64 %4197
  store i64 %4205, i64* %4204, align 8
  store %struct.Memory* %loadMem_4012a5, %struct.Memory** %MEMORY
  %loadBr_4012a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012a5 = icmp eq i8 %loadBr_4012a5, 1
  br i1 %cmpBr_4012a5, label %block_.L_4012b9, label %block_4012ab

block_4012ab:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_4012ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 1
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 15
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RBP.i135
  %4216 = sub i64 %4215, 24
  %4217 = load i64, i64* %PC.i133
  %4218 = add i64 %4217, 3
  store i64 %4218, i64* %PC.i133
  %4219 = inttoptr i64 %4216 to i32*
  %4220 = load i32, i32* %4219
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_4012ab, %struct.Memory** %MEMORY
  %loadMem_4012ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 1
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %RAX.i132
  %4229 = load i64, i64* %PC.i131
  %4230 = add i64 %4229, 3
  store i64 %4230, i64* %PC.i131
  %4231 = trunc i64 %4228 to i32
  %4232 = add i32 1, %4231
  %4233 = zext i32 %4232 to i64
  store i64 %4233, i64* %RAX.i132, align 8
  %4234 = icmp ult i32 %4232, %4231
  %4235 = icmp ult i32 %4232, 1
  %4236 = or i1 %4234, %4235
  %4237 = zext i1 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4237, i8* %4238, align 1
  %4239 = and i32 %4232, 255
  %4240 = call i32 @llvm.ctpop.i32(i32 %4239)
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  %4243 = xor i8 %4242, 1
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4243, i8* %4244, align 1
  %4245 = xor i64 1, %4228
  %4246 = trunc i64 %4245 to i32
  %4247 = xor i32 %4246, %4232
  %4248 = lshr i32 %4247, 4
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4250, i8* %4251, align 1
  %4252 = icmp eq i32 %4232, 0
  %4253 = zext i1 %4252 to i8
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4253, i8* %4254, align 1
  %4255 = lshr i32 %4232, 31
  %4256 = trunc i32 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4256, i8* %4257, align 1
  %4258 = lshr i32 %4231, 31
  %4259 = xor i32 %4255, %4258
  %4260 = add i32 %4259, %4255
  %4261 = icmp eq i32 %4260, 2
  %4262 = zext i1 %4261 to i8
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4262, i8* %4263, align 1
  store %struct.Memory* %loadMem_4012ae, %struct.Memory** %MEMORY
  %loadMem_4012b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 1
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %4269 to i32*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 15
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %RBP.i130
  %4274 = sub i64 %4273, 24
  %4275 = load i32, i32* %EAX.i129
  %4276 = zext i32 %4275 to i64
  %4277 = load i64, i64* %PC.i128
  %4278 = add i64 %4277, 3
  store i64 %4278, i64* %PC.i128
  %4279 = inttoptr i64 %4274 to i32*
  store i32 %4275, i32* %4279
  store %struct.Memory* %loadMem_4012b1, %struct.Memory** %MEMORY
  %loadMem_4012b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4282 to i64*
  %4283 = load i64, i64* %PC.i127
  %4284 = add i64 %4283, 189
  %4285 = load i64, i64* %PC.i127
  %4286 = add i64 %4285, 5
  store i64 %4286, i64* %PC.i127
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4284, i64* %4287, align 8
  store %struct.Memory* %loadMem_4012b4, %struct.Memory** %MEMORY
  br label %block_.L_401371

block_.L_4012b9:                                  ; preds = %routine_idivl__ecx.exit, %block_40126c
  %loadMem_4012b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 1
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 15
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4296 to i64*
  %4297 = load i64, i64* %RBP.i126
  %4298 = sub i64 %4297, 16
  %4299 = load i64, i64* %PC.i124
  %4300 = add i64 %4299, 4
  store i64 %4300, i64* %PC.i124
  %4301 = inttoptr i64 %4298 to i32*
  %4302 = load i32, i32* %4301
  %4303 = sext i32 %4302 to i64
  store i64 %4303, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_4012b9, %struct.Memory** %MEMORY
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 33
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 1
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RAX.i123
  %4311 = mul i64 %4310, 4
  %4312 = add i64 %4311, 8807744
  %4313 = load i64, i64* %PC.i122
  %4314 = add i64 %4313, 8
  store i64 %4314, i64* %PC.i122
  %4315 = inttoptr i64 %4312 to i32*
  %4316 = load i32, i32* %4315
  %4317 = sub i32 %4316, 6
  %4318 = icmp ult i32 %4316, 6
  %4319 = zext i1 %4318 to i8
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4319, i8* %4320, align 1
  %4321 = and i32 %4317, 255
  %4322 = call i32 @llvm.ctpop.i32(i32 %4321)
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  %4325 = xor i8 %4324, 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4325, i8* %4326, align 1
  %4327 = xor i32 %4316, 6
  %4328 = xor i32 %4327, %4317
  %4329 = lshr i32 %4328, 4
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4331, i8* %4332, align 1
  %4333 = icmp eq i32 %4317, 0
  %4334 = zext i1 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4334, i8* %4335, align 1
  %4336 = lshr i32 %4317, 31
  %4337 = trunc i32 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4337, i8* %4338, align 1
  %4339 = lshr i32 %4316, 31
  %4340 = xor i32 %4336, %4339
  %4341 = add i32 %4340, %4339
  %4342 = icmp eq i32 %4341, 2
  %4343 = zext i1 %4342 to i8
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4343, i8* %4344, align 1
  store %struct.Memory* %loadMem_4012bd, %struct.Memory** %MEMORY
  %loadMem_4012c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %PC.i121
  %4349 = add i64 %4348, 20
  %4350 = load i64, i64* %PC.i121
  %4351 = add i64 %4350, 6
  %4352 = load i64, i64* %PC.i121
  %4353 = add i64 %4352, 6
  store i64 %4353, i64* %PC.i121
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4355 = load i8, i8* %4354, align 1
  %4356 = icmp eq i8 %4355, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %BRANCH_TAKEN, align 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4359 = select i1 %4356, i64 %4349, i64 %4351
  store i64 %4359, i64* %4358, align 8
  store %struct.Memory* %loadMem_4012c5, %struct.Memory** %MEMORY
  %loadBr_4012c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012c5 = icmp eq i8 %loadBr_4012c5, 1
  br i1 %cmpBr_4012c5, label %block_.L_4012d9, label %block_4012cb

block_4012cb:                                     ; preds = %block_.L_4012b9
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 1
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 15
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RBP.i120
  %4370 = sub i64 %4369, 24
  %4371 = load i64, i64* %PC.i118
  %4372 = add i64 %4371, 3
  store i64 %4372, i64* %PC.i118
  %4373 = inttoptr i64 %4370 to i32*
  %4374 = load i32, i32* %4373
  %4375 = zext i32 %4374 to i64
  store i64 %4375, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_4012cb, %struct.Memory** %MEMORY
  %loadMem_4012ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 33
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 1
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %4381 to i64*
  %4382 = load i64, i64* %RAX.i117
  %4383 = load i64, i64* %PC.i116
  %4384 = add i64 %4383, 3
  store i64 %4384, i64* %PC.i116
  %4385 = trunc i64 %4382 to i32
  %4386 = add i32 1, %4385
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RAX.i117, align 8
  %4388 = icmp ult i32 %4386, %4385
  %4389 = icmp ult i32 %4386, 1
  %4390 = or i1 %4388, %4389
  %4391 = zext i1 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4391, i8* %4392, align 1
  %4393 = and i32 %4386, 255
  %4394 = call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4397, i8* %4398, align 1
  %4399 = xor i64 1, %4382
  %4400 = trunc i64 %4399 to i32
  %4401 = xor i32 %4400, %4386
  %4402 = lshr i32 %4401, 4
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4404, i8* %4405, align 1
  %4406 = icmp eq i32 %4386, 0
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4407, i8* %4408, align 1
  %4409 = lshr i32 %4386, 31
  %4410 = trunc i32 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4410, i8* %4411, align 1
  %4412 = lshr i32 %4385, 31
  %4413 = xor i32 %4409, %4412
  %4414 = add i32 %4413, %4409
  %4415 = icmp eq i32 %4414, 2
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4416, i8* %4417, align 1
  store %struct.Memory* %loadMem_4012ce, %struct.Memory** %MEMORY
  %loadMem_4012d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 1
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %4423 to i32*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 15
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %RBP.i115
  %4428 = sub i64 %4427, 24
  %4429 = load i32, i32* %EAX.i114
  %4430 = zext i32 %4429 to i64
  %4431 = load i64, i64* %PC.i113
  %4432 = add i64 %4431, 3
  store i64 %4432, i64* %PC.i113
  %4433 = inttoptr i64 %4428 to i32*
  store i32 %4429, i32* %4433
  store %struct.Memory* %loadMem_4012d1, %struct.Memory** %MEMORY
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %PC.i112
  %4438 = add i64 %4437, 157
  %4439 = load i64, i64* %PC.i112
  %4440 = add i64 %4439, 5
  store i64 %4440, i64* %PC.i112
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4438, i64* %4441, align 8
  store %struct.Memory* %loadMem_4012d4, %struct.Memory** %MEMORY
  br label %block_.L_401371

block_.L_4012d9:                                  ; preds = %block_.L_4012b9
  %loadMem_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %PC.i111
  %4446 = add i64 %4445, 5
  %4447 = load i64, i64* %PC.i111
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i111
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4446, i64* %4449, align 8
  store %struct.Memory* %loadMem_4012d9, %struct.Memory** %MEMORY
  br label %block_.L_4012de

block_.L_4012de:                                  ; preds = %block_.L_40133e, %block_.L_4012d9
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i110
  %4460 = sub i64 %4459, 16
  %4461 = load i64, i64* %PC.i108
  %4462 = add i64 %4461, 4
  store i64 %4462, i64* %PC.i108
  %4463 = inttoptr i64 %4460 to i32*
  %4464 = load i32, i32* %4463
  %4465 = sext i32 %4464 to i64
  store i64 %4465, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_4012de, %struct.Memory** %MEMORY
  %loadMem_4012e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %4471 to i64*
  %4472 = load i64, i64* %RAX.i107
  %4473 = mul i64 %4472, 4
  %4474 = add i64 %4473, 8807744
  %4475 = load i64, i64* %PC.i106
  %4476 = add i64 %4475, 8
  store i64 %4476, i64* %PC.i106
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4479, align 1
  %4480 = and i32 %4478, 255
  %4481 = call i32 @llvm.ctpop.i32(i32 %4480)
  %4482 = trunc i32 %4481 to i8
  %4483 = and i8 %4482, 1
  %4484 = xor i8 %4483, 1
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4484, i8* %4485, align 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4486, align 1
  %4487 = icmp eq i32 %4478, 0
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4488, i8* %4489, align 1
  %4490 = lshr i32 %4478, 31
  %4491 = trunc i32 %4490 to i8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4491, i8* %4492, align 1
  %4493 = lshr i32 %4478, 31
  %4494 = xor i32 %4490, %4493
  %4495 = add i32 %4494, %4493
  %4496 = icmp eq i32 %4495, 2
  %4497 = zext i1 %4496 to i8
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4497, i8* %4498, align 1
  store %struct.Memory* %loadMem_4012e2, %struct.Memory** %MEMORY
  %loadMem_4012ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4501 to i64*
  %4502 = load i64, i64* %PC.i105
  %4503 = add i64 %4502, 106
  %4504 = load i64, i64* %PC.i105
  %4505 = add i64 %4504, 6
  %4506 = load i64, i64* %PC.i105
  %4507 = add i64 %4506, 6
  store i64 %4507, i64* %PC.i105
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4509 = load i8, i8* %4508, align 1
  store i8 %4509, i8* %BRANCH_TAKEN, align 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4511 = icmp ne i8 %4509, 0
  %4512 = select i1 %4511, i64 %4503, i64 %4505
  store i64 %4512, i64* %4510, align 8
  store %struct.Memory* %loadMem_4012ea, %struct.Memory** %MEMORY
  %loadBr_4012ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012ea = icmp eq i8 %loadBr_4012ea, 1
  br i1 %cmpBr_4012ea, label %block_.L_401354, label %block_4012f0

block_4012f0:                                     ; preds = %block_.L_4012de
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 1
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 15
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %4521 to i64*
  %4522 = load i64, i64* %RBP.i104
  %4523 = sub i64 %4522, 16
  %4524 = load i64, i64* %PC.i102
  %4525 = add i64 %4524, 4
  store i64 %4525, i64* %PC.i102
  %4526 = inttoptr i64 %4523 to i32*
  %4527 = load i32, i32* %4526
  %4528 = sext i32 %4527 to i64
  store i64 %4528, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4012f0, %struct.Memory** %MEMORY
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 33
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 1
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RAX.i101
  %4536 = mul i64 %4535, 4
  %4537 = add i64 %4536, 8807744
  %4538 = load i64, i64* %PC.i100
  %4539 = add i64 %4538, 8
  store i64 %4539, i64* %PC.i100
  %4540 = inttoptr i64 %4537 to i32*
  %4541 = load i32, i32* %4540
  %4542 = sub i32 %4541, 12
  %4543 = icmp ult i32 %4541, 12
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4544, i8* %4545, align 1
  %4546 = and i32 %4542, 255
  %4547 = call i32 @llvm.ctpop.i32(i32 %4546)
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = xor i8 %4549, 1
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4550, i8* %4551, align 1
  %4552 = xor i32 %4541, 12
  %4553 = xor i32 %4552, %4542
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4556, i8* %4557, align 1
  %4558 = icmp eq i32 %4542, 0
  %4559 = zext i1 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4559, i8* %4560, align 1
  %4561 = lshr i32 %4542, 31
  %4562 = trunc i32 %4561 to i8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4562, i8* %4563, align 1
  %4564 = lshr i32 %4541, 31
  %4565 = xor i32 %4561, %4564
  %4566 = add i32 %4565, %4564
  %4567 = icmp eq i32 %4566, 2
  %4568 = zext i1 %4567 to i8
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4568, i8* %4569, align 1
  store %struct.Memory* %loadMem_4012f4, %struct.Memory** %MEMORY
  %loadMem_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 33
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %PC.i99
  %4574 = add i64 %4573, 24
  %4575 = load i64, i64* %PC.i99
  %4576 = add i64 %4575, 6
  %4577 = load i64, i64* %PC.i99
  %4578 = add i64 %4577, 6
  store i64 %4578, i64* %PC.i99
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4580 = load i8, i8* %4579, align 1
  store i8 %4580, i8* %BRANCH_TAKEN, align 1
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4582 = icmp ne i8 %4580, 0
  %4583 = select i1 %4582, i64 %4574, i64 %4576
  store i64 %4583, i64* %4581, align 8
  store %struct.Memory* %loadMem_4012fc, %struct.Memory** %MEMORY
  %loadBr_4012fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012fc = icmp eq i8 %loadBr_4012fc, 1
  br i1 %cmpBr_4012fc, label %block_.L_401314, label %block_401302

block_401302:                                     ; preds = %block_4012f0
  %loadMem_401302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i98
  %4594 = sub i64 %4593, 16
  %4595 = load i64, i64* %PC.i96
  %4596 = add i64 %4595, 4
  store i64 %4596, i64* %PC.i96
  %4597 = inttoptr i64 %4594 to i32*
  %4598 = load i32, i32* %4597
  %4599 = sext i32 %4598 to i64
  store i64 %4599, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_401302, %struct.Memory** %MEMORY
  %loadMem_401306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RAX.i95
  %4607 = mul i64 %4606, 4
  %4608 = add i64 %4607, 8807744
  %4609 = load i64, i64* %PC.i94
  %4610 = add i64 %4609, 8
  store i64 %4610, i64* %PC.i94
  %4611 = inttoptr i64 %4608 to i32*
  %4612 = load i32, i32* %4611
  %4613 = sub i32 %4612, 10
  %4614 = icmp ult i32 %4612, 10
  %4615 = zext i1 %4614 to i8
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4615, i8* %4616, align 1
  %4617 = and i32 %4613, 255
  %4618 = call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4621, i8* %4622, align 1
  %4623 = xor i32 %4612, 10
  %4624 = xor i32 %4623, %4613
  %4625 = lshr i32 %4624, 4
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4627, i8* %4628, align 1
  %4629 = icmp eq i32 %4613, 0
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4630, i8* %4631, align 1
  %4632 = lshr i32 %4613, 31
  %4633 = trunc i32 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4633, i8* %4634, align 1
  %4635 = lshr i32 %4612, 31
  %4636 = xor i32 %4632, %4635
  %4637 = add i32 %4636, %4635
  %4638 = icmp eq i32 %4637, 2
  %4639 = zext i1 %4638 to i8
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4639, i8* %4640, align 1
  store %struct.Memory* %loadMem_401306, %struct.Memory** %MEMORY
  %loadMem_40130e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4643 to i64*
  %4644 = load i64, i64* %PC.i93
  %4645 = add i64 %4644, 20
  %4646 = load i64, i64* %PC.i93
  %4647 = add i64 %4646, 6
  %4648 = load i64, i64* %PC.i93
  %4649 = add i64 %4648, 6
  store i64 %4649, i64* %PC.i93
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4651 = load i8, i8* %4650, align 1
  %4652 = icmp eq i8 %4651, 0
  %4653 = zext i1 %4652 to i8
  store i8 %4653, i8* %BRANCH_TAKEN, align 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4655 = select i1 %4652, i64 %4645, i64 %4647
  store i64 %4655, i64* %4654, align 8
  store %struct.Memory* %loadMem_40130e, %struct.Memory** %MEMORY
  %loadBr_40130e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40130e = icmp eq i8 %loadBr_40130e, 1
  br i1 %cmpBr_40130e, label %block_.L_401322, label %block_.L_401314

block_.L_401314:                                  ; preds = %block_401302, %block_4012f0
  %loadMem_401314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 1
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 15
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4664 to i64*
  %4665 = load i64, i64* %RBP.i92
  %4666 = sub i64 %4665, 24
  %4667 = load i64, i64* %PC.i90
  %4668 = add i64 %4667, 3
  store i64 %4668, i64* %PC.i90
  %4669 = inttoptr i64 %4666 to i32*
  %4670 = load i32, i32* %4669
  %4671 = zext i32 %4670 to i64
  store i64 %4671, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_401314, %struct.Memory** %MEMORY
  %loadMem_401317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 1
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %RAX.i89
  %4679 = load i64, i64* %PC.i88
  %4680 = add i64 %4679, 3
  store i64 %4680, i64* %PC.i88
  %4681 = trunc i64 %4678 to i32
  %4682 = add i32 1, %4681
  %4683 = zext i32 %4682 to i64
  store i64 %4683, i64* %RAX.i89, align 8
  %4684 = icmp ult i32 %4682, %4681
  %4685 = icmp ult i32 %4682, 1
  %4686 = or i1 %4684, %4685
  %4687 = zext i1 %4686 to i8
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4687, i8* %4688, align 1
  %4689 = and i32 %4682, 255
  %4690 = call i32 @llvm.ctpop.i32(i32 %4689)
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = xor i8 %4692, 1
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4693, i8* %4694, align 1
  %4695 = xor i64 1, %4678
  %4696 = trunc i64 %4695 to i32
  %4697 = xor i32 %4696, %4682
  %4698 = lshr i32 %4697, 4
  %4699 = trunc i32 %4698 to i8
  %4700 = and i8 %4699, 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4700, i8* %4701, align 1
  %4702 = icmp eq i32 %4682, 0
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4703, i8* %4704, align 1
  %4705 = lshr i32 %4682, 31
  %4706 = trunc i32 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4706, i8* %4707, align 1
  %4708 = lshr i32 %4681, 31
  %4709 = xor i32 %4705, %4708
  %4710 = add i32 %4709, %4705
  %4711 = icmp eq i32 %4710, 2
  %4712 = zext i1 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4712, i8* %4713, align 1
  store %struct.Memory* %loadMem_401317, %struct.Memory** %MEMORY
  %loadMem_40131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 33
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 1
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %4719 to i32*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 15
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4722 to i64*
  %4723 = load i64, i64* %RBP.i87
  %4724 = sub i64 %4723, 24
  %4725 = load i32, i32* %EAX.i86
  %4726 = zext i32 %4725 to i64
  %4727 = load i64, i64* %PC.i85
  %4728 = add i64 %4727, 3
  store i64 %4728, i64* %PC.i85
  %4729 = inttoptr i64 %4724 to i32*
  store i32 %4725, i32* %4729
  store %struct.Memory* %loadMem_40131a, %struct.Memory** %MEMORY
  %loadMem_40131d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %PC.i84
  %4734 = add i64 %4733, 55
  %4735 = load i64, i64* %PC.i84
  %4736 = add i64 %4735, 5
  store i64 %4736, i64* %PC.i84
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4734, i64* %4737, align 8
  store %struct.Memory* %loadMem_40131d, %struct.Memory** %MEMORY
  br label %block_.L_401354

block_.L_401322:                                  ; preds = %block_401302
  %loadMem_401322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 1
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 15
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4746 to i64*
  %4747 = load i64, i64* %RBP.i83
  %4748 = sub i64 %4747, 16
  %4749 = load i64, i64* %PC.i81
  %4750 = add i64 %4749, 4
  store i64 %4750, i64* %PC.i81
  %4751 = inttoptr i64 %4748 to i32*
  %4752 = load i32, i32* %4751
  %4753 = sext i32 %4752 to i64
  store i64 %4753, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_401322, %struct.Memory** %MEMORY
  %loadMem_401326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 1
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RAX.i80
  %4761 = mul i64 %4760, 4
  %4762 = add i64 %4761, 8807744
  %4763 = load i64, i64* %PC.i79
  %4764 = add i64 %4763, 8
  store i64 %4764, i64* %PC.i79
  %4765 = inttoptr i64 %4762 to i32*
  %4766 = load i32, i32* %4765
  %4767 = sub i32 %4766, 13
  %4768 = icmp ult i32 %4766, 13
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4769, i8* %4770, align 1
  %4771 = and i32 %4767, 255
  %4772 = call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4775, i8* %4776, align 1
  %4777 = xor i32 %4766, 13
  %4778 = xor i32 %4777, %4767
  %4779 = lshr i32 %4778, 4
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4781, i8* %4782, align 1
  %4783 = icmp eq i32 %4767, 0
  %4784 = zext i1 %4783 to i8
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4784, i8* %4785, align 1
  %4786 = lshr i32 %4767, 31
  %4787 = trunc i32 %4786 to i8
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4787, i8* %4788, align 1
  %4789 = lshr i32 %4766, 31
  %4790 = xor i32 %4786, %4789
  %4791 = add i32 %4790, %4789
  %4792 = icmp eq i32 %4791, 2
  %4793 = zext i1 %4792 to i8
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4793, i8* %4794, align 1
  store %struct.Memory* %loadMem_401326, %struct.Memory** %MEMORY
  %loadMem_40132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 33
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %PC.i78
  %4799 = add i64 %4798, 11
  %4800 = load i64, i64* %PC.i78
  %4801 = add i64 %4800, 6
  %4802 = load i64, i64* %PC.i78
  %4803 = add i64 %4802, 6
  store i64 %4803, i64* %PC.i78
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4805 = load i8, i8* %4804, align 1
  store i8 %4805, i8* %BRANCH_TAKEN, align 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4807 = icmp ne i8 %4805, 0
  %4808 = select i1 %4807, i64 %4799, i64 %4801
  store i64 %4808, i64* %4806, align 8
  store %struct.Memory* %loadMem_40132e, %struct.Memory** %MEMORY
  %loadBr_40132e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40132e = icmp eq i8 %loadBr_40132e, 1
  br i1 %cmpBr_40132e, label %block_.L_401339, label %block_401334

block_401334:                                     ; preds = %block_.L_401322
  %loadMem_401334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %PC.i77
  %4813 = add i64 %4812, 32
  %4814 = load i64, i64* %PC.i77
  %4815 = add i64 %4814, 5
  store i64 %4815, i64* %PC.i77
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4813, i64* %4816, align 8
  store %struct.Memory* %loadMem_401334, %struct.Memory** %MEMORY
  br label %block_.L_401354

block_.L_401339:                                  ; preds = %block_.L_401322
  %loadMem_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 33
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %PC.i76
  %4821 = add i64 %4820, 5
  %4822 = load i64, i64* %PC.i76
  %4823 = add i64 %4822, 5
  store i64 %4823, i64* %PC.i76
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4821, i64* %4824, align 8
  store %struct.Memory* %loadMem_401339, %struct.Memory** %MEMORY
  br label %block_.L_40133e

block_.L_40133e:                                  ; preds = %block_.L_401339
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 33
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 1
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 15
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4833 to i64*
  %4834 = load i64, i64* %RBP.i75
  %4835 = sub i64 %4834, 20
  %4836 = load i64, i64* %PC.i73
  %4837 = add i64 %4836, 4
  store i64 %4837, i64* %PC.i73
  %4838 = inttoptr i64 %4835 to i32*
  %4839 = load i32, i32* %4838
  %4840 = sext i32 %4839 to i64
  store i64 %4840, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_40133e, %struct.Memory** %MEMORY
  %loadMem_401342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 33
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4843 to i64*
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 1
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 5
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %4849 to i64*
  %4850 = load i64, i64* %RAX.i71
  %4851 = mul i64 %4850, 4
  %4852 = add i64 %4851, 4347168
  %4853 = load i64, i64* %PC.i70
  %4854 = add i64 %4853, 7
  store i64 %4854, i64* %PC.i70
  %4855 = inttoptr i64 %4852 to i32*
  %4856 = load i32, i32* %4855
  %4857 = zext i32 %4856 to i64
  store i64 %4857, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_401342, %struct.Memory** %MEMORY
  %loadMem_401349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 5
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RCX.i68
  %4868 = load i64, i64* %RBP.i69
  %4869 = sub i64 %4868, 16
  %4870 = load i64, i64* %PC.i67
  %4871 = add i64 %4870, 3
  store i64 %4871, i64* %PC.i67
  %4872 = trunc i64 %4867 to i32
  %4873 = inttoptr i64 %4869 to i32*
  %4874 = load i32, i32* %4873
  %4875 = add i32 %4874, %4872
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RCX.i68, align 8
  %4877 = icmp ult i32 %4875, %4872
  %4878 = icmp ult i32 %4875, %4874
  %4879 = or i1 %4877, %4878
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4880, i8* %4881, align 1
  %4882 = and i32 %4875, 255
  %4883 = call i32 @llvm.ctpop.i32(i32 %4882)
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = xor i8 %4885, 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4886, i8* %4887, align 1
  %4888 = xor i32 %4874, %4872
  %4889 = xor i32 %4888, %4875
  %4890 = lshr i32 %4889, 4
  %4891 = trunc i32 %4890 to i8
  %4892 = and i8 %4891, 1
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4892, i8* %4893, align 1
  %4894 = icmp eq i32 %4875, 0
  %4895 = zext i1 %4894 to i8
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4895, i8* %4896, align 1
  %4897 = lshr i32 %4875, 31
  %4898 = trunc i32 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4898, i8* %4899, align 1
  %4900 = lshr i32 %4872, 31
  %4901 = lshr i32 %4874, 31
  %4902 = xor i32 %4897, %4900
  %4903 = xor i32 %4897, %4901
  %4904 = add i32 %4902, %4903
  %4905 = icmp eq i32 %4904, 2
  %4906 = zext i1 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4906, i8* %4907, align 1
  store %struct.Memory* %loadMem_401349, %struct.Memory** %MEMORY
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 5
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4913 to i32*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 15
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RBP.i66
  %4918 = sub i64 %4917, 16
  %4919 = load i32, i32* %ECX.i
  %4920 = zext i32 %4919 to i64
  %4921 = load i64, i64* %PC.i65
  %4922 = add i64 %4921, 3
  store i64 %4922, i64* %PC.i65
  %4923 = inttoptr i64 %4918 to i32*
  store i32 %4919, i32* %4923
  store %struct.Memory* %loadMem_40134c, %struct.Memory** %MEMORY
  %loadMem_40134f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4926 to i64*
  %4927 = load i64, i64* %PC.i64
  %4928 = add i64 %4927, -113
  %4929 = load i64, i64* %PC.i64
  %4930 = add i64 %4929, 5
  store i64 %4930, i64* %PC.i64
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4928, i64* %4931, align 8
  store %struct.Memory* %loadMem_40134f, %struct.Memory** %MEMORY
  br label %block_.L_4012de

block_.L_401354:                                  ; preds = %block_401334, %block_.L_401314, %block_.L_4012de
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 33
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4934 to i64*
  %4935 = load i64, i64* %PC.i63
  %4936 = add i64 %4935, 5
  %4937 = load i64, i64* %PC.i63
  %4938 = add i64 %4937, 5
  store i64 %4938, i64* %PC.i63
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4936, i64* %4939, align 8
  store %struct.Memory* %loadMem_401354, %struct.Memory** %MEMORY
  br label %block_.L_401359

block_.L_401359:                                  ; preds = %block_.L_401354
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %PC.i62
  %4944 = add i64 %4943, 5
  %4945 = load i64, i64* %PC.i62
  %4946 = add i64 %4945, 5
  store i64 %4946, i64* %PC.i62
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4944, i64* %4947, align 8
  store %struct.Memory* %loadMem_401359, %struct.Memory** %MEMORY
  br label %block_.L_40135e

block_.L_40135e:                                  ; preds = %block_.L_401359
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4950 to i64*
  %4951 = load i64, i64* %PC.i61
  %4952 = add i64 %4951, 5
  %4953 = load i64, i64* %PC.i61
  %4954 = add i64 %4953, 5
  store i64 %4954, i64* %PC.i61
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4952, i64* %4955, align 8
  store %struct.Memory* %loadMem_40135e, %struct.Memory** %MEMORY
  br label %block_.L_401363

block_.L_401363:                                  ; preds = %block_.L_40135e
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 33
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4958 to i64*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 1
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 15
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4964 to i64*
  %4965 = load i64, i64* %RBP.i60
  %4966 = sub i64 %4965, 20
  %4967 = load i64, i64* %PC.i58
  %4968 = add i64 %4967, 3
  store i64 %4968, i64* %PC.i58
  %4969 = inttoptr i64 %4966 to i32*
  %4970 = load i32, i32* %4969
  %4971 = zext i32 %4970 to i64
  store i64 %4971, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_401363, %struct.Memory** %MEMORY
  %loadMem_401366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 33
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 1
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4977 to i64*
  %4978 = load i64, i64* %RAX.i57
  %4979 = load i64, i64* %PC.i56
  %4980 = add i64 %4979, 3
  store i64 %4980, i64* %PC.i56
  %4981 = trunc i64 %4978 to i32
  %4982 = add i32 1, %4981
  %4983 = zext i32 %4982 to i64
  store i64 %4983, i64* %RAX.i57, align 8
  %4984 = icmp ult i32 %4982, %4981
  %4985 = icmp ult i32 %4982, 1
  %4986 = or i1 %4984, %4985
  %4987 = zext i1 %4986 to i8
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4987, i8* %4988, align 1
  %4989 = and i32 %4982, 255
  %4990 = call i32 @llvm.ctpop.i32(i32 %4989)
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  %4993 = xor i8 %4992, 1
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4993, i8* %4994, align 1
  %4995 = xor i64 1, %4978
  %4996 = trunc i64 %4995 to i32
  %4997 = xor i32 %4996, %4982
  %4998 = lshr i32 %4997, 4
  %4999 = trunc i32 %4998 to i8
  %5000 = and i8 %4999, 1
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5000, i8* %5001, align 1
  %5002 = icmp eq i32 %4982, 0
  %5003 = zext i1 %5002 to i8
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5003, i8* %5004, align 1
  %5005 = lshr i32 %4982, 31
  %5006 = trunc i32 %5005 to i8
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5006, i8* %5007, align 1
  %5008 = lshr i32 %4981, 31
  %5009 = xor i32 %5005, %5008
  %5010 = add i32 %5009, %5005
  %5011 = icmp eq i32 %5010, 2
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5012, i8* %5013, align 1
  store %struct.Memory* %loadMem_401366, %struct.Memory** %MEMORY
  %loadMem_401369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 1
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %5019 to i32*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 15
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5022 to i64*
  %5023 = load i64, i64* %RBP.i55
  %5024 = sub i64 %5023, 20
  %5025 = load i32, i32* %EAX.i54
  %5026 = zext i32 %5025 to i64
  %5027 = load i64, i64* %PC.i53
  %5028 = add i64 %5027, 3
  store i64 %5028, i64* %PC.i53
  %5029 = inttoptr i64 %5024 to i32*
  store i32 %5025, i32* %5029
  store %struct.Memory* %loadMem_401369, %struct.Memory** %MEMORY
  %loadMem_40136c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 33
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %PC.i52
  %5034 = add i64 %5033, -266
  %5035 = load i64, i64* %PC.i52
  %5036 = add i64 %5035, 5
  store i64 %5036, i64* %PC.i52
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5034, i64* %5037, align 8
  store %struct.Memory* %loadMem_40136c, %struct.Memory** %MEMORY
  br label %block_.L_401262

block_.L_401371:                                  ; preds = %block_4012cb, %block_4012ab, %block_.L_401262
  %loadMem_401371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 15
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %RBP.i51
  %5045 = sub i64 %5044, 20
  %5046 = load i64, i64* %PC.i50
  %5047 = add i64 %5046, 7
  store i64 %5047, i64* %PC.i50
  %5048 = inttoptr i64 %5045 to i32*
  store i32 0, i32* %5048
  store %struct.Memory* %loadMem_401371, %struct.Memory** %MEMORY
  br label %block_.L_401378

block_.L_401378:                                  ; preds = %block_.L_4013b3, %block_.L_401371
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 33
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i49
  %5056 = sub i64 %5055, 20
  %5057 = load i64, i64* %PC.i48
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i48
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059
  %5061 = sub i32 %5060, 8
  %5062 = icmp ult i32 %5060, 8
  %5063 = zext i1 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5063, i8* %5064, align 1
  %5065 = and i32 %5061, 255
  %5066 = call i32 @llvm.ctpop.i32(i32 %5065)
  %5067 = trunc i32 %5066 to i8
  %5068 = and i8 %5067, 1
  %5069 = xor i8 %5068, 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5069, i8* %5070, align 1
  %5071 = xor i32 %5060, 8
  %5072 = xor i32 %5071, %5061
  %5073 = lshr i32 %5072, 4
  %5074 = trunc i32 %5073 to i8
  %5075 = and i8 %5074, 1
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5075, i8* %5076, align 1
  %5077 = icmp eq i32 %5061, 0
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5078, i8* %5079, align 1
  %5080 = lshr i32 %5061, 31
  %5081 = trunc i32 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5081, i8* %5082, align 1
  %5083 = lshr i32 %5060, 31
  %5084 = xor i32 %5080, %5083
  %5085 = add i32 %5084, %5083
  %5086 = icmp eq i32 %5085, 2
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5087, i8* %5088, align 1
  store %struct.Memory* %loadMem_401378, %struct.Memory** %MEMORY
  %loadMem_40137c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %PC.i47
  %5093 = add i64 %5092, 69
  %5094 = load i64, i64* %PC.i47
  %5095 = add i64 %5094, 6
  %5096 = load i64, i64* %PC.i47
  %5097 = add i64 %5096, 6
  store i64 %5097, i64* %PC.i47
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5099 = load i8, i8* %5098, align 1
  %5100 = icmp ne i8 %5099, 0
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5102 = load i8, i8* %5101, align 1
  %5103 = icmp ne i8 %5102, 0
  %5104 = xor i1 %5100, %5103
  %5105 = xor i1 %5104, true
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %BRANCH_TAKEN, align 1
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5108 = select i1 %5104, i64 %5095, i64 %5093
  store i64 %5108, i64* %5107, align 8
  store %struct.Memory* %loadMem_40137c, %struct.Memory** %MEMORY
  %loadBr_40137c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40137c = icmp eq i8 %loadBr_40137c, 1
  br i1 %cmpBr_40137c, label %block_.L_4013c1, label %block_401382

block_401382:                                     ; preds = %block_.L_401378
  %loadMem_401382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 33
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5111 to i64*
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 1
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 15
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %RBP.i46
  %5119 = sub i64 %5118, 8
  %5120 = load i64, i64* %PC.i44
  %5121 = add i64 %5120, 3
  store i64 %5121, i64* %PC.i44
  %5122 = inttoptr i64 %5119 to i32*
  %5123 = load i32, i32* %5122
  %5124 = zext i32 %5123 to i64
  store i64 %5124, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_401382, %struct.Memory** %MEMORY
  %loadMem_401385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 5
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 15
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RBP.i43
  %5135 = sub i64 %5134, 20
  %5136 = load i64, i64* %PC.i41
  %5137 = add i64 %5136, 4
  store i64 %5137, i64* %PC.i41
  %5138 = inttoptr i64 %5135 to i32*
  %5139 = load i32, i32* %5138
  %5140 = sext i32 %5139 to i64
  store i64 %5140, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_401385, %struct.Memory** %MEMORY
  %loadMem_401389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 1
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 5
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %RAX.i39
  %5151 = load i64, i64* %RCX.i40
  %5152 = mul i64 %5151, 4
  %5153 = add i64 %5152, 4347184
  %5154 = load i64, i64* %PC.i38
  %5155 = add i64 %5154, 7
  store i64 %5155, i64* %PC.i38
  %5156 = trunc i64 %5150 to i32
  %5157 = inttoptr i64 %5153 to i32*
  %5158 = load i32, i32* %5157
  %5159 = add i32 %5158, %5156
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %RAX.i39, align 8
  %5161 = icmp ult i32 %5159, %5156
  %5162 = icmp ult i32 %5159, %5158
  %5163 = or i1 %5161, %5162
  %5164 = zext i1 %5163 to i8
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5164, i8* %5165, align 1
  %5166 = and i32 %5159, 255
  %5167 = call i32 @llvm.ctpop.i32(i32 %5166)
  %5168 = trunc i32 %5167 to i8
  %5169 = and i8 %5168, 1
  %5170 = xor i8 %5169, 1
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5170, i8* %5171, align 1
  %5172 = xor i32 %5158, %5156
  %5173 = xor i32 %5172, %5159
  %5174 = lshr i32 %5173, 4
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5176, i8* %5177, align 1
  %5178 = icmp eq i32 %5159, 0
  %5179 = zext i1 %5178 to i8
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5179, i8* %5180, align 1
  %5181 = lshr i32 %5159, 31
  %5182 = trunc i32 %5181 to i8
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5182, i8* %5183, align 1
  %5184 = lshr i32 %5156, 31
  %5185 = lshr i32 %5158, 31
  %5186 = xor i32 %5181, %5184
  %5187 = xor i32 %5181, %5185
  %5188 = add i32 %5186, %5187
  %5189 = icmp eq i32 %5188, 2
  %5190 = zext i1 %5189 to i8
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5190, i8* %5191, align 1
  store %struct.Memory* %loadMem_401389, %struct.Memory** %MEMORY
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 33
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 1
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %5197 to i32*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 15
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5200 to i64*
  %5201 = load i64, i64* %RBP.i37
  %5202 = sub i64 %5201, 16
  %5203 = load i32, i32* %EAX.i36
  %5204 = zext i32 %5203 to i64
  %5205 = load i64, i64* %PC.i35
  %5206 = add i64 %5205, 3
  store i64 %5206, i64* %PC.i35
  %5207 = inttoptr i64 %5202 to i32*
  store i32 %5203, i32* %5207
  store %struct.Memory* %loadMem_401390, %struct.Memory** %MEMORY
  %loadMem_401393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 33
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 5
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 15
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %5216 to i64*
  %5217 = load i64, i64* %RBP.i34
  %5218 = sub i64 %5217, 16
  %5219 = load i64, i64* %PC.i32
  %5220 = add i64 %5219, 4
  store i64 %5220, i64* %PC.i32
  %5221 = inttoptr i64 %5218 to i32*
  %5222 = load i32, i32* %5221
  %5223 = sext i32 %5222 to i64
  store i64 %5223, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_401393, %struct.Memory** %MEMORY
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 33
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 5
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RCX.i
  %5231 = mul i64 %5230, 4
  %5232 = add i64 %5231, 8807744
  %5233 = load i64, i64* %PC.i31
  %5234 = add i64 %5233, 8
  store i64 %5234, i64* %PC.i31
  %5235 = inttoptr i64 %5232 to i32*
  %5236 = load i32, i32* %5235
  %5237 = sub i32 %5236, 4
  %5238 = icmp ult i32 %5236, 4
  %5239 = zext i1 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5239, i8* %5240, align 1
  %5241 = and i32 %5237, 255
  %5242 = call i32 @llvm.ctpop.i32(i32 %5241)
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  %5245 = xor i8 %5244, 1
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5245, i8* %5246, align 1
  %5247 = xor i32 %5236, 4
  %5248 = xor i32 %5247, %5237
  %5249 = lshr i32 %5248, 4
  %5250 = trunc i32 %5249 to i8
  %5251 = and i8 %5250, 1
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5251, i8* %5252, align 1
  %5253 = icmp eq i32 %5237, 0
  %5254 = zext i1 %5253 to i8
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5254, i8* %5255, align 1
  %5256 = lshr i32 %5237, 31
  %5257 = trunc i32 %5256 to i8
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5257, i8* %5258, align 1
  %5259 = lshr i32 %5236, 31
  %5260 = xor i32 %5256, %5259
  %5261 = add i32 %5260, %5259
  %5262 = icmp eq i32 %5261, 2
  %5263 = zext i1 %5262 to i8
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5263, i8* %5264, align 1
  store %struct.Memory* %loadMem_401397, %struct.Memory** %MEMORY
  %loadMem_40139f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 33
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5267 to i64*
  %5268 = load i64, i64* %PC.i30
  %5269 = add i64 %5268, 15
  %5270 = load i64, i64* %PC.i30
  %5271 = add i64 %5270, 6
  %5272 = load i64, i64* %PC.i30
  %5273 = add i64 %5272, 6
  store i64 %5273, i64* %PC.i30
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5275 = load i8, i8* %5274, align 1
  %5276 = icmp eq i8 %5275, 0
  %5277 = zext i1 %5276 to i8
  store i8 %5277, i8* %BRANCH_TAKEN, align 1
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5279 = select i1 %5276, i64 %5269, i64 %5271
  store i64 %5279, i64* %5278, align 8
  store %struct.Memory* %loadMem_40139f, %struct.Memory** %MEMORY
  %loadBr_40139f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40139f = icmp eq i8 %loadBr_40139f, 1
  br i1 %cmpBr_40139f, label %block_.L_4013ae, label %block_4013a5

block_4013a5:                                     ; preds = %block_401382
  %loadMem_4013a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5282 to i64*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 1
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 15
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %RBP.i29
  %5290 = sub i64 %5289, 24
  %5291 = load i64, i64* %PC.i27
  %5292 = add i64 %5291, 3
  store i64 %5292, i64* %PC.i27
  %5293 = inttoptr i64 %5290 to i32*
  %5294 = load i32, i32* %5293
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_4013a5, %struct.Memory** %MEMORY
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 33
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 1
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %RAX.i26
  %5303 = load i64, i64* %PC.i25
  %5304 = add i64 %5303, 3
  store i64 %5304, i64* %PC.i25
  %5305 = trunc i64 %5302 to i32
  %5306 = add i32 1, %5305
  %5307 = zext i32 %5306 to i64
  store i64 %5307, i64* %RAX.i26, align 8
  %5308 = icmp ult i32 %5306, %5305
  %5309 = icmp ult i32 %5306, 1
  %5310 = or i1 %5308, %5309
  %5311 = zext i1 %5310 to i8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5311, i8* %5312, align 1
  %5313 = and i32 %5306, 255
  %5314 = call i32 @llvm.ctpop.i32(i32 %5313)
  %5315 = trunc i32 %5314 to i8
  %5316 = and i8 %5315, 1
  %5317 = xor i8 %5316, 1
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5317, i8* %5318, align 1
  %5319 = xor i64 1, %5302
  %5320 = trunc i64 %5319 to i32
  %5321 = xor i32 %5320, %5306
  %5322 = lshr i32 %5321, 4
  %5323 = trunc i32 %5322 to i8
  %5324 = and i8 %5323, 1
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5324, i8* %5325, align 1
  %5326 = icmp eq i32 %5306, 0
  %5327 = zext i1 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5327, i8* %5328, align 1
  %5329 = lshr i32 %5306, 31
  %5330 = trunc i32 %5329 to i8
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5330, i8* %5331, align 1
  %5332 = lshr i32 %5305, 31
  %5333 = xor i32 %5329, %5332
  %5334 = add i32 %5333, %5329
  %5335 = icmp eq i32 %5334, 2
  %5336 = zext i1 %5335 to i8
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5336, i8* %5337, align 1
  store %struct.Memory* %loadMem_4013a8, %struct.Memory** %MEMORY
  %loadMem_4013ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 1
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %5343 to i32*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 15
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %RBP.i24
  %5348 = sub i64 %5347, 24
  %5349 = load i32, i32* %EAX.i23
  %5350 = zext i32 %5349 to i64
  %5351 = load i64, i64* %PC.i22
  %5352 = add i64 %5351, 3
  store i64 %5352, i64* %PC.i22
  %5353 = inttoptr i64 %5348 to i32*
  store i32 %5349, i32* %5353
  store %struct.Memory* %loadMem_4013ab, %struct.Memory** %MEMORY
  br label %block_.L_4013ae

block_.L_4013ae:                                  ; preds = %block_4013a5, %block_401382
  %loadMem_4013ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 33
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5356 to i64*
  %5357 = load i64, i64* %PC.i21
  %5358 = add i64 %5357, 5
  %5359 = load i64, i64* %PC.i21
  %5360 = add i64 %5359, 5
  store i64 %5360, i64* %PC.i21
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5358, i64* %5361, align 8
  store %struct.Memory* %loadMem_4013ae, %struct.Memory** %MEMORY
  br label %block_.L_4013b3

block_.L_4013b3:                                  ; preds = %block_.L_4013ae
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 1
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 15
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5370 to i64*
  %5371 = load i64, i64* %RBP.i20
  %5372 = sub i64 %5371, 20
  %5373 = load i64, i64* %PC.i18
  %5374 = add i64 %5373, 3
  store i64 %5374, i64* %PC.i18
  %5375 = inttoptr i64 %5372 to i32*
  %5376 = load i32, i32* %5375
  %5377 = zext i32 %5376 to i64
  store i64 %5377, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_4013b3, %struct.Memory** %MEMORY
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5383 to i64*
  %5384 = load i64, i64* %RAX.i17
  %5385 = load i64, i64* %PC.i16
  %5386 = add i64 %5385, 3
  store i64 %5386, i64* %PC.i16
  %5387 = trunc i64 %5384 to i32
  %5388 = add i32 1, %5387
  %5389 = zext i32 %5388 to i64
  store i64 %5389, i64* %RAX.i17, align 8
  %5390 = icmp ult i32 %5388, %5387
  %5391 = icmp ult i32 %5388, 1
  %5392 = or i1 %5390, %5391
  %5393 = zext i1 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5393, i8* %5394, align 1
  %5395 = and i32 %5388, 255
  %5396 = call i32 @llvm.ctpop.i32(i32 %5395)
  %5397 = trunc i32 %5396 to i8
  %5398 = and i8 %5397, 1
  %5399 = xor i8 %5398, 1
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5399, i8* %5400, align 1
  %5401 = xor i64 1, %5384
  %5402 = trunc i64 %5401 to i32
  %5403 = xor i32 %5402, %5388
  %5404 = lshr i32 %5403, 4
  %5405 = trunc i32 %5404 to i8
  %5406 = and i8 %5405, 1
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5406, i8* %5407, align 1
  %5408 = icmp eq i32 %5388, 0
  %5409 = zext i1 %5408 to i8
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5409, i8* %5410, align 1
  %5411 = lshr i32 %5388, 31
  %5412 = trunc i32 %5411 to i8
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5412, i8* %5413, align 1
  %5414 = lshr i32 %5387, 31
  %5415 = xor i32 %5411, %5414
  %5416 = add i32 %5415, %5411
  %5417 = icmp eq i32 %5416, 2
  %5418 = zext i1 %5417 to i8
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5418, i8* %5419, align 1
  store %struct.Memory* %loadMem_4013b6, %struct.Memory** %MEMORY
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 33
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 1
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5425 to i32*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 15
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %RBP.i15
  %5430 = sub i64 %5429, 20
  %5431 = load i32, i32* %EAX.i14
  %5432 = zext i32 %5431 to i64
  %5433 = load i64, i64* %PC.i13
  %5434 = add i64 %5433, 3
  store i64 %5434, i64* %PC.i13
  %5435 = inttoptr i64 %5430 to i32*
  store i32 %5431, i32* %5435
  store %struct.Memory* %loadMem_4013b9, %struct.Memory** %MEMORY
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 33
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5438 to i64*
  %5439 = load i64, i64* %PC.i12
  %5440 = add i64 %5439, -68
  %5441 = load i64, i64* %PC.i12
  %5442 = add i64 %5441, 5
  store i64 %5442, i64* %PC.i12
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5440, i64* %5443, align 8
  store %struct.Memory* %loadMem_4013bc, %struct.Memory** %MEMORY
  br label %block_.L_401378

block_.L_4013c1:                                  ; preds = %block_.L_401378
  %loadMem_4013c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %PC.i11
  %5448 = add i64 %5447, 5
  %5449 = load i64, i64* %PC.i11
  %5450 = add i64 %5449, 5
  store i64 %5450, i64* %PC.i11
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5448, i64* %5451, align 8
  store %struct.Memory* %loadMem_4013c1, %struct.Memory** %MEMORY
  br label %block_.L_4013c6

block_.L_4013c6:                                  ; preds = %block_.L_4013c1, %block_.L_401186
  %loadMem_4013c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 15
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %5460 to i64*
  %5461 = load i64, i64* %RBP.i10
  %5462 = sub i64 %5461, 24
  %5463 = load i64, i64* %PC.i8
  %5464 = add i64 %5463, 3
  store i64 %5464, i64* %PC.i8
  %5465 = inttoptr i64 %5462 to i32*
  %5466 = load i32, i32* %5465
  %5467 = zext i32 %5466 to i64
  store i64 %5467, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_4013c6, %struct.Memory** %MEMORY
  %loadMem_4013c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 33
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5470 to i64*
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 1
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5473 to i32*
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 15
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5476 to i64*
  %5477 = load i64, i64* %RBP.i7
  %5478 = sub i64 %5477, 4
  %5479 = load i32, i32* %EAX.i
  %5480 = zext i32 %5479 to i64
  %5481 = load i64, i64* %PC.i6
  %5482 = add i64 %5481, 3
  store i64 %5482, i64* %PC.i6
  %5483 = inttoptr i64 %5478 to i32*
  store i32 %5479, i32* %5483
  store %struct.Memory* %loadMem_4013c9, %struct.Memory** %MEMORY
  br label %block_.L_4013cc

block_.L_4013cc:                                  ; preds = %block_.L_4013c6, %block_400f23
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 33
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 1
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5489 to i64*
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 15
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %RBP.i5
  %5494 = sub i64 %5493, 4
  %5495 = load i64, i64* %PC.i4
  %5496 = add i64 %5495, 3
  store i64 %5496, i64* %PC.i4
  %5497 = inttoptr i64 %5494 to i32*
  %5498 = load i32, i32* %5497
  %5499 = zext i32 %5498 to i64
  store i64 %5499, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4013cc, %struct.Memory** %MEMORY
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 33
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %PC.i2
  %5507 = add i64 %5506, 1
  store i64 %5507, i64* %PC.i2
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5509 = load i64, i64* %5508, align 8
  %5510 = add i64 %5509, 8
  %5511 = inttoptr i64 %5509 to i64*
  %5512 = load i64, i64* %5511
  store i64 %5512, i64* %RBP.i3, align 8
  store i64 %5510, i64* %5508, align 8
  store %struct.Memory* %loadMem_4013cf, %struct.Memory** %MEMORY
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5515 to i64*
  %5516 = load i64, i64* %PC.i1
  %5517 = add i64 %5516, 1
  store i64 %5517, i64* %PC.i1
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5520 = load i64, i64* %5519, align 8
  %5521 = inttoptr i64 %5520 to i64*
  %5522 = load i64, i64* %5521
  store i64 %5522, i64* %5518, align 8
  %5523 = add i64 %5520, 8
  store i64 %5523, i64* %5519, align 8
  store %struct.Memory* %loadMem_4013d0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4013d0
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl__0x0__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %15, 31
  %31 = xor i32 %27, %30
  %32 = add i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400f2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4013cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40118b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
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

define %struct.Memory* @routine_jge_.L_401020(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x425510___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4347152
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
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
  %34 = xor i32 %20, %18
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
  %46 = lshr i32 %18, 31
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 5
  %17 = icmp ult i32 %15, 5
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 5
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400f8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401020(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401008(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 7
  %17 = icmp ult i32 %15, 7
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 7
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400fc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x9__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 9
  %17 = icmp ult i32 %15, 9
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 9
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400fd6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401008(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xd__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 13
  %17 = icmp ult i32 %15, 13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 13
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400fed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400ff2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425510___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4347152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40100d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401012(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f52(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x425520___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4347168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
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
  %34 = xor i32 %20, %18
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
  %46 = lshr i32 %18, 31
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

define %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %15, 1
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 1
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40107e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_40107e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 5
  %17 = icmp ult i32 %15, 5
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 5
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40109e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4010a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_401119(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xb__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 11
  %17 = icmp ult i32 %15, 11
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 11
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4010d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4010e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401119(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4010fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401103(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x425520___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4347168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40111e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401123(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401128(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401027(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
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

define %struct.Memory* @routine_jge_.L_401186(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x425530___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4347184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
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
  %34 = xor i32 %20, %18
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
  %46 = lshr i32 %18, 31
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

define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 3
  %17 = icmp ult i32 %15, 3
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 3
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401173(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40113d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4013c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_40125b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 6
  %17 = icmp ult i32 %15, 6
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 6
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4011cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40125b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4011d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_401243(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 8
  %17 = icmp ult i32 %15, 8
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 8
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401208(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 10
  %17 = icmp ult i32 %15, 10
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 10
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401243(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40122d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401248(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40124d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401192(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401371(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 2
  %17 = icmp ult i32 %15, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 2
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401371(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 6
  %17 = icmp ult i32 %15, 6
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 6
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4012de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_401354(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xc__0x866540___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 12
  %17 = icmp ult i32 %15, 12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 12
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_401322(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401354(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_401339(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40133e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401359(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40135e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401363(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401262(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4013c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 4
  %17 = icmp ult i32 %15, 4
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 4
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4013ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4013b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401378(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
