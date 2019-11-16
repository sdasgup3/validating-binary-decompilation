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
%G_0x2c20c__rip__type = type <{ [8 x i8] }>
%G_0x2c2a6__rip__type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x2c20c__rip_ = global %G_0x2c20c__rip__type zeroinitializer
@G_0x2c2a6__rip_ = global %G_0x2c2a6__rip__type zeroinitializer

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

declare %struct.Memory* @sub_444ca0.Gammln(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Logp_cvec(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_428480 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_428480, %struct.Memory** %MEMORY
  %loadMem_428481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i239 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i239
  %27 = load i64, i64* %PC.i238
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i238
  store i64 %26, i64* %RBP.i240, align 8
  store %struct.Memory* %loadMem_428481, %struct.Memory** %MEMORY
  %loadMem_428484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i237 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i237
  %36 = load i64, i64* %PC.i236
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i236
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i237, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_428484, %struct.Memory** %MEMORY
  %loadMem_428488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %77 = load i64, i64* %PC.i233
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i233
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_428488, %struct.Memory** %MEMORY
  %loadMem_42848b = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i232
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI.i
  %116 = load i64, i64* %PC.i231
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i231
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_42848b, %struct.Memory** %MEMORY
  %loadMem_42848f = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %124 to i32*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i230
  %129 = sub i64 %128, 12
  %130 = load i32, i32* %ESI.i
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC.i229
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC.i229
  %134 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %134
  store %struct.Memory* %loadMem_42848f, %struct.Memory** %MEMORY
  %loadMem_428492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i228
  %145 = sub i64 %144, 24
  %146 = load i64, i64* %RDX.i
  %147 = load i64, i64* %PC.i227
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i227
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149
  store %struct.Memory* %loadMem_428492, %struct.Memory** %MEMORY
  %loadMem_428496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 15
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %156, i64 0, i64 0
  %XMM0.i226 = bitcast %union.VectorReg* %157 to %union.vec128_t*
  %158 = load i64, i64* %RBP.i225
  %159 = sub i64 %158, 28
  %160 = bitcast %union.vec128_t* %XMM0.i226 to i8*
  %161 = load i64, i64* %PC.i224
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC.i224
  %163 = bitcast i8* %160 to <2 x float>*
  %164 = load <2 x float>, <2 x float>* %163, align 1
  %165 = extractelement <2 x float> %164, i32 0
  %166 = inttoptr i64 %159 to float*
  store float %165, float* %166
  store %struct.Memory* %loadMem_428496, %struct.Memory** %MEMORY
  %loadMem_42849b = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %173, i64 0, i64 0
  %XMM0.i223 = bitcast %union.VectorReg* %174 to %union.vec128_t*
  %175 = load i64, i64* %RBP.i222
  %176 = sub i64 %175, 40
  %177 = bitcast %union.vec128_t* %XMM0.i223 to i8*
  %178 = load i64, i64* %PC.i221
  %179 = add i64 %178, 5
  store i64 %179, i64* %PC.i221
  %180 = bitcast i8* %177 to <2 x float>*
  %181 = load <2 x float>, <2 x float>* %180, align 1
  %182 = extractelement <2 x float> %181, i32 0
  %183 = inttoptr i64 %176 to float*
  store float %182, float* %183
  store %struct.Memory* %loadMem_42849b, %struct.Memory** %MEMORY
  %loadMem_4284a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %190, i64 0, i64 0
  %XMM0.i220 = bitcast %union.VectorReg* %191 to %union.vec128_t*
  %192 = load i64, i64* %RBP.i219
  %193 = sub i64 %192, 36
  %194 = bitcast %union.vec128_t* %XMM0.i220 to i8*
  %195 = load i64, i64* %PC.i218
  %196 = add i64 %195, 5
  store i64 %196, i64* %PC.i218
  %197 = bitcast i8* %194 to <2 x float>*
  %198 = load <2 x float>, <2 x float>* %197, align 1
  %199 = extractelement <2 x float> %198, i32 0
  %200 = inttoptr i64 %193 to float*
  store float %199, float* %200
  store %struct.Memory* %loadMem_4284a0, %struct.Memory** %MEMORY
  %loadMem_4284a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %207, i64 0, i64 0
  %XMM0.i217 = bitcast %union.VectorReg* %208 to %union.vec128_t*
  %209 = load i64, i64* %RBP.i216
  %210 = sub i64 %209, 32
  %211 = bitcast %union.vec128_t* %XMM0.i217 to i8*
  %212 = load i64, i64* %PC.i215
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC.i215
  %214 = bitcast i8* %211 to <2 x float>*
  %215 = load <2 x float>, <2 x float>* %214, align 1
  %216 = extractelement <2 x float> %215, i32 0
  %217 = inttoptr i64 %210 to float*
  store float %216, float* %217
  store %struct.Memory* %loadMem_4284a5, %struct.Memory** %MEMORY
  %loadMem_4284aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i214
  %225 = sub i64 %224, 44
  %226 = load i64, i64* %PC.i213
  %227 = add i64 %226, 7
  store i64 %227, i64* %PC.i213
  %228 = inttoptr i64 %225 to i32*
  store i32 0, i32* %228
  store %struct.Memory* %loadMem_4284aa, %struct.Memory** %MEMORY
  br label %block_.L_4284b1

block_.L_4284b1:                                  ; preds = %block_4284bd, %entry
  %loadMem_4284b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 15
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %RBP.i212
  %239 = sub i64 %238, 44
  %240 = load i64, i64* %PC.i210
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i210
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_4284b1, %struct.Memory** %MEMORY
  %loadMem_4284b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %250 to i32*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %253 to i64*
  %254 = load i32, i32* %EAX.i208
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %RBP.i209
  %257 = sub i64 %256, 12
  %258 = load i64, i64* %PC.i207
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i207
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = sub i32 %254, %261
  %263 = icmp ult i32 %254, %261
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %264, i8* %265, align 1
  %266 = and i32 %262, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1
  %272 = xor i32 %261, %254
  %273 = xor i32 %272, %262
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %276, i8* %277, align 1
  %278 = icmp eq i32 %262, 0
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %279, i8* %280, align 1
  %281 = lshr i32 %262, 31
  %282 = trunc i32 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %282, i8* %283, align 1
  %284 = lshr i32 %254, 31
  %285 = lshr i32 %261, 31
  %286 = xor i32 %285, %284
  %287 = xor i32 %281, %284
  %288 = add i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %290, i8* %291, align 1
  store %struct.Memory* %loadMem_4284b4, %struct.Memory** %MEMORY
  %loadMem_4284b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i206
  %296 = add i64 %295, 239
  %297 = load i64, i64* %PC.i206
  %298 = add i64 %297, 6
  %299 = load i64, i64* %PC.i206
  %300 = add i64 %299, 6
  store i64 %300, i64* %PC.i206
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %305 = load i8, i8* %304, align 1
  %306 = icmp ne i8 %305, 0
  %307 = xor i1 %303, %306
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %BRANCH_TAKEN, align 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %311 = select i1 %307, i64 %298, i64 %296
  store i64 %311, i64* %310, align 8
  store %struct.Memory* %loadMem_4284b7, %struct.Memory** %MEMORY
  %loadBr_4284b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4284b7 = icmp eq i8 %loadBr_4284b7, 1
  br i1 %cmpBr_4284b7, label %block_.L_4285a6, label %block_4284bd

block_4284bd:                                     ; preds = %block_.L_4284b1
  %loadMem_4284bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i205
  %322 = sub i64 %321, 8
  %323 = load i64, i64* %PC.i203
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC.i203
  %325 = inttoptr i64 %322 to i64*
  %326 = load i64, i64* %325
  store i64 %326, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4284bd, %struct.Memory** %MEMORY
  %loadMem_4284c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 15
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %RBP.i202
  %337 = sub i64 %336, 44
  %338 = load i64, i64* %PC.i200
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC.i200
  %340 = inttoptr i64 %337 to i32*
  %341 = load i32, i32* %340
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_4284c1, %struct.Memory** %MEMORY
  %loadMem_4284c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 5
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %352, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %353 to %"class.std::bitset"*
  %354 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %355 = load i64, i64* %RAX.i197
  %356 = load i64, i64* %RCX.i198
  %357 = mul i64 %356, 4
  %358 = add i64 %357, %355
  %359 = load i64, i64* %PC.i196
  %360 = add i64 %359, 5
  store i64 %360, i64* %PC.i196
  %361 = inttoptr i64 %358 to float*
  %362 = load float, float* %361
  %363 = bitcast i8* %354 to float*
  store float %362, float* %363, align 1
  %364 = getelementptr inbounds i8, i8* %354, i64 4
  %365 = bitcast i8* %364 to float*
  store float 0.000000e+00, float* %365, align 1
  %366 = getelementptr inbounds i8, i8* %354, i64 8
  %367 = bitcast i8* %366 to float*
  store float 0.000000e+00, float* %367, align 1
  %368 = getelementptr inbounds i8, i8* %354, i64 12
  %369 = bitcast i8* %368 to float*
  store float 0.000000e+00, float* %369, align 1
  store %struct.Memory* %loadMem_4284c5, %struct.Memory** %MEMORY
  %loadMem_4284ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i195
  %380 = sub i64 %379, 24
  %381 = load i64, i64* %PC.i193
  %382 = add i64 %381, 4
  store i64 %382, i64* %PC.i193
  %383 = inttoptr i64 %380 to i64*
  %384 = load i64, i64* %383
  store i64 %384, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_4284ca, %struct.Memory** %MEMORY
  %loadMem_4284ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RBP.i192
  %395 = sub i64 %394, 44
  %396 = load i64, i64* %PC.i190
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i190
  %398 = inttoptr i64 %395 to i32*
  %399 = load i32, i32* %398
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_4284ce, %struct.Memory** %MEMORY
  %loadMem_4284d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 5
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %410, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %411 to %"class.std::bitset"*
  %412 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %413 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %414 = load i64, i64* %RAX.i187
  %415 = load i64, i64* %RCX.i188
  %416 = mul i64 %415, 4
  %417 = add i64 %416, %414
  %418 = load i64, i64* %PC.i186
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC.i186
  %420 = bitcast i8* %413 to <2 x float>*
  %421 = load <2 x float>, <2 x float>* %420, align 1
  %422 = getelementptr inbounds i8, i8* %413, i64 8
  %423 = bitcast i8* %422 to <2 x i32>*
  %424 = load <2 x i32>, <2 x i32>* %423, align 1
  %425 = inttoptr i64 %417 to float*
  %426 = load float, float* %425
  %427 = extractelement <2 x float> %421, i32 0
  %428 = fadd float %427, %426
  %429 = bitcast i8* %412 to float*
  store float %428, float* %429, align 1
  %430 = bitcast <2 x float> %421 to <2 x i32>
  %431 = extractelement <2 x i32> %430, i32 1
  %432 = getelementptr inbounds i8, i8* %412, i64 4
  %433 = bitcast i8* %432 to i32*
  store i32 %431, i32* %433, align 1
  %434 = extractelement <2 x i32> %424, i32 0
  %435 = getelementptr inbounds i8, i8* %412, i64 8
  %436 = bitcast i8* %435 to i32*
  store i32 %434, i32* %436, align 1
  %437 = extractelement <2 x i32> %424, i32 1
  %438 = getelementptr inbounds i8, i8* %412, i64 12
  %439 = bitcast i8* %438 to i32*
  store i32 %437, i32* %439, align 1
  store %struct.Memory* %loadMem_4284d2, %struct.Memory** %MEMORY
  %loadMem_4284d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %446, i64 0, i64 0
  %YMM0.i185 = bitcast %union.VectorReg* %447 to %"class.std::bitset"*
  %448 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %449 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %450 = load i64, i64* %RBP.i184
  %451 = sub i64 %450, 32
  %452 = load i64, i64* %PC.i183
  %453 = add i64 %452, 5
  store i64 %453, i64* %PC.i183
  %454 = bitcast i8* %449 to <2 x float>*
  %455 = load <2 x float>, <2 x float>* %454, align 1
  %456 = getelementptr inbounds i8, i8* %449, i64 8
  %457 = bitcast i8* %456 to <2 x i32>*
  %458 = load <2 x i32>, <2 x i32>* %457, align 1
  %459 = inttoptr i64 %451 to float*
  %460 = load float, float* %459
  %461 = extractelement <2 x float> %455, i32 0
  %462 = fadd float %461, %460
  %463 = bitcast i8* %448 to float*
  store float %462, float* %463, align 1
  %464 = bitcast <2 x float> %455 to <2 x i32>
  %465 = extractelement <2 x i32> %464, i32 1
  %466 = getelementptr inbounds i8, i8* %448, i64 4
  %467 = bitcast i8* %466 to i32*
  store i32 %465, i32* %467, align 1
  %468 = extractelement <2 x i32> %458, i32 0
  %469 = getelementptr inbounds i8, i8* %448, i64 8
  %470 = bitcast i8* %469 to i32*
  store i32 %468, i32* %470, align 1
  %471 = extractelement <2 x i32> %458, i32 1
  %472 = getelementptr inbounds i8, i8* %448, i64 12
  %473 = bitcast i8* %472 to i32*
  store i32 %471, i32* %473, align 1
  store %struct.Memory* %loadMem_4284d7, %struct.Memory** %MEMORY
  %loadMem_4284dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 15
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %480, i64 0, i64 0
  %XMM0.i182 = bitcast %union.VectorReg* %481 to %union.vec128_t*
  %482 = load i64, i64* %RBP.i181
  %483 = sub i64 %482, 32
  %484 = bitcast %union.vec128_t* %XMM0.i182 to i8*
  %485 = load i64, i64* %PC.i180
  %486 = add i64 %485, 5
  store i64 %486, i64* %PC.i180
  %487 = bitcast i8* %484 to <2 x float>*
  %488 = load <2 x float>, <2 x float>* %487, align 1
  %489 = extractelement <2 x float> %488, i32 0
  %490 = inttoptr i64 %483 to float*
  store float %489, float* %490
  store %struct.Memory* %loadMem_4284dc, %struct.Memory** %MEMORY
  %loadMem_4284e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i179
  %501 = sub i64 %500, 24
  %502 = load i64, i64* %PC.i177
  %503 = add i64 %502, 4
  store i64 %503, i64* %PC.i177
  %504 = inttoptr i64 %501 to i64*
  %505 = load i64, i64* %504
  store i64 %505, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_4284e1, %struct.Memory** %MEMORY
  %loadMem_4284e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RBP.i176
  %516 = sub i64 %515, 44
  %517 = load i64, i64* %PC.i174
  %518 = add i64 %517, 4
  store i64 %518, i64* %PC.i174
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_4284e5, %struct.Memory** %MEMORY
  %loadMem_4284e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %531, i64 0, i64 0
  %YMM0.i173 = bitcast %union.VectorReg* %532 to %"class.std::bitset"*
  %533 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %534 = load i64, i64* %RAX.i171
  %535 = load i64, i64* %RCX.i172
  %536 = mul i64 %535, 4
  %537 = add i64 %536, %534
  %538 = load i64, i64* %PC.i170
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC.i170
  %540 = inttoptr i64 %537 to float*
  %541 = load float, float* %540
  %542 = bitcast i8* %533 to float*
  store float %541, float* %542, align 1
  %543 = getelementptr inbounds i8, i8* %533, i64 4
  %544 = bitcast i8* %543 to float*
  store float 0.000000e+00, float* %544, align 1
  %545 = getelementptr inbounds i8, i8* %533, i64 8
  %546 = bitcast i8* %545 to float*
  store float 0.000000e+00, float* %546, align 1
  %547 = getelementptr inbounds i8, i8* %533, i64 12
  %548 = bitcast i8* %547 to float*
  store float 0.000000e+00, float* %548, align 1
  store %struct.Memory* %loadMem_4284e9, %struct.Memory** %MEMORY
  %loadMem_4284ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %555, i64 0, i64 0
  %YMM0.i169 = bitcast %union.VectorReg* %556 to %"class.std::bitset"*
  %557 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %558 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %559 = load i64, i64* %RBP.i168
  %560 = sub i64 %559, 36
  %561 = load i64, i64* %PC.i167
  %562 = add i64 %561, 5
  store i64 %562, i64* %PC.i167
  %563 = bitcast i8* %558 to <2 x float>*
  %564 = load <2 x float>, <2 x float>* %563, align 1
  %565 = getelementptr inbounds i8, i8* %558, i64 8
  %566 = bitcast i8* %565 to <2 x i32>*
  %567 = load <2 x i32>, <2 x i32>* %566, align 1
  %568 = inttoptr i64 %560 to float*
  %569 = load float, float* %568
  %570 = extractelement <2 x float> %564, i32 0
  %571 = fadd float %570, %569
  %572 = bitcast i8* %557 to float*
  store float %571, float* %572, align 1
  %573 = bitcast <2 x float> %564 to <2 x i32>
  %574 = extractelement <2 x i32> %573, i32 1
  %575 = getelementptr inbounds i8, i8* %557, i64 4
  %576 = bitcast i8* %575 to i32*
  store i32 %574, i32* %576, align 1
  %577 = extractelement <2 x i32> %567, i32 0
  %578 = getelementptr inbounds i8, i8* %557, i64 8
  %579 = bitcast i8* %578 to i32*
  store i32 %577, i32* %579, align 1
  %580 = extractelement <2 x i32> %567, i32 1
  %581 = getelementptr inbounds i8, i8* %557, i64 12
  %582 = bitcast i8* %581 to i32*
  store i32 %580, i32* %582, align 1
  store %struct.Memory* %loadMem_4284ee, %struct.Memory** %MEMORY
  %loadMem_4284f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 15
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %589, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %590 to %union.vec128_t*
  %591 = load i64, i64* %RBP.i165
  %592 = sub i64 %591, 36
  %593 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %594 = load i64, i64* %PC.i164
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC.i164
  %596 = bitcast i8* %593 to <2 x float>*
  %597 = load <2 x float>, <2 x float>* %596, align 1
  %598 = extractelement <2 x float> %597, i32 0
  %599 = inttoptr i64 %592 to float*
  store float %598, float* %599
  store %struct.Memory* %loadMem_4284f3, %struct.Memory** %MEMORY
  %loadMem_4284f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i163
  %610 = sub i64 %609, 8
  %611 = load i64, i64* %PC.i161
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i161
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613
  store i64 %614, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_4284f8, %struct.Memory** %MEMORY
  %loadMem_4284fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 5
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 15
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RBP.i160
  %625 = sub i64 %624, 44
  %626 = load i64, i64* %PC.i158
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i158
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628
  %630 = sext i32 %629 to i64
  store i64 %630, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_4284fc, %struct.Memory** %MEMORY
  %loadMem_428500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %640, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %641 to %"class.std::bitset"*
  %642 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %643 = load i64, i64* %RAX.i155
  %644 = load i64, i64* %RCX.i156
  %645 = mul i64 %644, 4
  %646 = add i64 %645, %643
  %647 = load i64, i64* %PC.i154
  %648 = add i64 %647, 5
  store i64 %648, i64* %PC.i154
  %649 = inttoptr i64 %646 to float*
  %650 = load float, float* %649
  %651 = bitcast i8* %642 to float*
  store float %650, float* %651, align 1
  %652 = getelementptr inbounds i8, i8* %642, i64 4
  %653 = bitcast i8* %652 to float*
  store float 0.000000e+00, float* %653, align 1
  %654 = getelementptr inbounds i8, i8* %642, i64 8
  %655 = bitcast i8* %654 to float*
  store float 0.000000e+00, float* %655, align 1
  %656 = getelementptr inbounds i8, i8* %642, i64 12
  %657 = bitcast i8* %656 to float*
  store float 0.000000e+00, float* %657, align 1
  store %struct.Memory* %loadMem_428500, %struct.Memory** %MEMORY
  %loadMem_428505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %664, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %665 to %"class.std::bitset"*
  %666 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %667 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %668 = load i64, i64* %RBP.i152
  %669 = sub i64 %668, 40
  %670 = load i64, i64* %PC.i151
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC.i151
  %672 = bitcast i8* %667 to <2 x float>*
  %673 = load <2 x float>, <2 x float>* %672, align 1
  %674 = getelementptr inbounds i8, i8* %667, i64 8
  %675 = bitcast i8* %674 to <2 x i32>*
  %676 = load <2 x i32>, <2 x i32>* %675, align 1
  %677 = inttoptr i64 %669 to float*
  %678 = load float, float* %677
  %679 = extractelement <2 x float> %673, i32 0
  %680 = fadd float %679, %678
  %681 = bitcast i8* %666 to float*
  store float %680, float* %681, align 1
  %682 = bitcast <2 x float> %673 to <2 x i32>
  %683 = extractelement <2 x i32> %682, i32 1
  %684 = getelementptr inbounds i8, i8* %666, i64 4
  %685 = bitcast i8* %684 to i32*
  store i32 %683, i32* %685, align 1
  %686 = extractelement <2 x i32> %676, i32 0
  %687 = getelementptr inbounds i8, i8* %666, i64 8
  %688 = bitcast i8* %687 to i32*
  store i32 %686, i32* %688, align 1
  %689 = extractelement <2 x i32> %676, i32 1
  %690 = getelementptr inbounds i8, i8* %666, i64 12
  %691 = bitcast i8* %690 to i32*
  store i32 %689, i32* %691, align 1
  store %struct.Memory* %loadMem_428505, %struct.Memory** %MEMORY
  %loadMem_42850a = load %struct.Memory*, %struct.Memory** %MEMORY
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 33
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %694 to i64*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 15
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %699 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %698, i64 0, i64 0
  %XMM0.i150 = bitcast %union.VectorReg* %699 to %union.vec128_t*
  %700 = load i64, i64* %RBP.i149
  %701 = sub i64 %700, 40
  %702 = bitcast %union.vec128_t* %XMM0.i150 to i8*
  %703 = load i64, i64* %PC.i148
  %704 = add i64 %703, 5
  store i64 %704, i64* %PC.i148
  %705 = bitcast i8* %702 to <2 x float>*
  %706 = load <2 x float>, <2 x float>* %705, align 1
  %707 = extractelement <2 x float> %706, i32 0
  %708 = inttoptr i64 %701 to float*
  store float %707, float* %708
  store %struct.Memory* %loadMem_42850a, %struct.Memory** %MEMORY
  %loadMem_42850f = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i147
  %719 = sub i64 %718, 24
  %720 = load i64, i64* %PC.i145
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i145
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_42850f, %struct.Memory** %MEMORY
  %loadMem_428513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 5
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 15
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RBP.i144
  %734 = sub i64 %733, 44
  %735 = load i64, i64* %PC.i142
  %736 = add i64 %735, 4
  store i64 %736, i64* %PC.i142
  %737 = inttoptr i64 %734 to i32*
  %738 = load i32, i32* %737
  %739 = sext i32 %738 to i64
  store i64 %739, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_428513, %struct.Memory** %MEMORY
  %loadMem_428517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 5
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %749, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %750 to %"class.std::bitset"*
  %751 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %752 = load i64, i64* %RAX.i139
  %753 = load i64, i64* %RCX.i140
  %754 = mul i64 %753, 4
  %755 = add i64 %754, %752
  %756 = load i64, i64* %PC.i138
  %757 = add i64 %756, 5
  store i64 %757, i64* %PC.i138
  %758 = inttoptr i64 %755 to float*
  %759 = load float, float* %758
  %760 = bitcast i8* %751 to float*
  store float %759, float* %760, align 1
  %761 = getelementptr inbounds i8, i8* %751, i64 4
  %762 = bitcast i8* %761 to float*
  store float 0.000000e+00, float* %762, align 1
  %763 = getelementptr inbounds i8, i8* %751, i64 8
  %764 = bitcast i8* %763 to float*
  store float 0.000000e+00, float* %764, align 1
  %765 = getelementptr inbounds i8, i8* %751, i64 12
  %766 = bitcast i8* %765 to float*
  store float 0.000000e+00, float* %766, align 1
  store %struct.Memory* %loadMem_428517, %struct.Memory** %MEMORY
  %loadMem_42851c = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 1
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 15
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %RBP.i137
  %777 = sub i64 %776, 8
  %778 = load i64, i64* %PC.i135
  %779 = add i64 %778, 4
  store i64 %779, i64* %PC.i135
  %780 = inttoptr i64 %777 to i64*
  %781 = load i64, i64* %780
  store i64 %781, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_42851c, %struct.Memory** %MEMORY
  %loadMem_428520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 5
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 15
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %RBP.i134
  %792 = sub i64 %791, 44
  %793 = load i64, i64* %PC.i132
  %794 = add i64 %793, 4
  store i64 %794, i64* %PC.i132
  %795 = inttoptr i64 %792 to i32*
  %796 = load i32, i32* %795
  %797 = sext i32 %796 to i64
  store i64 %797, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_428520, %struct.Memory** %MEMORY
  %loadMem_428524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 5
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %808 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %807, i64 0, i64 0
  %YMM0.i131 = bitcast %union.VectorReg* %808 to %"class.std::bitset"*
  %809 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %810 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %811 = load i64, i64* %RAX.i129
  %812 = load i64, i64* %RCX.i130
  %813 = mul i64 %812, 4
  %814 = add i64 %813, %811
  %815 = load i64, i64* %PC.i128
  %816 = add i64 %815, 5
  store i64 %816, i64* %PC.i128
  %817 = bitcast i8* %810 to <2 x float>*
  %818 = load <2 x float>, <2 x float>* %817, align 1
  %819 = getelementptr inbounds i8, i8* %810, i64 8
  %820 = bitcast i8* %819 to <2 x i32>*
  %821 = load <2 x i32>, <2 x i32>* %820, align 1
  %822 = inttoptr i64 %814 to float*
  %823 = load float, float* %822
  %824 = extractelement <2 x float> %818, i32 0
  %825 = fadd float %824, %823
  %826 = bitcast i8* %809 to float*
  store float %825, float* %826, align 1
  %827 = bitcast <2 x float> %818 to <2 x i32>
  %828 = extractelement <2 x i32> %827, i32 1
  %829 = getelementptr inbounds i8, i8* %809, i64 4
  %830 = bitcast i8* %829 to i32*
  store i32 %828, i32* %830, align 1
  %831 = extractelement <2 x i32> %821, i32 0
  %832 = getelementptr inbounds i8, i8* %809, i64 8
  %833 = bitcast i8* %832 to i32*
  store i32 %831, i32* %833, align 1
  %834 = extractelement <2 x i32> %821, i32 1
  %835 = getelementptr inbounds i8, i8* %809, i64 12
  %836 = bitcast i8* %835 to i32*
  store i32 %834, i32* %836, align 1
  store %struct.Memory* %loadMem_428524, %struct.Memory** %MEMORY
  %loadMem_428529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %841 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %840, i64 0, i64 0
  %YMM0.i126 = bitcast %union.VectorReg* %841 to %"class.std::bitset"*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %842, i64 0, i64 0
  %XMM0.i127 = bitcast %union.VectorReg* %843 to %union.vec128_t*
  %844 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %845 = bitcast %union.vec128_t* %XMM0.i127 to i8*
  %846 = load i64, i64* %PC.i125
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC.i125
  %848 = bitcast i8* %845 to <2 x float>*
  %849 = load <2 x float>, <2 x float>* %848, align 1
  %850 = extractelement <2 x float> %849, i32 0
  %851 = fpext float %850 to double
  %852 = bitcast i8* %844 to double*
  store double %851, double* %852, align 1
  store %struct.Memory* %loadMem_428529, %struct.Memory** %MEMORY
  %loadMem1_42852d = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %PC.i124
  %857 = add i64 %856, 116595
  %858 = load i64, i64* %PC.i124
  %859 = add i64 %858, 5
  %860 = load i64, i64* %PC.i124
  %861 = add i64 %860, 5
  store i64 %861, i64* %PC.i124
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %863 = load i64, i64* %862, align 8
  %864 = add i64 %863, -8
  %865 = inttoptr i64 %864 to i64*
  store i64 %859, i64* %865
  store i64 %864, i64* %862, align 8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %857, i64* %866, align 8
  store %struct.Memory* %loadMem1_42852d, %struct.Memory** %MEMORY
  %loadMem2_42852d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42852d = load i64, i64* %3
  %call2_42852d = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_42852d, %struct.Memory* %loadMem2_42852d)
  store %struct.Memory* %call2_42852d, %struct.Memory** %MEMORY
  %loadMem_428532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %870, i64 0, i64 1
  %YMM1.i123 = bitcast %union.VectorReg* %871 to %"class.std::bitset"*
  %872 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %873 = load i64, i64* %PC.i122
  %874 = add i64 %873, ptrtoint (%G_0x2c2a6__rip__type* @G_0x2c2a6__rip_ to i64)
  %875 = load i64, i64* %PC.i122
  %876 = add i64 %875, 8
  store i64 %876, i64* %PC.i122
  %877 = inttoptr i64 %874 to double*
  %878 = load double, double* %877
  %879 = bitcast i8* %872 to double*
  store double %878, double* %879, align 1
  %880 = getelementptr inbounds i8, i8* %872, i64 8
  %881 = bitcast i8* %880 to double*
  store double 0.000000e+00, double* %881, align 1
  store %struct.Memory* %loadMem_428532, %struct.Memory** %MEMORY
  %loadMem_42853a = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %888, i64 0, i64 2
  %YMM2.i121 = bitcast %union.VectorReg* %889 to %"class.std::bitset"*
  %890 = bitcast %"class.std::bitset"* %YMM2.i121 to i8*
  %891 = load i64, i64* %RBP.i120
  %892 = sub i64 %891, 28
  %893 = load i64, i64* %PC.i119
  %894 = add i64 %893, 5
  store i64 %894, i64* %PC.i119
  %895 = inttoptr i64 %892 to float*
  %896 = load float, float* %895
  %897 = fpext float %896 to double
  %898 = bitcast i8* %890 to double*
  store double %897, double* %898, align 1
  store %struct.Memory* %loadMem_42853a, %struct.Memory** %MEMORY
  %loadMem_42853f = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %902, i64 0, i64 2
  %YMM2.i117 = bitcast %union.VectorReg* %903 to %"class.std::bitset"*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %904, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %905 to %union.vec128_t*
  %906 = bitcast %"class.std::bitset"* %YMM2.i117 to i8*
  %907 = bitcast %"class.std::bitset"* %YMM2.i117 to i8*
  %908 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %909 = load i64, i64* %PC.i116
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i116
  %911 = bitcast i8* %907 to double*
  %912 = load double, double* %911, align 1
  %913 = getelementptr inbounds i8, i8* %907, i64 8
  %914 = bitcast i8* %913 to i64*
  %915 = load i64, i64* %914, align 1
  %916 = bitcast i8* %908 to double*
  %917 = load double, double* %916, align 1
  %918 = fadd double %912, %917
  %919 = bitcast i8* %906 to double*
  store double %918, double* %919, align 1
  %920 = getelementptr inbounds i8, i8* %906, i64 8
  %921 = bitcast i8* %920 to i64*
  store i64 %915, i64* %921, align 1
  store %struct.Memory* %loadMem_42853f, %struct.Memory** %MEMORY
  %loadMem_428543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %926 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %925, i64 0, i64 0
  %YMM0.i114 = bitcast %union.VectorReg* %926 to %"class.std::bitset"*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %927, i64 0, i64 2
  %XMM2.i115 = bitcast %union.VectorReg* %928 to %union.vec128_t*
  %929 = bitcast %"class.std::bitset"* %YMM0.i114 to i8*
  %930 = bitcast %union.vec128_t* %XMM2.i115 to i8*
  %931 = load i64, i64* %PC.i113
  %932 = add i64 %931, 4
  store i64 %932, i64* %PC.i113
  %933 = bitcast i8* %929 to <2 x i32>*
  %934 = load <2 x i32>, <2 x i32>* %933, align 1
  %935 = getelementptr inbounds i8, i8* %929, i64 8
  %936 = bitcast i8* %935 to <2 x i32>*
  %937 = load <2 x i32>, <2 x i32>* %936, align 1
  %938 = bitcast i8* %930 to double*
  %939 = load double, double* %938, align 1
  %940 = fptrunc double %939 to float
  %941 = bitcast i8* %929 to float*
  store float %940, float* %941, align 1
  %942 = extractelement <2 x i32> %934, i32 1
  %943 = getelementptr inbounds i8, i8* %929, i64 4
  %944 = bitcast i8* %943 to i32*
  store i32 %942, i32* %944, align 1
  %945 = extractelement <2 x i32> %937, i32 0
  %946 = bitcast i8* %935 to i32*
  store i32 %945, i32* %946, align 1
  %947 = extractelement <2 x i32> %937, i32 1
  %948 = getelementptr inbounds i8, i8* %929, i64 12
  %949 = bitcast i8* %948 to i32*
  store i32 %947, i32* %949, align 1
  store %struct.Memory* %loadMem_428543, %struct.Memory** %MEMORY
  %loadMem_428547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 15
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 0
  %XMM0.i112 = bitcast %union.VectorReg* %957 to %union.vec128_t*
  %958 = load i64, i64* %RBP.i111
  %959 = sub i64 %958, 28
  %960 = bitcast %union.vec128_t* %XMM0.i112 to i8*
  %961 = load i64, i64* %PC.i110
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC.i110
  %963 = bitcast i8* %960 to <2 x float>*
  %964 = load <2 x float>, <2 x float>* %963, align 1
  %965 = extractelement <2 x float> %964, i32 0
  %966 = inttoptr i64 %959 to float*
  store float %965, float* %966
  store %struct.Memory* %loadMem_428547, %struct.Memory** %MEMORY
  %loadMem_42854c = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 15
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RBP.i109
  %977 = sub i64 %976, 8
  %978 = load i64, i64* %PC.i107
  %979 = add i64 %978, 4
  store i64 %979, i64* %PC.i107
  %980 = inttoptr i64 %977 to i64*
  %981 = load i64, i64* %980
  store i64 %981, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_42854c, %struct.Memory** %MEMORY
  %loadMem_428550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 5
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i106
  %992 = sub i64 %991, 44
  %993 = load i64, i64* %PC.i104
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC.i104
  %995 = inttoptr i64 %992 to i32*
  %996 = load i32, i32* %995
  %997 = sext i32 %996 to i64
  store i64 %997, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_428550, %struct.Memory** %MEMORY
  %loadMem_428554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 5
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1007, i64 0, i64 0
  %YMM0.i103 = bitcast %union.VectorReg* %1008 to %"class.std::bitset"*
  %1009 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %1010 = load i64, i64* %RAX.i101
  %1011 = load i64, i64* %RCX.i102
  %1012 = mul i64 %1011, 4
  %1013 = add i64 %1012, %1010
  %1014 = load i64, i64* %PC.i100
  %1015 = add i64 %1014, 5
  store i64 %1015, i64* %PC.i100
  %1016 = inttoptr i64 %1013 to float*
  %1017 = load float, float* %1016
  %1018 = fpext float %1017 to double
  %1019 = bitcast i8* %1009 to double*
  store double %1018, double* %1019, align 1
  store %struct.Memory* %loadMem_428554, %struct.Memory** %MEMORY
  %loadMem_428559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %1024 to %"class.std::bitset"*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1025, i64 0, i64 1
  %XMM1.i99 = bitcast %union.VectorReg* %1026 to %union.vec128_t*
  %1027 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %1028 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %1029 = bitcast %union.vec128_t* %XMM1.i99 to i8*
  %1030 = load i64, i64* %PC.i97
  %1031 = add i64 %1030, 4
  store i64 %1031, i64* %PC.i97
  %1032 = bitcast i8* %1028 to double*
  %1033 = load double, double* %1032, align 1
  %1034 = getelementptr inbounds i8, i8* %1028, i64 8
  %1035 = bitcast i8* %1034 to i64*
  %1036 = load i64, i64* %1035, align 1
  %1037 = bitcast i8* %1029 to double*
  %1038 = load double, double* %1037, align 1
  %1039 = fadd double %1033, %1038
  %1040 = bitcast i8* %1027 to double*
  store double %1039, double* %1040, align 1
  %1041 = getelementptr inbounds i8, i8* %1027, i64 8
  %1042 = bitcast i8* %1041 to i64*
  store i64 %1036, i64* %1042, align 1
  store %struct.Memory* %loadMem_428559, %struct.Memory** %MEMORY
  %loadMem1_42855d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %PC.i96
  %1047 = add i64 %1046, 116547
  %1048 = load i64, i64* %PC.i96
  %1049 = add i64 %1048, 5
  %1050 = load i64, i64* %PC.i96
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %PC.i96
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1053 = load i64, i64* %1052, align 8
  %1054 = add i64 %1053, -8
  %1055 = inttoptr i64 %1054 to i64*
  store i64 %1049, i64* %1055
  store i64 %1054, i64* %1052, align 8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1047, i64* %1056, align 8
  store %struct.Memory* %loadMem1_42855d, %struct.Memory** %MEMORY
  %loadMem2_42855d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42855d = load i64, i64* %3
  %call2_42855d = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_42855d, %struct.Memory* %loadMem2_42855d)
  store %struct.Memory* %call2_42855d, %struct.Memory** %MEMORY
  %loadMem_428562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 15
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1063, i64 0, i64 1
  %YMM1.i95 = bitcast %union.VectorReg* %1064 to %"class.std::bitset"*
  %1065 = bitcast %"class.std::bitset"* %YMM1.i95 to i8*
  %1066 = load i64, i64* %RBP.i94
  %1067 = sub i64 %1066, 28
  %1068 = load i64, i64* %PC.i93
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC.i93
  %1070 = inttoptr i64 %1067 to float*
  %1071 = load float, float* %1070
  %1072 = fpext float %1071 to double
  %1073 = bitcast i8* %1065 to double*
  store double %1072, double* %1073, align 1
  store %struct.Memory* %loadMem_428562, %struct.Memory** %MEMORY
  %loadMem_428567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1077, i64 0, i64 1
  %YMM1.i91 = bitcast %union.VectorReg* %1078 to %"class.std::bitset"*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1080 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1079, i64 0, i64 0
  %XMM0.i92 = bitcast %union.VectorReg* %1080 to %union.vec128_t*
  %1081 = bitcast %"class.std::bitset"* %YMM1.i91 to i8*
  %1082 = bitcast %"class.std::bitset"* %YMM1.i91 to i8*
  %1083 = bitcast %union.vec128_t* %XMM0.i92 to i8*
  %1084 = load i64, i64* %PC.i90
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC.i90
  %1086 = bitcast i8* %1082 to double*
  %1087 = load double, double* %1086, align 1
  %1088 = getelementptr inbounds i8, i8* %1082, i64 8
  %1089 = bitcast i8* %1088 to i64*
  %1090 = load i64, i64* %1089, align 1
  %1091 = bitcast i8* %1083 to double*
  %1092 = load double, double* %1091, align 1
  %1093 = fsub double %1087, %1092
  %1094 = bitcast i8* %1081 to double*
  store double %1093, double* %1094, align 1
  %1095 = getelementptr inbounds i8, i8* %1081, i64 8
  %1096 = bitcast i8* %1095 to i64*
  store i64 %1090, i64* %1096, align 1
  store %struct.Memory* %loadMem_428567, %struct.Memory** %MEMORY
  %loadMem_42856b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %1101 to %"class.std::bitset"*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1102, i64 0, i64 1
  %XMM1.i89 = bitcast %union.VectorReg* %1103 to %union.vec128_t*
  %1104 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %1105 = bitcast %union.vec128_t* %XMM1.i89 to i8*
  %1106 = load i64, i64* %PC.i87
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC.i87
  %1108 = bitcast i8* %1104 to <2 x i32>*
  %1109 = load <2 x i32>, <2 x i32>* %1108, align 1
  %1110 = getelementptr inbounds i8, i8* %1104, i64 8
  %1111 = bitcast i8* %1110 to <2 x i32>*
  %1112 = load <2 x i32>, <2 x i32>* %1111, align 1
  %1113 = bitcast i8* %1105 to double*
  %1114 = load double, double* %1113, align 1
  %1115 = fptrunc double %1114 to float
  %1116 = bitcast i8* %1104 to float*
  store float %1115, float* %1116, align 1
  %1117 = extractelement <2 x i32> %1109, i32 1
  %1118 = getelementptr inbounds i8, i8* %1104, i64 4
  %1119 = bitcast i8* %1118 to i32*
  store i32 %1117, i32* %1119, align 1
  %1120 = extractelement <2 x i32> %1112, i32 0
  %1121 = bitcast i8* %1110 to i32*
  store i32 %1120, i32* %1121, align 1
  %1122 = extractelement <2 x i32> %1112, i32 1
  %1123 = getelementptr inbounds i8, i8* %1104, i64 12
  %1124 = bitcast i8* %1123 to i32*
  store i32 %1122, i32* %1124, align 1
  store %struct.Memory* %loadMem_42856b, %struct.Memory** %MEMORY
  %loadMem_42856f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1131, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %1132 to %union.vec128_t*
  %1133 = load i64, i64* %RBP.i85
  %1134 = sub i64 %1133, 28
  %1135 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %1136 = load i64, i64* %PC.i84
  %1137 = add i64 %1136, 5
  store i64 %1137, i64* %PC.i84
  %1138 = bitcast i8* %1135 to <2 x float>*
  %1139 = load <2 x float>, <2 x float>* %1138, align 1
  %1140 = extractelement <2 x float> %1139, i32 0
  %1141 = inttoptr i64 %1134 to float*
  store float %1140, float* %1141
  store %struct.Memory* %loadMem_42856f, %struct.Memory** %MEMORY
  %loadMem_428574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 1
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i83
  %1152 = sub i64 %1151, 24
  %1153 = load i64, i64* %PC.i81
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %PC.i81
  %1155 = inttoptr i64 %1152 to i64*
  %1156 = load i64, i64* %1155
  store i64 %1156, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_428574, %struct.Memory** %MEMORY
  %loadMem_428578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 5
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 15
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RBP.i80
  %1167 = sub i64 %1166, 44
  %1168 = load i64, i64* %PC.i78
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC.i78
  %1170 = inttoptr i64 %1167 to i32*
  %1171 = load i32, i32* %1170
  %1172 = sext i32 %1171 to i64
  store i64 %1172, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_428578, %struct.Memory** %MEMORY
  %loadMem_42857c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 5
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1182, i64 0, i64 0
  %YMM0.i77 = bitcast %union.VectorReg* %1183 to %"class.std::bitset"*
  %1184 = bitcast %"class.std::bitset"* %YMM0.i77 to i8*
  %1185 = load i64, i64* %RAX.i76
  %1186 = load i64, i64* %RCX.i
  %1187 = mul i64 %1186, 4
  %1188 = add i64 %1187, %1185
  %1189 = load i64, i64* %PC.i75
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC.i75
  %1191 = inttoptr i64 %1188 to float*
  %1192 = load float, float* %1191
  %1193 = fpext float %1192 to double
  %1194 = bitcast i8* %1184 to double*
  store double %1193, double* %1194, align 1
  store %struct.Memory* %loadMem_42857c, %struct.Memory** %MEMORY
  %loadMem1_428581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %PC.i74
  %1199 = add i64 %1198, 116511
  %1200 = load i64, i64* %PC.i74
  %1201 = add i64 %1200, 5
  %1202 = load i64, i64* %PC.i74
  %1203 = add i64 %1202, 5
  store i64 %1203, i64* %PC.i74
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1205 = load i64, i64* %1204, align 8
  %1206 = add i64 %1205, -8
  %1207 = inttoptr i64 %1206 to i64*
  store i64 %1201, i64* %1207
  store i64 %1206, i64* %1204, align 8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1199, i64* %1208, align 8
  store %struct.Memory* %loadMem1_428581, %struct.Memory** %MEMORY
  %loadMem2_428581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428581 = load i64, i64* %3
  %call2_428581 = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_428581, %struct.Memory* %loadMem2_428581)
  store %struct.Memory* %call2_428581, %struct.Memory** %MEMORY
  %loadMem_428586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 15
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1215, i64 0, i64 1
  %YMM1.i73 = bitcast %union.VectorReg* %1216 to %"class.std::bitset"*
  %1217 = bitcast %"class.std::bitset"* %YMM1.i73 to i8*
  %1218 = load i64, i64* %RBP.i72
  %1219 = sub i64 %1218, 28
  %1220 = load i64, i64* %PC.i71
  %1221 = add i64 %1220, 5
  store i64 %1221, i64* %PC.i71
  %1222 = inttoptr i64 %1219 to float*
  %1223 = load float, float* %1222
  %1224 = fpext float %1223 to double
  %1225 = bitcast i8* %1217 to double*
  store double %1224, double* %1225, align 1
  store %struct.Memory* %loadMem_428586, %struct.Memory** %MEMORY
  %loadMem_42858b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1229, i64 0, i64 1
  %YMM1.i69 = bitcast %union.VectorReg* %1230 to %"class.std::bitset"*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1231, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %1232 to %union.vec128_t*
  %1233 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %1234 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %1235 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %1236 = load i64, i64* %PC.i68
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC.i68
  %1238 = bitcast i8* %1234 to double*
  %1239 = load double, double* %1238, align 1
  %1240 = getelementptr inbounds i8, i8* %1234, i64 8
  %1241 = bitcast i8* %1240 to i64*
  %1242 = load i64, i64* %1241, align 1
  %1243 = bitcast i8* %1235 to double*
  %1244 = load double, double* %1243, align 1
  %1245 = fsub double %1239, %1244
  %1246 = bitcast i8* %1233 to double*
  store double %1245, double* %1246, align 1
  %1247 = getelementptr inbounds i8, i8* %1233, i64 8
  %1248 = bitcast i8* %1247 to i64*
  store i64 %1242, i64* %1248, align 1
  store %struct.Memory* %loadMem_42858b, %struct.Memory** %MEMORY
  %loadMem_42858f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1252, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %1253 to %"class.std::bitset"*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1254, i64 0, i64 1
  %XMM1.i67 = bitcast %union.VectorReg* %1255 to %union.vec128_t*
  %1256 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %1257 = bitcast %union.vec128_t* %XMM1.i67 to i8*
  %1258 = load i64, i64* %PC.i65
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i65
  %1260 = bitcast i8* %1256 to <2 x i32>*
  %1261 = load <2 x i32>, <2 x i32>* %1260, align 1
  %1262 = getelementptr inbounds i8, i8* %1256, i64 8
  %1263 = bitcast i8* %1262 to <2 x i32>*
  %1264 = load <2 x i32>, <2 x i32>* %1263, align 1
  %1265 = bitcast i8* %1257 to double*
  %1266 = load double, double* %1265, align 1
  %1267 = fptrunc double %1266 to float
  %1268 = bitcast i8* %1256 to float*
  store float %1267, float* %1268, align 1
  %1269 = extractelement <2 x i32> %1261, i32 1
  %1270 = getelementptr inbounds i8, i8* %1256, i64 4
  %1271 = bitcast i8* %1270 to i32*
  store i32 %1269, i32* %1271, align 1
  %1272 = extractelement <2 x i32> %1264, i32 0
  %1273 = bitcast i8* %1262 to i32*
  store i32 %1272, i32* %1273, align 1
  %1274 = extractelement <2 x i32> %1264, i32 1
  %1275 = getelementptr inbounds i8, i8* %1256, i64 12
  %1276 = bitcast i8* %1275 to i32*
  store i32 %1274, i32* %1276, align 1
  store %struct.Memory* %loadMem_42858f, %struct.Memory** %MEMORY
  %loadMem_428593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1283, i64 0, i64 0
  %XMM0.i64 = bitcast %union.VectorReg* %1284 to %union.vec128_t*
  %1285 = load i64, i64* %RBP.i63
  %1286 = sub i64 %1285, 28
  %1287 = bitcast %union.vec128_t* %XMM0.i64 to i8*
  %1288 = load i64, i64* %PC.i62
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC.i62
  %1290 = bitcast i8* %1287 to <2 x float>*
  %1291 = load <2 x float>, <2 x float>* %1290, align 1
  %1292 = extractelement <2 x float> %1291, i32 0
  %1293 = inttoptr i64 %1286 to float*
  store float %1292, float* %1293
  store %struct.Memory* %loadMem_428593, %struct.Memory** %MEMORY
  %loadMem_428598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 1
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i61
  %1304 = sub i64 %1303, 44
  %1305 = load i64, i64* %PC.i59
  %1306 = add i64 %1305, 3
  store i64 %1306, i64* %PC.i59
  %1307 = inttoptr i64 %1304 to i32*
  %1308 = load i32, i32* %1307
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_428598, %struct.Memory** %MEMORY
  %loadMem_42859b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1315 to i64*
  %1316 = load i64, i64* %RAX.i
  %1317 = load i64, i64* %PC.i58
  %1318 = add i64 %1317, 3
  store i64 %1318, i64* %PC.i58
  %1319 = trunc i64 %1316 to i32
  %1320 = add i32 1, %1319
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RAX.i, align 8
  %1322 = icmp ult i32 %1320, %1319
  %1323 = icmp ult i32 %1320, 1
  %1324 = or i1 %1322, %1323
  %1325 = zext i1 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1325, i8* %1326, align 1
  %1327 = and i32 %1320, 255
  %1328 = call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1331, i8* %1332, align 1
  %1333 = xor i64 1, %1316
  %1334 = trunc i64 %1333 to i32
  %1335 = xor i32 %1334, %1320
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1338, i8* %1339, align 1
  %1340 = icmp eq i32 %1320, 0
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i32 %1320, 31
  %1344 = trunc i32 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1344, i8* %1345, align 1
  %1346 = lshr i32 %1319, 31
  %1347 = xor i32 %1343, %1346
  %1348 = add i32 %1347, %1343
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1350, i8* %1351, align 1
  store %struct.Memory* %loadMem_42859b, %struct.Memory** %MEMORY
  %loadMem_42859e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1357 to i32*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i57
  %1362 = sub i64 %1361, 44
  %1363 = load i32, i32* %EAX.i
  %1364 = zext i32 %1363 to i64
  %1365 = load i64, i64* %PC.i56
  %1366 = add i64 %1365, 3
  store i64 %1366, i64* %PC.i56
  %1367 = inttoptr i64 %1362 to i32*
  store i32 %1363, i32* %1367
  store %struct.Memory* %loadMem_42859e, %struct.Memory** %MEMORY
  %loadMem_4285a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %PC.i55
  %1372 = add i64 %1371, -240
  %1373 = load i64, i64* %PC.i55
  %1374 = add i64 %1373, 5
  store i64 %1374, i64* %PC.i55
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1372, i64* %1375, align 8
  store %struct.Memory* %loadMem_4285a1, %struct.Memory** %MEMORY
  br label %block_.L_4284b1

