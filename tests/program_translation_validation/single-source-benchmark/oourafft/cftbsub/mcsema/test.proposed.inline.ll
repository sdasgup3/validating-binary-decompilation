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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @sub_402890.cft1st(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403320.cftmdl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @cftbsub(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4024a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4024a0, %struct.Memory** %MEMORY
  %loadMem_4024a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i706 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i706
  %27 = load i64, i64* %PC.i705
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i705
  store i64 %26, i64* %RBP.i707, align 8
  store %struct.Memory* %loadMem_4024a1, %struct.Memory** %MEMORY
  %loadMem_4024a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i704 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i704
  %36 = load i64, i64* %PC.i703
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i703
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i704, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_4024a4, %struct.Memory** %MEMORY
  %loadMem_4024a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i702
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i701
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i701
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_4024a8, %struct.Memory** %MEMORY
  %loadMem_4024ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i699 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i700
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i699
  %95 = load i64, i64* %PC.i698
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i698
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_4024ab, %struct.Memory** %MEMORY
  %loadMem_4024af = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDX.i696 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i697
  %108 = sub i64 %107, 24
  %109 = load i64, i64* %RDX.i696
  %110 = load i64, i64* %PC.i695
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i695
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_4024af, %struct.Memory** %MEMORY
  %loadMem_4024b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i694
  %120 = sub i64 %119, 44
  %121 = load i64, i64* %PC.i693
  %122 = add i64 %121, 7
  store i64 %122, i64* %PC.i693
  %123 = inttoptr i64 %120 to i32*
  store i32 2, i32* %123
  store %struct.Memory* %loadMem_4024b3, %struct.Memory** %MEMORY
  %loadMem_4024ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i692
  %131 = sub i64 %130, 4
  %132 = load i64, i64* %PC.i691
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i691
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134
  %136 = sub i32 %135, 8
  %137 = icmp ult i32 %135, 8
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %138, i8* %139, align 1
  %140 = and i32 %136, 255
  %141 = call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %144, i8* %145, align 1
  %146 = xor i32 %135, 8
  %147 = xor i32 %146, %136
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %150, i8* %151, align 1
  %152 = icmp eq i32 %136, 0
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %153, i8* %154, align 1
  %155 = lshr i32 %136, 31
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1
  %158 = lshr i32 %135, 31
  %159 = xor i32 %155, %158
  %160 = add i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %162, i8* %163, align 1
  store %struct.Memory* %loadMem_4024ba, %struct.Memory** %MEMORY
  %loadMem_4024be = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %PC.i690
  %168 = add i64 %167, 82
  %169 = load i64, i64* %PC.i690
  %170 = add i64 %169, 6
  %171 = load i64, i64* %PC.i690
  %172 = add i64 %171, 6
  store i64 %172, i64* %PC.i690
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  %182 = xor i1 %178, %181
  %183 = or i1 %175, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %BRANCH_TAKEN, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = select i1 %183, i64 %168, i64 %170
  store i64 %186, i64* %185, align 8
  store %struct.Memory* %loadMem_4024be, %struct.Memory** %MEMORY
  %loadBr_4024be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024be = icmp eq i8 %loadBr_4024be, 1
  br i1 %cmpBr_4024be, label %block_.L_402510, label %block_4024c4

block_4024c4:                                     ; preds = %entry
  %loadMem_4024c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDI.i688 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i689
  %197 = sub i64 %196, 4
  %198 = load i64, i64* %PC.i687
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i687
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RDI.i688, align 8
  store %struct.Memory* %loadMem_4024c4, %struct.Memory** %MEMORY
  %loadMem_4024c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RSI.i685 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i686
  %213 = sub i64 %212, 16
  %214 = load i64, i64* %PC.i684
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i684
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RSI.i685, align 8
  store %struct.Memory* %loadMem_4024c7, %struct.Memory** %MEMORY
  %loadMem_4024cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RDX.i682 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i683
  %228 = sub i64 %227, 24
  %229 = load i64, i64* %PC.i681
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i681
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RDX.i682, align 8
  store %struct.Memory* %loadMem_4024cb, %struct.Memory** %MEMORY
  %loadMem1_4024cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i680
  %237 = add i64 %236, 961
  %238 = load i64, i64* %PC.i680
  %239 = add i64 %238, 5
  %240 = load i64, i64* %PC.i680
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC.i680
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %239, i64* %245
  store i64 %244, i64* %242, align 8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %237, i64* %246, align 8
  store %struct.Memory* %loadMem1_4024cf, %struct.Memory** %MEMORY
  %loadMem2_4024cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024cf = load i64, i64* %3
  %call2_4024cf = call %struct.Memory* @sub_402890.cft1st(%struct.State* %0, i64 %loadPC_4024cf, %struct.Memory* %loadMem2_4024cf)
  store %struct.Memory* %call2_4024cf, %struct.Memory** %MEMORY
  %loadMem_4024d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i679
  %254 = sub i64 %253, 44
  %255 = load i64, i64* %PC.i678
  %256 = add i64 %255, 7
  store i64 %256, i64* %PC.i678
  %257 = inttoptr i64 %254 to i32*
  store i32 8, i32* %257
  store %struct.Memory* %loadMem_4024d4, %struct.Memory** %MEMORY
  br label %block_.L_4024db

block_.L_4024db:                                  ; preds = %block_4024ea, %block_4024c4
  %loadMem_4024db = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i677
  %268 = sub i64 %267, 44
  %269 = load i64, i64* %PC.i675
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i675
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_4024db, %struct.Memory** %MEMORY
  %loadMem_4024de = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RAX.i674
  %281 = load i64, i64* %PC.i673
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i673
  %283 = and i64 %280, 4294967295
  %284 = shl i64 %283, 1
  %285 = trunc i64 %284 to i32
  %286 = icmp slt i32 %285, 0
  %287 = shl i32 %285, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i674, align 8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %290 = zext i1 %286 to i8
  store i8 %290, i8* %289, align 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %292 = and i32 %287, 254
  %293 = call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %291, align 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %297, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %299 = icmp eq i32 %287, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %298, align 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %301, align 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %304, align 1
  store %struct.Memory* %loadMem_4024de, %struct.Memory** %MEMORY
  %loadMem_4024e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %EAX.i671 = bitcast %union.anon* %310 to i32*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 15
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %313 to i64*
  %314 = load i32, i32* %EAX.i671
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %RBP.i672
  %317 = sub i64 %316, 4
  %318 = load i64, i64* %PC.i670
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i670
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = sub i32 %314, %321
  %323 = icmp ult i32 %314, %321
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1
  %326 = and i32 %322, 255
  %327 = call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %330, i8* %331, align 1
  %332 = xor i32 %321, %314
  %333 = xor i32 %332, %322
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %336, i8* %337, align 1
  %338 = icmp eq i32 %322, 0
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %339, i8* %340, align 1
  %341 = lshr i32 %322, 31
  %342 = trunc i32 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %342, i8* %343, align 1
  %344 = lshr i32 %314, 31
  %345 = lshr i32 %321, 31
  %346 = xor i32 %345, %344
  %347 = xor i32 %341, %344
  %348 = add i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %350, i8* %351, align 1
  store %struct.Memory* %loadMem_4024e1, %struct.Memory** %MEMORY
  %loadMem_4024e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %PC.i669
  %356 = add i64 %355, 39
  %357 = load i64, i64* %PC.i669
  %358 = add i64 %357, 6
  %359 = load i64, i64* %PC.i669
  %360 = add i64 %359, 6
  store i64 %360, i64* %PC.i669
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %362 = load i8, i8* %361, align 1
  %363 = icmp ne i8 %362, 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %365 = load i8, i8* %364, align 1
  %366 = icmp ne i8 %365, 0
  %367 = xor i1 %363, %366
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %BRANCH_TAKEN, align 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %371 = select i1 %367, i64 %358, i64 %356
  store i64 %371, i64* %370, align 8
  store %struct.Memory* %loadMem_4024e4, %struct.Memory** %MEMORY
  %loadBr_4024e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024e4 = icmp eq i8 %loadBr_4024e4, 1
  br i1 %cmpBr_4024e4, label %block_.L_40250b, label %block_4024ea

block_4024ea:                                     ; preds = %block_.L_4024db
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 11
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 15
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RBP.i668
  %382 = sub i64 %381, 4
  %383 = load i64, i64* %PC.i667
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i667
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4024ea, %struct.Memory** %MEMORY
  %loadMem_4024ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 9
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RSI.i665 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i666
  %398 = sub i64 %397, 44
  %399 = load i64, i64* %PC.i664
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i664
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RSI.i665, align 8
  store %struct.Memory* %loadMem_4024ed, %struct.Memory** %MEMORY
  %loadMem_4024f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RDX.i662 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i663
  %414 = sub i64 %413, 16
  %415 = load i64, i64* %PC.i661
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC.i661
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417
  store i64 %418, i64* %RDX.i662, align 8
  store %struct.Memory* %loadMem_4024f0, %struct.Memory** %MEMORY
  %loadMem_4024f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i660
  %429 = sub i64 %428, 24
  %430 = load i64, i64* %PC.i658
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i658
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_4024f4, %struct.Memory** %MEMORY
  %loadMem1_4024f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %PC.i657
  %438 = add i64 %437, 3624
  %439 = load i64, i64* %PC.i657
  %440 = add i64 %439, 5
  %441 = load i64, i64* %PC.i657
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC.i657
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = add i64 %444, -8
  %446 = inttoptr i64 %445 to i64*
  store i64 %440, i64* %446
  store i64 %445, i64* %443, align 8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %438, i64* %447, align 8
  store %struct.Memory* %loadMem1_4024f8, %struct.Memory** %MEMORY
  %loadMem2_4024f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024f8 = load i64, i64* %3
  %call2_4024f8 = call %struct.Memory* @sub_403320.cftmdl(%struct.State* %0, i64 %loadPC_4024f8, %struct.Memory* %loadMem2_4024f8)
  store %struct.Memory* %call2_4024f8, %struct.Memory** %MEMORY
  %loadMem_4024fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 9
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RSI.i655 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i656
  %458 = sub i64 %457, 44
  %459 = load i64, i64* %PC.i654
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i654
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RSI.i655, align 8
  store %struct.Memory* %loadMem_4024fd, %struct.Memory** %MEMORY
  %loadMem_402500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 9
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RSI.i653 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RSI.i653
  %471 = load i64, i64* %PC.i652
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i652
  %473 = and i64 %470, 4294967295
  %474 = shl i64 %473, 1
  %475 = trunc i64 %474 to i32
  %476 = icmp slt i32 %475, 0
  %477 = shl i32 %475, 1
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RSI.i653, align 8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %480 = zext i1 %476 to i8
  store i8 %480, i8* %479, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %482 = and i32 %477, 254
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %481, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %487, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %489 = icmp eq i32 %477, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %488, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %492 = lshr i32 %477, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %491, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %494, align 1
  store %struct.Memory* %loadMem_402500, %struct.Memory** %MEMORY
  %loadMem_402503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 9
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %500 to i32*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 15
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i651
  %505 = sub i64 %504, 44
  %506 = load i32, i32* %ESI.i
  %507 = zext i32 %506 to i64
  %508 = load i64, i64* %PC.i650
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC.i650
  %510 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %510
  store %struct.Memory* %loadMem_402503, %struct.Memory** %MEMORY
  %loadMem_402506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %PC.i649
  %515 = add i64 %514, -43
  %516 = load i64, i64* %PC.i649
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC.i649
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %515, i64* %518, align 8
  store %struct.Memory* %loadMem_402506, %struct.Memory** %MEMORY
  br label %block_.L_4024db

block_.L_40250b:                                  ; preds = %block_.L_4024db
  %loadMem_40250b = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %PC.i648
  %523 = add i64 %522, 5
  %524 = load i64, i64* %PC.i648
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC.i648
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %523, i64* %526, align 8
  store %struct.Memory* %loadMem_40250b, %struct.Memory** %MEMORY
  br label %block_.L_402510

block_.L_402510:                                  ; preds = %block_.L_40250b, %entry
  %loadMem_402510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i647
  %537 = sub i64 %536, 44
  %538 = load i64, i64* %PC.i645
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i645
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_402510, %struct.Memory** %MEMORY
  %loadMem_402513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RAX.i644
  %550 = load i64, i64* %PC.i643
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC.i643
  %552 = and i64 %549, 4294967295
  %553 = shl i64 %552, 1
  %554 = trunc i64 %553 to i32
  %555 = icmp slt i32 %554, 0
  %556 = shl i32 %554, 1
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i644, align 8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %559 = zext i1 %555 to i8
  store i8 %559, i8* %558, align 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %561 = and i32 %556, 254
  %562 = call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %560, align 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %568 = icmp eq i32 %556, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %567, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %570, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %573, align 1
  store %struct.Memory* %loadMem_402513, %struct.Memory** %MEMORY
  %loadMem_402516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %579 to i32*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %582 to i64*
  %583 = load i32, i32* %EAX.i641
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %RBP.i642
  %586 = sub i64 %585, 4
  %587 = load i64, i64* %PC.i640
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC.i640
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589
  %591 = sub i32 %583, %590
  %592 = icmp ult i32 %583, %590
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1
  %595 = and i32 %591, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1
  %601 = xor i32 %590, %583
  %602 = xor i32 %601, %591
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %605, i8* %606, align 1
  %607 = icmp eq i32 %591, 0
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %608, i8* %609, align 1
  %610 = lshr i32 %591, 31
  %611 = trunc i32 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %611, i8* %612, align 1
  %613 = lshr i32 %583, 31
  %614 = lshr i32 %590, 31
  %615 = xor i32 %614, %613
  %616 = xor i32 %610, %613
  %617 = add i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1
  store %struct.Memory* %loadMem_402516, %struct.Memory** %MEMORY
  %loadMem_402519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %PC.i639
  %625 = add i64 %624, 599
  %626 = load i64, i64* %PC.i639
  %627 = add i64 %626, 6
  %628 = load i64, i64* %PC.i639
  %629 = add i64 %628, 6
  store i64 %629, i64* %PC.i639
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %631 = load i8, i8* %630, align 1
  %632 = icmp eq i8 %631, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %BRANCH_TAKEN, align 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %635 = select i1 %632, i64 %625, i64 %627
  store i64 %635, i64* %634, align 8
  store %struct.Memory* %loadMem_402519, %struct.Memory** %MEMORY
  %loadBr_402519 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402519 = icmp eq i8 %loadBr_402519, 1
  br i1 %cmpBr_402519, label %block_.L_402770, label %block_40251f

block_40251f:                                     ; preds = %block_.L_402510
  %loadMem_40251f = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i638
  %643 = sub i64 %642, 28
  %644 = load i64, i64* %PC.i637
  %645 = add i64 %644, 7
  store i64 %645, i64* %PC.i637
  %646 = inttoptr i64 %643 to i32*
  store i32 0, i32* %646
  store %struct.Memory* %loadMem_40251f, %struct.Memory** %MEMORY
  br label %block_.L_402526

block_.L_402526:                                  ; preds = %block_402532, %block_40251f
  %loadMem_402526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 15
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RBP.i636
  %657 = sub i64 %656, 28
  %658 = load i64, i64* %PC.i634
  %659 = add i64 %658, 3
  store i64 %659, i64* %PC.i634
  %660 = inttoptr i64 %657 to i32*
  %661 = load i32, i32* %660
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_402526, %struct.Memory** %MEMORY
  %loadMem_402529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %EAX.i632 = bitcast %union.anon* %668 to i32*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %671 to i64*
  %672 = load i32, i32* %EAX.i632
  %673 = zext i32 %672 to i64
  %674 = load i64, i64* %RBP.i633
  %675 = sub i64 %674, 44
  %676 = load i64, i64* %PC.i631
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i631
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = sub i32 %672, %679
  %681 = icmp ult i32 %672, %679
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = and i32 %680, 255
  %685 = call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %688, i8* %689, align 1
  %690 = xor i32 %679, %672
  %691 = xor i32 %690, %680
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %694, i8* %695, align 1
  %696 = icmp eq i32 %680, 0
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %697, i8* %698, align 1
  %699 = lshr i32 %680, 31
  %700 = trunc i32 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %700, i8* %701, align 1
  %702 = lshr i32 %672, 31
  %703 = lshr i32 %679, 31
  %704 = xor i32 %703, %702
  %705 = xor i32 %699, %702
  %706 = add i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %708, i8* %709, align 1
  store %struct.Memory* %loadMem_402529, %struct.Memory** %MEMORY
  %loadMem_40252c = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %PC.i630
  %714 = add i64 %713, 575
  %715 = load i64, i64* %PC.i630
  %716 = add i64 %715, 6
  %717 = load i64, i64* %PC.i630
  %718 = add i64 %717, 6
  store i64 %718, i64* %PC.i630
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %720 = load i8, i8* %719, align 1
  %721 = icmp ne i8 %720, 0
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %723 = load i8, i8* %722, align 1
  %724 = icmp ne i8 %723, 0
  %725 = xor i1 %721, %724
  %726 = xor i1 %725, true
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %BRANCH_TAKEN, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %729 = select i1 %725, i64 %716, i64 %714
  store i64 %729, i64* %728, align 8
  store %struct.Memory* %loadMem_40252c, %struct.Memory** %MEMORY
  %loadBr_40252c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40252c = icmp eq i8 %loadBr_40252c, 1
  br i1 %cmpBr_40252c, label %block_.L_40276b, label %block_402532

block_402532:                                     ; preds = %block_.L_402526
  %loadMem_402532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %PC.i628
  %737 = add i64 %736, 10
  store i64 %737, i64* %PC.i628
  store i64 -9223372036854775808, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_402532, %struct.Memory** %MEMORY
  %loadMem_40253c = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 5
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i627
  %748 = sub i64 %747, 28
  %749 = load i64, i64* %PC.i625
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC.i625
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RCX.i626, align 8
  store %struct.Memory* %loadMem_40253c, %struct.Memory** %MEMORY
  %loadMem_40253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RCX.i623
  %764 = load i64, i64* %RBP.i624
  %765 = sub i64 %764, 44
  %766 = load i64, i64* %PC.i622
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC.i622
  %768 = trunc i64 %763 to i32
  %769 = inttoptr i64 %765 to i32*
  %770 = load i32, i32* %769
  %771 = add i32 %770, %768
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RCX.i623, align 8
  %773 = icmp ult i32 %771, %768
  %774 = icmp ult i32 %771, %770
  %775 = or i1 %773, %774
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %776, i8* %777, align 1
  %778 = and i32 %771, 255
  %779 = call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %782, i8* %783, align 1
  %784 = xor i32 %770, %768
  %785 = xor i32 %784, %771
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %788, i8* %789, align 1
  %790 = icmp eq i32 %771, 0
  %791 = zext i1 %790 to i8
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %791, i8* %792, align 1
  %793 = lshr i32 %771, 31
  %794 = trunc i32 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %794, i8* %795, align 1
  %796 = lshr i32 %768, 31
  %797 = lshr i32 %770, 31
  %798 = xor i32 %793, %796
  %799 = xor i32 %793, %797
  %800 = add i32 %798, %799
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %802, i8* %803, align 1
  store %struct.Memory* %loadMem_40253f, %struct.Memory** %MEMORY
  %loadMem_402542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %ECX.i620 = bitcast %union.anon* %809 to i32*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 15
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RBP.i621
  %814 = sub i64 %813, 32
  %815 = load i32, i32* %ECX.i620
  %816 = zext i32 %815 to i64
  %817 = load i64, i64* %PC.i619
  %818 = add i64 %817, 3
  store i64 %818, i64* %PC.i619
  %819 = inttoptr i64 %814 to i32*
  store i32 %815, i32* %819
  store %struct.Memory* %loadMem_402542, %struct.Memory** %MEMORY
  %loadMem_402545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 5
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 15
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RBP.i618
  %830 = sub i64 %829, 32
  %831 = load i64, i64* %PC.i616
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i616
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RCX.i617, align 8
  store %struct.Memory* %loadMem_402545, %struct.Memory** %MEMORY
  %loadMem_402548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 5
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RCX.i614
  %846 = load i64, i64* %RBP.i615
  %847 = sub i64 %846, 44
  %848 = load i64, i64* %PC.i613
  %849 = add i64 %848, 3
  store i64 %849, i64* %PC.i613
  %850 = trunc i64 %845 to i32
  %851 = inttoptr i64 %847 to i32*
  %852 = load i32, i32* %851
  %853 = add i32 %852, %850
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RCX.i614, align 8
  %855 = icmp ult i32 %853, %850
  %856 = icmp ult i32 %853, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1
  %860 = and i32 %853, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = xor i32 %852, %850
  %867 = xor i32 %866, %853
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %870, i8* %871, align 1
  %872 = icmp eq i32 %853, 0
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %873, i8* %874, align 1
  %875 = lshr i32 %853, 31
  %876 = trunc i32 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %876, i8* %877, align 1
  %878 = lshr i32 %850, 31
  %879 = lshr i32 %852, 31
  %880 = xor i32 %875, %878
  %881 = xor i32 %875, %879
  %882 = add i32 %880, %881
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %884, i8* %885, align 1
  store %struct.Memory* %loadMem_402548, %struct.Memory** %MEMORY
  %loadMem_40254b = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 5
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %ECX.i611 = bitcast %union.anon* %891 to i32*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 15
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RBP.i612
  %896 = sub i64 %895, 36
  %897 = load i32, i32* %ECX.i611
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC.i610
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i610
  %901 = inttoptr i64 %896 to i32*
  store i32 %897, i32* %901
  store %struct.Memory* %loadMem_40254b, %struct.Memory** %MEMORY
  %loadMem_40254e = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 5
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %910 to i64*
  %911 = load i64, i64* %RBP.i609
  %912 = sub i64 %911, 36
  %913 = load i64, i64* %PC.i607
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i607
  %915 = inttoptr i64 %912 to i32*
  %916 = load i32, i32* %915
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_40254e, %struct.Memory** %MEMORY
  %loadMem_402551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 5
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 15
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %RCX.i605
  %928 = load i64, i64* %RBP.i606
  %929 = sub i64 %928, 44
  %930 = load i64, i64* %PC.i604
  %931 = add i64 %930, 3
  store i64 %931, i64* %PC.i604
  %932 = trunc i64 %927 to i32
  %933 = inttoptr i64 %929 to i32*
  %934 = load i32, i32* %933
  %935 = add i32 %934, %932
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i605, align 8
  %937 = icmp ult i32 %935, %932
  %938 = icmp ult i32 %935, %934
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %940, i8* %941, align 1
  %942 = and i32 %935, 255
  %943 = call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %946, i8* %947, align 1
  %948 = xor i32 %934, %932
  %949 = xor i32 %948, %935
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %952, i8* %953, align 1
  %954 = icmp eq i32 %935, 0
  %955 = zext i1 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %955, i8* %956, align 1
  %957 = lshr i32 %935, 31
  %958 = trunc i32 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %932, 31
  %961 = lshr i32 %934, 31
  %962 = xor i32 %957, %960
  %963 = xor i32 %957, %961
  %964 = add i32 %962, %963
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %966, i8* %967, align 1
  store %struct.Memory* %loadMem_402551, %struct.Memory** %MEMORY
  %loadMem_402554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 5
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %ECX.i602 = bitcast %union.anon* %973 to i32*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 15
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RBP.i603
  %978 = sub i64 %977, 40
  %979 = load i32, i32* %ECX.i602
  %980 = zext i32 %979 to i64
  %981 = load i64, i64* %PC.i601
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i601
  %983 = inttoptr i64 %978 to i32*
  store i32 %979, i32* %983
  store %struct.Memory* %loadMem_402554, %struct.Memory** %MEMORY
  %loadMem_402557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 7
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 15
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RBP.i600
  %994 = sub i64 %993, 16
  %995 = load i64, i64* %PC.i598
  %996 = add i64 %995, 4
  store i64 %996, i64* %PC.i598
  %997 = inttoptr i64 %994 to i64*
  %998 = load i64, i64* %997
  store i64 %998, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_402557, %struct.Memory** %MEMORY
  %loadMem_40255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 9
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RSI.i596 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 15
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RBP.i597
  %1009 = sub i64 %1008, 28
  %1010 = load i64, i64* %PC.i595
  %1011 = add i64 %1010, 4
  store i64 %1011, i64* %PC.i595
  %1012 = inttoptr i64 %1009 to i32*
  %1013 = load i32, i32* %1012
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RSI.i596, align 8
  store %struct.Memory* %loadMem_40255b, %struct.Memory** %MEMORY
  %loadMem_40255f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 33
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 7
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %RDX.i592 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 9
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RSI.i593 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1024, i64 0, i64 0
  %YMM0.i594 = bitcast %union.VectorReg* %1025 to %"class.std::bitset"*
  %1026 = bitcast %"class.std::bitset"* %YMM0.i594 to i8*
  %1027 = load i64, i64* %RDX.i592
  %1028 = load i64, i64* %RSI.i593
  %1029 = mul i64 %1028, 8
  %1030 = add i64 %1029, %1027
  %1031 = load i64, i64* %PC.i591
  %1032 = add i64 %1031, 5
  store i64 %1032, i64* %PC.i591
  %1033 = inttoptr i64 %1030 to double*
  %1034 = load double, double* %1033
  %1035 = bitcast i8* %1026 to double*
  store double %1034, double* %1035, align 1
  %1036 = getelementptr inbounds i8, i8* %1026, i64 8
  %1037 = bitcast i8* %1036 to double*
  store double 0.000000e+00, double* %1037, align 1
  store %struct.Memory* %loadMem_40255f, %struct.Memory** %MEMORY
  %loadMem_402564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 7
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RDX.i589 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i590
  %1048 = sub i64 %1047, 16
  %1049 = load i64, i64* %PC.i588
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %PC.i588
  %1051 = inttoptr i64 %1048 to i64*
  %1052 = load i64, i64* %1051
  store i64 %1052, i64* %RDX.i589, align 8
  store %struct.Memory* %loadMem_402564, %struct.Memory** %MEMORY
  %loadMem_402568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 9
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RSI.i586 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %RBP.i587
  %1063 = sub i64 %1062, 32
  %1064 = load i64, i64* %PC.i585
  %1065 = add i64 %1064, 4
  store i64 %1065, i64* %PC.i585
  %1066 = inttoptr i64 %1063 to i32*
  %1067 = load i32, i32* %1066
  %1068 = sext i32 %1067 to i64
  store i64 %1068, i64* %RSI.i586, align 8
  store %struct.Memory* %loadMem_402568, %struct.Memory** %MEMORY
  %loadMem_40256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 7
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RDX.i582 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 9
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RSI.i583 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1078, i64 0, i64 0
  %YMM0.i584 = bitcast %union.VectorReg* %1079 to %"class.std::bitset"*
  %1080 = bitcast %"class.std::bitset"* %YMM0.i584 to i8*
  %1081 = bitcast %"class.std::bitset"* %YMM0.i584 to i8*
  %1082 = load i64, i64* %RDX.i582
  %1083 = load i64, i64* %RSI.i583
  %1084 = mul i64 %1083, 8
  %1085 = add i64 %1084, %1082
  %1086 = load i64, i64* %PC.i581
  %1087 = add i64 %1086, 5
  store i64 %1087, i64* %PC.i581
  %1088 = bitcast i8* %1081 to double*
  %1089 = load double, double* %1088, align 1
  %1090 = getelementptr inbounds i8, i8* %1081, i64 8
  %1091 = bitcast i8* %1090 to i64*
  %1092 = load i64, i64* %1091, align 1
  %1093 = inttoptr i64 %1085 to double*
  %1094 = load double, double* %1093
  %1095 = fadd double %1089, %1094
  %1096 = bitcast i8* %1080 to double*
  store double %1095, double* %1096, align 1
  %1097 = getelementptr inbounds i8, i8* %1080, i64 8
  %1098 = bitcast i8* %1097 to i64*
  store i64 %1092, i64* %1098, align 1
  store %struct.Memory* %loadMem_40256c, %struct.Memory** %MEMORY
  %loadMem_402571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1105, i64 0, i64 0
  %XMM0.i580 = bitcast %union.VectorReg* %1106 to %union.vec128_t*
  %1107 = load i64, i64* %RBP.i579
  %1108 = sub i64 %1107, 56
  %1109 = bitcast %union.vec128_t* %XMM0.i580 to i8*
  %1110 = load i64, i64* %PC.i578
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %PC.i578
  %1112 = bitcast i8* %1109 to double*
  %1113 = load double, double* %1112, align 1
  %1114 = inttoptr i64 %1108 to double*
  store double %1113, double* %1114
  store %struct.Memory* %loadMem_402571, %struct.Memory** %MEMORY
  %loadMem_402576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 7
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RBP.i577
  %1125 = sub i64 %1124, 16
  %1126 = load i64, i64* %PC.i575
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %PC.i575
  %1128 = inttoptr i64 %1125 to i64*
  %1129 = load i64, i64* %1128
  store i64 %1129, i64* %RDX.i576, align 8
  store %struct.Memory* %loadMem_402576, %struct.Memory** %MEMORY
  %loadMem_40257a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 5
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 15
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %RBP.i574
  %1140 = sub i64 %1139, 28
  %1141 = load i64, i64* %PC.i572
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC.i572
  %1143 = inttoptr i64 %1140 to i32*
  %1144 = load i32, i32* %1143
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_40257a, %struct.Memory** %MEMORY
  %loadMem_40257d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 5
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RCX.i571
  %1153 = load i64, i64* %PC.i570
  %1154 = add i64 %1153, 3
  store i64 %1154, i64* %PC.i570
  %1155 = trunc i64 %1152 to i32
  %1156 = add i32 1, %1155
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RCX.i571, align 8
  %1158 = icmp ult i32 %1156, %1155
  %1159 = icmp ult i32 %1156, 1
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1161, i8* %1162, align 1
  %1163 = and i32 %1156, 255
  %1164 = call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1167, i8* %1168, align 1
  %1169 = xor i64 1, %1152
  %1170 = trunc i64 %1169 to i32
  %1171 = xor i32 %1170, %1156
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1174, i8* %1175, align 1
  %1176 = icmp eq i32 %1156, 0
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1177, i8* %1178, align 1
  %1179 = lshr i32 %1156, 31
  %1180 = trunc i32 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1180, i8* %1181, align 1
  %1182 = lshr i32 %1155, 31
  %1183 = xor i32 %1179, %1182
  %1184 = add i32 %1183, %1179
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1186, i8* %1187, align 1
  store %struct.Memory* %loadMem_40257d, %struct.Memory** %MEMORY
  %loadMem_402580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 5
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %ECX.i568 = bitcast %union.anon* %1193 to i32*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 9
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RSI.i569 = bitcast %union.anon* %1196 to i64*
  %1197 = load i32, i32* %ECX.i568
  %1198 = zext i32 %1197 to i64
  %1199 = load i64, i64* %PC.i567
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %PC.i567
  %1201 = shl i64 %1198, 32
  %1202 = ashr exact i64 %1201, 32
  store i64 %1202, i64* %RSI.i569, align 8
  store %struct.Memory* %loadMem_402580, %struct.Memory** %MEMORY
  %loadMem_402583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 7
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 9
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RSI.i565 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1212, i64 0, i64 0
  %YMM0.i566 = bitcast %union.VectorReg* %1213 to %"class.std::bitset"*
  %1214 = bitcast %"class.std::bitset"* %YMM0.i566 to i8*
  %1215 = load i64, i64* %RDX.i564
  %1216 = load i64, i64* %RSI.i565
  %1217 = mul i64 %1216, 8
  %1218 = add i64 %1217, %1215
  %1219 = load i64, i64* %PC.i563
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %PC.i563
  %1221 = inttoptr i64 %1218 to double*
  %1222 = load double, double* %1221
  %1223 = bitcast i8* %1214 to double*
  store double %1222, double* %1223, align 1
  %1224 = getelementptr inbounds i8, i8* %1214, i64 8
  %1225 = bitcast i8* %1224 to double*
  store double 0.000000e+00, double* %1225, align 1
  store %struct.Memory* %loadMem_402583, %struct.Memory** %MEMORY
  %loadMem_402588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 7
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1232, i64 0, i64 0
  %XMM0.i562 = bitcast %union.VectorReg* %1233 to %union.vec128_t*
  %1234 = bitcast %union.vec128_t* %XMM0.i562 to i8*
  %1235 = load i64, i64* %PC.i560
  %1236 = add i64 %1235, 5
  store i64 %1236, i64* %PC.i560
  %1237 = bitcast i8* %1234 to i64*
  %1238 = load i64, i64* %1237, align 1
  store i64 %1238, i64* %RDX.i561, align 1
  store %struct.Memory* %loadMem_402588, %struct.Memory** %MEMORY
  %loadMem_40258d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 1
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 7
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RDX.i559
  %1249 = load i64, i64* %RAX.i558
  %1250 = load i64, i64* %PC.i557
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %PC.i557
  %1252 = xor i64 %1249, %1248
  store i64 %1252, i64* %RDX.i559, align 8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1253, align 1
  %1254 = trunc i64 %1252 to i32
  %1255 = and i32 %1254, 255
  %1256 = call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1259, i8* %1260, align 1
  %1261 = icmp eq i64 %1252, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1
  %1264 = lshr i64 %1252, 63
  %1265 = trunc i64 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1267, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1268, align 1
  store %struct.Memory* %loadMem_40258d, %struct.Memory** %MEMORY
  %loadMem_402590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 7
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RDX.i555 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1275, i64 0, i64 0
  %YMM0.i556 = bitcast %union.VectorReg* %1276 to %"class.std::bitset"*
  %1277 = bitcast %"class.std::bitset"* %YMM0.i556 to i8*
  %1278 = load i64, i64* %RDX.i555
  %1279 = load i64, i64* %PC.i554
  %1280 = add i64 %1279, 5
  store i64 %1280, i64* %PC.i554
  %1281 = bitcast i8* %1277 to i64*
  store i64 %1278, i64* %1281, align 1
  %1282 = getelementptr inbounds i8, i8* %1277, i64 8
  %1283 = bitcast i8* %1282 to i64*
  store i64 0, i64* %1283, align 1
  store %struct.Memory* %loadMem_402590, %struct.Memory** %MEMORY
  %loadMem_402595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 7
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RDX.i552 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 15
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %1292 to i64*
  %1293 = load i64, i64* %RBP.i553
  %1294 = sub i64 %1293, 16
  %1295 = load i64, i64* %PC.i551
  %1296 = add i64 %1295, 4
  store i64 %1296, i64* %PC.i551
  %1297 = inttoptr i64 %1294 to i64*
  %1298 = load i64, i64* %1297
  store i64 %1298, i64* %RDX.i552, align 8
  store %struct.Memory* %loadMem_402595, %struct.Memory** %MEMORY
  %loadMem_402599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 5
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 15
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %RBP.i550
  %1309 = sub i64 %1308, 32
  %1310 = load i64, i64* %PC.i548
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC.i548
  %1312 = inttoptr i64 %1309 to i32*
  %1313 = load i32, i32* %1312
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RCX.i549, align 8
  store %struct.Memory* %loadMem_402599, %struct.Memory** %MEMORY
  %loadMem_40259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 5
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RCX.i547
  %1322 = load i64, i64* %PC.i546
  %1323 = add i64 %1322, 3
  store i64 %1323, i64* %PC.i546
  %1324 = trunc i64 %1321 to i32
  %1325 = add i32 1, %1324
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RCX.i547, align 8
  %1327 = icmp ult i32 %1325, %1324
  %1328 = icmp ult i32 %1325, 1
  %1329 = or i1 %1327, %1328
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1330, i8* %1331, align 1
  %1332 = and i32 %1325, 255
  %1333 = call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1336, i8* %1337, align 1
  %1338 = xor i64 1, %1321
  %1339 = trunc i64 %1338 to i32
  %1340 = xor i32 %1339, %1325
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1343, i8* %1344, align 1
  %1345 = icmp eq i32 %1325, 0
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1346, i8* %1347, align 1
  %1348 = lshr i32 %1325, 31
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1349, i8* %1350, align 1
  %1351 = lshr i32 %1324, 31
  %1352 = xor i32 %1348, %1351
  %1353 = add i32 %1352, %1348
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1355, i8* %1356, align 1
  store %struct.Memory* %loadMem_40259c, %struct.Memory** %MEMORY
  %loadMem_40259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 5
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %ECX.i544 = bitcast %union.anon* %1362 to i32*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 9
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RSI.i545 = bitcast %union.anon* %1365 to i64*
  %1366 = load i32, i32* %ECX.i544
  %1367 = zext i32 %1366 to i64
  %1368 = load i64, i64* %PC.i543
  %1369 = add i64 %1368, 3
  store i64 %1369, i64* %PC.i543
  %1370 = shl i64 %1367, 32
  %1371 = ashr exact i64 %1370, 32
  store i64 %1371, i64* %RSI.i545, align 8
  store %struct.Memory* %loadMem_40259f, %struct.Memory** %MEMORY
  %loadMem_4025a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 7
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 9
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RSI.i541 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1381, i64 0, i64 0
  %YMM0.i542 = bitcast %union.VectorReg* %1382 to %"class.std::bitset"*
  %1383 = bitcast %"class.std::bitset"* %YMM0.i542 to i8*
  %1384 = bitcast %"class.std::bitset"* %YMM0.i542 to i8*
  %1385 = load i64, i64* %RDX.i540
  %1386 = load i64, i64* %RSI.i541
  %1387 = mul i64 %1386, 8
  %1388 = add i64 %1387, %1385
  %1389 = load i64, i64* %PC.i539
  %1390 = add i64 %1389, 5
  store i64 %1390, i64* %PC.i539
  %1391 = bitcast i8* %1384 to double*
  %1392 = load double, double* %1391, align 1
  %1393 = getelementptr inbounds i8, i8* %1384, i64 8
  %1394 = bitcast i8* %1393 to i64*
  %1395 = load i64, i64* %1394, align 1
  %1396 = inttoptr i64 %1388 to double*
  %1397 = load double, double* %1396
  %1398 = fsub double %1392, %1397
  %1399 = bitcast i8* %1383 to double*
  store double %1398, double* %1399, align 1
  %1400 = getelementptr inbounds i8, i8* %1383, i64 8
  %1401 = bitcast i8* %1400 to i64*
  store i64 %1395, i64* %1401, align 1
  store %struct.Memory* %loadMem_4025a2, %struct.Memory** %MEMORY
  %loadMem_4025a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 15
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1408, i64 0, i64 0
  %XMM0.i538 = bitcast %union.VectorReg* %1409 to %union.vec128_t*
  %1410 = load i64, i64* %RBP.i537
  %1411 = sub i64 %1410, 64
  %1412 = bitcast %union.vec128_t* %XMM0.i538 to i8*
  %1413 = load i64, i64* %PC.i536
  %1414 = add i64 %1413, 5
  store i64 %1414, i64* %PC.i536
  %1415 = bitcast i8* %1412 to double*
  %1416 = load double, double* %1415, align 1
  %1417 = inttoptr i64 %1411 to double*
  store double %1416, double* %1417
  store %struct.Memory* %loadMem_4025a7, %struct.Memory** %MEMORY
  %loadMem_4025ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 7
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i535
  %1428 = sub i64 %1427, 16
  %1429 = load i64, i64* %PC.i533
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC.i533
  %1431 = inttoptr i64 %1428 to i64*
  %1432 = load i64, i64* %1431
  store i64 %1432, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_4025ac, %struct.Memory** %MEMORY
  %loadMem_4025b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 9
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i532
  %1443 = sub i64 %1442, 28
  %1444 = load i64, i64* %PC.i530
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i530
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RSI.i531, align 8
  store %struct.Memory* %loadMem_4025b0, %struct.Memory** %MEMORY
  %loadMem_4025b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 7
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 9
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RSI.i528 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1458, i64 0, i64 0
  %YMM0.i529 = bitcast %union.VectorReg* %1459 to %"class.std::bitset"*
  %1460 = bitcast %"class.std::bitset"* %YMM0.i529 to i8*
  %1461 = load i64, i64* %RDX.i527
  %1462 = load i64, i64* %RSI.i528
  %1463 = mul i64 %1462, 8
  %1464 = add i64 %1463, %1461
  %1465 = load i64, i64* %PC.i526
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %PC.i526
  %1467 = inttoptr i64 %1464 to double*
  %1468 = load double, double* %1467
  %1469 = bitcast i8* %1460 to double*
  store double %1468, double* %1469, align 1
  %1470 = getelementptr inbounds i8, i8* %1460, i64 8
  %1471 = bitcast i8* %1470 to double*
  store double 0.000000e+00, double* %1471, align 1
  store %struct.Memory* %loadMem_4025b4, %struct.Memory** %MEMORY
  %loadMem_4025b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 7
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 15
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %RBP.i525
  %1482 = sub i64 %1481, 16
  %1483 = load i64, i64* %PC.i523
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %PC.i523
  %1485 = inttoptr i64 %1482 to i64*
  %1486 = load i64, i64* %1485
  store i64 %1486, i64* %RDX.i524, align 8
  store %struct.Memory* %loadMem_4025b9, %struct.Memory** %MEMORY
  %loadMem_4025bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 9
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RSI.i521 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RBP.i522
  %1497 = sub i64 %1496, 32
  %1498 = load i64, i64* %PC.i520
  %1499 = add i64 %1498, 4
  store i64 %1499, i64* %PC.i520
  %1500 = inttoptr i64 %1497 to i32*
  %1501 = load i32, i32* %1500
  %1502 = sext i32 %1501 to i64
  store i64 %1502, i64* %RSI.i521, align 8
  store %struct.Memory* %loadMem_4025bd, %struct.Memory** %MEMORY
  %loadMem_4025c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 7
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 9
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RSI.i518 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1512, i64 0, i64 0
  %YMM0.i519 = bitcast %union.VectorReg* %1513 to %"class.std::bitset"*
  %1514 = bitcast %"class.std::bitset"* %YMM0.i519 to i8*
  %1515 = bitcast %"class.std::bitset"* %YMM0.i519 to i8*
  %1516 = load i64, i64* %RDX.i517
  %1517 = load i64, i64* %RSI.i518
  %1518 = mul i64 %1517, 8
  %1519 = add i64 %1518, %1516
  %1520 = load i64, i64* %PC.i516
  %1521 = add i64 %1520, 5
  store i64 %1521, i64* %PC.i516
  %1522 = bitcast i8* %1515 to double*
  %1523 = load double, double* %1522, align 1
  %1524 = getelementptr inbounds i8, i8* %1515, i64 8
  %1525 = bitcast i8* %1524 to i64*
  %1526 = load i64, i64* %1525, align 1
  %1527 = inttoptr i64 %1519 to double*
  %1528 = load double, double* %1527
  %1529 = fsub double %1523, %1528
  %1530 = bitcast i8* %1514 to double*
  store double %1529, double* %1530, align 1
  %1531 = getelementptr inbounds i8, i8* %1514, i64 8
  %1532 = bitcast i8* %1531 to i64*
  store i64 %1526, i64* %1532, align 1
  store %struct.Memory* %loadMem_4025c1, %struct.Memory** %MEMORY
  %loadMem_4025c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 15
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1539, i64 0, i64 0
  %XMM0.i515 = bitcast %union.VectorReg* %1540 to %union.vec128_t*
  %1541 = load i64, i64* %RBP.i514
  %1542 = sub i64 %1541, 72
  %1543 = bitcast %union.vec128_t* %XMM0.i515 to i8*
  %1544 = load i64, i64* %PC.i513
  %1545 = add i64 %1544, 5
  store i64 %1545, i64* %PC.i513
  %1546 = bitcast i8* %1543 to double*
  %1547 = load double, double* %1546, align 1
  %1548 = inttoptr i64 %1542 to double*
  store double %1547, double* %1548
  store %struct.Memory* %loadMem_4025c6, %struct.Memory** %MEMORY
  %loadMem_4025cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 7
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 15
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1557 to i64*
  %1558 = load i64, i64* %RBP.i512
  %1559 = sub i64 %1558, 16
  %1560 = load i64, i64* %PC.i510
  %1561 = add i64 %1560, 4
  store i64 %1561, i64* %PC.i510
  %1562 = inttoptr i64 %1559 to i64*
  %1563 = load i64, i64* %1562
  store i64 %1563, i64* %RDX.i511, align 8
  store %struct.Memory* %loadMem_4025cb, %struct.Memory** %MEMORY
  %loadMem_4025cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 5
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i509
  %1574 = sub i64 %1573, 28
  %1575 = load i64, i64* %PC.i507
  %1576 = add i64 %1575, 3
  store i64 %1576, i64* %PC.i507
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_4025cf, %struct.Memory** %MEMORY
  %loadMem_4025d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 5
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RCX.i506
  %1587 = load i64, i64* %PC.i505
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC.i505
  %1589 = trunc i64 %1586 to i32
  %1590 = add i32 1, %1589
  %1591 = zext i32 %1590 to i64
  store i64 %1591, i64* %RCX.i506, align 8
  %1592 = icmp ult i32 %1590, %1589
  %1593 = icmp ult i32 %1590, 1
  %1594 = or i1 %1592, %1593
  %1595 = zext i1 %1594 to i8
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1595, i8* %1596, align 1
  %1597 = and i32 %1590, 255
  %1598 = call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1601, i8* %1602, align 1
  %1603 = xor i64 1, %1586
  %1604 = trunc i64 %1603 to i32
  %1605 = xor i32 %1604, %1590
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1608, i8* %1609, align 1
  %1610 = icmp eq i32 %1590, 0
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1611, i8* %1612, align 1
  %1613 = lshr i32 %1590, 31
  %1614 = trunc i32 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1614, i8* %1615, align 1
  %1616 = lshr i32 %1589, 31
  %1617 = xor i32 %1613, %1616
  %1618 = add i32 %1617, %1613
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_4025d2, %struct.Memory** %MEMORY
  %loadMem_4025d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 5
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %ECX.i503 = bitcast %union.anon* %1627 to i32*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 9
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RSI.i504 = bitcast %union.anon* %1630 to i64*
  %1631 = load i32, i32* %ECX.i503
  %1632 = zext i32 %1631 to i64
  %1633 = load i64, i64* %PC.i502
  %1634 = add i64 %1633, 3
  store i64 %1634, i64* %PC.i502
  %1635 = shl i64 %1632, 32
  %1636 = ashr exact i64 %1635, 32
  store i64 %1636, i64* %RSI.i504, align 8
  store %struct.Memory* %loadMem_4025d5, %struct.Memory** %MEMORY
  %loadMem_4025d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 7
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 9
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RSI.i500 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1646, i64 0, i64 0
  %YMM0.i501 = bitcast %union.VectorReg* %1647 to %"class.std::bitset"*
  %1648 = bitcast %"class.std::bitset"* %YMM0.i501 to i8*
  %1649 = load i64, i64* %RDX.i499
  %1650 = load i64, i64* %RSI.i500
  %1651 = mul i64 %1650, 8
  %1652 = add i64 %1651, %1649
  %1653 = load i64, i64* %PC.i498
  %1654 = add i64 %1653, 5
  store i64 %1654, i64* %PC.i498
  %1655 = inttoptr i64 %1652 to double*
  %1656 = load double, double* %1655
  %1657 = bitcast i8* %1648 to double*
  store double %1656, double* %1657, align 1
  %1658 = getelementptr inbounds i8, i8* %1648, i64 8
  %1659 = bitcast i8* %1658 to double*
  store double 0.000000e+00, double* %1659, align 1
  store %struct.Memory* %loadMem_4025d8, %struct.Memory** %MEMORY
  %loadMem_4025dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 7
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1666, i64 0, i64 0
  %XMM0.i497 = bitcast %union.VectorReg* %1667 to %union.vec128_t*
  %1668 = bitcast %union.vec128_t* %XMM0.i497 to i8*
  %1669 = load i64, i64* %PC.i495
  %1670 = add i64 %1669, 5
  store i64 %1670, i64* %PC.i495
  %1671 = bitcast i8* %1668 to i64*
  %1672 = load i64, i64* %1671, align 1
  store i64 %1672, i64* %RDX.i496, align 1
  store %struct.Memory* %loadMem_4025dd, %struct.Memory** %MEMORY
  %loadMem_4025e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 1
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 7
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %RDX.i494
  %1683 = load i64, i64* %RAX.i493
  %1684 = load i64, i64* %PC.i492
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC.i492
  %1686 = xor i64 %1683, %1682
  store i64 %1686, i64* %RDX.i494, align 8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1687, align 1
  %1688 = trunc i64 %1686 to i32
  %1689 = and i32 %1688, 255
  %1690 = call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1693, i8* %1694, align 1
  %1695 = icmp eq i64 %1686, 0
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1696, i8* %1697, align 1
  %1698 = lshr i64 %1686, 63
  %1699 = trunc i64 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1699, i8* %1700, align 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1701, align 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1702, align 1
  store %struct.Memory* %loadMem_4025e2, %struct.Memory** %MEMORY
  %loadMem_4025e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 7
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1709, i64 0, i64 0
  %YMM0.i491 = bitcast %union.VectorReg* %1710 to %"class.std::bitset"*
  %1711 = bitcast %"class.std::bitset"* %YMM0.i491 to i8*
  %1712 = load i64, i64* %RDX.i490
  %1713 = load i64, i64* %PC.i489
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC.i489
  %1715 = bitcast i8* %1711 to i64*
  store i64 %1712, i64* %1715, align 1
  %1716 = getelementptr inbounds i8, i8* %1711, i64 8
  %1717 = bitcast i8* %1716 to i64*
  store i64 0, i64* %1717, align 1
  store %struct.Memory* %loadMem_4025e5, %struct.Memory** %MEMORY
  %loadMem_4025ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 1
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 15
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %RBP.i488
  %1728 = sub i64 %1727, 16
  %1729 = load i64, i64* %PC.i486
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %PC.i486
  %1731 = inttoptr i64 %1728 to i64*
  %1732 = load i64, i64* %1731
  store i64 %1732, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_4025ea, %struct.Memory** %MEMORY
  %loadMem_4025ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 5
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 15
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RBP.i485
  %1743 = sub i64 %1742, 32
  %1744 = load i64, i64* %PC.i483
  %1745 = add i64 %1744, 3
  store i64 %1745, i64* %PC.i483
  %1746 = inttoptr i64 %1743 to i32*
  %1747 = load i32, i32* %1746
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_4025ee, %struct.Memory** %MEMORY
  %loadMem_4025f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RCX.i482
  %1756 = load i64, i64* %PC.i481
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC.i481
  %1758 = trunc i64 %1755 to i32
  %1759 = add i32 1, %1758
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RCX.i482, align 8
  %1761 = icmp ult i32 %1759, %1758
  %1762 = icmp ult i32 %1759, 1
  %1763 = or i1 %1761, %1762
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1764, i8* %1765, align 1
  %1766 = and i32 %1759, 255
  %1767 = call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1770, i8* %1771, align 1
  %1772 = xor i64 1, %1755
  %1773 = trunc i64 %1772 to i32
  %1774 = xor i32 %1773, %1759
  %1775 = lshr i32 %1774, 4
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1777, i8* %1778, align 1
  %1779 = icmp eq i32 %1759, 0
  %1780 = zext i1 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1780, i8* %1781, align 1
  %1782 = lshr i32 %1759, 31
  %1783 = trunc i32 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1783, i8* %1784, align 1
  %1785 = lshr i32 %1758, 31
  %1786 = xor i32 %1782, %1785
  %1787 = add i32 %1786, %1782
  %1788 = icmp eq i32 %1787, 2
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1789, i8* %1790, align 1
  store %struct.Memory* %loadMem_4025f1, %struct.Memory** %MEMORY
  %loadMem_4025f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 5
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %ECX.i479 = bitcast %union.anon* %1796 to i32*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 7
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %1799 to i64*
  %1800 = load i32, i32* %ECX.i479
  %1801 = zext i32 %1800 to i64
  %1802 = load i64, i64* %PC.i478
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i478
  %1804 = shl i64 %1801, 32
  %1805 = ashr exact i64 %1804, 32
  store i64 %1805, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_4025f4, %struct.Memory** %MEMORY
  %loadMem_4025f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 1
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 7
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RDX.i476 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1815, i64 0, i64 0
  %YMM0.i477 = bitcast %union.VectorReg* %1816 to %"class.std::bitset"*
  %1817 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %1818 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %1819 = load i64, i64* %RAX.i475
  %1820 = load i64, i64* %RDX.i476
  %1821 = mul i64 %1820, 8
  %1822 = add i64 %1821, %1819
  %1823 = load i64, i64* %PC.i474
  %1824 = add i64 %1823, 5
  store i64 %1824, i64* %PC.i474
  %1825 = bitcast i8* %1818 to double*
  %1826 = load double, double* %1825, align 1
  %1827 = getelementptr inbounds i8, i8* %1818, i64 8
  %1828 = bitcast i8* %1827 to i64*
  %1829 = load i64, i64* %1828, align 1
  %1830 = inttoptr i64 %1822 to double*
  %1831 = load double, double* %1830
  %1832 = fadd double %1826, %1831
  %1833 = bitcast i8* %1817 to double*
  store double %1832, double* %1833, align 1
  %1834 = getelementptr inbounds i8, i8* %1817, i64 8
  %1835 = bitcast i8* %1834 to i64*
  store i64 %1829, i64* %1835, align 1
  store %struct.Memory* %loadMem_4025f7, %struct.Memory** %MEMORY
  %loadMem_4025fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 15
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1842, i64 0, i64 0
  %XMM0.i473 = bitcast %union.VectorReg* %1843 to %union.vec128_t*
  %1844 = load i64, i64* %RBP.i472
  %1845 = sub i64 %1844, 80
  %1846 = bitcast %union.vec128_t* %XMM0.i473 to i8*
  %1847 = load i64, i64* %PC.i471
  %1848 = add i64 %1847, 5
  store i64 %1848, i64* %PC.i471
  %1849 = bitcast i8* %1846 to double*
  %1850 = load double, double* %1849, align 1
  %1851 = inttoptr i64 %1845 to double*
  store double %1850, double* %1851
  store %struct.Memory* %loadMem_4025fc, %struct.Memory** %MEMORY
  %loadMem_402601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i470
  %1862 = sub i64 %1861, 16
  %1863 = load i64, i64* %PC.i468
  %1864 = add i64 %1863, 4
  store i64 %1864, i64* %PC.i468
  %1865 = inttoptr i64 %1862 to i64*
  %1866 = load i64, i64* %1865
  store i64 %1866, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_402601, %struct.Memory** %MEMORY
  %loadMem_402605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 7
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 15
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RBP.i467
  %1877 = sub i64 %1876, 36
  %1878 = load i64, i64* %PC.i465
  %1879 = add i64 %1878, 4
  store i64 %1879, i64* %PC.i465
  %1880 = inttoptr i64 %1877 to i32*
  %1881 = load i32, i32* %1880
  %1882 = sext i32 %1881 to i64
  store i64 %1882, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_402605, %struct.Memory** %MEMORY
  %loadMem_402609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 7
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 0
  %YMM0.i464 = bitcast %union.VectorReg* %1893 to %"class.std::bitset"*
  %1894 = bitcast %"class.std::bitset"* %YMM0.i464 to i8*
  %1895 = load i64, i64* %RAX.i462
  %1896 = load i64, i64* %RDX.i463
  %1897 = mul i64 %1896, 8
  %1898 = add i64 %1897, %1895
  %1899 = load i64, i64* %PC.i461
  %1900 = add i64 %1899, 5
  store i64 %1900, i64* %PC.i461
  %1901 = inttoptr i64 %1898 to double*
  %1902 = load double, double* %1901
  %1903 = bitcast i8* %1894 to double*
  store double %1902, double* %1903, align 1
  %1904 = getelementptr inbounds i8, i8* %1894, i64 8
  %1905 = bitcast i8* %1904 to double*
  store double 0.000000e+00, double* %1905, align 1
  store %struct.Memory* %loadMem_402609, %struct.Memory** %MEMORY
  %loadMem_40260e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 1
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 15
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RBP.i460
  %1916 = sub i64 %1915, 16
  %1917 = load i64, i64* %PC.i458
  %1918 = add i64 %1917, 4
  store i64 %1918, i64* %PC.i458
  %1919 = inttoptr i64 %1916 to i64*
  %1920 = load i64, i64* %1919
  store i64 %1920, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_40260e, %struct.Memory** %MEMORY
  %loadMem_402612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 7
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RDX.i456 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 15
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RBP.i457
  %1931 = sub i64 %1930, 40
  %1932 = load i64, i64* %PC.i455
  %1933 = add i64 %1932, 4
  store i64 %1933, i64* %PC.i455
  %1934 = inttoptr i64 %1931 to i32*
  %1935 = load i32, i32* %1934
  %1936 = sext i32 %1935 to i64
  store i64 %1936, i64* %RDX.i456, align 8
  store %struct.Memory* %loadMem_402612, %struct.Memory** %MEMORY
  %loadMem_402616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 1
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 7
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RDX.i453 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1946, i64 0, i64 0
  %YMM0.i454 = bitcast %union.VectorReg* %1947 to %"class.std::bitset"*
  %1948 = bitcast %"class.std::bitset"* %YMM0.i454 to i8*
  %1949 = bitcast %"class.std::bitset"* %YMM0.i454 to i8*
  %1950 = load i64, i64* %RAX.i452
  %1951 = load i64, i64* %RDX.i453
  %1952 = mul i64 %1951, 8
  %1953 = add i64 %1952, %1950
  %1954 = load i64, i64* %PC.i451
  %1955 = add i64 %1954, 5
  store i64 %1955, i64* %PC.i451
  %1956 = bitcast i8* %1949 to double*
  %1957 = load double, double* %1956, align 1
  %1958 = getelementptr inbounds i8, i8* %1949, i64 8
  %1959 = bitcast i8* %1958 to i64*
  %1960 = load i64, i64* %1959, align 1
  %1961 = inttoptr i64 %1953 to double*
  %1962 = load double, double* %1961
  %1963 = fadd double %1957, %1962
  %1964 = bitcast i8* %1948 to double*
  store double %1963, double* %1964, align 1
  %1965 = getelementptr inbounds i8, i8* %1948, i64 8
  %1966 = bitcast i8* %1965 to i64*
  store i64 %1960, i64* %1966, align 1
  store %struct.Memory* %loadMem_402616, %struct.Memory** %MEMORY
  %loadMem_40261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 15
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1973, i64 0, i64 0
  %XMM0.i450 = bitcast %union.VectorReg* %1974 to %union.vec128_t*
  %1975 = load i64, i64* %RBP.i449
  %1976 = sub i64 %1975, 88
  %1977 = bitcast %union.vec128_t* %XMM0.i450 to i8*
  %1978 = load i64, i64* %PC.i448
  %1979 = add i64 %1978, 5
  store i64 %1979, i64* %PC.i448
  %1980 = bitcast i8* %1977 to double*
  %1981 = load double, double* %1980, align 1
  %1982 = inttoptr i64 %1976 to double*
  store double %1981, double* %1982
  store %struct.Memory* %loadMem_40261b, %struct.Memory** %MEMORY
  %loadMem_402620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 1
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 15
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %RBP.i447
  %1993 = sub i64 %1992, 16
  %1994 = load i64, i64* %PC.i445
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %PC.i445
  %1996 = inttoptr i64 %1993 to i64*
  %1997 = load i64, i64* %1996
  store i64 %1997, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_402620, %struct.Memory** %MEMORY
  %loadMem_402624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 5
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RBP.i444
  %2008 = sub i64 %2007, 36
  %2009 = load i64, i64* %PC.i442
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC.i442
  %2011 = inttoptr i64 %2008 to i32*
  %2012 = load i32, i32* %2011
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_402624, %struct.Memory** %MEMORY
  %loadMem_402627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 5
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RCX.i441
  %2021 = load i64, i64* %PC.i440
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %PC.i440
  %2023 = trunc i64 %2020 to i32
  %2024 = add i32 1, %2023
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i441, align 8
  %2026 = icmp ult i32 %2024, %2023
  %2027 = icmp ult i32 %2024, 1
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2030, align 1
  %2031 = and i32 %2024, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1
  %2037 = xor i64 1, %2020
  %2038 = trunc i64 %2037 to i32
  %2039 = xor i32 %2038, %2024
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2042, i8* %2043, align 1
  %2044 = icmp eq i32 %2024, 0
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2045, i8* %2046, align 1
  %2047 = lshr i32 %2024, 31
  %2048 = trunc i32 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i32 %2023, 31
  %2051 = xor i32 %2047, %2050
  %2052 = add i32 %2051, %2047
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1
  store %struct.Memory* %loadMem_402627, %struct.Memory** %MEMORY
  %loadMem_40262a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 5
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %ECX.i438 = bitcast %union.anon* %2061 to i32*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 7
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RDX.i439 = bitcast %union.anon* %2064 to i64*
  %2065 = load i32, i32* %ECX.i438
  %2066 = zext i32 %2065 to i64
  %2067 = load i64, i64* %PC.i437
  %2068 = add i64 %2067, 3
  store i64 %2068, i64* %PC.i437
  %2069 = shl i64 %2066, 32
  %2070 = ashr exact i64 %2069, 32
  store i64 %2070, i64* %RDX.i439, align 8
  store %struct.Memory* %loadMem_40262a, %struct.Memory** %MEMORY
  %loadMem_40262d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 1
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 7
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2080, i64 0, i64 0
  %YMM0.i436 = bitcast %union.VectorReg* %2081 to %"class.std::bitset"*
  %2082 = bitcast %"class.std::bitset"* %YMM0.i436 to i8*
  %2083 = load i64, i64* %RAX.i434
  %2084 = load i64, i64* %RDX.i435
  %2085 = mul i64 %2084, 8
  %2086 = add i64 %2085, %2083
  %2087 = load i64, i64* %PC.i433
  %2088 = add i64 %2087, 5
  store i64 %2088, i64* %PC.i433
  %2089 = inttoptr i64 %2086 to double*
  %2090 = load double, double* %2089
  %2091 = bitcast i8* %2082 to double*
  store double %2090, double* %2091, align 1
  %2092 = getelementptr inbounds i8, i8* %2082, i64 8
  %2093 = bitcast i8* %2092 to double*
  store double 0.000000e+00, double* %2093, align 1
  store %struct.Memory* %loadMem_40262d, %struct.Memory** %MEMORY
  %loadMem_402632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i432
  %2104 = sub i64 %2103, 16
  %2105 = load i64, i64* %PC.i430
  %2106 = add i64 %2105, 4
  store i64 %2106, i64* %PC.i430
  %2107 = inttoptr i64 %2104 to i64*
  %2108 = load i64, i64* %2107
  store i64 %2108, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_402632, %struct.Memory** %MEMORY
  %loadMem_402636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 5
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 15
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %RBP.i429
  %2119 = sub i64 %2118, 40
  %2120 = load i64, i64* %PC.i427
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %PC.i427
  %2122 = inttoptr i64 %2119 to i32*
  %2123 = load i32, i32* %2122
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_402636, %struct.Memory** %MEMORY
  %loadMem_402639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 5
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %RCX.i426
  %2132 = load i64, i64* %PC.i425
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %PC.i425
  %2134 = trunc i64 %2131 to i32
  %2135 = add i32 1, %2134
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RCX.i426, align 8
  %2137 = icmp ult i32 %2135, %2134
  %2138 = icmp ult i32 %2135, 1
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2140, i8* %2141, align 1
  %2142 = and i32 %2135, 255
  %2143 = call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2146, i8* %2147, align 1
  %2148 = xor i64 1, %2131
  %2149 = trunc i64 %2148 to i32
  %2150 = xor i32 %2149, %2135
  %2151 = lshr i32 %2150, 4
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2153, i8* %2154, align 1
  %2155 = icmp eq i32 %2135, 0
  %2156 = zext i1 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2156, i8* %2157, align 1
  %2158 = lshr i32 %2135, 31
  %2159 = trunc i32 %2158 to i8
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2159, i8* %2160, align 1
  %2161 = lshr i32 %2134, 31
  %2162 = xor i32 %2158, %2161
  %2163 = add i32 %2162, %2158
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2165, i8* %2166, align 1
  store %struct.Memory* %loadMem_402639, %struct.Memory** %MEMORY
  %loadMem_40263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 5
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %2172 to i32*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 7
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %2175 to i64*
  %2176 = load i32, i32* %ECX.i423
  %2177 = zext i32 %2176 to i64
  %2178 = load i64, i64* %PC.i422
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %PC.i422
  %2180 = shl i64 %2177, 32
  %2181 = ashr exact i64 %2180, 32
  store i64 %2181, i64* %RDX.i424, align 8
  store %struct.Memory* %loadMem_40263c, %struct.Memory** %MEMORY
  %loadMem_40263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 1
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 7
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2191, i64 0, i64 0
  %YMM0.i421 = bitcast %union.VectorReg* %2192 to %"class.std::bitset"*
  %2193 = bitcast %"class.std::bitset"* %YMM0.i421 to i8*
  %2194 = bitcast %"class.std::bitset"* %YMM0.i421 to i8*
  %2195 = load i64, i64* %RAX.i419
  %2196 = load i64, i64* %RDX.i420
  %2197 = mul i64 %2196, 8
  %2198 = add i64 %2197, %2195
  %2199 = load i64, i64* %PC.i418
  %2200 = add i64 %2199, 5
  store i64 %2200, i64* %PC.i418
  %2201 = bitcast i8* %2194 to double*
  %2202 = load double, double* %2201, align 1
  %2203 = getelementptr inbounds i8, i8* %2194, i64 8
  %2204 = bitcast i8* %2203 to i64*
  %2205 = load i64, i64* %2204, align 1
  %2206 = inttoptr i64 %2198 to double*
  %2207 = load double, double* %2206
  %2208 = fadd double %2202, %2207
  %2209 = bitcast i8* %2193 to double*
  store double %2208, double* %2209, align 1
  %2210 = getelementptr inbounds i8, i8* %2193, i64 8
  %2211 = bitcast i8* %2210 to i64*
  store i64 %2205, i64* %2211, align 1
  store %struct.Memory* %loadMem_40263f, %struct.Memory** %MEMORY
  %loadMem_402644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2218, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %2219 to %union.vec128_t*
  %2220 = load i64, i64* %RBP.i416
  %2221 = sub i64 %2220, 96
  %2222 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %2223 = load i64, i64* %PC.i415
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %PC.i415
  %2225 = bitcast i8* %2222 to double*
  %2226 = load double, double* %2225, align 1
  %2227 = inttoptr i64 %2221 to double*
  store double %2226, double* %2227
  store %struct.Memory* %loadMem_402644, %struct.Memory** %MEMORY
  %loadMem_402649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RBP.i414
  %2238 = sub i64 %2237, 16
  %2239 = load i64, i64* %PC.i412
  %2240 = add i64 %2239, 4
  store i64 %2240, i64* %PC.i412
  %2241 = inttoptr i64 %2238 to i64*
  %2242 = load i64, i64* %2241
  store i64 %2242, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_402649, %struct.Memory** %MEMORY
  %loadMem_40264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 7
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RBP.i411
  %2253 = sub i64 %2252, 36
  %2254 = load i64, i64* %PC.i409
  %2255 = add i64 %2254, 4
  store i64 %2255, i64* %PC.i409
  %2256 = inttoptr i64 %2253 to i32*
  %2257 = load i32, i32* %2256
  %2258 = sext i32 %2257 to i64
  store i64 %2258, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_40264d, %struct.Memory** %MEMORY
  %loadMem_402651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 1
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 7
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2268, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %2269 to %"class.std::bitset"*
  %2270 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %2271 = load i64, i64* %RAX.i406
  %2272 = load i64, i64* %RDX.i407
  %2273 = mul i64 %2272, 8
  %2274 = add i64 %2273, %2271
  %2275 = load i64, i64* %PC.i405
  %2276 = add i64 %2275, 5
  store i64 %2276, i64* %PC.i405
  %2277 = inttoptr i64 %2274 to double*
  %2278 = load double, double* %2277
  %2279 = bitcast i8* %2270 to double*
  store double %2278, double* %2279, align 1
  %2280 = getelementptr inbounds i8, i8* %2270, i64 8
  %2281 = bitcast i8* %2280 to double*
  store double 0.000000e+00, double* %2281, align 1
  store %struct.Memory* %loadMem_402651, %struct.Memory** %MEMORY
  %loadMem_402656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 1
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 15
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RBP.i404
  %2292 = sub i64 %2291, 16
  %2293 = load i64, i64* %PC.i402
  %2294 = add i64 %2293, 4
  store i64 %2294, i64* %PC.i402
  %2295 = inttoptr i64 %2292 to i64*
  %2296 = load i64, i64* %2295
  store i64 %2296, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_402656, %struct.Memory** %MEMORY
  %loadMem_40265a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 7
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i401
  %2307 = sub i64 %2306, 40
  %2308 = load i64, i64* %PC.i399
  %2309 = add i64 %2308, 4
  store i64 %2309, i64* %PC.i399
  %2310 = inttoptr i64 %2307 to i32*
  %2311 = load i32, i32* %2310
  %2312 = sext i32 %2311 to i64
  store i64 %2312, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_40265a, %struct.Memory** %MEMORY
  %loadMem_40265e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 1
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 7
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 0
  %YMM0.i398 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %2325 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %2326 = load i64, i64* %RAX.i396
  %2327 = load i64, i64* %RDX.i397
  %2328 = mul i64 %2327, 8
  %2329 = add i64 %2328, %2326
  %2330 = load i64, i64* %PC.i395
  %2331 = add i64 %2330, 5
  store i64 %2331, i64* %PC.i395
  %2332 = bitcast i8* %2325 to double*
  %2333 = load double, double* %2332, align 1
  %2334 = getelementptr inbounds i8, i8* %2325, i64 8
  %2335 = bitcast i8* %2334 to i64*
  %2336 = load i64, i64* %2335, align 1
  %2337 = inttoptr i64 %2329 to double*
  %2338 = load double, double* %2337
  %2339 = fsub double %2333, %2338
  %2340 = bitcast i8* %2324 to double*
  store double %2339, double* %2340, align 1
  %2341 = getelementptr inbounds i8, i8* %2324, i64 8
  %2342 = bitcast i8* %2341 to i64*
  store i64 %2336, i64* %2342, align 1
  store %struct.Memory* %loadMem_40265e, %struct.Memory** %MEMORY
  %loadMem_402663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2349, i64 0, i64 0
  %XMM0.i394 = bitcast %union.VectorReg* %2350 to %union.vec128_t*
  %2351 = load i64, i64* %RBP.i393
  %2352 = sub i64 %2351, 104
  %2353 = bitcast %union.vec128_t* %XMM0.i394 to i8*
  %2354 = load i64, i64* %PC.i392
  %2355 = add i64 %2354, 5
  store i64 %2355, i64* %PC.i392
  %2356 = bitcast i8* %2353 to double*
  %2357 = load double, double* %2356, align 1
  %2358 = inttoptr i64 %2352 to double*
  store double %2357, double* %2358
  store %struct.Memory* %loadMem_402663, %struct.Memory** %MEMORY
  %loadMem_402668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 1
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RBP.i391
  %2369 = sub i64 %2368, 16
  %2370 = load i64, i64* %PC.i389
  %2371 = add i64 %2370, 4
  store i64 %2371, i64* %PC.i389
  %2372 = inttoptr i64 %2369 to i64*
  %2373 = load i64, i64* %2372
  store i64 %2373, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_402668, %struct.Memory** %MEMORY
  %loadMem_40266c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 5
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i388
  %2384 = sub i64 %2383, 36
  %2385 = load i64, i64* %PC.i386
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC.i386
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_40266c, %struct.Memory** %MEMORY
  %loadMem_40266f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 5
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RCX.i385
  %2397 = load i64, i64* %PC.i384
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %PC.i384
  %2399 = trunc i64 %2396 to i32
  %2400 = add i32 1, %2399
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i385, align 8
  %2402 = icmp ult i32 %2400, %2399
  %2403 = icmp ult i32 %2400, 1
  %2404 = or i1 %2402, %2403
  %2405 = zext i1 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2405, i8* %2406, align 1
  %2407 = and i32 %2400, 255
  %2408 = call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2411, i8* %2412, align 1
  %2413 = xor i64 1, %2396
  %2414 = trunc i64 %2413 to i32
  %2415 = xor i32 %2414, %2400
  %2416 = lshr i32 %2415, 4
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2418, i8* %2419, align 1
  %2420 = icmp eq i32 %2400, 0
  %2421 = zext i1 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2421, i8* %2422, align 1
  %2423 = lshr i32 %2400, 31
  %2424 = trunc i32 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2424, i8* %2425, align 1
  %2426 = lshr i32 %2399, 31
  %2427 = xor i32 %2423, %2426
  %2428 = add i32 %2427, %2423
  %2429 = icmp eq i32 %2428, 2
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2430, i8* %2431, align 1
  store %struct.Memory* %loadMem_40266f, %struct.Memory** %MEMORY
  %loadMem_402672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 5
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %ECX.i382 = bitcast %union.anon* %2437 to i32*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 7
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %2440 to i64*
  %2441 = load i32, i32* %ECX.i382
  %2442 = zext i32 %2441 to i64
  %2443 = load i64, i64* %PC.i381
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i381
  %2445 = shl i64 %2442, 32
  %2446 = ashr exact i64 %2445, 32
  store i64 %2446, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_402672, %struct.Memory** %MEMORY
  %loadMem_402675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 1
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 7
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2456, i64 0, i64 0
  %YMM0.i380 = bitcast %union.VectorReg* %2457 to %"class.std::bitset"*
  %2458 = bitcast %"class.std::bitset"* %YMM0.i380 to i8*
  %2459 = load i64, i64* %RAX.i378
  %2460 = load i64, i64* %RDX.i379
  %2461 = mul i64 %2460, 8
  %2462 = add i64 %2461, %2459
  %2463 = load i64, i64* %PC.i377
  %2464 = add i64 %2463, 5
  store i64 %2464, i64* %PC.i377
  %2465 = inttoptr i64 %2462 to double*
  %2466 = load double, double* %2465
  %2467 = bitcast i8* %2458 to double*
  store double %2466, double* %2467, align 1
  %2468 = getelementptr inbounds i8, i8* %2458, i64 8
  %2469 = bitcast i8* %2468 to double*
  store double 0.000000e+00, double* %2469, align 1
  store %struct.Memory* %loadMem_402675, %struct.Memory** %MEMORY
  %loadMem_40267a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 1
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 15
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %RBP.i376
  %2480 = sub i64 %2479, 16
  %2481 = load i64, i64* %PC.i374
  %2482 = add i64 %2481, 4
  store i64 %2482, i64* %PC.i374
  %2483 = inttoptr i64 %2480 to i64*
  %2484 = load i64, i64* %2483
  store i64 %2484, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_40267a, %struct.Memory** %MEMORY
  %loadMem_40267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 5
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 15
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RBP.i373
  %2495 = sub i64 %2494, 40
  %2496 = load i64, i64* %PC.i371
  %2497 = add i64 %2496, 3
  store i64 %2497, i64* %PC.i371
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RCX.i372, align 8
  store %struct.Memory* %loadMem_40267e, %struct.Memory** %MEMORY
  %loadMem_402681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 5
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %RCX.i370
  %2508 = load i64, i64* %PC.i369
  %2509 = add i64 %2508, 3
  store i64 %2509, i64* %PC.i369
  %2510 = trunc i64 %2507 to i32
  %2511 = add i32 1, %2510
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RCX.i370, align 8
  %2513 = icmp ult i32 %2511, %2510
  %2514 = icmp ult i32 %2511, 1
  %2515 = or i1 %2513, %2514
  %2516 = zext i1 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2516, i8* %2517, align 1
  %2518 = and i32 %2511, 255
  %2519 = call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2522, i8* %2523, align 1
  %2524 = xor i64 1, %2507
  %2525 = trunc i64 %2524 to i32
  %2526 = xor i32 %2525, %2511
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2529, i8* %2530, align 1
  %2531 = icmp eq i32 %2511, 0
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i32 %2511, 31
  %2535 = trunc i32 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2535, i8* %2536, align 1
  %2537 = lshr i32 %2510, 31
  %2538 = xor i32 %2534, %2537
  %2539 = add i32 %2538, %2534
  %2540 = icmp eq i32 %2539, 2
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2541, i8* %2542, align 1
  store %struct.Memory* %loadMem_402681, %struct.Memory** %MEMORY
  %loadMem_402684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 5
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %ECX.i367 = bitcast %union.anon* %2548 to i32*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 7
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %2551 to i64*
  %2552 = load i32, i32* %ECX.i367
  %2553 = zext i32 %2552 to i64
  %2554 = load i64, i64* %PC.i366
  %2555 = add i64 %2554, 3
  store i64 %2555, i64* %PC.i366
  %2556 = shl i64 %2553, 32
  %2557 = ashr exact i64 %2556, 32
  store i64 %2557, i64* %RDX.i368, align 8
  store %struct.Memory* %loadMem_402684, %struct.Memory** %MEMORY
  %loadMem_402687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 1
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 7
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2567, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %2568 to %"class.std::bitset"*
  %2569 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %2570 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %2571 = load i64, i64* %RAX.i363
  %2572 = load i64, i64* %RDX.i364
  %2573 = mul i64 %2572, 8
  %2574 = add i64 %2573, %2571
  %2575 = load i64, i64* %PC.i362
  %2576 = add i64 %2575, 5
  store i64 %2576, i64* %PC.i362
  %2577 = bitcast i8* %2570 to double*
  %2578 = load double, double* %2577, align 1
  %2579 = getelementptr inbounds i8, i8* %2570, i64 8
  %2580 = bitcast i8* %2579 to i64*
  %2581 = load i64, i64* %2580, align 1
  %2582 = inttoptr i64 %2574 to double*
  %2583 = load double, double* %2582
  %2584 = fsub double %2578, %2583
  %2585 = bitcast i8* %2569 to double*
  store double %2584, double* %2585, align 1
  %2586 = getelementptr inbounds i8, i8* %2569, i64 8
  %2587 = bitcast i8* %2586 to i64*
  store i64 %2581, i64* %2587, align 1
  store %struct.Memory* %loadMem_402687, %struct.Memory** %MEMORY
  %loadMem_40268c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 15
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2594, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2595 to %union.vec128_t*
  %2596 = load i64, i64* %RBP.i360
  %2597 = sub i64 %2596, 112
  %2598 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2599 = load i64, i64* %PC.i359
  %2600 = add i64 %2599, 5
  store i64 %2600, i64* %PC.i359
  %2601 = bitcast i8* %2598 to double*
  %2602 = load double, double* %2601, align 1
  %2603 = inttoptr i64 %2597 to double*
  store double %2602, double* %2603
  store %struct.Memory* %loadMem_40268c, %struct.Memory** %MEMORY
  %loadMem_402691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2610, i64 0, i64 0
  %YMM0.i358 = bitcast %union.VectorReg* %2611 to %"class.std::bitset"*
  %2612 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %2613 = load i64, i64* %RBP.i357
  %2614 = sub i64 %2613, 56
  %2615 = load i64, i64* %PC.i356
  %2616 = add i64 %2615, 5
  store i64 %2616, i64* %PC.i356
  %2617 = inttoptr i64 %2614 to double*
  %2618 = load double, double* %2617
  %2619 = bitcast i8* %2612 to double*
  store double %2618, double* %2619, align 1
  %2620 = getelementptr inbounds i8, i8* %2612, i64 8
  %2621 = bitcast i8* %2620 to double*
  store double 0.000000e+00, double* %2621, align 1
  store %struct.Memory* %loadMem_402691, %struct.Memory** %MEMORY
  %loadMem_402696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 15
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2629 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2628, i64 0, i64 0
  %YMM0.i355 = bitcast %union.VectorReg* %2629 to %"class.std::bitset"*
  %2630 = bitcast %"class.std::bitset"* %YMM0.i355 to i8*
  %2631 = bitcast %"class.std::bitset"* %YMM0.i355 to i8*
  %2632 = load i64, i64* %RBP.i354
  %2633 = sub i64 %2632, 88
  %2634 = load i64, i64* %PC.i353
  %2635 = add i64 %2634, 5
  store i64 %2635, i64* %PC.i353
  %2636 = bitcast i8* %2631 to double*
  %2637 = load double, double* %2636, align 1
  %2638 = getelementptr inbounds i8, i8* %2631, i64 8
  %2639 = bitcast i8* %2638 to i64*
  %2640 = load i64, i64* %2639, align 1
  %2641 = inttoptr i64 %2633 to double*
  %2642 = load double, double* %2641
  %2643 = fadd double %2637, %2642
  %2644 = bitcast i8* %2630 to double*
  store double %2643, double* %2644, align 1
  %2645 = getelementptr inbounds i8, i8* %2630, i64 8
  %2646 = bitcast i8* %2645 to i64*
  store i64 %2640, i64* %2646, align 1
  store %struct.Memory* %loadMem_402696, %struct.Memory** %MEMORY
  %loadMem_40269b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 1
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 15
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RBP.i352
  %2657 = sub i64 %2656, 16
  %2658 = load i64, i64* %PC.i350
  %2659 = add i64 %2658, 4
  store i64 %2659, i64* %PC.i350
  %2660 = inttoptr i64 %2657 to i64*
  %2661 = load i64, i64* %2660
  store i64 %2661, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_40269b, %struct.Memory** %MEMORY
  %loadMem_40269f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 7
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 15
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %RBP.i349
  %2672 = sub i64 %2671, 28
  %2673 = load i64, i64* %PC.i347
  %2674 = add i64 %2673, 4
  store i64 %2674, i64* %PC.i347
  %2675 = inttoptr i64 %2672 to i32*
  %2676 = load i32, i32* %2675
  %2677 = sext i32 %2676 to i64
  store i64 %2677, i64* %RDX.i348, align 8
  store %struct.Memory* %loadMem_40269f, %struct.Memory** %MEMORY
  %loadMem_4026a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 7
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RDX.i345 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2687, i64 0, i64 0
  %XMM0.i346 = bitcast %union.VectorReg* %2688 to %union.vec128_t*
  %2689 = load i64, i64* %RAX.i344
  %2690 = load i64, i64* %RDX.i345
  %2691 = mul i64 %2690, 8
  %2692 = add i64 %2691, %2689
  %2693 = bitcast %union.vec128_t* %XMM0.i346 to i8*
  %2694 = load i64, i64* %PC.i343
  %2695 = add i64 %2694, 5
  store i64 %2695, i64* %PC.i343
  %2696 = bitcast i8* %2693 to double*
  %2697 = load double, double* %2696, align 1
  %2698 = inttoptr i64 %2692 to double*
  store double %2697, double* %2698
  store %struct.Memory* %loadMem_4026a3, %struct.Memory** %MEMORY
  %loadMem_4026a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 15
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2705, i64 0, i64 0
  %YMM0.i342 = bitcast %union.VectorReg* %2706 to %"class.std::bitset"*
  %2707 = bitcast %"class.std::bitset"* %YMM0.i342 to i8*
  %2708 = load i64, i64* %RBP.i341
  %2709 = sub i64 %2708, 64
  %2710 = load i64, i64* %PC.i340
  %2711 = add i64 %2710, 5
  store i64 %2711, i64* %PC.i340
  %2712 = inttoptr i64 %2709 to double*
  %2713 = load double, double* %2712
  %2714 = bitcast i8* %2707 to double*
  store double %2713, double* %2714, align 1
  %2715 = getelementptr inbounds i8, i8* %2707, i64 8
  %2716 = bitcast i8* %2715 to double*
  store double 0.000000e+00, double* %2716, align 1
  store %struct.Memory* %loadMem_4026a8, %struct.Memory** %MEMORY
  %loadMem_4026ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2723, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %2724 to %"class.std::bitset"*
  %2725 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %2726 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %2727 = load i64, i64* %RBP.i338
  %2728 = sub i64 %2727, 96
  %2729 = load i64, i64* %PC.i337
  %2730 = add i64 %2729, 5
  store i64 %2730, i64* %PC.i337
  %2731 = bitcast i8* %2726 to double*
  %2732 = load double, double* %2731, align 1
  %2733 = getelementptr inbounds i8, i8* %2726, i64 8
  %2734 = bitcast i8* %2733 to i64*
  %2735 = load i64, i64* %2734, align 1
  %2736 = inttoptr i64 %2728 to double*
  %2737 = load double, double* %2736
  %2738 = fsub double %2732, %2737
  %2739 = bitcast i8* %2725 to double*
  store double %2738, double* %2739, align 1
  %2740 = getelementptr inbounds i8, i8* %2725, i64 8
  %2741 = bitcast i8* %2740 to i64*
  store i64 %2735, i64* %2741, align 1
  store %struct.Memory* %loadMem_4026ad, %struct.Memory** %MEMORY
  %loadMem_4026b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i336
  %2752 = sub i64 %2751, 16
  %2753 = load i64, i64* %PC.i334
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i334
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755
  store i64 %2756, i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_4026b2, %struct.Memory** %MEMORY
  %loadMem_4026b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 5
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 15
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RBP.i333
  %2767 = sub i64 %2766, 28
  %2768 = load i64, i64* %PC.i331
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i331
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_4026b6, %struct.Memory** %MEMORY
  %loadMem_4026b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 5
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RCX.i330
  %2780 = load i64, i64* %PC.i329
  %2781 = add i64 %2780, 3
  store i64 %2781, i64* %PC.i329
  %2782 = trunc i64 %2779 to i32
  %2783 = add i32 1, %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RCX.i330, align 8
  %2785 = icmp ult i32 %2783, %2782
  %2786 = icmp ult i32 %2783, 1
  %2787 = or i1 %2785, %2786
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2788, i8* %2789, align 1
  %2790 = and i32 %2783, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = xor i64 1, %2779
  %2797 = trunc i64 %2796 to i32
  %2798 = xor i32 %2797, %2783
  %2799 = lshr i32 %2798, 4
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2801, i8* %2802, align 1
  %2803 = icmp eq i32 %2783, 0
  %2804 = zext i1 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2804, i8* %2805, align 1
  %2806 = lshr i32 %2783, 31
  %2807 = trunc i32 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2807, i8* %2808, align 1
  %2809 = lshr i32 %2782, 31
  %2810 = xor i32 %2806, %2809
  %2811 = add i32 %2810, %2806
  %2812 = icmp eq i32 %2811, 2
  %2813 = zext i1 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2813, i8* %2814, align 1
  store %struct.Memory* %loadMem_4026b9, %struct.Memory** %MEMORY
  %loadMem_4026bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 5
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %ECX.i327 = bitcast %union.anon* %2820 to i32*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 7
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %2823 to i64*
  %2824 = load i32, i32* %ECX.i327
  %2825 = zext i32 %2824 to i64
  %2826 = load i64, i64* %PC.i326
  %2827 = add i64 %2826, 3
  store i64 %2827, i64* %PC.i326
  %2828 = shl i64 %2825, 32
  %2829 = ashr exact i64 %2828, 32
  store i64 %2829, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_4026bc, %struct.Memory** %MEMORY
  %loadMem_4026bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 1
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 7
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2839, i64 0, i64 0
  %XMM0.i325 = bitcast %union.VectorReg* %2840 to %union.vec128_t*
  %2841 = load i64, i64* %RAX.i323
  %2842 = load i64, i64* %RDX.i324
  %2843 = mul i64 %2842, 8
  %2844 = add i64 %2843, %2841
  %2845 = bitcast %union.vec128_t* %XMM0.i325 to i8*
  %2846 = load i64, i64* %PC.i322
  %2847 = add i64 %2846, 5
  store i64 %2847, i64* %PC.i322
  %2848 = bitcast i8* %2845 to double*
  %2849 = load double, double* %2848, align 1
  %2850 = inttoptr i64 %2844 to double*
  store double %2849, double* %2850
  store %struct.Memory* %loadMem_4026bf, %struct.Memory** %MEMORY
  %loadMem_4026c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 15
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2857, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %2858 to %"class.std::bitset"*
  %2859 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %2860 = load i64, i64* %RBP.i320
  %2861 = sub i64 %2860, 56
  %2862 = load i64, i64* %PC.i319
  %2863 = add i64 %2862, 5
  store i64 %2863, i64* %PC.i319
  %2864 = inttoptr i64 %2861 to double*
  %2865 = load double, double* %2864
  %2866 = bitcast i8* %2859 to double*
  store double %2865, double* %2866, align 1
  %2867 = getelementptr inbounds i8, i8* %2859, i64 8
  %2868 = bitcast i8* %2867 to double*
  store double 0.000000e+00, double* %2868, align 1
  store %struct.Memory* %loadMem_4026c4, %struct.Memory** %MEMORY
  %loadMem_4026c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 15
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2875, i64 0, i64 0
  %YMM0.i318 = bitcast %union.VectorReg* %2876 to %"class.std::bitset"*
  %2877 = bitcast %"class.std::bitset"* %YMM0.i318 to i8*
  %2878 = bitcast %"class.std::bitset"* %YMM0.i318 to i8*
  %2879 = load i64, i64* %RBP.i317
  %2880 = sub i64 %2879, 88
  %2881 = load i64, i64* %PC.i316
  %2882 = add i64 %2881, 5
  store i64 %2882, i64* %PC.i316
  %2883 = bitcast i8* %2878 to double*
  %2884 = load double, double* %2883, align 1
  %2885 = getelementptr inbounds i8, i8* %2878, i64 8
  %2886 = bitcast i8* %2885 to i64*
  %2887 = load i64, i64* %2886, align 1
  %2888 = inttoptr i64 %2880 to double*
  %2889 = load double, double* %2888
  %2890 = fsub double %2884, %2889
  %2891 = bitcast i8* %2877 to double*
  store double %2890, double* %2891, align 1
  %2892 = getelementptr inbounds i8, i8* %2877, i64 8
  %2893 = bitcast i8* %2892 to i64*
  store i64 %2887, i64* %2893, align 1
  store %struct.Memory* %loadMem_4026c9, %struct.Memory** %MEMORY
  %loadMem_4026ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 15
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RBP.i315
  %2904 = sub i64 %2903, 16
  %2905 = load i64, i64* %PC.i313
  %2906 = add i64 %2905, 4
  store i64 %2906, i64* %PC.i313
  %2907 = inttoptr i64 %2904 to i64*
  %2908 = load i64, i64* %2907
  store i64 %2908, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_4026ce, %struct.Memory** %MEMORY
  %loadMem_4026d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 7
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 15
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2917 to i64*
  %2918 = load i64, i64* %RBP.i312
  %2919 = sub i64 %2918, 36
  %2920 = load i64, i64* %PC.i310
  %2921 = add i64 %2920, 4
  store i64 %2921, i64* %PC.i310
  %2922 = inttoptr i64 %2919 to i32*
  %2923 = load i32, i32* %2922
  %2924 = sext i32 %2923 to i64
  store i64 %2924, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_4026d2, %struct.Memory** %MEMORY
  %loadMem_4026d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 1
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 7
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 0
  %XMM0.i309 = bitcast %union.VectorReg* %2935 to %union.vec128_t*
  %2936 = load i64, i64* %RAX.i307
  %2937 = load i64, i64* %RDX.i308
  %2938 = mul i64 %2937, 8
  %2939 = add i64 %2938, %2936
  %2940 = bitcast %union.vec128_t* %XMM0.i309 to i8*
  %2941 = load i64, i64* %PC.i306
  %2942 = add i64 %2941, 5
  store i64 %2942, i64* %PC.i306
  %2943 = bitcast i8* %2940 to double*
  %2944 = load double, double* %2943, align 1
  %2945 = inttoptr i64 %2939 to double*
  store double %2944, double* %2945
  store %struct.Memory* %loadMem_4026d6, %struct.Memory** %MEMORY
  %loadMem_4026db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2952, i64 0, i64 0
  %YMM0.i305 = bitcast %union.VectorReg* %2953 to %"class.std::bitset"*
  %2954 = bitcast %"class.std::bitset"* %YMM0.i305 to i8*
  %2955 = load i64, i64* %RBP.i304
  %2956 = sub i64 %2955, 64
  %2957 = load i64, i64* %PC.i303
  %2958 = add i64 %2957, 5
  store i64 %2958, i64* %PC.i303
  %2959 = inttoptr i64 %2956 to double*
  %2960 = load double, double* %2959
  %2961 = bitcast i8* %2954 to double*
  store double %2960, double* %2961, align 1
  %2962 = getelementptr inbounds i8, i8* %2954, i64 8
  %2963 = bitcast i8* %2962 to double*
  store double 0.000000e+00, double* %2963, align 1
  store %struct.Memory* %loadMem_4026db, %struct.Memory** %MEMORY
  %loadMem_4026e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 15
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2970, i64 0, i64 0
  %YMM0.i302 = bitcast %union.VectorReg* %2971 to %"class.std::bitset"*
  %2972 = bitcast %"class.std::bitset"* %YMM0.i302 to i8*
  %2973 = bitcast %"class.std::bitset"* %YMM0.i302 to i8*
  %2974 = load i64, i64* %RBP.i301
  %2975 = sub i64 %2974, 96
  %2976 = load i64, i64* %PC.i300
  %2977 = add i64 %2976, 5
  store i64 %2977, i64* %PC.i300
  %2978 = bitcast i8* %2973 to double*
  %2979 = load double, double* %2978, align 1
  %2980 = getelementptr inbounds i8, i8* %2973, i64 8
  %2981 = bitcast i8* %2980 to i64*
  %2982 = load i64, i64* %2981, align 1
  %2983 = inttoptr i64 %2975 to double*
  %2984 = load double, double* %2983
  %2985 = fadd double %2979, %2984
  %2986 = bitcast i8* %2972 to double*
  store double %2985, double* %2986, align 1
  %2987 = getelementptr inbounds i8, i8* %2972, i64 8
  %2988 = bitcast i8* %2987 to i64*
  store i64 %2982, i64* %2988, align 1
  store %struct.Memory* %loadMem_4026e0, %struct.Memory** %MEMORY
  %loadMem_4026e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 1
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i299
  %2999 = sub i64 %2998, 16
  %3000 = load i64, i64* %PC.i297
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i297
  %3002 = inttoptr i64 %2999 to i64*
  %3003 = load i64, i64* %3002
  store i64 %3003, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_4026e5, %struct.Memory** %MEMORY
  %loadMem_4026e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i296
  %3014 = sub i64 %3013, 36
  %3015 = load i64, i64* %PC.i294
  %3016 = add i64 %3015, 3
  store i64 %3016, i64* %PC.i294
  %3017 = inttoptr i64 %3014 to i32*
  %3018 = load i32, i32* %3017
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4026e9, %struct.Memory** %MEMORY
  %loadMem_4026ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 5
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RCX.i293
  %3027 = load i64, i64* %PC.i292
  %3028 = add i64 %3027, 3
  store i64 %3028, i64* %PC.i292
  %3029 = trunc i64 %3026 to i32
  %3030 = add i32 1, %3029
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i293, align 8
  %3032 = icmp ult i32 %3030, %3029
  %3033 = icmp ult i32 %3030, 1
  %3034 = or i1 %3032, %3033
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3035, i8* %3036, align 1
  %3037 = and i32 %3030, 255
  %3038 = call i32 @llvm.ctpop.i32(i32 %3037)
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3041, i8* %3042, align 1
  %3043 = xor i64 1, %3026
  %3044 = trunc i64 %3043 to i32
  %3045 = xor i32 %3044, %3030
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3048, i8* %3049, align 1
  %3050 = icmp eq i32 %3030, 0
  %3051 = zext i1 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i32 %3030, 31
  %3054 = trunc i32 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3054, i8* %3055, align 1
  %3056 = lshr i32 %3029, 31
  %3057 = xor i32 %3053, %3056
  %3058 = add i32 %3057, %3053
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3060, i8* %3061, align 1
  store %struct.Memory* %loadMem_4026ec, %struct.Memory** %MEMORY
  %loadMem_4026ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %ECX.i290 = bitcast %union.anon* %3067 to i32*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 7
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %3070 to i64*
  %3071 = load i32, i32* %ECX.i290
  %3072 = zext i32 %3071 to i64
  %3073 = load i64, i64* %PC.i289
  %3074 = add i64 %3073, 3
  store i64 %3074, i64* %PC.i289
  %3075 = shl i64 %3072, 32
  %3076 = ashr exact i64 %3075, 32
  store i64 %3076, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_4026ef, %struct.Memory** %MEMORY
  %loadMem_4026f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 7
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3086, i64 0, i64 0
  %XMM0.i288 = bitcast %union.VectorReg* %3087 to %union.vec128_t*
  %3088 = load i64, i64* %RAX.i286
  %3089 = load i64, i64* %RDX.i287
  %3090 = mul i64 %3089, 8
  %3091 = add i64 %3090, %3088
  %3092 = bitcast %union.vec128_t* %XMM0.i288 to i8*
  %3093 = load i64, i64* %PC.i285
  %3094 = add i64 %3093, 5
  store i64 %3094, i64* %PC.i285
  %3095 = bitcast i8* %3092 to double*
  %3096 = load double, double* %3095, align 1
  %3097 = inttoptr i64 %3091 to double*
  store double %3096, double* %3097
  store %struct.Memory* %loadMem_4026f2, %struct.Memory** %MEMORY
  %loadMem_4026f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 15
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3104, i64 0, i64 0
  %YMM0.i284 = bitcast %union.VectorReg* %3105 to %"class.std::bitset"*
  %3106 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %3107 = load i64, i64* %RBP.i283
  %3108 = sub i64 %3107, 72
  %3109 = load i64, i64* %PC.i282
  %3110 = add i64 %3109, 5
  store i64 %3110, i64* %PC.i282
  %3111 = inttoptr i64 %3108 to double*
  %3112 = load double, double* %3111
  %3113 = bitcast i8* %3106 to double*
  store double %3112, double* %3113, align 1
  %3114 = getelementptr inbounds i8, i8* %3106, i64 8
  %3115 = bitcast i8* %3114 to double*
  store double 0.000000e+00, double* %3115, align 1
  store %struct.Memory* %loadMem_4026f7, %struct.Memory** %MEMORY
  %loadMem_4026fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 15
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3122, i64 0, i64 0
  %YMM0.i281 = bitcast %union.VectorReg* %3123 to %"class.std::bitset"*
  %3124 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %3125 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %3126 = load i64, i64* %RBP.i280
  %3127 = sub i64 %3126, 112
  %3128 = load i64, i64* %PC.i279
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i279
  %3130 = bitcast i8* %3125 to double*
  %3131 = load double, double* %3130, align 1
  %3132 = getelementptr inbounds i8, i8* %3125, i64 8
  %3133 = bitcast i8* %3132 to i64*
  %3134 = load i64, i64* %3133, align 1
  %3135 = inttoptr i64 %3127 to double*
  %3136 = load double, double* %3135
  %3137 = fsub double %3131, %3136
  %3138 = bitcast i8* %3124 to double*
  store double %3137, double* %3138, align 1
  %3139 = getelementptr inbounds i8, i8* %3124, i64 8
  %3140 = bitcast i8* %3139 to i64*
  store i64 %3134, i64* %3140, align 1
  store %struct.Memory* %loadMem_4026fc, %struct.Memory** %MEMORY
  %loadMem_402701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 15
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %RBP.i278
  %3151 = sub i64 %3150, 16
  %3152 = load i64, i64* %PC.i276
  %3153 = add i64 %3152, 4
  store i64 %3153, i64* %PC.i276
  %3154 = inttoptr i64 %3151 to i64*
  %3155 = load i64, i64* %3154
  store i64 %3155, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_402701, %struct.Memory** %MEMORY
  %loadMem_402705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 7
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i275
  %3166 = sub i64 %3165, 32
  %3167 = load i64, i64* %PC.i273
  %3168 = add i64 %3167, 4
  store i64 %3168, i64* %PC.i273
  %3169 = inttoptr i64 %3166 to i32*
  %3170 = load i32, i32* %3169
  %3171 = sext i32 %3170 to i64
  store i64 %3171, i64* %RDX.i274, align 8
  store %struct.Memory* %loadMem_402705, %struct.Memory** %MEMORY
  %loadMem_402709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 1
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 7
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3181, i64 0, i64 0
  %XMM0.i272 = bitcast %union.VectorReg* %3182 to %union.vec128_t*
  %3183 = load i64, i64* %RAX.i270
  %3184 = load i64, i64* %RDX.i271
  %3185 = mul i64 %3184, 8
  %3186 = add i64 %3185, %3183
  %3187 = bitcast %union.vec128_t* %XMM0.i272 to i8*
  %3188 = load i64, i64* %PC.i269
  %3189 = add i64 %3188, 5
  store i64 %3189, i64* %PC.i269
  %3190 = bitcast i8* %3187 to double*
  %3191 = load double, double* %3190, align 1
  %3192 = inttoptr i64 %3186 to double*
  store double %3191, double* %3192
  store %struct.Memory* %loadMem_402709, %struct.Memory** %MEMORY
  %loadMem_40270e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3199, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %3200 to %"class.std::bitset"*
  %3201 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %3202 = load i64, i64* %RBP.i267
  %3203 = sub i64 %3202, 80
  %3204 = load i64, i64* %PC.i266
  %3205 = add i64 %3204, 5
  store i64 %3205, i64* %PC.i266
  %3206 = inttoptr i64 %3203 to double*
  %3207 = load double, double* %3206
  %3208 = bitcast i8* %3201 to double*
  store double %3207, double* %3208, align 1
  %3209 = getelementptr inbounds i8, i8* %3201, i64 8
  %3210 = bitcast i8* %3209 to double*
  store double 0.000000e+00, double* %3210, align 1
  store %struct.Memory* %loadMem_40270e, %struct.Memory** %MEMORY
  %loadMem_402713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3218 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3217, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %3218 to %"class.std::bitset"*
  %3219 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3220 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3221 = load i64, i64* %RBP.i264
  %3222 = sub i64 %3221, 104
  %3223 = load i64, i64* %PC.i263
  %3224 = add i64 %3223, 5
  store i64 %3224, i64* %PC.i263
  %3225 = bitcast i8* %3220 to double*
  %3226 = load double, double* %3225, align 1
  %3227 = getelementptr inbounds i8, i8* %3220, i64 8
  %3228 = bitcast i8* %3227 to i64*
  %3229 = load i64, i64* %3228, align 1
  %3230 = inttoptr i64 %3222 to double*
  %3231 = load double, double* %3230
  %3232 = fsub double %3226, %3231
  %3233 = bitcast i8* %3219 to double*
  store double %3232, double* %3233, align 1
  %3234 = getelementptr inbounds i8, i8* %3219, i64 8
  %3235 = bitcast i8* %3234 to i64*
  store i64 %3229, i64* %3235, align 1
  store %struct.Memory* %loadMem_402713, %struct.Memory** %MEMORY
  %loadMem_402718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 1
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RBP.i262
  %3246 = sub i64 %3245, 16
  %3247 = load i64, i64* %PC.i260
  %3248 = add i64 %3247, 4
  store i64 %3248, i64* %PC.i260
  %3249 = inttoptr i64 %3246 to i64*
  %3250 = load i64, i64* %3249
  store i64 %3250, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_402718, %struct.Memory** %MEMORY
  %loadMem_40271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 5
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RBP.i259
  %3261 = sub i64 %3260, 32
  %3262 = load i64, i64* %PC.i257
  %3263 = add i64 %3262, 3
  store i64 %3263, i64* %PC.i257
  %3264 = inttoptr i64 %3261 to i32*
  %3265 = load i32, i32* %3264
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_40271c, %struct.Memory** %MEMORY
  %loadMem_40271f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 5
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RCX.i256
  %3274 = load i64, i64* %PC.i255
  %3275 = add i64 %3274, 3
  store i64 %3275, i64* %PC.i255
  %3276 = trunc i64 %3273 to i32
  %3277 = add i32 1, %3276
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RCX.i256, align 8
  %3279 = icmp ult i32 %3277, %3276
  %3280 = icmp ult i32 %3277, 1
  %3281 = or i1 %3279, %3280
  %3282 = zext i1 %3281 to i8
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3282, i8* %3283, align 1
  %3284 = and i32 %3277, 255
  %3285 = call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3288, i8* %3289, align 1
  %3290 = xor i64 1, %3273
  %3291 = trunc i64 %3290 to i32
  %3292 = xor i32 %3291, %3277
  %3293 = lshr i32 %3292, 4
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3295, i8* %3296, align 1
  %3297 = icmp eq i32 %3277, 0
  %3298 = zext i1 %3297 to i8
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3298, i8* %3299, align 1
  %3300 = lshr i32 %3277, 31
  %3301 = trunc i32 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3301, i8* %3302, align 1
  %3303 = lshr i32 %3276, 31
  %3304 = xor i32 %3300, %3303
  %3305 = add i32 %3304, %3300
  %3306 = icmp eq i32 %3305, 2
  %3307 = zext i1 %3306 to i8
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3307, i8* %3308, align 1
  store %struct.Memory* %loadMem_40271f, %struct.Memory** %MEMORY
  %loadMem_402722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 5
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %ECX.i253 = bitcast %union.anon* %3314 to i32*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 7
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %3317 to i64*
  %3318 = load i32, i32* %ECX.i253
  %3319 = zext i32 %3318 to i64
  %3320 = load i64, i64* %PC.i252
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i252
  %3322 = shl i64 %3319, 32
  %3323 = ashr exact i64 %3322, 32
  store i64 %3323, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_402722, %struct.Memory** %MEMORY
  %loadMem_402725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 1
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 7
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3333, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %3334 to %union.vec128_t*
  %3335 = load i64, i64* %RAX.i249
  %3336 = load i64, i64* %RDX.i250
  %3337 = mul i64 %3336, 8
  %3338 = add i64 %3337, %3335
  %3339 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %3340 = load i64, i64* %PC.i248
  %3341 = add i64 %3340, 5
  store i64 %3341, i64* %PC.i248
  %3342 = bitcast i8* %3339 to double*
  %3343 = load double, double* %3342, align 1
  %3344 = inttoptr i64 %3338 to double*
  store double %3343, double* %3344
  store %struct.Memory* %loadMem_402725, %struct.Memory** %MEMORY
  %loadMem_40272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 15
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3351, i64 0, i64 0
  %YMM0.i247 = bitcast %union.VectorReg* %3352 to %"class.std::bitset"*
  %3353 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %3354 = load i64, i64* %RBP.i246
  %3355 = sub i64 %3354, 72
  %3356 = load i64, i64* %PC.i245
  %3357 = add i64 %3356, 5
  store i64 %3357, i64* %PC.i245
  %3358 = inttoptr i64 %3355 to double*
  %3359 = load double, double* %3358
  %3360 = bitcast i8* %3353 to double*
  store double %3359, double* %3360, align 1
  %3361 = getelementptr inbounds i8, i8* %3353, i64 8
  %3362 = bitcast i8* %3361 to double*
  store double 0.000000e+00, double* %3362, align 1
  store %struct.Memory* %loadMem_40272a, %struct.Memory** %MEMORY
  %loadMem_40272f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 15
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3369, i64 0, i64 0
  %YMM0.i244 = bitcast %union.VectorReg* %3370 to %"class.std::bitset"*
  %3371 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %3372 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %3373 = load i64, i64* %RBP.i243
  %3374 = sub i64 %3373, 112
  %3375 = load i64, i64* %PC.i242
  %3376 = add i64 %3375, 5
  store i64 %3376, i64* %PC.i242
  %3377 = bitcast i8* %3372 to double*
  %3378 = load double, double* %3377, align 1
  %3379 = getelementptr inbounds i8, i8* %3372, i64 8
  %3380 = bitcast i8* %3379 to i64*
  %3381 = load i64, i64* %3380, align 1
  %3382 = inttoptr i64 %3374 to double*
  %3383 = load double, double* %3382
  %3384 = fadd double %3378, %3383
  %3385 = bitcast i8* %3371 to double*
  store double %3384, double* %3385, align 1
  %3386 = getelementptr inbounds i8, i8* %3371, i64 8
  %3387 = bitcast i8* %3386 to i64*
  store i64 %3381, i64* %3387, align 1
  store %struct.Memory* %loadMem_40272f, %struct.Memory** %MEMORY
  %loadMem_402734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 15
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RBP.i241
  %3398 = sub i64 %3397, 16
  %3399 = load i64, i64* %PC.i239
  %3400 = add i64 %3399, 4
  store i64 %3400, i64* %PC.i239
  %3401 = inttoptr i64 %3398 to i64*
  %3402 = load i64, i64* %3401
  store i64 %3402, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_402734, %struct.Memory** %MEMORY
  %loadMem_402738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 7
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 15
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %RBP.i238
  %3413 = sub i64 %3412, 40
  %3414 = load i64, i64* %PC.i236
  %3415 = add i64 %3414, 4
  store i64 %3415, i64* %PC.i236
  %3416 = inttoptr i64 %3413 to i32*
  %3417 = load i32, i32* %3416
  %3418 = sext i32 %3417 to i64
  store i64 %3418, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_402738, %struct.Memory** %MEMORY
  %loadMem_40273c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 1
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 7
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RDX.i234 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3428, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %3429 to %union.vec128_t*
  %3430 = load i64, i64* %RAX.i233
  %3431 = load i64, i64* %RDX.i234
  %3432 = mul i64 %3431, 8
  %3433 = add i64 %3432, %3430
  %3434 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %3435 = load i64, i64* %PC.i232
  %3436 = add i64 %3435, 5
  store i64 %3436, i64* %PC.i232
  %3437 = bitcast i8* %3434 to double*
  %3438 = load double, double* %3437, align 1
  %3439 = inttoptr i64 %3433 to double*
  store double %3438, double* %3439
  store %struct.Memory* %loadMem_40273c, %struct.Memory** %MEMORY
  %loadMem_402741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 15
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3446, i64 0, i64 0
  %YMM0.i231 = bitcast %union.VectorReg* %3447 to %"class.std::bitset"*
  %3448 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %3449 = load i64, i64* %RBP.i230
  %3450 = sub i64 %3449, 80
  %3451 = load i64, i64* %PC.i229
  %3452 = add i64 %3451, 5
  store i64 %3452, i64* %PC.i229
  %3453 = inttoptr i64 %3450 to double*
  %3454 = load double, double* %3453
  %3455 = bitcast i8* %3448 to double*
  store double %3454, double* %3455, align 1
  %3456 = getelementptr inbounds i8, i8* %3448, i64 8
  %3457 = bitcast i8* %3456 to double*
  store double 0.000000e+00, double* %3457, align 1
  store %struct.Memory* %loadMem_402741, %struct.Memory** %MEMORY
  %loadMem_402746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 15
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3464, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %3465 to %"class.std::bitset"*
  %3466 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %3467 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %3468 = load i64, i64* %RBP.i227
  %3469 = sub i64 %3468, 104
  %3470 = load i64, i64* %PC.i226
  %3471 = add i64 %3470, 5
  store i64 %3471, i64* %PC.i226
  %3472 = bitcast i8* %3467 to double*
  %3473 = load double, double* %3472, align 1
  %3474 = getelementptr inbounds i8, i8* %3467, i64 8
  %3475 = bitcast i8* %3474 to i64*
  %3476 = load i64, i64* %3475, align 1
  %3477 = inttoptr i64 %3469 to double*
  %3478 = load double, double* %3477
  %3479 = fadd double %3473, %3478
  %3480 = bitcast i8* %3466 to double*
  store double %3479, double* %3480, align 1
  %3481 = getelementptr inbounds i8, i8* %3466, i64 8
  %3482 = bitcast i8* %3481 to i64*
  store i64 %3476, i64* %3482, align 1
  store %struct.Memory* %loadMem_402746, %struct.Memory** %MEMORY
  %loadMem_40274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 1
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RBP.i225
  %3493 = sub i64 %3492, 16
  %3494 = load i64, i64* %PC.i223
  %3495 = add i64 %3494, 4
  store i64 %3495, i64* %PC.i223
  %3496 = inttoptr i64 %3493 to i64*
  %3497 = load i64, i64* %3496
  store i64 %3497, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_40274b, %struct.Memory** %MEMORY
  %loadMem_40274f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 5
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 15
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RBP.i222
  %3508 = sub i64 %3507, 40
  %3509 = load i64, i64* %PC.i220
  %3510 = add i64 %3509, 3
  store i64 %3510, i64* %PC.i220
  %3511 = inttoptr i64 %3508 to i32*
  %3512 = load i32, i32* %3511
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_40274f, %struct.Memory** %MEMORY
  %loadMem_402752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 5
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RCX.i219
  %3521 = load i64, i64* %PC.i218
  %3522 = add i64 %3521, 3
  store i64 %3522, i64* %PC.i218
  %3523 = trunc i64 %3520 to i32
  %3524 = add i32 1, %3523
  %3525 = zext i32 %3524 to i64
  store i64 %3525, i64* %RCX.i219, align 8
  %3526 = icmp ult i32 %3524, %3523
  %3527 = icmp ult i32 %3524, 1
  %3528 = or i1 %3526, %3527
  %3529 = zext i1 %3528 to i8
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3529, i8* %3530, align 1
  %3531 = and i32 %3524, 255
  %3532 = call i32 @llvm.ctpop.i32(i32 %3531)
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = xor i8 %3534, 1
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3535, i8* %3536, align 1
  %3537 = xor i64 1, %3520
  %3538 = trunc i64 %3537 to i32
  %3539 = xor i32 %3538, %3524
  %3540 = lshr i32 %3539, 4
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3542, i8* %3543, align 1
  %3544 = icmp eq i32 %3524, 0
  %3545 = zext i1 %3544 to i8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3545, i8* %3546, align 1
  %3547 = lshr i32 %3524, 31
  %3548 = trunc i32 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3548, i8* %3549, align 1
  %3550 = lshr i32 %3523, 31
  %3551 = xor i32 %3547, %3550
  %3552 = add i32 %3551, %3547
  %3553 = icmp eq i32 %3552, 2
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3554, i8* %3555, align 1
  store %struct.Memory* %loadMem_402752, %struct.Memory** %MEMORY
  %loadMem_402755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 5
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %ECX.i216 = bitcast %union.anon* %3561 to i32*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 7
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %3564 to i64*
  %3565 = load i32, i32* %ECX.i216
  %3566 = zext i32 %3565 to i64
  %3567 = load i64, i64* %PC.i215
  %3568 = add i64 %3567, 3
  store i64 %3568, i64* %PC.i215
  %3569 = shl i64 %3566, 32
  %3570 = ashr exact i64 %3569, 32
  store i64 %3570, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_402755, %struct.Memory** %MEMORY
  %loadMem_402758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 1
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 7
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3580, i64 0, i64 0
  %XMM0.i214 = bitcast %union.VectorReg* %3581 to %union.vec128_t*
  %3582 = load i64, i64* %RAX.i212
  %3583 = load i64, i64* %RDX.i213
  %3584 = mul i64 %3583, 8
  %3585 = add i64 %3584, %3582
  %3586 = bitcast %union.vec128_t* %XMM0.i214 to i8*
  %3587 = load i64, i64* %PC.i211
  %3588 = add i64 %3587, 5
  store i64 %3588, i64* %PC.i211
  %3589 = bitcast i8* %3586 to double*
  %3590 = load double, double* %3589, align 1
  %3591 = inttoptr i64 %3585 to double*
  store double %3590, double* %3591
  store %struct.Memory* %loadMem_402758, %struct.Memory** %MEMORY
  %loadMem_40275d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 1
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 15
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %RBP.i210
  %3602 = sub i64 %3601, 28
  %3603 = load i64, i64* %PC.i208
  %3604 = add i64 %3603, 3
  store i64 %3604, i64* %PC.i208
  %3605 = inttoptr i64 %3602 to i32*
  %3606 = load i32, i32* %3605
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_40275d, %struct.Memory** %MEMORY
  %loadMem_402760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 1
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %RAX.i207
  %3615 = load i64, i64* %PC.i206
  %3616 = add i64 %3615, 3
  store i64 %3616, i64* %PC.i206
  %3617 = trunc i64 %3614 to i32
  %3618 = add i32 2, %3617
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %RAX.i207, align 8
  %3620 = icmp ult i32 %3618, %3617
  %3621 = icmp ult i32 %3618, 2
  %3622 = or i1 %3620, %3621
  %3623 = zext i1 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3623, i8* %3624, align 1
  %3625 = and i32 %3618, 255
  %3626 = call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3629, i8* %3630, align 1
  %3631 = xor i64 2, %3614
  %3632 = trunc i64 %3631 to i32
  %3633 = xor i32 %3632, %3618
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3636, i8* %3637, align 1
  %3638 = icmp eq i32 %3618, 0
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3639, i8* %3640, align 1
  %3641 = lshr i32 %3618, 31
  %3642 = trunc i32 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3642, i8* %3643, align 1
  %3644 = lshr i32 %3617, 31
  %3645 = xor i32 %3641, %3644
  %3646 = add i32 %3645, %3641
  %3647 = icmp eq i32 %3646, 2
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3648, i8* %3649, align 1
  store %struct.Memory* %loadMem_402760, %struct.Memory** %MEMORY
  %loadMem_402763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 1
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %3655 to i32*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 15
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RBP.i205
  %3660 = sub i64 %3659, 28
  %3661 = load i32, i32* %EAX.i204
  %3662 = zext i32 %3661 to i64
  %3663 = load i64, i64* %PC.i203
  %3664 = add i64 %3663, 3
  store i64 %3664, i64* %PC.i203
  %3665 = inttoptr i64 %3660 to i32*
  store i32 %3661, i32* %3665
  store %struct.Memory* %loadMem_402763, %struct.Memory** %MEMORY
  %loadMem_402766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %PC.i202
  %3670 = add i64 %3669, -576
  %3671 = load i64, i64* %PC.i202
  %3672 = add i64 %3671, 5
  store i64 %3672, i64* %PC.i202
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3670, i64* %3673, align 8
  store %struct.Memory* %loadMem_402766, %struct.Memory** %MEMORY
  br label %block_.L_402526

block_.L_40276b:                                  ; preds = %block_.L_402526
  %loadMem_40276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %PC.i201
  %3678 = add i64 %3677, 286
  %3679 = load i64, i64* %PC.i201
  %3680 = add i64 %3679, 5
  store i64 %3680, i64* %PC.i201
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3678, i64* %3681, align 8
  store %struct.Memory* %loadMem_40276b, %struct.Memory** %MEMORY
  br label %block_.L_402889

block_.L_402770:                                  ; preds = %block_.L_402510
  %loadMem_402770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i200
  %3689 = sub i64 %3688, 28
  %3690 = load i64, i64* %PC.i199
  %3691 = add i64 %3690, 7
  store i64 %3691, i64* %PC.i199
  %3692 = inttoptr i64 %3689 to i32*
  store i32 0, i32* %3692
  store %struct.Memory* %loadMem_402770, %struct.Memory** %MEMORY
  br label %block_.L_402777

block_.L_402777:                                  ; preds = %block_402783, %block_.L_402770
  %loadMem_402777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 1
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 15
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %RBP.i198
  %3703 = sub i64 %3702, 28
  %3704 = load i64, i64* %PC.i196
  %3705 = add i64 %3704, 3
  store i64 %3705, i64* %PC.i196
  %3706 = inttoptr i64 %3703 to i32*
  %3707 = load i32, i32* %3706
  %3708 = zext i32 %3707 to i64
  store i64 %3708, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_402777, %struct.Memory** %MEMORY
  %loadMem_40277a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %3714 to i32*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3717 to i64*
  %3718 = load i32, i32* %EAX.i194
  %3719 = zext i32 %3718 to i64
  %3720 = load i64, i64* %RBP.i195
  %3721 = sub i64 %3720, 44
  %3722 = load i64, i64* %PC.i193
  %3723 = add i64 %3722, 3
  store i64 %3723, i64* %PC.i193
  %3724 = inttoptr i64 %3721 to i32*
  %3725 = load i32, i32* %3724
  %3726 = sub i32 %3718, %3725
  %3727 = icmp ult i32 %3718, %3725
  %3728 = zext i1 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3728, i8* %3729, align 1
  %3730 = and i32 %3726, 255
  %3731 = call i32 @llvm.ctpop.i32(i32 %3730)
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  %3734 = xor i8 %3733, 1
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3734, i8* %3735, align 1
  %3736 = xor i32 %3725, %3718
  %3737 = xor i32 %3736, %3726
  %3738 = lshr i32 %3737, 4
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3740, i8* %3741, align 1
  %3742 = icmp eq i32 %3726, 0
  %3743 = zext i1 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3743, i8* %3744, align 1
  %3745 = lshr i32 %3726, 31
  %3746 = trunc i32 %3745 to i8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3746, i8* %3747, align 1
  %3748 = lshr i32 %3718, 31
  %3749 = lshr i32 %3725, 31
  %3750 = xor i32 %3749, %3748
  %3751 = xor i32 %3745, %3748
  %3752 = add i32 %3751, %3750
  %3753 = icmp eq i32 %3752, 2
  %3754 = zext i1 %3753 to i8
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3754, i8* %3755, align 1
  store %struct.Memory* %loadMem_40277a, %struct.Memory** %MEMORY
  %loadMem_40277d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %PC.i192
  %3760 = add i64 %3759, 263
  %3761 = load i64, i64* %PC.i192
  %3762 = add i64 %3761, 6
  %3763 = load i64, i64* %PC.i192
  %3764 = add i64 %3763, 6
  store i64 %3764, i64* %PC.i192
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3766 = load i8, i8* %3765, align 1
  %3767 = icmp ne i8 %3766, 0
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3769 = load i8, i8* %3768, align 1
  %3770 = icmp ne i8 %3769, 0
  %3771 = xor i1 %3767, %3770
  %3772 = xor i1 %3771, true
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %BRANCH_TAKEN, align 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3775 = select i1 %3771, i64 %3762, i64 %3760
  store i64 %3775, i64* %3774, align 8
  store %struct.Memory* %loadMem_40277d, %struct.Memory** %MEMORY
  %loadBr_40277d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40277d = icmp eq i8 %loadBr_40277d, 1
  br i1 %cmpBr_40277d, label %block_.L_402884, label %block_402783

block_402783:                                     ; preds = %block_.L_402777
  %loadMem_402783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 1
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %PC.i190
  %3783 = add i64 %3782, 10
  store i64 %3783, i64* %PC.i190
  store i64 -9223372036854775808, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_402783, %struct.Memory** %MEMORY
  %loadMem_40278d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 5
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %RBP.i189
  %3794 = sub i64 %3793, 28
  %3795 = load i64, i64* %PC.i187
  %3796 = add i64 %3795, 3
  store i64 %3796, i64* %PC.i187
  %3797 = inttoptr i64 %3794 to i32*
  %3798 = load i32, i32* %3797
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_40278d, %struct.Memory** %MEMORY
  %loadMem_402790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 5
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RCX.i185
  %3810 = load i64, i64* %RBP.i186
  %3811 = sub i64 %3810, 44
  %3812 = load i64, i64* %PC.i184
  %3813 = add i64 %3812, 3
  store i64 %3813, i64* %PC.i184
  %3814 = trunc i64 %3809 to i32
  %3815 = inttoptr i64 %3811 to i32*
  %3816 = load i32, i32* %3815
  %3817 = add i32 %3816, %3814
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RCX.i185, align 8
  %3819 = icmp ult i32 %3817, %3814
  %3820 = icmp ult i32 %3817, %3816
  %3821 = or i1 %3819, %3820
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3822, i8* %3823, align 1
  %3824 = and i32 %3817, 255
  %3825 = call i32 @llvm.ctpop.i32(i32 %3824)
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = xor i8 %3827, 1
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3828, i8* %3829, align 1
  %3830 = xor i32 %3816, %3814
  %3831 = xor i32 %3830, %3817
  %3832 = lshr i32 %3831, 4
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3834, i8* %3835, align 1
  %3836 = icmp eq i32 %3817, 0
  %3837 = zext i1 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3837, i8* %3838, align 1
  %3839 = lshr i32 %3817, 31
  %3840 = trunc i32 %3839 to i8
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3840, i8* %3841, align 1
  %3842 = lshr i32 %3814, 31
  %3843 = lshr i32 %3816, 31
  %3844 = xor i32 %3839, %3842
  %3845 = xor i32 %3839, %3843
  %3846 = add i32 %3844, %3845
  %3847 = icmp eq i32 %3846, 2
  %3848 = zext i1 %3847 to i8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3848, i8* %3849, align 1
  store %struct.Memory* %loadMem_402790, %struct.Memory** %MEMORY
  %loadMem_402793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 5
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %ECX.i182 = bitcast %union.anon* %3855 to i32*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 15
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3858 to i64*
  %3859 = load i64, i64* %RBP.i183
  %3860 = sub i64 %3859, 32
  %3861 = load i32, i32* %ECX.i182
  %3862 = zext i32 %3861 to i64
  %3863 = load i64, i64* %PC.i181
  %3864 = add i64 %3863, 3
  store i64 %3864, i64* %PC.i181
  %3865 = inttoptr i64 %3860 to i32*
  store i32 %3861, i32* %3865
  store %struct.Memory* %loadMem_402793, %struct.Memory** %MEMORY
  %loadMem_402796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 7
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %3871 to i64*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 15
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RBP.i180
  %3876 = sub i64 %3875, 16
  %3877 = load i64, i64* %PC.i178
  %3878 = add i64 %3877, 4
  store i64 %3878, i64* %PC.i178
  %3879 = inttoptr i64 %3876 to i64*
  %3880 = load i64, i64* %3879
  store i64 %3880, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_402796, %struct.Memory** %MEMORY
  %loadMem_40279a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 9
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RSI.i176 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 15
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RBP.i177
  %3891 = sub i64 %3890, 28
  %3892 = load i64, i64* %PC.i175
  %3893 = add i64 %3892, 4
  store i64 %3893, i64* %PC.i175
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894
  %3896 = sext i32 %3895 to i64
  store i64 %3896, i64* %RSI.i176, align 8
  store %struct.Memory* %loadMem_40279a, %struct.Memory** %MEMORY
  %loadMem_40279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 7
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 9
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3906, i64 0, i64 0
  %YMM0.i174 = bitcast %union.VectorReg* %3907 to %"class.std::bitset"*
  %3908 = bitcast %"class.std::bitset"* %YMM0.i174 to i8*
  %3909 = load i64, i64* %RDX.i172
  %3910 = load i64, i64* %RSI.i173
  %3911 = mul i64 %3910, 8
  %3912 = add i64 %3911, %3909
  %3913 = load i64, i64* %PC.i171
  %3914 = add i64 %3913, 5
  store i64 %3914, i64* %PC.i171
  %3915 = inttoptr i64 %3912 to double*
  %3916 = load double, double* %3915
  %3917 = bitcast i8* %3908 to double*
  store double %3916, double* %3917, align 1
  %3918 = getelementptr inbounds i8, i8* %3908, i64 8
  %3919 = bitcast i8* %3918 to double*
  store double 0.000000e+00, double* %3919, align 1
  store %struct.Memory* %loadMem_40279e, %struct.Memory** %MEMORY
  %loadMem_4027a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 7
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 15
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RBP.i170
  %3930 = sub i64 %3929, 16
  %3931 = load i64, i64* %PC.i168
  %3932 = add i64 %3931, 4
  store i64 %3932, i64* %PC.i168
  %3933 = inttoptr i64 %3930 to i64*
  %3934 = load i64, i64* %3933
  store i64 %3934, i64* %RDX.i169, align 8
  store %struct.Memory* %loadMem_4027a3, %struct.Memory** %MEMORY
  %loadMem_4027a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 9
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RSI.i166 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i167
  %3945 = sub i64 %3944, 32
  %3946 = load i64, i64* %PC.i165
  %3947 = add i64 %3946, 4
  store i64 %3947, i64* %PC.i165
  %3948 = inttoptr i64 %3945 to i32*
  %3949 = load i32, i32* %3948
  %3950 = sext i32 %3949 to i64
  store i64 %3950, i64* %RSI.i166, align 8
  store %struct.Memory* %loadMem_4027a7, %struct.Memory** %MEMORY
  %loadMem_4027ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 7
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 9
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RSI.i163 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3960, i64 0, i64 0
  %YMM0.i164 = bitcast %union.VectorReg* %3961 to %"class.std::bitset"*
  %3962 = bitcast %"class.std::bitset"* %YMM0.i164 to i8*
  %3963 = bitcast %"class.std::bitset"* %YMM0.i164 to i8*
  %3964 = load i64, i64* %RDX.i162
  %3965 = load i64, i64* %RSI.i163
  %3966 = mul i64 %3965, 8
  %3967 = add i64 %3966, %3964
  %3968 = load i64, i64* %PC.i161
  %3969 = add i64 %3968, 5
  store i64 %3969, i64* %PC.i161
  %3970 = bitcast i8* %3963 to double*
  %3971 = load double, double* %3970, align 1
  %3972 = getelementptr inbounds i8, i8* %3963, i64 8
  %3973 = bitcast i8* %3972 to i64*
  %3974 = load i64, i64* %3973, align 1
  %3975 = inttoptr i64 %3967 to double*
  %3976 = load double, double* %3975
  %3977 = fsub double %3971, %3976
  %3978 = bitcast i8* %3962 to double*
  store double %3977, double* %3978, align 1
  %3979 = getelementptr inbounds i8, i8* %3962, i64 8
  %3980 = bitcast i8* %3979 to i64*
  store i64 %3974, i64* %3980, align 1
  store %struct.Memory* %loadMem_4027ab, %struct.Memory** %MEMORY
  %loadMem_4027b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 15
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3988 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3987, i64 0, i64 0
  %XMM0.i160 = bitcast %union.VectorReg* %3988 to %union.vec128_t*
  %3989 = load i64, i64* %RBP.i159
  %3990 = sub i64 %3989, 56
  %3991 = bitcast %union.vec128_t* %XMM0.i160 to i8*
  %3992 = load i64, i64* %PC.i158
  %3993 = add i64 %3992, 5
  store i64 %3993, i64* %PC.i158
  %3994 = bitcast i8* %3991 to double*
  %3995 = load double, double* %3994, align 1
  %3996 = inttoptr i64 %3990 to double*
  store double %3995, double* %3996
  store %struct.Memory* %loadMem_4027b0, %struct.Memory** %MEMORY
  %loadMem_4027b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 7
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 15
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RBP.i157
  %4007 = sub i64 %4006, 16
  %4008 = load i64, i64* %PC.i155
  %4009 = add i64 %4008, 4
  store i64 %4009, i64* %PC.i155
  %4010 = inttoptr i64 %4007 to i64*
  %4011 = load i64, i64* %4010
  store i64 %4011, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_4027b5, %struct.Memory** %MEMORY
  %loadMem_4027b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 5
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i154
  %4022 = sub i64 %4021, 28
  %4023 = load i64, i64* %PC.i152
  %4024 = add i64 %4023, 3
  store i64 %4024, i64* %PC.i152
  %4025 = inttoptr i64 %4022 to i32*
  %4026 = load i32, i32* %4025
  %4027 = zext i32 %4026 to i64
  store i64 %4027, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4027b9, %struct.Memory** %MEMORY
  %loadMem_4027bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 5
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %RCX.i151
  %4035 = load i64, i64* %PC.i150
  %4036 = add i64 %4035, 3
  store i64 %4036, i64* %PC.i150
  %4037 = trunc i64 %4034 to i32
  %4038 = add i32 1, %4037
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RCX.i151, align 8
  %4040 = icmp ult i32 %4038, %4037
  %4041 = icmp ult i32 %4038, 1
  %4042 = or i1 %4040, %4041
  %4043 = zext i1 %4042 to i8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4043, i8* %4044, align 1
  %4045 = and i32 %4038, 255
  %4046 = call i32 @llvm.ctpop.i32(i32 %4045)
  %4047 = trunc i32 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = xor i8 %4048, 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4049, i8* %4050, align 1
  %4051 = xor i64 1, %4034
  %4052 = trunc i64 %4051 to i32
  %4053 = xor i32 %4052, %4038
  %4054 = lshr i32 %4053, 4
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4056, i8* %4057, align 1
  %4058 = icmp eq i32 %4038, 0
  %4059 = zext i1 %4058 to i8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4059, i8* %4060, align 1
  %4061 = lshr i32 %4038, 31
  %4062 = trunc i32 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4062, i8* %4063, align 1
  %4064 = lshr i32 %4037, 31
  %4065 = xor i32 %4061, %4064
  %4066 = add i32 %4065, %4061
  %4067 = icmp eq i32 %4066, 2
  %4068 = zext i1 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4068, i8* %4069, align 1
  store %struct.Memory* %loadMem_4027bc, %struct.Memory** %MEMORY
  %loadMem_4027bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 5
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %ECX.i148 = bitcast %union.anon* %4075 to i32*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 9
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RSI.i149 = bitcast %union.anon* %4078 to i64*
  %4079 = load i32, i32* %ECX.i148
  %4080 = zext i32 %4079 to i64
  %4081 = load i64, i64* %PC.i147
  %4082 = add i64 %4081, 3
  store i64 %4082, i64* %PC.i147
  %4083 = shl i64 %4080, 32
  %4084 = ashr exact i64 %4083, 32
  store i64 %4084, i64* %RSI.i149, align 8
  store %struct.Memory* %loadMem_4027bf, %struct.Memory** %MEMORY
  %loadMem_4027c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 33
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4087 to i64*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 7
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 9
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4094, i64 0, i64 0
  %YMM0.i146 = bitcast %union.VectorReg* %4095 to %"class.std::bitset"*
  %4096 = bitcast %"class.std::bitset"* %YMM0.i146 to i8*
  %4097 = load i64, i64* %RDX.i144
  %4098 = load i64, i64* %RSI.i145
  %4099 = mul i64 %4098, 8
  %4100 = add i64 %4099, %4097
  %4101 = load i64, i64* %PC.i143
  %4102 = add i64 %4101, 5
  store i64 %4102, i64* %PC.i143
  %4103 = inttoptr i64 %4100 to double*
  %4104 = load double, double* %4103
  %4105 = bitcast i8* %4096 to double*
  store double %4104, double* %4105, align 1
  %4106 = getelementptr inbounds i8, i8* %4096, i64 8
  %4107 = bitcast i8* %4106 to double*
  store double 0.000000e+00, double* %4107, align 1
  store %struct.Memory* %loadMem_4027c2, %struct.Memory** %MEMORY
  %loadMem_4027c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 33
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 7
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4114, i64 0, i64 0
  %XMM0.i142 = bitcast %union.VectorReg* %4115 to %union.vec128_t*
  %4116 = bitcast %union.vec128_t* %XMM0.i142 to i8*
  %4117 = load i64, i64* %PC.i140
  %4118 = add i64 %4117, 5
  store i64 %4118, i64* %PC.i140
  %4119 = bitcast i8* %4116 to i64*
  %4120 = load i64, i64* %4119, align 1
  store i64 %4120, i64* %RDX.i141, align 1
  store %struct.Memory* %loadMem_4027c7, %struct.Memory** %MEMORY
  %loadMem_4027cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 1
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %4126 to i64*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 7
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %4129 to i64*
  %4130 = load i64, i64* %RDX.i139
  %4131 = load i64, i64* %RAX.i138
  %4132 = load i64, i64* %PC.i137
  %4133 = add i64 %4132, 3
  store i64 %4133, i64* %PC.i137
  %4134 = xor i64 %4131, %4130
  store i64 %4134, i64* %RDX.i139, align 8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4135, align 1
  %4136 = trunc i64 %4134 to i32
  %4137 = and i32 %4136, 255
  %4138 = call i32 @llvm.ctpop.i32(i32 %4137)
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = xor i8 %4140, 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4141, i8* %4142, align 1
  %4143 = icmp eq i64 %4134, 0
  %4144 = zext i1 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4144, i8* %4145, align 1
  %4146 = lshr i64 %4134, 63
  %4147 = trunc i64 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4147, i8* %4148, align 1
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4149, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4150, align 1
  store %struct.Memory* %loadMem_4027cc, %struct.Memory** %MEMORY
  %loadMem_4027cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 33
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 7
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4157, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %4158 to %"class.std::bitset"*
  %4159 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %4160 = load i64, i64* %RDX.i135
  %4161 = load i64, i64* %PC.i134
  %4162 = add i64 %4161, 5
  store i64 %4162, i64* %PC.i134
  %4163 = bitcast i8* %4159 to i64*
  store i64 %4160, i64* %4163, align 1
  %4164 = getelementptr inbounds i8, i8* %4159, i64 8
  %4165 = bitcast i8* %4164 to i64*
  store i64 0, i64* %4165, align 1
  store %struct.Memory* %loadMem_4027cf, %struct.Memory** %MEMORY
  %loadMem_4027d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 33
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 7
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 15
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4174 to i64*
  %4175 = load i64, i64* %RBP.i133
  %4176 = sub i64 %4175, 16
  %4177 = load i64, i64* %PC.i131
  %4178 = add i64 %4177, 4
  store i64 %4178, i64* %PC.i131
  %4179 = inttoptr i64 %4176 to i64*
  %4180 = load i64, i64* %4179
  store i64 %4180, i64* %RDX.i132, align 8
  store %struct.Memory* %loadMem_4027d4, %struct.Memory** %MEMORY
  %loadMem_4027d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 5
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 15
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4189 to i64*
  %4190 = load i64, i64* %RBP.i130
  %4191 = sub i64 %4190, 32
  %4192 = load i64, i64* %PC.i128
  %4193 = add i64 %4192, 3
  store i64 %4193, i64* %PC.i128
  %4194 = inttoptr i64 %4191 to i32*
  %4195 = load i32, i32* %4194
  %4196 = zext i32 %4195 to i64
  store i64 %4196, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_4027d8, %struct.Memory** %MEMORY
  %loadMem_4027db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 33
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 5
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RCX.i127
  %4204 = load i64, i64* %PC.i126
  %4205 = add i64 %4204, 3
  store i64 %4205, i64* %PC.i126
  %4206 = trunc i64 %4203 to i32
  %4207 = add i32 1, %4206
  %4208 = zext i32 %4207 to i64
  store i64 %4208, i64* %RCX.i127, align 8
  %4209 = icmp ult i32 %4207, %4206
  %4210 = icmp ult i32 %4207, 1
  %4211 = or i1 %4209, %4210
  %4212 = zext i1 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4212, i8* %4213, align 1
  %4214 = and i32 %4207, 255
  %4215 = call i32 @llvm.ctpop.i32(i32 %4214)
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = xor i8 %4217, 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4218, i8* %4219, align 1
  %4220 = xor i64 1, %4203
  %4221 = trunc i64 %4220 to i32
  %4222 = xor i32 %4221, %4207
  %4223 = lshr i32 %4222, 4
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4225, i8* %4226, align 1
  %4227 = icmp eq i32 %4207, 0
  %4228 = zext i1 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4228, i8* %4229, align 1
  %4230 = lshr i32 %4207, 31
  %4231 = trunc i32 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4231, i8* %4232, align 1
  %4233 = lshr i32 %4206, 31
  %4234 = xor i32 %4230, %4233
  %4235 = add i32 %4234, %4230
  %4236 = icmp eq i32 %4235, 2
  %4237 = zext i1 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4237, i8* %4238, align 1
  store %struct.Memory* %loadMem_4027db, %struct.Memory** %MEMORY
  %loadMem_4027de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 33
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 5
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %4244 to i32*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 9
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %4247 to i64*
  %4248 = load i32, i32* %ECX.i124
  %4249 = zext i32 %4248 to i64
  %4250 = load i64, i64* %PC.i123
  %4251 = add i64 %4250, 3
  store i64 %4251, i64* %PC.i123
  %4252 = shl i64 %4249, 32
  %4253 = ashr exact i64 %4252, 32
  store i64 %4253, i64* %RSI.i125, align 8
  store %struct.Memory* %loadMem_4027de, %struct.Memory** %MEMORY
  %loadMem_4027e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 7
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 9
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4263, i64 0, i64 0
  %YMM0.i122 = bitcast %union.VectorReg* %4264 to %"class.std::bitset"*
  %4265 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %4266 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %4267 = load i64, i64* %RDX.i120
  %4268 = load i64, i64* %RSI.i121
  %4269 = mul i64 %4268, 8
  %4270 = add i64 %4269, %4267
  %4271 = load i64, i64* %PC.i119
  %4272 = add i64 %4271, 5
  store i64 %4272, i64* %PC.i119
  %4273 = bitcast i8* %4266 to double*
  %4274 = load double, double* %4273, align 1
  %4275 = getelementptr inbounds i8, i8* %4266, i64 8
  %4276 = bitcast i8* %4275 to i64*
  %4277 = load i64, i64* %4276, align 1
  %4278 = inttoptr i64 %4270 to double*
  %4279 = load double, double* %4278
  %4280 = fadd double %4274, %4279
  %4281 = bitcast i8* %4265 to double*
  store double %4280, double* %4281, align 1
  %4282 = getelementptr inbounds i8, i8* %4265, i64 8
  %4283 = bitcast i8* %4282 to i64*
  store i64 %4277, i64* %4283, align 1
  store %struct.Memory* %loadMem_4027e1, %struct.Memory** %MEMORY
  %loadMem_4027e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4289 to i64*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4290, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %4291 to %union.vec128_t*
  %4292 = load i64, i64* %RBP.i117
  %4293 = sub i64 %4292, 64
  %4294 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %4295 = load i64, i64* %PC.i116
  %4296 = add i64 %4295, 5
  store i64 %4296, i64* %PC.i116
  %4297 = bitcast i8* %4294 to double*
  %4298 = load double, double* %4297, align 1
  %4299 = inttoptr i64 %4293 to double*
  store double %4298, double* %4299
  store %struct.Memory* %loadMem_4027e6, %struct.Memory** %MEMORY
  %loadMem_4027eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 7
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 15
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %RBP.i115
  %4310 = sub i64 %4309, 16
  %4311 = load i64, i64* %PC.i113
  %4312 = add i64 %4311, 4
  store i64 %4312, i64* %PC.i113
  %4313 = inttoptr i64 %4310 to i64*
  %4314 = load i64, i64* %4313
  store i64 %4314, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_4027eb, %struct.Memory** %MEMORY
  %loadMem_4027ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 33
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 9
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 15
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4323 to i64*
  %4324 = load i64, i64* %RBP.i112
  %4325 = sub i64 %4324, 32
  %4326 = load i64, i64* %PC.i110
  %4327 = add i64 %4326, 4
  store i64 %4327, i64* %PC.i110
  %4328 = inttoptr i64 %4325 to i32*
  %4329 = load i32, i32* %4328
  %4330 = sext i32 %4329 to i64
  store i64 %4330, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_4027ef, %struct.Memory** %MEMORY
  %loadMem_4027f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 7
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 9
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4340, i64 0, i64 0
  %YMM0.i109 = bitcast %union.VectorReg* %4341 to %"class.std::bitset"*
  %4342 = bitcast %"class.std::bitset"* %YMM0.i109 to i8*
  %4343 = load i64, i64* %RDX.i107
  %4344 = load i64, i64* %RSI.i108
  %4345 = mul i64 %4344, 8
  %4346 = add i64 %4345, %4343
  %4347 = load i64, i64* %PC.i106
  %4348 = add i64 %4347, 5
  store i64 %4348, i64* %PC.i106
  %4349 = inttoptr i64 %4346 to double*
  %4350 = load double, double* %4349
  %4351 = bitcast i8* %4342 to double*
  store double %4350, double* %4351, align 1
  %4352 = getelementptr inbounds i8, i8* %4342, i64 8
  %4353 = bitcast i8* %4352 to double*
  store double 0.000000e+00, double* %4353, align 1
  store %struct.Memory* %loadMem_4027f3, %struct.Memory** %MEMORY
  %loadMem_4027f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 7
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i105
  %4364 = sub i64 %4363, 16
  %4365 = load i64, i64* %PC.i103
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i103
  %4367 = inttoptr i64 %4364 to i64*
  %4368 = load i64, i64* %4367
  store i64 %4368, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_4027f8, %struct.Memory** %MEMORY
  %loadMem_4027fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 9
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 15
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RBP.i102
  %4379 = sub i64 %4378, 28
  %4380 = load i64, i64* %PC.i100
  %4381 = add i64 %4380, 4
  store i64 %4381, i64* %PC.i100
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = sext i32 %4383 to i64
  store i64 %4384, i64* %RSI.i101, align 8
  store %struct.Memory* %loadMem_4027fc, %struct.Memory** %MEMORY
  %loadMem_402800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 7
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 9
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RSI.i98 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4395 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4394, i64 0, i64 0
  %YMM0.i99 = bitcast %union.VectorReg* %4395 to %"class.std::bitset"*
  %4396 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4397 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4398 = load i64, i64* %RDX.i97
  %4399 = load i64, i64* %RSI.i98
  %4400 = mul i64 %4399, 8
  %4401 = add i64 %4400, %4398
  %4402 = load i64, i64* %PC.i96
  %4403 = add i64 %4402, 5
  store i64 %4403, i64* %PC.i96
  %4404 = bitcast i8* %4397 to double*
  %4405 = load double, double* %4404, align 1
  %4406 = getelementptr inbounds i8, i8* %4397, i64 8
  %4407 = bitcast i8* %4406 to i64*
  %4408 = load i64, i64* %4407, align 1
  %4409 = inttoptr i64 %4401 to double*
  %4410 = load double, double* %4409
  %4411 = fadd double %4405, %4410
  %4412 = bitcast i8* %4396 to double*
  store double %4411, double* %4412, align 1
  %4413 = getelementptr inbounds i8, i8* %4396, i64 8
  %4414 = bitcast i8* %4413 to i64*
  store i64 %4408, i64* %4414, align 1
  store %struct.Memory* %loadMem_402800, %struct.Memory** %MEMORY
  %loadMem_402805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 33
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 7
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 9
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RSI.i94 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4424, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %4425 to %union.vec128_t*
  %4426 = load i64, i64* %RDX.i93
  %4427 = load i64, i64* %RSI.i94
  %4428 = mul i64 %4427, 8
  %4429 = add i64 %4428, %4426
  %4430 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %4431 = load i64, i64* %PC.i92
  %4432 = add i64 %4431, 5
  store i64 %4432, i64* %PC.i92
  %4433 = bitcast i8* %4430 to double*
  %4434 = load double, double* %4433, align 1
  %4435 = inttoptr i64 %4429 to double*
  store double %4434, double* %4435
  store %struct.Memory* %loadMem_402805, %struct.Memory** %MEMORY
  %loadMem_40280a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 7
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i91
  %4446 = sub i64 %4445, 16
  %4447 = load i64, i64* %PC.i89
  %4448 = add i64 %4447, 4
  store i64 %4448, i64* %PC.i89
  %4449 = inttoptr i64 %4446 to i64*
  %4450 = load i64, i64* %4449
  store i64 %4450, i64* %RDX.i90, align 8
  store %struct.Memory* %loadMem_40280a, %struct.Memory** %MEMORY
  %loadMem_40280e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 5
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 15
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4459 to i64*
  %4460 = load i64, i64* %RBP.i88
  %4461 = sub i64 %4460, 28
  %4462 = load i64, i64* %PC.i86
  %4463 = add i64 %4462, 3
  store i64 %4463, i64* %PC.i86
  %4464 = inttoptr i64 %4461 to i32*
  %4465 = load i32, i32* %4464
  %4466 = zext i32 %4465 to i64
  store i64 %4466, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_40280e, %struct.Memory** %MEMORY
  %loadMem_402811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 5
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RCX.i85
  %4474 = load i64, i64* %PC.i84
  %4475 = add i64 %4474, 3
  store i64 %4475, i64* %PC.i84
  %4476 = trunc i64 %4473 to i32
  %4477 = add i32 1, %4476
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RCX.i85, align 8
  %4479 = icmp ult i32 %4477, %4476
  %4480 = icmp ult i32 %4477, 1
  %4481 = or i1 %4479, %4480
  %4482 = zext i1 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4482, i8* %4483, align 1
  %4484 = and i32 %4477, 255
  %4485 = call i32 @llvm.ctpop.i32(i32 %4484)
  %4486 = trunc i32 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = xor i8 %4487, 1
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4488, i8* %4489, align 1
  %4490 = xor i64 1, %4473
  %4491 = trunc i64 %4490 to i32
  %4492 = xor i32 %4491, %4477
  %4493 = lshr i32 %4492, 4
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4495, i8* %4496, align 1
  %4497 = icmp eq i32 %4477, 0
  %4498 = zext i1 %4497 to i8
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4498, i8* %4499, align 1
  %4500 = lshr i32 %4477, 31
  %4501 = trunc i32 %4500 to i8
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4501, i8* %4502, align 1
  %4503 = lshr i32 %4476, 31
  %4504 = xor i32 %4500, %4503
  %4505 = add i32 %4504, %4500
  %4506 = icmp eq i32 %4505, 2
  %4507 = zext i1 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4507, i8* %4508, align 1
  store %struct.Memory* %loadMem_402811, %struct.Memory** %MEMORY
  %loadMem_402814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 5
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %4514 to i32*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 9
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %4517 to i64*
  %4518 = load i32, i32* %ECX.i82
  %4519 = zext i32 %4518 to i64
  %4520 = load i64, i64* %PC.i81
  %4521 = add i64 %4520, 3
  store i64 %4521, i64* %PC.i81
  %4522 = shl i64 %4519, 32
  %4523 = ashr exact i64 %4522, 32
  store i64 %4523, i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_402814, %struct.Memory** %MEMORY
  %loadMem_402817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 7
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 9
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4533, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %4534 to %"class.std::bitset"*
  %4535 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %4536 = load i64, i64* %RDX.i79
  %4537 = load i64, i64* %RSI.i
  %4538 = mul i64 %4537, 8
  %4539 = add i64 %4538, %4536
  %4540 = load i64, i64* %PC.i78
  %4541 = add i64 %4540, 5
  store i64 %4541, i64* %PC.i78
  %4542 = inttoptr i64 %4539 to double*
  %4543 = load double, double* %4542
  %4544 = bitcast i8* %4535 to double*
  store double %4543, double* %4544, align 1
  %4545 = getelementptr inbounds i8, i8* %4535, i64 8
  %4546 = bitcast i8* %4545 to double*
  store double 0.000000e+00, double* %4546, align 1
  store %struct.Memory* %loadMem_402817, %struct.Memory** %MEMORY
  %loadMem_40281c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 33
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 7
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4553, i64 0, i64 0
  %XMM0.i77 = bitcast %union.VectorReg* %4554 to %union.vec128_t*
  %4555 = bitcast %union.vec128_t* %XMM0.i77 to i8*
  %4556 = load i64, i64* %PC.i75
  %4557 = add i64 %4556, 5
  store i64 %4557, i64* %PC.i75
  %4558 = bitcast i8* %4555 to i64*
  %4559 = load i64, i64* %4558, align 1
  store i64 %4559, i64* %RDX.i76, align 1
  store %struct.Memory* %loadMem_40281c, %struct.Memory** %MEMORY
  %loadMem_402821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 1
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 7
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %4568 to i64*
  %4569 = load i64, i64* %RDX.i74
  %4570 = load i64, i64* %RAX.i73
  %4571 = load i64, i64* %PC.i72
  %4572 = add i64 %4571, 3
  store i64 %4572, i64* %PC.i72
  %4573 = xor i64 %4570, %4569
  store i64 %4573, i64* %RDX.i74, align 8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4574, align 1
  %4575 = trunc i64 %4573 to i32
  %4576 = and i32 %4575, 255
  %4577 = call i32 @llvm.ctpop.i32(i32 %4576)
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = xor i8 %4579, 1
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4580, i8* %4581, align 1
  %4582 = icmp eq i64 %4573, 0
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4583, i8* %4584, align 1
  %4585 = lshr i64 %4573, 63
  %4586 = trunc i64 %4585 to i8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4586, i8* %4587, align 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4588, align 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4589, align 1
  store %struct.Memory* %loadMem_402821, %struct.Memory** %MEMORY
  %loadMem_402824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 7
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %4595 to i64*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4596, i64 0, i64 0
  %YMM0.i71 = bitcast %union.VectorReg* %4597 to %"class.std::bitset"*
  %4598 = bitcast %"class.std::bitset"* %YMM0.i71 to i8*
  %4599 = load i64, i64* %RDX.i70
  %4600 = load i64, i64* %PC.i69
  %4601 = add i64 %4600, 5
  store i64 %4601, i64* %PC.i69
  %4602 = bitcast i8* %4598 to i64*
  store i64 %4599, i64* %4602, align 1
  %4603 = getelementptr inbounds i8, i8* %4598, i64 8
  %4604 = bitcast i8* %4603 to i64*
  store i64 0, i64* %4604, align 1
  store %struct.Memory* %loadMem_402824, %struct.Memory** %MEMORY
  %loadMem_402829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i68
  %4615 = sub i64 %4614, 16
  %4616 = load i64, i64* %PC.i66
  %4617 = add i64 %4616, 4
  store i64 %4617, i64* %PC.i66
  %4618 = inttoptr i64 %4615 to i64*
  %4619 = load i64, i64* %4618
  store i64 %4619, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_402829, %struct.Memory** %MEMORY
  %loadMem_40282d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 15
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RBP.i65
  %4630 = sub i64 %4629, 32
  %4631 = load i64, i64* %PC.i63
  %4632 = add i64 %4631, 3
  store i64 %4632, i64* %PC.i63
  %4633 = inttoptr i64 %4630 to i32*
  %4634 = load i32, i32* %4633
  %4635 = zext i32 %4634 to i64
  store i64 %4635, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_40282d, %struct.Memory** %MEMORY
  %loadMem_402830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 33
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 5
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %4641 to i64*
  %4642 = load i64, i64* %RCX.i62
  %4643 = load i64, i64* %PC.i61
  %4644 = add i64 %4643, 3
  store i64 %4644, i64* %PC.i61
  %4645 = trunc i64 %4642 to i32
  %4646 = add i32 1, %4645
  %4647 = zext i32 %4646 to i64
  store i64 %4647, i64* %RCX.i62, align 8
  %4648 = icmp ult i32 %4646, %4645
  %4649 = icmp ult i32 %4646, 1
  %4650 = or i1 %4648, %4649
  %4651 = zext i1 %4650 to i8
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4651, i8* %4652, align 1
  %4653 = and i32 %4646, 255
  %4654 = call i32 @llvm.ctpop.i32(i32 %4653)
  %4655 = trunc i32 %4654 to i8
  %4656 = and i8 %4655, 1
  %4657 = xor i8 %4656, 1
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4657, i8* %4658, align 1
  %4659 = xor i64 1, %4642
  %4660 = trunc i64 %4659 to i32
  %4661 = xor i32 %4660, %4646
  %4662 = lshr i32 %4661, 4
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4664, i8* %4665, align 1
  %4666 = icmp eq i32 %4646, 0
  %4667 = zext i1 %4666 to i8
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4667, i8* %4668, align 1
  %4669 = lshr i32 %4646, 31
  %4670 = trunc i32 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4670, i8* %4671, align 1
  %4672 = lshr i32 %4645, 31
  %4673 = xor i32 %4669, %4672
  %4674 = add i32 %4673, %4669
  %4675 = icmp eq i32 %4674, 2
  %4676 = zext i1 %4675 to i8
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4676, i8* %4677, align 1
  store %struct.Memory* %loadMem_402830, %struct.Memory** %MEMORY
  %loadMem_402833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 5
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %ECX.i59 = bitcast %union.anon* %4683 to i32*
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 7
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %4686 to i64*
  %4687 = load i32, i32* %ECX.i59
  %4688 = zext i32 %4687 to i64
  %4689 = load i64, i64* %PC.i58
  %4690 = add i64 %4689, 3
  store i64 %4690, i64* %PC.i58
  %4691 = shl i64 %4688, 32
  %4692 = ashr exact i64 %4691, 32
  store i64 %4692, i64* %RDX.i60, align 8
  store %struct.Memory* %loadMem_402833, %struct.Memory** %MEMORY
  %loadMem_402836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 1
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 7
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4702, i64 0, i64 0
  %YMM0.i57 = bitcast %union.VectorReg* %4703 to %"class.std::bitset"*
  %4704 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %4705 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %4706 = load i64, i64* %RAX.i55
  %4707 = load i64, i64* %RDX.i56
  %4708 = mul i64 %4707, 8
  %4709 = add i64 %4708, %4706
  %4710 = load i64, i64* %PC.i54
  %4711 = add i64 %4710, 5
  store i64 %4711, i64* %PC.i54
  %4712 = bitcast i8* %4705 to double*
  %4713 = load double, double* %4712, align 1
  %4714 = getelementptr inbounds i8, i8* %4705, i64 8
  %4715 = bitcast i8* %4714 to i64*
  %4716 = load i64, i64* %4715, align 1
  %4717 = inttoptr i64 %4709 to double*
  %4718 = load double, double* %4717
  %4719 = fsub double %4713, %4718
  %4720 = bitcast i8* %4704 to double*
  store double %4719, double* %4720, align 1
  %4721 = getelementptr inbounds i8, i8* %4704, i64 8
  %4722 = bitcast i8* %4721 to i64*
  store i64 %4716, i64* %4722, align 1
  store %struct.Memory* %loadMem_402836, %struct.Memory** %MEMORY
  %loadMem_40283b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 33
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4725 to i64*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 1
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 15
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %4731 to i64*
  %4732 = load i64, i64* %RBP.i53
  %4733 = sub i64 %4732, 16
  %4734 = load i64, i64* %PC.i51
  %4735 = add i64 %4734, 4
  store i64 %4735, i64* %PC.i51
  %4736 = inttoptr i64 %4733 to i64*
  %4737 = load i64, i64* %4736
  store i64 %4737, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_40283b, %struct.Memory** %MEMORY
  %loadMem_40283f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 5
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 15
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %4746 to i64*
  %4747 = load i64, i64* %RBP.i50
  %4748 = sub i64 %4747, 28
  %4749 = load i64, i64* %PC.i48
  %4750 = add i64 %4749, 3
  store i64 %4750, i64* %PC.i48
  %4751 = inttoptr i64 %4748 to i32*
  %4752 = load i32, i32* %4751
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_40283f, %struct.Memory** %MEMORY
  %loadMem_402842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 5
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RCX.i47
  %4761 = load i64, i64* %PC.i46
  %4762 = add i64 %4761, 3
  store i64 %4762, i64* %PC.i46
  %4763 = trunc i64 %4760 to i32
  %4764 = add i32 1, %4763
  %4765 = zext i32 %4764 to i64
  store i64 %4765, i64* %RCX.i47, align 8
  %4766 = icmp ult i32 %4764, %4763
  %4767 = icmp ult i32 %4764, 1
  %4768 = or i1 %4766, %4767
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4769, i8* %4770, align 1
  %4771 = and i32 %4764, 255
  %4772 = call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4775, i8* %4776, align 1
  %4777 = xor i64 1, %4760
  %4778 = trunc i64 %4777 to i32
  %4779 = xor i32 %4778, %4764
  %4780 = lshr i32 %4779, 4
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4782, i8* %4783, align 1
  %4784 = icmp eq i32 %4764, 0
  %4785 = zext i1 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4785, i8* %4786, align 1
  %4787 = lshr i32 %4764, 31
  %4788 = trunc i32 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4788, i8* %4789, align 1
  %4790 = lshr i32 %4763, 31
  %4791 = xor i32 %4787, %4790
  %4792 = add i32 %4791, %4787
  %4793 = icmp eq i32 %4792, 2
  %4794 = zext i1 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4794, i8* %4795, align 1
  store %struct.Memory* %loadMem_402842, %struct.Memory** %MEMORY
  %loadMem_402845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 5
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %ECX.i44 = bitcast %union.anon* %4801 to i32*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 7
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %4804 to i64*
  %4805 = load i32, i32* %ECX.i44
  %4806 = zext i32 %4805 to i64
  %4807 = load i64, i64* %PC.i43
  %4808 = add i64 %4807, 3
  store i64 %4808, i64* %PC.i43
  %4809 = shl i64 %4806, 32
  %4810 = ashr exact i64 %4809, 32
  store i64 %4810, i64* %RDX.i45, align 8
  store %struct.Memory* %loadMem_402845, %struct.Memory** %MEMORY
  %loadMem_402848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 7
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %4819 to i64*
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4821 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4820, i64 0, i64 0
  %XMM0.i42 = bitcast %union.VectorReg* %4821 to %union.vec128_t*
  %4822 = load i64, i64* %RAX.i40
  %4823 = load i64, i64* %RDX.i41
  %4824 = mul i64 %4823, 8
  %4825 = add i64 %4824, %4822
  %4826 = bitcast %union.vec128_t* %XMM0.i42 to i8*
  %4827 = load i64, i64* %PC.i39
  %4828 = add i64 %4827, 5
  store i64 %4828, i64* %PC.i39
  %4829 = bitcast i8* %4826 to double*
  %4830 = load double, double* %4829, align 1
  %4831 = inttoptr i64 %4825 to double*
  store double %4830, double* %4831
  store %struct.Memory* %loadMem_402848, %struct.Memory** %MEMORY
  %loadMem_40284d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 33
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4834 to i64*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 15
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4839 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4838, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %4839 to %"class.std::bitset"*
  %4840 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %4841 = load i64, i64* %RBP.i37
  %4842 = sub i64 %4841, 56
  %4843 = load i64, i64* %PC.i36
  %4844 = add i64 %4843, 5
  store i64 %4844, i64* %PC.i36
  %4845 = inttoptr i64 %4842 to double*
  %4846 = load double, double* %4845
  %4847 = bitcast i8* %4840 to double*
  store double %4846, double* %4847, align 1
  %4848 = getelementptr inbounds i8, i8* %4840, i64 8
  %4849 = bitcast i8* %4848 to double*
  store double 0.000000e+00, double* %4849, align 1
  store %struct.Memory* %loadMem_40284d, %struct.Memory** %MEMORY
  %loadMem_402852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 1
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 15
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RBP.i35
  %4860 = sub i64 %4859, 16
  %4861 = load i64, i64* %PC.i33
  %4862 = add i64 %4861, 4
  store i64 %4862, i64* %PC.i33
  %4863 = inttoptr i64 %4860 to i64*
  %4864 = load i64, i64* %4863
  store i64 %4864, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_402852, %struct.Memory** %MEMORY
  %loadMem_402856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 7
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 15
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %RBP.i32
  %4875 = sub i64 %4874, 32
  %4876 = load i64, i64* %PC.i30
  %4877 = add i64 %4876, 4
  store i64 %4877, i64* %PC.i30
  %4878 = inttoptr i64 %4875 to i32*
  %4879 = load i32, i32* %4878
  %4880 = sext i32 %4879 to i64
  store i64 %4880, i64* %RDX.i31, align 8
  store %struct.Memory* %loadMem_402856, %struct.Memory** %MEMORY
  %loadMem_40285a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 33
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 1
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 7
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4890, i64 0, i64 0
  %XMM0.i29 = bitcast %union.VectorReg* %4891 to %union.vec128_t*
  %4892 = load i64, i64* %RAX.i27
  %4893 = load i64, i64* %RDX.i28
  %4894 = mul i64 %4893, 8
  %4895 = add i64 %4894, %4892
  %4896 = bitcast %union.vec128_t* %XMM0.i29 to i8*
  %4897 = load i64, i64* %PC.i26
  %4898 = add i64 %4897, 5
  store i64 %4898, i64* %PC.i26
  %4899 = bitcast i8* %4896 to double*
  %4900 = load double, double* %4899, align 1
  %4901 = inttoptr i64 %4895 to double*
  store double %4900, double* %4901
  store %struct.Memory* %loadMem_40285a, %struct.Memory** %MEMORY
  %loadMem_40285f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 33
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4904 to i64*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 15
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4908, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4909 to %"class.std::bitset"*
  %4910 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4911 = load i64, i64* %RBP.i25
  %4912 = sub i64 %4911, 64
  %4913 = load i64, i64* %PC.i24
  %4914 = add i64 %4913, 5
  store i64 %4914, i64* %PC.i24
  %4915 = inttoptr i64 %4912 to double*
  %4916 = load double, double* %4915
  %4917 = bitcast i8* %4910 to double*
  store double %4916, double* %4917, align 1
  %4918 = getelementptr inbounds i8, i8* %4910, i64 8
  %4919 = bitcast i8* %4918 to double*
  store double 0.000000e+00, double* %4919, align 1
  store %struct.Memory* %loadMem_40285f, %struct.Memory** %MEMORY
  %loadMem_402864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 1
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 15
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RBP.i23
  %4930 = sub i64 %4929, 16
  %4931 = load i64, i64* %PC.i21
  %4932 = add i64 %4931, 4
  store i64 %4932, i64* %PC.i21
  %4933 = inttoptr i64 %4930 to i64*
  %4934 = load i64, i64* %4933
  store i64 %4934, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_402864, %struct.Memory** %MEMORY
  %loadMem_402868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 5
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %4940 to i64*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 15
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4943 to i64*
  %4944 = load i64, i64* %RBP.i20
  %4945 = sub i64 %4944, 32
  %4946 = load i64, i64* %PC.i18
  %4947 = add i64 %4946, 3
  store i64 %4947, i64* %PC.i18
  %4948 = inttoptr i64 %4945 to i32*
  %4949 = load i32, i32* %4948
  %4950 = zext i32 %4949 to i64
  store i64 %4950, i64* %RCX.i19, align 8
  store %struct.Memory* %loadMem_402868, %struct.Memory** %MEMORY
  %loadMem_40286b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 5
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RCX.i
  %4958 = load i64, i64* %PC.i17
  %4959 = add i64 %4958, 3
  store i64 %4959, i64* %PC.i17
  %4960 = trunc i64 %4957 to i32
  %4961 = add i32 1, %4960
  %4962 = zext i32 %4961 to i64
  store i64 %4962, i64* %RCX.i, align 8
  %4963 = icmp ult i32 %4961, %4960
  %4964 = icmp ult i32 %4961, 1
  %4965 = or i1 %4963, %4964
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4966, i8* %4967, align 1
  %4968 = and i32 %4961, 255
  %4969 = call i32 @llvm.ctpop.i32(i32 %4968)
  %4970 = trunc i32 %4969 to i8
  %4971 = and i8 %4970, 1
  %4972 = xor i8 %4971, 1
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4972, i8* %4973, align 1
  %4974 = xor i64 1, %4957
  %4975 = trunc i64 %4974 to i32
  %4976 = xor i32 %4975, %4961
  %4977 = lshr i32 %4976, 4
  %4978 = trunc i32 %4977 to i8
  %4979 = and i8 %4978, 1
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4979, i8* %4980, align 1
  %4981 = icmp eq i32 %4961, 0
  %4982 = zext i1 %4981 to i8
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4982, i8* %4983, align 1
  %4984 = lshr i32 %4961, 31
  %4985 = trunc i32 %4984 to i8
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4985, i8* %4986, align 1
  %4987 = lshr i32 %4960, 31
  %4988 = xor i32 %4984, %4987
  %4989 = add i32 %4988, %4984
  %4990 = icmp eq i32 %4989, 2
  %4991 = zext i1 %4990 to i8
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4991, i8* %4992, align 1
  store %struct.Memory* %loadMem_40286b, %struct.Memory** %MEMORY
  %loadMem_40286e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 5
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4998 to i32*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 7
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %5001 to i64*
  %5002 = load i32, i32* %ECX.i
  %5003 = zext i32 %5002 to i64
  %5004 = load i64, i64* %PC.i15
  %5005 = add i64 %5004, 3
  store i64 %5005, i64* %PC.i15
  %5006 = shl i64 %5003, 32
  %5007 = ashr exact i64 %5006, 32
  store i64 %5007, i64* %RDX.i16, align 8
  store %struct.Memory* %loadMem_40286e, %struct.Memory** %MEMORY
  %loadMem_402871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 1
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 7
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5017, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5018 to %union.vec128_t*
  %5019 = load i64, i64* %RAX.i14
  %5020 = load i64, i64* %RDX.i
  %5021 = mul i64 %5020, 8
  %5022 = add i64 %5021, %5019
  %5023 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5024 = load i64, i64* %PC.i13
  %5025 = add i64 %5024, 5
  store i64 %5025, i64* %PC.i13
  %5026 = bitcast i8* %5023 to double*
  %5027 = load double, double* %5026, align 1
  %5028 = inttoptr i64 %5022 to double*
  store double %5027, double* %5028
  store %struct.Memory* %loadMem_402871, %struct.Memory** %MEMORY
  %loadMem_402876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 1
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 15
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %RBP.i12
  %5039 = sub i64 %5038, 28
  %5040 = load i64, i64* %PC.i10
  %5041 = add i64 %5040, 3
  store i64 %5041, i64* %PC.i10
  %5042 = inttoptr i64 %5039 to i32*
  %5043 = load i32, i32* %5042
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_402876, %struct.Memory** %MEMORY
  %loadMem_402879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 1
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %RAX.i
  %5052 = load i64, i64* %PC.i9
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC.i9
  %5054 = trunc i64 %5051 to i32
  %5055 = add i32 2, %5054
  %5056 = zext i32 %5055 to i64
  store i64 %5056, i64* %RAX.i, align 8
  %5057 = icmp ult i32 %5055, %5054
  %5058 = icmp ult i32 %5055, 2
  %5059 = or i1 %5057, %5058
  %5060 = zext i1 %5059 to i8
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5060, i8* %5061, align 1
  %5062 = and i32 %5055, 255
  %5063 = call i32 @llvm.ctpop.i32(i32 %5062)
  %5064 = trunc i32 %5063 to i8
  %5065 = and i8 %5064, 1
  %5066 = xor i8 %5065, 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5066, i8* %5067, align 1
  %5068 = xor i64 2, %5051
  %5069 = trunc i64 %5068 to i32
  %5070 = xor i32 %5069, %5055
  %5071 = lshr i32 %5070, 4
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5073, i8* %5074, align 1
  %5075 = icmp eq i32 %5055, 0
  %5076 = zext i1 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5076, i8* %5077, align 1
  %5078 = lshr i32 %5055, 31
  %5079 = trunc i32 %5078 to i8
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5079, i8* %5080, align 1
  %5081 = lshr i32 %5054, 31
  %5082 = xor i32 %5078, %5081
  %5083 = add i32 %5082, %5078
  %5084 = icmp eq i32 %5083, 2
  %5085 = zext i1 %5084 to i8
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5085, i8* %5086, align 1
  store %struct.Memory* %loadMem_402879, %struct.Memory** %MEMORY
  %loadMem_40287c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5092 to i32*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 15
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RBP.i8
  %5097 = sub i64 %5096, 28
  %5098 = load i32, i32* %EAX.i
  %5099 = zext i32 %5098 to i64
  %5100 = load i64, i64* %PC.i7
  %5101 = add i64 %5100, 3
  store i64 %5101, i64* %PC.i7
  %5102 = inttoptr i64 %5097 to i32*
  store i32 %5098, i32* %5102
  store %struct.Memory* %loadMem_40287c, %struct.Memory** %MEMORY
  %loadMem_40287f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %PC.i6
  %5107 = add i64 %5106, -264
  %5108 = load i64, i64* %PC.i6
  %5109 = add i64 %5108, 5
  store i64 %5109, i64* %PC.i6
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5107, i64* %5110, align 8
  store %struct.Memory* %loadMem_40287f, %struct.Memory** %MEMORY
  br label %block_.L_402777

block_.L_402884:                                  ; preds = %block_.L_402777
  %loadMem_402884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5113 to i64*
  %5114 = load i64, i64* %PC.i5
  %5115 = add i64 %5114, 5
  %5116 = load i64, i64* %PC.i5
  %5117 = add i64 %5116, 5
  store i64 %5117, i64* %PC.i5
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5115, i64* %5118, align 8
  store %struct.Memory* %loadMem_402884, %struct.Memory** %MEMORY
  br label %block_.L_402889

block_.L_402889:                                  ; preds = %block_.L_402884, %block_.L_40276b
  %loadMem_402889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 33
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 13
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %RSP.i
  %5126 = load i64, i64* %PC.i4
  %5127 = add i64 %5126, 4
  store i64 %5127, i64* %PC.i4
  %5128 = add i64 112, %5125
  store i64 %5128, i64* %RSP.i, align 8
  %5129 = icmp ult i64 %5128, %5125
  %5130 = icmp ult i64 %5128, 112
  %5131 = or i1 %5129, %5130
  %5132 = zext i1 %5131 to i8
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5132, i8* %5133, align 1
  %5134 = trunc i64 %5128 to i32
  %5135 = and i32 %5134, 255
  %5136 = call i32 @llvm.ctpop.i32(i32 %5135)
  %5137 = trunc i32 %5136 to i8
  %5138 = and i8 %5137, 1
  %5139 = xor i8 %5138, 1
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5139, i8* %5140, align 1
  %5141 = xor i64 112, %5125
  %5142 = xor i64 %5141, %5128
  %5143 = lshr i64 %5142, 4
  %5144 = trunc i64 %5143 to i8
  %5145 = and i8 %5144, 1
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5145, i8* %5146, align 1
  %5147 = icmp eq i64 %5128, 0
  %5148 = zext i1 %5147 to i8
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5148, i8* %5149, align 1
  %5150 = lshr i64 %5128, 63
  %5151 = trunc i64 %5150 to i8
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5151, i8* %5152, align 1
  %5153 = lshr i64 %5125, 63
  %5154 = xor i64 %5150, %5153
  %5155 = add i64 %5154, %5150
  %5156 = icmp eq i64 %5155, 2
  %5157 = zext i1 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5157, i8* %5158, align 1
  store %struct.Memory* %loadMem_402889, %struct.Memory** %MEMORY
  %loadMem_40288d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 33
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5161 to i64*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 15
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %PC.i2
  %5166 = add i64 %5165, 1
  store i64 %5166, i64* %PC.i2
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5168 = load i64, i64* %5167, align 8
  %5169 = add i64 %5168, 8
  %5170 = inttoptr i64 %5168 to i64*
  %5171 = load i64, i64* %5170
  store i64 %5171, i64* %RBP.i3, align 8
  store i64 %5169, i64* %5167, align 8
  store %struct.Memory* %loadMem_40288d, %struct.Memory** %MEMORY
  %loadMem_40288e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 33
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %PC.i1
  %5176 = add i64 %5175, 1
  store i64 %5176, i64* %PC.i1
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5179 = load i64, i64* %5178, align 8
  %5180 = inttoptr i64 %5179 to i64*
  %5181 = load i64, i64* %5180
  store i64 %5181, i64* %5177, align 8
  %5182 = add i64 %5179, 8
  store i64 %5182, i64* %5178, align 8
  store %struct.Memory* %loadMem_40288e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40288e
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_402510(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cft1st(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x8__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 8, i32* %13
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

define %struct.Memory* @routine_shll__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_40250b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.cftmdl(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shll__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4024db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402510(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_402770(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_40276b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
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

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RDX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RDX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
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

define %struct.Memory* @routine_addsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_jmpq_.L_402526(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402889(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_402884(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402777(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