block_.L_4285a6:                                  ; preds = %block_.L_4284b1
  %loadMem_4285a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 15
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1382, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %1383 to %"class.std::bitset"*
  %1384 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %1385 = load i64, i64* %RBP.i53
  %1386 = sub i64 %1385, 32
  %1387 = load i64, i64* %PC.i52
  %1388 = add i64 %1387, 5
  store i64 %1388, i64* %PC.i52
  %1389 = inttoptr i64 %1386 to float*
  %1390 = load float, float* %1389
  %1391 = fpext float %1390 to double
  %1392 = bitcast i8* %1384 to double*
  store double %1391, double* %1392, align 1
  store %struct.Memory* %loadMem_4285a6, %struct.Memory** %MEMORY
  %loadMem1_4285ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %PC.i51
  %1397 = add i64 %1396, 116469
  %1398 = load i64, i64* %PC.i51
  %1399 = add i64 %1398, 5
  %1400 = load i64, i64* %PC.i51
  %1401 = add i64 %1400, 5
  store i64 %1401, i64* %PC.i51
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1403 = load i64, i64* %1402, align 8
  %1404 = add i64 %1403, -8
  %1405 = inttoptr i64 %1404 to i64*
  store i64 %1399, i64* %1405
  store i64 %1404, i64* %1402, align 8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1397, i64* %1406, align 8
  store %struct.Memory* %loadMem1_4285ab, %struct.Memory** %MEMORY
  %loadMem2_4285ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4285ab = load i64, i64* %3
  %call2_4285ab = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_4285ab, %struct.Memory* %loadMem2_4285ab)
  store %struct.Memory* %call2_4285ab, %struct.Memory** %MEMORY
  %loadMem_4285b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 15
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1414 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1413, i64 0, i64 1
  %YMM1.i50 = bitcast %union.VectorReg* %1414 to %"class.std::bitset"*
  %1415 = bitcast %"class.std::bitset"* %YMM1.i50 to i8*
  %1416 = load i64, i64* %RBP.i49
  %1417 = sub i64 %1416, 28
  %1418 = load i64, i64* %PC.i48
  %1419 = add i64 %1418, 5
  store i64 %1419, i64* %PC.i48
  %1420 = inttoptr i64 %1417 to float*
  %1421 = load float, float* %1420
  %1422 = fpext float %1421 to double
  %1423 = bitcast i8* %1415 to double*
  store double %1422, double* %1423, align 1
  store %struct.Memory* %loadMem_4285b0, %struct.Memory** %MEMORY
  %loadMem_4285b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1427, i64 0, i64 1
  %YMM1.i46 = bitcast %union.VectorReg* %1428 to %"class.std::bitset"*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1429, i64 0, i64 0
  %XMM0.i47 = bitcast %union.VectorReg* %1430 to %union.vec128_t*
  %1431 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %1432 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %1433 = bitcast %union.vec128_t* %XMM0.i47 to i8*
  %1434 = load i64, i64* %PC.i45
  %1435 = add i64 %1434, 4
  store i64 %1435, i64* %PC.i45
  %1436 = bitcast i8* %1432 to double*
  %1437 = load double, double* %1436, align 1
  %1438 = getelementptr inbounds i8, i8* %1432, i64 8
  %1439 = bitcast i8* %1438 to i64*
  %1440 = load i64, i64* %1439, align 1
  %1441 = bitcast i8* %1433 to double*
  %1442 = load double, double* %1441, align 1
  %1443 = fsub double %1437, %1442
  %1444 = bitcast i8* %1431 to double*
  store double %1443, double* %1444, align 1
  %1445 = getelementptr inbounds i8, i8* %1431, i64 8
  %1446 = bitcast i8* %1445 to i64*
  store i64 %1440, i64* %1446, align 1
  store %struct.Memory* %loadMem_4285b5, %struct.Memory** %MEMORY
  %loadMem_4285b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1451 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1450, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %1451 to %"class.std::bitset"*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1452, i64 0, i64 1
  %XMM1.i44 = bitcast %union.VectorReg* %1453 to %union.vec128_t*
  %1454 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %1455 = bitcast %union.vec128_t* %XMM1.i44 to i8*
  %1456 = load i64, i64* %PC.i42
  %1457 = add i64 %1456, 4
  store i64 %1457, i64* %PC.i42
  %1458 = bitcast i8* %1454 to <2 x i32>*
  %1459 = load <2 x i32>, <2 x i32>* %1458, align 1
  %1460 = getelementptr inbounds i8, i8* %1454, i64 8
  %1461 = bitcast i8* %1460 to <2 x i32>*
  %1462 = load <2 x i32>, <2 x i32>* %1461, align 1
  %1463 = bitcast i8* %1455 to double*
  %1464 = load double, double* %1463, align 1
  %1465 = fptrunc double %1464 to float
  %1466 = bitcast i8* %1454 to float*
  store float %1465, float* %1466, align 1
  %1467 = extractelement <2 x i32> %1459, i32 1
  %1468 = getelementptr inbounds i8, i8* %1454, i64 4
  %1469 = bitcast i8* %1468 to i32*
  store i32 %1467, i32* %1469, align 1
  %1470 = extractelement <2 x i32> %1462, i32 0
  %1471 = bitcast i8* %1460 to i32*
  store i32 %1470, i32* %1471, align 1
  %1472 = extractelement <2 x i32> %1462, i32 1
  %1473 = getelementptr inbounds i8, i8* %1454, i64 12
  %1474 = bitcast i8* %1473 to i32*
  store i32 %1472, i32* %1474, align 1
  store %struct.Memory* %loadMem_4285b9, %struct.Memory** %MEMORY
  %loadMem_4285bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 15
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1481, i64 0, i64 0
  %XMM0.i41 = bitcast %union.VectorReg* %1482 to %union.vec128_t*
  %1483 = load i64, i64* %RBP.i40
  %1484 = sub i64 %1483, 28
  %1485 = bitcast %union.vec128_t* %XMM0.i41 to i8*
  %1486 = load i64, i64* %PC.i39
  %1487 = add i64 %1486, 5
  store i64 %1487, i64* %PC.i39
  %1488 = bitcast i8* %1485 to <2 x float>*
  %1489 = load <2 x float>, <2 x float>* %1488, align 1
  %1490 = extractelement <2 x float> %1489, i32 0
  %1491 = inttoptr i64 %1484 to float*
  store float %1490, float* %1491
  store %struct.Memory* %loadMem_4285bd, %struct.Memory** %MEMORY
  %loadMem_4285c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 15
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1498, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %1499 to %"class.std::bitset"*
  %1500 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %1501 = load i64, i64* %RBP.i37
  %1502 = sub i64 %1501, 36
  %1503 = load i64, i64* %PC.i36
  %1504 = add i64 %1503, 5
  store i64 %1504, i64* %PC.i36
  %1505 = inttoptr i64 %1502 to float*
  %1506 = load float, float* %1505
  %1507 = fpext float %1506 to double
  %1508 = bitcast i8* %1500 to double*
  store double %1507, double* %1508, align 1
  store %struct.Memory* %loadMem_4285c2, %struct.Memory** %MEMORY
  %loadMem1_4285c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %PC.i35
  %1513 = add i64 %1512, 116441
  %1514 = load i64, i64* %PC.i35
  %1515 = add i64 %1514, 5
  %1516 = load i64, i64* %PC.i35
  %1517 = add i64 %1516, 5
  store i64 %1517, i64* %PC.i35
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1519 = load i64, i64* %1518, align 8
  %1520 = add i64 %1519, -8
  %1521 = inttoptr i64 %1520 to i64*
  store i64 %1515, i64* %1521
  store i64 %1520, i64* %1518, align 8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1513, i64* %1522, align 8
  store %struct.Memory* %loadMem1_4285c7, %struct.Memory** %MEMORY
  %loadMem2_4285c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4285c7 = load i64, i64* %3
  %call2_4285c7 = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_4285c7, %struct.Memory* %loadMem2_4285c7)
  store %struct.Memory* %call2_4285c7, %struct.Memory** %MEMORY
  %loadMem_4285cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1526, i64 0, i64 1
  %YMM1.i34 = bitcast %union.VectorReg* %1527 to %"class.std::bitset"*
  %1528 = bitcast %"class.std::bitset"* %YMM1.i34 to i8*
  %1529 = load i64, i64* %PC.i33
  %1530 = add i64 %1529, ptrtoint (%G_0x2c20c__rip__type* @G_0x2c20c__rip_ to i64)
  %1531 = load i64, i64* %PC.i33
  %1532 = add i64 %1531, 8
  store i64 %1532, i64* %PC.i33
  %1533 = inttoptr i64 %1530 to double*
  %1534 = load double, double* %1533
  %1535 = bitcast i8* %1528 to double*
  store double %1534, double* %1535, align 1
  %1536 = getelementptr inbounds i8, i8* %1528, i64 8
  %1537 = bitcast i8* %1536 to double*
  store double 0.000000e+00, double* %1537, align 1
  store %struct.Memory* %loadMem_4285cc, %struct.Memory** %MEMORY
  %loadMem_4285d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 15
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1544, i64 0, i64 2
  %YMM2.i32 = bitcast %union.VectorReg* %1545 to %"class.std::bitset"*
  %1546 = bitcast %"class.std::bitset"* %YMM2.i32 to i8*
  %1547 = load i64, i64* %RBP.i31
  %1548 = sub i64 %1547, 28
  %1549 = load i64, i64* %PC.i30
  %1550 = add i64 %1549, 5
  store i64 %1550, i64* %PC.i30
  %1551 = inttoptr i64 %1548 to float*
  %1552 = load float, float* %1551
  %1553 = fpext float %1552 to double
  %1554 = bitcast i8* %1546 to double*
  store double %1553, double* %1554, align 1
  store %struct.Memory* %loadMem_4285d4, %struct.Memory** %MEMORY
  %loadMem_4285d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1558, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1559 to %"class.std::bitset"*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1560, i64 0, i64 0
  %XMM0.i29 = bitcast %union.VectorReg* %1561 to %union.vec128_t*
  %1562 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1563 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1564 = bitcast %union.vec128_t* %XMM0.i29 to i8*
  %1565 = load i64, i64* %PC.i28
  %1566 = add i64 %1565, 4
  store i64 %1566, i64* %PC.i28
  %1567 = bitcast i8* %1563 to double*
  %1568 = load double, double* %1567, align 1
  %1569 = getelementptr inbounds i8, i8* %1563, i64 8
  %1570 = bitcast i8* %1569 to i64*
  %1571 = load i64, i64* %1570, align 1
  %1572 = bitcast i8* %1564 to double*
  %1573 = load double, double* %1572, align 1
  %1574 = fadd double %1568, %1573
  %1575 = bitcast i8* %1562 to double*
  store double %1574, double* %1575, align 1
  %1576 = getelementptr inbounds i8, i8* %1562, i64 8
  %1577 = bitcast i8* %1576 to i64*
  store i64 %1571, i64* %1577, align 1
  store %struct.Memory* %loadMem_4285d9, %struct.Memory** %MEMORY
  %loadMem_4285dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 33
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1581, i64 0, i64 0
  %YMM0.i27 = bitcast %union.VectorReg* %1582 to %"class.std::bitset"*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1584 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1583, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1584 to %union.vec128_t*
  %1585 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %1586 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1587 = load i64, i64* %PC.i26
  %1588 = add i64 %1587, 4
  store i64 %1588, i64* %PC.i26
  %1589 = bitcast i8* %1585 to <2 x i32>*
  %1590 = load <2 x i32>, <2 x i32>* %1589, align 1
  %1591 = getelementptr inbounds i8, i8* %1585, i64 8
  %1592 = bitcast i8* %1591 to <2 x i32>*
  %1593 = load <2 x i32>, <2 x i32>* %1592, align 1
  %1594 = bitcast i8* %1586 to double*
  %1595 = load double, double* %1594, align 1
  %1596 = fptrunc double %1595 to float
  %1597 = bitcast i8* %1585 to float*
  store float %1596, float* %1597, align 1
  %1598 = extractelement <2 x i32> %1590, i32 1
  %1599 = getelementptr inbounds i8, i8* %1585, i64 4
  %1600 = bitcast i8* %1599 to i32*
  store i32 %1598, i32* %1600, align 1
  %1601 = extractelement <2 x i32> %1593, i32 0
  %1602 = bitcast i8* %1591 to i32*
  store i32 %1601, i32* %1602, align 1
  %1603 = extractelement <2 x i32> %1593, i32 1
  %1604 = getelementptr inbounds i8, i8* %1585, i64 12
  %1605 = bitcast i8* %1604 to i32*
  store i32 %1603, i32* %1605, align 1
  store %struct.Memory* %loadMem_4285dd, %struct.Memory** %MEMORY
  %loadMem_4285e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1612, i64 0, i64 0
  %XMM0.i25 = bitcast %union.VectorReg* %1613 to %union.vec128_t*
  %1614 = load i64, i64* %RBP.i24
  %1615 = sub i64 %1614, 28
  %1616 = bitcast %union.vec128_t* %XMM0.i25 to i8*
  %1617 = load i64, i64* %PC.i23
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %PC.i23
  %1619 = bitcast i8* %1616 to <2 x float>*
  %1620 = load <2 x float>, <2 x float>* %1619, align 1
  %1621 = extractelement <2 x float> %1620, i32 0
  %1622 = inttoptr i64 %1615 to float*
  store float %1621, float* %1622
  store %struct.Memory* %loadMem_4285e1, %struct.Memory** %MEMORY
  %loadMem_4285e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 15
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 0
  %YMM0.i22 = bitcast %union.VectorReg* %1630 to %"class.std::bitset"*
  %1631 = bitcast %"class.std::bitset"* %YMM0.i22 to i8*
  %1632 = load i64, i64* %RBP.i21
  %1633 = sub i64 %1632, 40
  %1634 = load i64, i64* %PC.i20
  %1635 = add i64 %1634, 5
  store i64 %1635, i64* %PC.i20
  %1636 = inttoptr i64 %1633 to float*
  %1637 = load float, float* %1636
  %1638 = fpext float %1637 to double
  %1639 = bitcast i8* %1631 to double*
  store double %1638, double* %1639, align 1
  store %struct.Memory* %loadMem_4285e6, %struct.Memory** %MEMORY
  %loadMem_4285eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1643, i64 0, i64 0
  %YMM0.i18 = bitcast %union.VectorReg* %1644 to %"class.std::bitset"*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1645, i64 0, i64 1
  %XMM1.i19 = bitcast %union.VectorReg* %1646 to %union.vec128_t*
  %1647 = bitcast %"class.std::bitset"* %YMM0.i18 to i8*
  %1648 = bitcast %"class.std::bitset"* %YMM0.i18 to i8*
  %1649 = bitcast %union.vec128_t* %XMM1.i19 to i8*
  %1650 = load i64, i64* %PC.i17
  %1651 = add i64 %1650, 4
  store i64 %1651, i64* %PC.i17
  %1652 = bitcast i8* %1648 to double*
  %1653 = load double, double* %1652, align 1
  %1654 = getelementptr inbounds i8, i8* %1648, i64 8
  %1655 = bitcast i8* %1654 to i64*
  %1656 = load i64, i64* %1655, align 1
  %1657 = bitcast i8* %1649 to double*
  %1658 = load double, double* %1657, align 1
  %1659 = fadd double %1653, %1658
  %1660 = bitcast i8* %1647 to double*
  store double %1659, double* %1660, align 1
  %1661 = getelementptr inbounds i8, i8* %1647, i64 8
  %1662 = bitcast i8* %1661 to i64*
  store i64 %1656, i64* %1662, align 1
  store %struct.Memory* %loadMem_4285eb, %struct.Memory** %MEMORY
  %loadMem1_4285ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %PC.i16
  %1667 = add i64 %1666, 116401
  %1668 = load i64, i64* %PC.i16
  %1669 = add i64 %1668, 5
  %1670 = load i64, i64* %PC.i16
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %PC.i16
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1673 = load i64, i64* %1672, align 8
  %1674 = add i64 %1673, -8
  %1675 = inttoptr i64 %1674 to i64*
  store i64 %1669, i64* %1675
  store i64 %1674, i64* %1672, align 8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1667, i64* %1676, align 8
  store %struct.Memory* %loadMem1_4285ef, %struct.Memory** %MEMORY
  %loadMem2_4285ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4285ef = load i64, i64* %3
  %call2_4285ef = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_4285ef, %struct.Memory* %loadMem2_4285ef)
  store %struct.Memory* %call2_4285ef, %struct.Memory** %MEMORY
  %loadMem_4285f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 15
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1683, i64 0, i64 1
  %YMM1.i15 = bitcast %union.VectorReg* %1684 to %"class.std::bitset"*
  %1685 = bitcast %"class.std::bitset"* %YMM1.i15 to i8*
  %1686 = load i64, i64* %RBP.i14
  %1687 = sub i64 %1686, 28
  %1688 = load i64, i64* %PC.i13
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC.i13
  %1690 = inttoptr i64 %1687 to float*
  %1691 = load float, float* %1690
  %1692 = fpext float %1691 to double
  %1693 = bitcast i8* %1685 to double*
  store double %1692, double* %1693, align 1
  store %struct.Memory* %loadMem_4285f4, %struct.Memory** %MEMORY
  %loadMem_4285f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1697, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1698 to %"class.std::bitset"*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1699, i64 0, i64 0
  %XMM0.i12 = bitcast %union.VectorReg* %1700 to %union.vec128_t*
  %1701 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1702 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1703 = bitcast %union.vec128_t* %XMM0.i12 to i8*
  %1704 = load i64, i64* %PC.i11
  %1705 = add i64 %1704, 4
  store i64 %1705, i64* %PC.i11
  %1706 = bitcast i8* %1702 to double*
  %1707 = load double, double* %1706, align 1
  %1708 = getelementptr inbounds i8, i8* %1702, i64 8
  %1709 = bitcast i8* %1708 to i64*
  %1710 = load i64, i64* %1709, align 1
  %1711 = bitcast i8* %1703 to double*
  %1712 = load double, double* %1711, align 1
  %1713 = fadd double %1707, %1712
  %1714 = bitcast i8* %1701 to double*
  store double %1713, double* %1714, align 1
  %1715 = getelementptr inbounds i8, i8* %1701, i64 8
  %1716 = bitcast i8* %1715 to i64*
  store i64 %1710, i64* %1716, align 1
  store %struct.Memory* %loadMem_4285f9, %struct.Memory** %MEMORY
  %loadMem_4285fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1720, i64 0, i64 0
  %YMM0.i10 = bitcast %union.VectorReg* %1721 to %"class.std::bitset"*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1722, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1723 to %union.vec128_t*
  %1724 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %1725 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1726 = load i64, i64* %PC.i9
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %PC.i9
  %1728 = bitcast i8* %1724 to <2 x i32>*
  %1729 = load <2 x i32>, <2 x i32>* %1728, align 1
  %1730 = getelementptr inbounds i8, i8* %1724, i64 8
  %1731 = bitcast i8* %1730 to <2 x i32>*
  %1732 = load <2 x i32>, <2 x i32>* %1731, align 1
  %1733 = bitcast i8* %1725 to double*
  %1734 = load double, double* %1733, align 1
  %1735 = fptrunc double %1734 to float
  %1736 = bitcast i8* %1724 to float*
  store float %1735, float* %1736, align 1
  %1737 = extractelement <2 x i32> %1729, i32 1
  %1738 = getelementptr inbounds i8, i8* %1724, i64 4
  %1739 = bitcast i8* %1738 to i32*
  store i32 %1737, i32* %1739, align 1
  %1740 = extractelement <2 x i32> %1732, i32 0
  %1741 = bitcast i8* %1730 to i32*
  store i32 %1740, i32* %1741, align 1
  %1742 = extractelement <2 x i32> %1732, i32 1
  %1743 = getelementptr inbounds i8, i8* %1724, i64 12
  %1744 = bitcast i8* %1743 to i32*
  store i32 %1742, i32* %1744, align 1
  store %struct.Memory* %loadMem_4285fd, %struct.Memory** %MEMORY
  %loadMem_428601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 15
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1751, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1752 to %union.vec128_t*
  %1753 = load i64, i64* %RBP.i8
  %1754 = sub i64 %1753, 28
  %1755 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1756 = load i64, i64* %PC.i7
  %1757 = add i64 %1756, 5
  store i64 %1757, i64* %PC.i7
  %1758 = bitcast i8* %1755 to <2 x float>*
  %1759 = load <2 x float>, <2 x float>* %1758, align 1
  %1760 = extractelement <2 x float> %1759, i32 0
  %1761 = inttoptr i64 %1754 to float*
  store float %1760, float* %1761
  store %struct.Memory* %loadMem_428601, %struct.Memory** %MEMORY
  %loadMem_428606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1768, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1769 to %"class.std::bitset"*
  %1770 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1771 = load i64, i64* %RBP.i6
  %1772 = sub i64 %1771, 28
  %1773 = load i64, i64* %PC.i5
  %1774 = add i64 %1773, 5
  store i64 %1774, i64* %PC.i5
  %1775 = inttoptr i64 %1772 to float*
  %1776 = load float, float* %1775
  %1777 = bitcast i8* %1770 to float*
  store float %1776, float* %1777, align 1
  %1778 = getelementptr inbounds i8, i8* %1770, i64 4
  %1779 = bitcast i8* %1778 to float*
  store float 0.000000e+00, float* %1779, align 1
  %1780 = getelementptr inbounds i8, i8* %1770, i64 8
  %1781 = bitcast i8* %1780 to float*
  store float 0.000000e+00, float* %1781, align 1
  %1782 = getelementptr inbounds i8, i8* %1770, i64 12
  %1783 = bitcast i8* %1782 to float*
  store float 0.000000e+00, float* %1783, align 1
  store %struct.Memory* %loadMem_428606, %struct.Memory** %MEMORY
  %loadMem_42860b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 13
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RSP.i
  %1791 = load i64, i64* %PC.i4
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %PC.i4
  %1793 = add i64 48, %1790
  store i64 %1793, i64* %RSP.i, align 8
  %1794 = icmp ult i64 %1793, %1790
  %1795 = icmp ult i64 %1793, 48
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1797, i8* %1798, align 1
  %1799 = trunc i64 %1793 to i32
  %1800 = and i32 %1799, 255
  %1801 = call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1804, i8* %1805, align 1
  %1806 = xor i64 48, %1790
  %1807 = xor i64 %1806, %1793
  %1808 = lshr i64 %1807, 4
  %1809 = trunc i64 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1810, i8* %1811, align 1
  %1812 = icmp eq i64 %1793, 0
  %1813 = zext i1 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1813, i8* %1814, align 1
  %1815 = lshr i64 %1793, 63
  %1816 = trunc i64 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1816, i8* %1817, align 1
  %1818 = lshr i64 %1790, 63
  %1819 = xor i64 %1815, %1818
  %1820 = add i64 %1819, %1815
  %1821 = icmp eq i64 %1820, 2
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1822, i8* %1823, align 1
  store %struct.Memory* %loadMem_42860b, %struct.Memory** %MEMORY
  %loadMem_42860f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %PC.i2
  %1831 = add i64 %1830, 1
  store i64 %1831, i64* %PC.i2
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1833 = load i64, i64* %1832, align 8
  %1834 = add i64 %1833, 8
  %1835 = inttoptr i64 %1833 to i64*
  %1836 = load i64, i64* %1835
  store i64 %1836, i64* %RBP.i3, align 8
  store i64 %1834, i64* %1832, align 8
  store %struct.Memory* %loadMem_42860f, %struct.Memory** %MEMORY
  %loadMem_428610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %PC.i1
  %1841 = add i64 %1840, 1
  store i64 %1841, i64* %PC.i1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1844 = load i64, i64* %1843, align 8
  %1845 = inttoptr i64 %1844 to i64*
  %1846 = load i64, i64* %1845
  store i64 %1846, i64* %1842, align 8
  %1847 = add i64 %1844, 8
  store i64 %1847, i64* %1843, align 8
  store %struct.Memory* %loadMem_428610, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_428610
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_jge_.L_4285a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fadd float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Gammln(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x2c2a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c2a6__rip__type* @G_0x2c2a6__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_jmpq_.L_4284b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2c20c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2c20c__rip__type* @G_0x2c20c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
